tree_plant = "tree-plant"

local plant_flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"}

local gleba_tree_underwater_things = {}

local gleba_tree_particle_effects =
{
    ["planted-tree"] = {crop_2 = "leaf-particle", trunk_2 = "branch-particle"}
    -- temperate-tree
    -- swamp-tree
    -- desert-tree
}

local function gleba_tree_variation_progression_frames(name, suffix, progression_frames, width, height, x, y, shift, scale_multiplier, surface, flags)
    local partial_path = "__space-age__/graphics/entity/plant/" .. name .. "/" .. name .. "-" .. suffix
    local filenames = {}
    for i = 1, progression_frames do
        filenames[i] = (i == 1 and partial_path or partial_path .. "-" .. i) .. ".png"
    end
    return
    {
        filenames = filenames,
        frame_count = progression_frames,
        lines_per_file = 1,
        line_length = 1,
        flags = flags,
        surface = surface,
        width = width,
        height = height,
        x = x,
        y = y,
        shift = shift,
        scale = 0.33 * scale_multiplier
    }
end

local function gleba_tree_variations(name, variation_count, per_row, scale_multiplier, width, height, shift, reflection_shift, surface, progression_frames)
    variation_count = variation_count or 5
    per_row = per_row or 5
    scale_multiplier = scale_multiplier or 1
    surface = surface or "gleba"
    progression_frames = progression_frames or 1
    local width = width or 640
    local height = height or 560
    local variations = {}
    local shift = shift or util.by_pixel(52, -40)
    local reflection_shift = reflection_shift or util.by_pixel(52, 80)

    local crop_particle_2 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].crop_2
    local trunk_particle_2 = gleba_tree_particle_effects[name] and gleba_tree_particle_effects[name].trunk_2

    for i = 1, variation_count do
        local x = ((i - 1) % per_row) * width
        local y = math.floor((i-1)/per_row) * height
        local variation =
        {
            trunk =
            {
                filename = "__space-age__/graphics/entity/plant/" .. name .. "/" .. name .. "-trunk.png",
                flags = {"mipmap"},
                surface = "gleba",
                width = width,
                height = height,
                x = x,
                y = y,
                frame_count = 1,
                shift = shift,
                scale = 0.33 * scale_multiplier
            },
            leaves = gleba_tree_variation_progression_frames(name, "harvest", progression_frames, width, height, x, y, shift, scale_multiplier, surface, {"mipmap"}),
            normal = gleba_tree_variation_progression_frames(name, "normal", progression_frames, width, height, x, y, shift, scale_multiplier, surface),
            shadow = gleba_tree_variation_progression_frames(name, "harvest-shadow", progression_frames, width, height, x, y, shift, scale_multiplier, surface, {"mipmap", "shadow"}),

            underwater = gleba_tree_underwater_things[name] and gleba_tree_underwater_things[name].underwater or nil,

            water_reflection =
            {
                pictures =
                {
                    filename = "__space-age__/graphics/entity/plant/" .. name .. "/" .. name .. "-effect-map.png",
                    surface = surface,
                    width = width,
                    height = height,
                    x = x,
                    y = y,
                    shift = reflection_shift,
                    scale = 0.33 * scale_multiplier
                }
            } or nil,

            leaf_generation = {},
            branch_generation = {},

            leaves_when_damaged = 100,
            leaves_when_destroyed = 35,
            leaves_when_mined_manually = 40,
            leaves_when_mined_automatically = 16,
            branches_when_damaged = 20,
            branches_when_destroyed = 16,
            branches_when_mined_manually = 15,
            branches_when_mined_automatically = 8
        }
        table.insert(variation.shadow.filenames, "__space-age__/graphics/entity/plant/" .. name .. "/" .. name .. "-shadow.png")
        variation.shadow.frame_count = variation.shadow.frame_count + 1

        if crop_particle_2 then -- yumako
            variation.leaf_generation =
            {
                type = "create-particle",
                particle_name = crop_particle_2,
                offset_deviation = {{-1, -1}, {1, 1}},
                initial_height = 2.5,
                initial_height_deviation = 0.035,
                initial_vertical_speed = 0.025,
                initial_vertical_speed_deviation = 0.15,
                speed_from_center = 0.03,
                speed_from_center_deviation = 0.045,
                only_when_visible = true
            }
            variation.leaves_when_damaged = 25
            variation.leaves_when_destroyed = 35
            variation.leaves_when_mined_manually = 40
            variation.leaves_when_mined_automatically = 16
        end

        if trunk_particle_2 then -- yumako, hairyclubnub
            variation.branch_generation =
            {
                type = "create-particle",
                particle_name = trunk_particle_2,
                offset_deviation = {{-0.8, -1.4}, {0.8, 1.4}},
                initial_height = 1.7,
                initial_height_deviation = 1.5,
                initial_vertical_speed = 0.025,
                initial_vertical_speed_deviation = 0.15,
                speed_from_center = 0.035,
                speed_from_center_deviation = 0.02,
                only_when_visible = true
            }
            variation.branches_when_damaged = 40
            variation.branches_when_destroyed = 50
            variation.branches_when_mined_manually = 40
            variation.branches_when_mined_automatically = 20
        end

        table.insert(variations, variation)
    end
    return variations
