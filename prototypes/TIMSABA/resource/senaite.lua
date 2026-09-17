local graphics_senaite = "__TIMSABA__/graphics/icons/angels/resource/senaite-ore/"

-- Senaite ore / Pb + Mn + Ni + Zn + Ti + Cr
ore_senaite = "senaite-ore"
crushed_senaite = "senaite-crushed"
chunk_senaite = "senaite-chunk"
crystal_senaite = "senaite-crystal"
purified_senaite = "senaite-purified"
TIMSABA.functions.create_items
({
    {
        name = ore_senaite,
        subgroup = is_ores,
        icon = graphics_senaite .. ore_senaite .. ".png",
        pictures =
        {
            {filename = graphics_senaite .. ore_senaite .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_senaite .. ore_senaite .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_senaite .. ore_senaite .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = g
    },
    {
        name = crushed_senaite,
        subgroup = is_ore_processing_a,
        icon = graphics_senaite .. crushed_senaite .. ".png",
        icon_size = 32,
        order = g
    },
    {
        name = chunk_senaite,
        subgroup = is_ore_processing_b,
        icon = graphics_senaite .. chunk_senaite .. ".png",
        icon_size = 32,
        order = g
    },
    {
        name = crystal_senaite,
        subgroup = is_ore_processing_c,
        icon = graphics_senaite .. crystal_senaite .. ".png",
        icon_size = 32,
        order = g
    },
    {
        name = purified_senaite,
        subgroup = is_ore_processing_d,
        icon = graphics_senaite .. purified_senaite .. ".png",
        icon_size = 32,
        order = g
    }
})

-- FLUID

-- RECIPE
crushed_senaite_processing = "senaite-crushed-sorting"
chunk_senaite_processing = "senaite-chunk-sorting"
crystal_senaite_processing = "senaite-crystal-sorting"
purified_senaite_processing = "senaite-purified-sorting"
TIMSABA.functions.create_recipes
({
    -- CRUSHED
    {
        name = crushed_senaite,
        categories = {angels_ore_refining_T1},
        subgroup = is_ore_processing_a,
        icons = THREE_R_I(ore_senaite, crushed_senaite, stone_crushed_angels),
        order = g,
        energy_required = 2, -- Senaite ore -crushing-> Senaite crushed + Stone crushed (crushing)
        ingredients = {{type = item, name = ore_senaite, amount = 2}},
        results =
        {
            {type = item, name = crushed_senaite, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = crushed_senaite
    },
    -- CHUNKS
    {
        name = chunk_senaite,
        categories = {angels_ore_refining_T2},
        subgroup = is_ore_processing_b,
        icons = THREE_D_I(crushed_senaite, nil, water_purified_angels, chunk_senaite, calcium_silicate, water_red_waste),
        order = g,
        energy_required = 2, -- Senaite crushed + Purified water -flotation-> Senaite chunks + Calcium silicate + Nitric waste water
        ingredients =
        {
            {type = item, name = crushed_senaite, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = chunk_senaite, amount = 4},
            {type = item, name = calcium_silicate, amount = 1, independent_probability = 0.5},
            {type = fluid, name = water_red_waste, amount = 60}
        },
        main_product = chunk_senaite
    },
    -- CRYSTALS
    {
        name = crystal_senaite,
        categories = {angels_ore_refining_T3},
        subgroup = is_ore_processing_c,
        icons = THREE_I(chunk_senaite, nitric_acid_angels, crystal_senaite),
        order = g,
        energy_required = 2, -- Senaite chunks + HNO₃ -leaching-> Senaite crystals
        ingredients =
        {
            {type = item, name = chunk_senaite, amount = 4},
            {type = fluid, name = nitric_acid_angels, amount = 15}
        },
        results = {{type = item, name = crystal_senaite, amount = 4}},
        main_product = crystal_senaite
    },
    -- PURIFIED
    {
        name = purified_senaite,
        categories = {angels_ore_refining_T4},
        subgroup = is_ore_processing_d,
        icons = TWO_I(crystal_senaite, purified_senaite),
        order = g,
        energy_required = 2, -- Senaite crystals -refinery-> Senaite purified
        ingredients = {{type = item, name = crystal_senaite, amount = 4}},
        results = {{type = item, name = purified_senaite, amount = 4}},
        main_product = purified_senaite
    },
    -- SORTING
    {
        name = crushed_senaite_processing,
        categories = {ore_sorting_6},
        subgroup = is_ore_sorting_T1,
        icons = RECYCLING_I(recycling_png, crushed_senaite),
        order = g,
        allow_productivity = true,
        energy_required = 1, -- Senaite crushed (Sorting) / Pb + Mn + Calcium silicate
        ingredients = {{type = item, name = crushed_senaite, amount = 4}},
        results =
        {
            {type = item, name = lead_ore_bob, amount = 2},
            {type = item, name = manganese_ore_angels, amount = 1},
            {type = item, name = calcium_silicate, amount = 1}
        },
        main_product = lead_ore_bob
    },
    {
        name = chunk_senaite_processing,
        categories = {ore_sorting_6},
        subgroup = is_ore_sorting_T2,
        icons = RECYCLING_I(recycling_png, chunk_senaite),
        order = g,
        allow_productivity = true,
        energy_required = 2, -- Senaite chunks (Sorting) / Pb + Mn + Ni + Zn + Calcium silicate
        ingredients = {{type = item, name = chunk_senaite, amount = 8}},
        results =
        {
            {type = item, name = lead_ore_bob, amount = 4},
            {type = item, name = manganese_ore_angels, amount = 2},
            {type = item, name = nickel_ore_bob, amount = 1},
            {type = item, name = zinc_ore_bob, amount = 1},
            {type = item, name = calcium_silicate, amount = 1}
        },
        main_product = lead_ore_bob
    },
    {
        name = crystal_senaite_processing,
        categories = {ore_sorting_6},
        subgroup = is_ore_sorting_T3,
        icons = RECYCLING_I(recycling_png, crystal_senaite),
        order = g,
        allow_productivity = true,
        energy_required = 2, -- Senaite crystals (Sorting) / Pb + Mn + Ni + Zn + Ti + Calcium silicate
        ingredients = {{type = item, name = crystal_senaite, amount = 8}},
        results =
        {
            {type = item, name = lead_ore_bob, amount = 4},
            {type = item, name = manganese_ore_angels, amount = 2},
            {type = item, name = nickel_ore_bob, amount = 1},
            {type = item, name = zinc_ore_bob, amount = 1},
            {type = item, name = titanium_ore_bob, amount = 1},
            {type = item, name = calcium_silicate, amount = 1}
        },
        main_product = lead_ore_bob
    },
    {
        name = purified_senaite_processing,
        categories = {ore_sorting_6},
        subgroup = is_ore_sorting_T4,
        icons = RECYCLING_I(recycling_png, purified_senaite),
        order = g,
        allow_productivity = true,
        energy_required = 2, -- Senaite purified (Sorting) / Pb + Mn + Ni + Zn + Ti + Cr
        ingredients = {{type = item, name = purified_senaite, amount = 8}},
        results =
        {
            {type = item, name = lead_ore_bob, amount = 4},
            {type = item, name = manganese_ore_angels, amount = 2},
            {type = item, name = nickel_ore_bob, amount = 1},
            {type = item, name = zinc_ore_bob, amount = 1},
            {type = item, name = titanium_ore_bob, amount = 1},
            {type = item, name = chromium_ore_angels, amount = 1}
        },
        main_product = lead_ore_bob
    }
})

-- ORE
local ore_senaite_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
ore_senaite_particle.name = ore_senaite .. _particle
for _, picture in pairs(ore_senaite_particle.pictures) do
    picture.tint = {r = 160/256, g = 100/256, b = 025/256, a = 1.000}
end
data:extend({ore_senaite_particle})

data:extend
({
    TIMSABA.functions.create_resource(
        {name = ore_senaite, subgroup = is_ores, order = g, map_color = {r = 115/255, g = 065/255, b = 015/255, a = 1.000}, mining_visualisation_tint = {r = 190/255, g = 125/255, b = 040/255, a = 1.000}},
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    )
})

TIMSABA.functions.create_autoplace_control(ore_senaite)

data_planet[planet_nauvis].map_gen_settings.autoplace_controls[ore_senaite] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[ore_senaite] = {}

data_resource[ore_senaite].location = planet_nauvis