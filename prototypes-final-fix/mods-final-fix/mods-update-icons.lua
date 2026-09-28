if mods[loaders_modernized_integrations] then
    if reskins.bobs and (reskins.bobs.triggers.logistics.entities == false) then return end

    -- Set input parameters
    local inputs =
    {
        icon_name = "miniloader",
        base_entity_name = splitter,
        mod = compatibility,
        group = "miniloader",
        particles = {[medium] = 1, [big] = 4},
        technology_icon_size = 256,
        make_remnants = false,
    }

    -- Handle belt tier labels
    inputs.tier_labels = reskins.lib.settings.get_value("reskins-bobs-do-belt-entity-tier-labeling") and true or false

    local tier_map =
    {
        [T0_loader] = {tier = 0, sprite_variant = 1, base_belt = T0_transport_belt},
        [T1_loader] = {tier = 1, sprite_variant = 1, base_belt = T1_transport_belt},
        [T2_loader] = {tier = 2, sprite_variant = 2, base_belt = T2_transport_belt},
        [T3_loader] = {tier = 3, sprite_variant = 2, base_belt = T3_transport_belt},
        [T4_loader] = {tier = 4, sprite_variant = 2, base_belt = T4_transport_belt},
        [T5_loader] = {tier = 5, sprite_variant = 2, base_belt = T5_transport_belt},
        [vulcanus_loader] = {tier = 6, sprite_variant = 2, base_belt = vulcanus_transport_belt}
    }
    if mods[arig_mods] then
        --tier_map[hyper_loader_arig] = {tier = 0, sprite_variant = 1, base_belt = hyper_transport_belt_arig}
        --tier_map[stack_loader] = {tier = 0, sprite_variant = 1, base_belt = hyper_transport_belt_arig}
    else
        --tier_map[stack_loader] = {tier = 0, sprite_variant = 1, base_belt = T0_transport_belt}
    end

    local item_map =
    {
        [T0_loader] = {tier = 0, base_item = T0_transport_belt},
        [T1_loader] = {tier = 1, base_item = T1_transport_belt},
        [T2_loader] = {tier = 2, base_item = T2_transport_belt},
        [T3_loader] = {tier = 3, base_item = T3_transport_belt},
        [T4_loader] = {tier = 4, base_item = T4_transport_belt},
        [T5_loader] = {tier = 5, base_item = T5_transport_belt},
        [vulcanus_loader] = {tier = 6, base_item = vulcanus_transport_belt}
    }
    if mods[arig_mods] then
        --item_map[hyper_loader_arig] = {tier = 0, base_item = hyper_transport_belt_arig}
        --item_map[stack_loader] = {tier = 0, base_item = hyper_transport_belt_arig}
    else
        --item_map[stack_loader] = {tier = 0, base_item = T0_transport_belt}
    end

    -- Reskin entities
    for name, map in pairs(tier_map) do
        if map.is_inserter then
            inputs.type = "inserter"
            inputs.make_explosions = true
        else
            inputs.type = "loader-1x1"
            inputs.make_explosions = false
        end

        ---@type data.InserterPrototype|data.Loader1x1Prototype
        local entity = data.raw[inputs.type][name]
        local base_belt = data_transport_belt[map.base_belt]
        if not entity then
            goto continue
        end
        inputs.tint = reskins.lib.tiers.get_belt_tint(map.tier)

        reskins.lib.setup_standard_entity(name, map.tier, inputs)

        -- Retint the mask
        if map.is_inserter then
            ---@cast entity data.InserterPrototype
            local base_path = map.is_filter and "filter-inserter" or "inserter"

            entity.corpse = "small-remnants"
            entity.platform_picture.sheets =
            {
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-" .. base_path .. "-base.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-mask.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-highlights.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    blend_mode = additive
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-shadow.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    draw_as_shadow = true
                }
            }
        else
            ---@cast entity data.Loader1x1Prototype
            local base_path = map.is_filter and "filter-structure" or "structure"

            entity.structure.direction_in.sheets =
            {
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-" .. base_path .. "-base.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 0
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-mask.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 0,
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-highlights.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 0,
                    blend_mode = additive
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-shadow.png",
                    draw_as_shadow = true,
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 0
                }
            }

            entity.structure.direction_out.sheets =
            {
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-" .. base_path .. "-base.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-mask.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-highlights.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    blend_mode = additive
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-shadow.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    draw_as_shadow = true
                }
            }
            entity.belt_animation_set = base_belt and base_belt.belt_animation_set
        end

        ::continue::
    end

    -- Reskin icons
    for name, map in pairs(item_map) do

        local item = data_item[name]

        if not item then
            goto continue
        end

        inputs.icon_base = map.icon_base or "miniloader"
        inputs.tint = reskins.lib.tiers.get_belt_tint(map.tier)

        reskins.lib.construct_icon(name, map.tier, inputs)

        local base_item = map.base_item and data_item[map.base_item] or nil
        if not base_item then
            if name ~= "chute-miniloader" then
                base_item = data_item[string.gsub(string.gsub(name, "filter%-", ""), "miniloader", transport_belt)]
            elseif data_item[T0_transport_belt] then
                base_item = data_item[T0_transport_belt]
            end
        end

        if base_item then
            inputs.sort_order = string.gsub(string.gsub(item.order, "^[a-z]", "d"), "transport%-belt", "miniloader")
            inputs.sort_group = base_item.group
            inputs.sort_subgroup = base_item.subgroup

            if string.find(name, "filter") then
                inputs.sort_order = string.gsub(inputs.sort_order, "filter", "n-filter")
            elseif name == "chute-miniloader" then
                inputs.sort_order = string.gsub(inputs.sort_order, "miniloader", "z-miniloader")
            end

            reskins.lib.assign_order(name, inputs)
        end

        ::continue::
    end

    -- Technologies
    local technology_map =
    {
        [T0_loader] = {tier = 0},
        [T1_loader] = {tier = 1},
        [T2_loader] = {tier = 2},
        [T3_loader] = {tier = 3},
        [T4_loader] = {tier = 4},
        [T5_loader] = {tier = 5}
    }

    -- Reskin technologies
    for name, map in pairs(technology_map) do
        local technology = data_technology[name]
        if not technology then
            goto continue
        end

        inputs.icon_base = nil
        inputs.tint = reskins.lib.tiers.get_belt_tint(map.tier)

        reskins.lib.construct_technology_icon(name, inputs)

        ::continue::
    end