end

local function gleba_tree_growth_variations(name, variation_count, per_row, scale_multiplier, width, height, shift)
    variation_count = variation_count or 5
    per_row = per_row or 5
    scale_multiplier = scale_multiplier or 1
    local width = width or 640
    local height = height or 560
    local growth_variations = {}
    local shift = shift or util.by_pixel(52, -40)

    for i = 1, variation_count do
        local function make_variation_sprite(filename)
            return
            {
                surface = "gleba",
                width = width,
                height = height,
                x = ((i - 1) % per_row) * width,
                y = math.floor((i - 1) / per_row) * height,
                shift = shift,
                scale = 0.33 * scale_multiplier,
                filename = filename
            }
        end
        local growth_variation =
        {
            growth_warp = make_variation_sprite(string.format("__space-age__/graphics/entity/plant/%s/%s-growth-warp.png", name, name)),
            trunk_warp = make_variation_sprite(string.format("__space-age__/graphics/entity/plant/%s/%s-trunk-warp.png", name, name)),
            shadow_warp = make_variation_sprite(string.format("__space-age__/graphics/entity/plant/%s/%s-shadow-warp.png", name, name)),
            harvest_warp = make_variation_sprite(string.format("__space-age__/graphics/entity/plant/%s/%s-harvest-warp.png", name, name)),
            trunk_alpha = make_variation_sprite(string.format("__space-age__/graphics/entity/plant/%s/%s-trunk-alpha.png", name, name)),
            shadow_alpha = make_variation_sprite(string.format("__space-age__/graphics/entity/plant/%s/%s-shadow-alpha.png", name, name)),
            harvest_alpha = make_variation_sprite(string.format("__space-age__/graphics/entity/plant/%s/%s-harvest-alpha.png", name, name)),
            progress_exponent = 1.0,
        }
        table.insert(growth_variations, growth_variation)
    end
    return growth_variations
end

local function gleba_tree_growth_mounds(name, variation_count, scale_multiplier)
    variation_count = variation_count or 5
    scale_multiplier = scale_multiplier or 1
    local growth_mounds = {}
    for i = 1, variation_count do
        table.insert(growth_mounds,
        {
            filename = string.format("__space-age__/graphics/entity/plant/%s/%s-mound.png", name, name),
            x = 0,
            y = 0,
            width = 100,
            height = 75,
            scale = 0.33 * scale_multiplier
        })
    end
    return growth_mounds
end

local function minor_tints()
    return
    {
        {r = 255, g = 255, b =  255},
        {r = 220, g = 255, b =  255},
        {r = 255, g = 220, b =  255},
        {r = 255, g = 255, b =  220},
        {r = 220, g = 220, b =  255},
        {r = 255, g = 220, b =  220},
        {r = 220, g = 255, b =  220}
    }
end

local nauvis_tree = data_tree["tree-08"]

local temperate_plant = table.deepcopy(data_tree[tree_temperate])

tree_temperate_plant = tree_temperate .. "-" .. plant
temperate_plant.type = plant
temperate_plant.localised_name = {"entity-name." .. tree_temperate}
temperate_plant.name = tree_temperate_plant
temperate_plant.order = z_d .. "-" .. plant
temperate_plant.minable =
{
    mining_particle = "wooden-particle",
    mining_time = 0.5,
    results =
    {
        {type = item, name = tree_temperate, amount = 1},
        {type = item, name = bio_resin, amount = 4}
    }
}

temperate_plant.flags = plant_flags
temperate_plant.growth_ticks = 20 * minute
temperate_plant.impact_category = "tree"
temperate_plant.autoplace =
{
    probability_expression = 0,
    tile_restriction =
    {
        "grass-1", "grass-2", "grass-3", "grass-4",
        --"dry-dirt", "dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7",
        --"red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3",
        --"sand-1", "sand-2", "sand-3"
    }
}

temperate_plant.surface_conditions = {{property = pressure, min = 1000, max = 1000}}
temperate_plant.variations = gleba_tree_variations("planted-tree", 8, 4, 1.3, 640, 560, util.by_pixel(70, -40), util.by_pixel(50, 0), "nauvis", 3)
temperate_plant.growth_variations = gleba_tree_growth_variations("planted-tree", 8, 4, 1.3, 640, 560, util.by_pixel(70, -40))
temperate_plant.growth_mounds = gleba_tree_growth_mounds("planted-tree", 8, 1.3)
temperate_plant.colors = minor_tints()
--temperate_plant.agricultural_tower_tint = {primary = {r = 0.7, g = 1.0, b = 0.2, a = 1}, secondary = {r = 0.561, g = 0.613, b = 0.308, a = 1.000}}
temperate_plant.mining_sound = nauvis_tree and table.deepcopy(nauvis_tree.mining_sound) or nil
temperate_plant.mined_sound = nauvis_tree and table.deepcopy(nauvis_tree.mined_sound) or nil
temperate_plant.ambient_sounds = nauvis_tree and table.deepcopy(nauvis_tree.ambient_sounds) or nil

