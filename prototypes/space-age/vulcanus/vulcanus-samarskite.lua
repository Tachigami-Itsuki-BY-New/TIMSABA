local graphics_samarskite = "__TIMSABA__/graphics/icons/space-age/vulcanus/samarskite-ore/"

-- Samarskite ore / Nb + Ho + Fe + Mn + U + Th
samarskite_ore = "samarskite-ore"
samarskite_crushed = "samarskite-crushed"
samarskite_chunks = "samarskite-chunks"
samarskite_crystals = "samarskite-crystals"
samarskite_purified = "samarskite-purified"
TIMSABA.functions.create_items
({
    {
        name = samarskite_ore,
        subgroup = is_samarskite,
        icon = graphics_samarskite .. samarskite_ore .. ".png",
        pictures =
        {
            {filename = graphics_samarskite .. samarskite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_samarskite .. samarskite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_samarskite .. samarskite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        name = samarskite_crushed,
        subgroup = is_samarskite,
        icon = graphics_samarskite .. samarskite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = samarskite_chunks,
        subgroup = is_samarskite,
        icon = graphics_samarskite .. samarskite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = samarskite_crystals,
        subgroup = is_samarskite,
        icon = graphics_samarskite .. samarskite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        name = samarskite_purified,
        subgroup = is_samarskite,
        icon = graphics_samarskite .. samarskite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

-- FLUID

-- RECIPE
samarskite_crushed_sorting = "samarskite-crushed-sorting"
samarskite_chunks_sorting = "samarskite-chunks-sorting"
samarskite_crystals_sorting = "samarskite-crystals-sorting"
samarskite_purified_sorting = "samarskite-purified-sorting"
TIMSABA.functions.create_recipes
({
    -- CRUSHED
    {
        name = samarskite_crushed,
        categories = {angels_ore_refining_T1},
        subgroup = is_samarskite,
        icons = THREE_R_I(samarskite_ore, samarskite_crushed, stone_crushed_angels),
        order = b,
        energy_required = 2, -- Samarskite ore -crushing-> Samarskite crushed + Stone crushed (crushing)
        ingredients = {{type = item, name = samarskite_ore, amount = 2}},
        results =
        {
            {type = item, name = samarskite_crushed, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = samarskite_crushed
    },
    -- CHUNKS
    {
        name = samarskite_chunks,
        categories = {angels_ore_refining_T2},
        subgroup = is_samarskite,
        icons = THREE_D_I(samarskite_crushed, nil, water_purified_angels, samarskite_chunks, calcium_silicate, water_greenyellow_waste),
        order = c,
        energy_required = 2, -- Samarskite crushed + Purified water -flotation-> Samarskite chunks + Calcium silicate + Fluoric waste water
        ingredients =
        {
            {type = item, name = samarskite_crushed, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = samarskite_chunks, amount = 4},
            {type = item, name = calcium_silicate, amount = 1, independent_probability = 0.5},
            {type = fluid, name = water_greenyellow_waste, amount = 60}
        },
        main_product = samarskite_chunks
    },
    -- CRYSTALS
    {
        name = samarskite_crystals,
        categories = {angels_ore_refining_T3},
        subgroup = is_samarskite,
        icons = THREE_I(samarskite_chunks, hydrofluoric_acid_angels, samarskite_crystals),
        order = d,
        energy_required = 2, -- Samarskite chunks + HF -leaching-> Samarskite crystals
        ingredients =
        {
            {type = item, name = samarskite_chunks, amount = 4},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 15}
        },
        results = {{type = item, name = samarskite_crystals, amount = 4}},
        main_product = samarskite_crystals
    },
    -- PURIFIED
    {
        name = samarskite_purified,
        categories = {angels_ore_refining_T4},
        subgroup = is_samarskite,
        icons = TWO_I(samarskite_crystals, samarskite_purified),
        order = e,
        energy_required = 2, -- Samarskite crystals -refinery-> Samarskite purified
        ingredients = {{type = item, name = samarskite_crystals, amount = 4}},
        results = {{type = item, name = samarskite_purified, amount = 4}},
        main_product = samarskite_purified
    },
    -- SORTING
    {
        localised_name = {"recipe-name.sorting-recipe", {"item-name." .. samarskite_ore}},
        name = samarskite_ore .. _sorting,
        categories = {ore_sorting_6},
        subgroup = is_samarskite,
        icons = RECYCLING_I(recycling_png, samarskite_ore),
        order = f,
        allow_productivity = true,
        energy_required = 1,
        ingredients = {{type = item, name = samarskite_ore, amount = 4}},
        results = {{type = item, name = slag_angels, amount = 1}},
        main_product = slag_angels
    },
    {
        name = samarskite_crushed_sorting,
        categories = {ore_sorting_6},
        subgroup = is_samarskite,
        icons = RECYCLING_I(recycling_png, samarskite_crushed),
        order = g,
        allow_productivity = true,
        energy_required = 1, -- Samarskite crushed (Sorting) / Nb + Ho + Calcium silicate
        ingredients = {{type = item, name = samarskite_crushed, amount = 4}},
        results =
        {
            {type = item, name = niobium_ore, amount = 2},
            {type = item, name = holmium_ore, amount = 1},
            {type = item, name = calcium_silicate, amount = 1}
        },
        main_product = niobium_ore
    },
    {
        name = samarskite_chunks_sorting,
        categories = {ore_sorting_6},
        subgroup = is_samarskite,
        icons = RECYCLING_I(recycling_png, samarskite_chunks),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Samarskite chunks (Sorting) / Nb + Ho + Fe + Mn + Calcium silicate
        ingredients = {{type = item, name = samarskite_chunks, amount = 8}},
        results =
        {
            {type = item, name = niobium_ore, amount = 4},
            {type = item, name = holmium_ore, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = manganese_ore_angels, amount = 1},
            {type = item, name = calcium_silicate, amount = 1}
        },
        main_product = niobium_ore
    },
    {
        name = samarskite_crystals_sorting,
        categories = {ore_sorting_6},
        subgroup = is_samarskite,
        icons = RECYCLING_I(recycling_png, samarskite_crystals),
        order = i,
        allow_productivity = true,
        energy_required = 2, -- Samarskite crystals (Sorting) / Nb + Ho + Fe + Mn + U + Calcium silicate
        ingredients = {{type = item, name = samarskite_crystals, amount = 8}},
        results =
        {
            {type = item, name = niobium_ore, amount = 4},
            {type = item, name = holmium_ore, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = manganese_ore_angels, amount = 1},
            {type = item, name = uranium_ore, amount = 1},
            {type = item, name = calcium_silicate, amount = 1}
        },
        main_product = niobium_ore
    },
    {
        name = samarskite_purified_sorting,
        categories = {ore_sorting_6},
        subgroup = is_samarskite,
        icons = RECYCLING_I(recycling_png, samarskite_purified),
        order = j,
        allow_productivity = true,
        energy_required = 2, -- Samarskite purified (Sorting) / Nb + Ho + Fe + Mn + U + Th
        ingredients = {{type = item, name = samarskite_purified, amount = 8}},
        results =
        {
            {type = item, name = niobium_ore, amount = 4},
            {type = item, name = holmium_ore, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = manganese_ore_angels, amount = 1},
            {type = item, name = uranium_ore, amount = 1},
            {type = item, name = thorium_ore_bob, amount = 1}
        },
        main_product = niobium_ore
    }
})

-- ORE
local samarskite_ore_ac = "samarskite_ore"
data:extend
({
    TIMSABA.functions.create_resource(
        {
            name = samarskite_ore,
            subgroup = is_samarskite,
            order = a,
            map_color = {r = 065/255, g = 020/255, b = 065/255, a = 1.000},
            mining_visualisation_tint = {r = 085/255, g = 060/255, b = 085/255, a = 1.000},
            category = "hard-solid"
        },
        {probability_expression = 0}
    )
})

local samarskite_ore_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
samarskite_ore_particle.name = samarskite_ore .. _particle
for _, picture in pairs(samarskite_ore_particle.pictures) do
    picture.tint = {r = 075/256, g = 040/256, b = 075/256, a = 1.000}
end
data:extend({samarskite_ore_particle})

TIMSABA.functions.create_autoplace_control(samarskite_ore_ac, samarskite_ore_ac, {"", "[item=samarskite-ore] ", {"entity-name.samarskite-ore"}})

data:extend
({
    {
        type = "noise-expression",
        name = "vulcanus_samarskite_ore_size",
        expression = "slider_rescale(control:samarskite_ore:size, 2)"
    },
    {
        type = "noise-expression",
        name = "vulcanus_samarskite_ore_region",
        expression = "max(vulcanus_starting_tungsten,\z
        min(1 - vulcanus_starting_circle,\z
        vulcanus_place_metal_spots(799, 15, 2,\z
        vulcanus_samarskite_ore_size * min(1.2, vulcanus_ore_dist) * 25,\z
        control:samarskite_ore:frequency,\z
        vulcanus_basalts_resource_favorability)))"
    },
    {
        type = "noise-expression",
        name = "vulcanus_samarskite_ore_probability",
        intended_property = "probability",
        expression = "(control:samarskite_ore:size > 0) * (1000 * ((1 + vulcanus_samarskite_ore_region) * random_penalty_between(0.9, 1, 1) - 1))"
    },
    {
        type = "noise-expression",
        name = "vulcanus_samarskite_ore_richness",
        intended_property = "richness",
        expression = "vulcanus_samarskite_ore_region * random_penalty_between(0.9, 1, 1)\z
        * 10000 * vulcanus_starting_area_multiplier\z
        * control:samarskite_ore:richness / vulcanus_samarskite_ore_size"
    }
})

data_planet[planet_vulcanus].map_gen_settings.property_expression_names["entity:samarskite-ore:probability"] = "vulcanus_samarskite_ore_probability"
data_planet[planet_vulcanus].map_gen_settings.property_expression_names["entity:samarskite-ore:richness"] = "vulcanus_samarskite_ore_richness"
data_planet[planet_vulcanus].map_gen_settings.autoplace_controls[samarskite_ore_ac] = {}
data_planet[planet_vulcanus].map_gen_settings.autoplace_settings.entity.settings[samarskite_ore] = {}

data_resource[samarskite_ore].location = planet_vulcanus