end

-- ELECTRIC BLAST FURNACES
local blast_furnace_icon = "__angelssmeltinggraphics__/graphics/icons/blast-furnace.png"
local electricity_icon = "__TIMSABA__/graphics/icons/electricity.png"
local icons_electric_blast_furnaces =
{
    {name = electric_blast_furnace_1, tier = 1},
    {name = electric_blast_furnace_2, tier = 2},
    {name = electric_blast_furnace_3, tier = 3},
    {name = electric_blast_furnace_4, tier = 4}
}
for _, BUILD in pairs(icons_electric_blast_furnaces) do
    local new_icons = util.table.deepcopy(data_item[BUILD.name].icons)
    or angelsmods.functions.add_number_icon_layer({{icon = blast_furnace_icon, icon_size = 64, scale = 0.5}}, BUILD.tier, angelsmods.smelting.number_tint)

    table.insert(new_icons, {icon = electricity_icon, icon_size = 64, scale = 0.25, shift = {8,-8}})

    data_item[BUILD.name].icons = new_icons
    data_recipe[BUILD.name].icons = new_icons
    data_assembling[BUILD.name].icons = new_icons
end

-- CENTRIFUGES
local underlay_name = "pipe-underlay"

---@param filename string
---@return table
local function underlay_animation(filename)
    return
    {
        filename = "__TIMSABA__/graphics/entity/fluid-centrifuge/" .. filename .. ".png",
        priority = extra_high,
        width = 256,
        height = 256,
        scale = 0.5
    }
end

---@param type "input" | "output"
---@param direction defines.direction
---@param position [number, number]
---@return table
local function fluid_box(type, direction, position)
    return
    {
        production_type = type,
        pipe_covers = pipecoverspictures(),
        enable_working_visualisations = {underlay_name},
        volume = 1000,
        pipe_connections = {{flow_direction = type, direction = direction, position = position}}
    }
end

local centrifuges =
{
    data_assembling[centrifuge_1],
    data_assembling[centrifuge_2],
    data_assembling[centrifuge_3],
    data_assembling[centrifuge_4]
}

for _, centrifuge in ipairs(centrifuges) do
    centrifuge.use_mirroring = true
    centrifuge.fluid_boxes =
    {
        fluid_box(input, defines.direction.north, {-1, -1}),
        fluid_box(input, defines.direction.north, {1, -1}),
        fluid_box(output, defines.direction.south, {-1, 1}),
        fluid_box(output, defines.direction.south, {1, 1})
    }

    local vertical_underlay = underlay_animation("pipe-underlay-vertical")
    local horizontal_underlay = underlay_animation("pipe-underlay-horizontal")

    table.insert(centrifuge.graphics_set.working_visualisations, 1,
    {
        name = underlay_name,
        enabled_by_name = true,
        always_draw = true,
        render_layer = "lower-object",
        secondary_draw_order = -1,
        north_animation = vertical_underlay,
        east_animation = horizontal_underlay,
        south_animation = vertical_underlay,
        west_animation = horizontal_underlay
    })
end