data:extend({temperate_plant})

if mods[arig_mods] then
    table.insert(data_plant[tree_temperate_plant].minable.results, {type = fluid, name = liquid_resin_angels, amount = 3840})
end

local swamp_plant = table.deepcopy(data_tree[tree_swamp])

tree_swamp_plant = tree_swamp .. "-" .. plant
swamp_plant.type = plant
swamp_plant.localised_name = {"entity-name." .. tree_swamp}
swamp_plant.name = tree_swamp_plant
swamp_plant.order = z_e .. "-" .. plant
swamp_plant.minable =
{
    mining_particle = "wooden-particle",
    mining_time = 0.5,
    results =
    {
        {type = item, name = tree_swamp, amount = 1},
        {type = item, name = bio_plastic, amount = 4}
    }
}

swamp_plant.flags = plant_flags
swamp_plant.growth_ticks = 20 * minute
swamp_plant.impact_category = "tree"
swamp_plant.autoplace =
{
    probability_expression = 0,
    tile_restriction =
    {
        --"grass-1", "grass-2", "grass-3", "grass-4",
        "dry-dirt", "dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7",
        --"red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3",
        --"sand-1", "sand-2", "sand-3"
    }
}

swamp_plant.surface_conditions = {{property = pressure, min = 1000, max = 1000}}
swamp_plant.variations = gleba_tree_variations("planted-tree", 8, 4, 1.3, 640, 560, util.by_pixel(70, -40), util.by_pixel(50, 0), "nauvis", 3)
swamp_plant.growth_variations = gleba_tree_growth_variations("planted-tree", 8, 4, 1.3, 640, 560, util.by_pixel(70, -40))
swamp_plant.growth_mounds = gleba_tree_growth_mounds("planted-tree", 8, 1.3)
swamp_plant.colors = minor_tints()
--swamp_plant.agricultural_tower_tint = {primary = {r = 0.7, g = 1.0, b = 0.2, a = 1}, secondary = {r = 0.561, g = 0.613, b = 0.308, a = 1.000}}
swamp_plant.mining_sound = nauvis_tree and table.deepcopy(nauvis_tree.mining_sound) or nil
swamp_plant.mined_sound = nauvis_tree and table.deepcopy(nauvis_tree.mined_sound) or nil
swamp_plant.ambient_sounds = nauvis_tree and table.deepcopy(nauvis_tree.ambient_sounds) or nil

data:extend({swamp_plant})

if mods[arig_mods] then
    table.insert(data_plant[tree_swamp_plant].minable.results, {type = fluid, name = liquid_plastic_angels, amount = 3840})
end

local desert_plant = table.deepcopy(data_tree[tree_desert])

tree_desert_plant = tree_desert .. "-" .. plant
desert_plant.type = plant
desert_plant.localised_name = {"entity-name." .. tree_desert}
desert_plant.name = tree_desert_plant
desert_plant.order = z_f .. "-" .. plant
desert_plant.minable =
{
    mining_particle = "wooden-particle",
    mining_time = 0.5,
    results =
    {
        {type = item, name = tree_desert, amount = 1},
        {type = item, name = bio_rubber, amount = 4}
    }
}

desert_plant.flags = plant_flags
desert_plant.growth_ticks = 20 * minute
desert_plant.impact_category = "tree"
desert_plant.autoplace =
{
    probability_expression = 0,
    tile_restriction =
    {
        --"grass-1", "grass-2", "grass-3", "grass-4",
        --"dry-dirt", "dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7",
        "red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3",
        "sand-1", "sand-2", "sand-3"
    }
}

desert_plant.surface_conditions = {{property = pressure, min = 1000, max = 1000}}
desert_plant.variations = gleba_tree_variations("planted-tree", 8, 4, 1.3, 640, 560, util.by_pixel(70, -40), util.by_pixel(50, 0), "nauvis", 3)
desert_plant.growth_variations = gleba_tree_growth_variations("planted-tree", 8, 4, 1.3, 640, 560, util.by_pixel(70, -40))
desert_plant.growth_mounds = gleba_tree_growth_mounds("planted-tree", 8, 1.3)
desert_plant.colors = minor_tints()
--desert_plant.agricultural_tower_tint = {primary = {r = 0.7, g = 1.0, b = 0.2, a = 1}, secondary = {r = 0.561, g = 0.613, b = 0.308, a = 1.000}}
desert_plant.mining_sound = nauvis_tree and table.deepcopy(nauvis_tree.mining_sound) or nil
desert_plant.mined_sound = nauvis_tree and table.deepcopy(nauvis_tree.mined_sound) or nil
desert_plant.ambient_sounds = nauvis_tree and table.deepcopy(nauvis_tree.ambient_sounds) or nil

data:extend({desert_plant})

if mods[arig_mods] then
    table.insert(data_plant[tree_desert_plant].minable.results, {type = fluid, name = liquid_rubber_angels, amount = 3840})
end