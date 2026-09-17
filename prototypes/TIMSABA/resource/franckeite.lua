local graphics_franckeite = "__TIMSABA__/graphics/icons/angels/resource/franckeite-ore/"

-- Franckeite ore / Sn + Mg + Al + Ag + Au + Pt
ore_franckeite = "franckeite-ore"
crushed_franckeite = "franckeite-crushed"
chunk_franckeite = "franckeite-chunk"
crystal_franckeite = "franckeite-crystal"
purified_franckeite = "franckeite-purified"
TIMSABA.functions.create_items
({
    {
        name = ore_franckeite,
        subgroup = is_ores,
        icon = graphics_franckeite .. ore_franckeite .. ".png",
        pictures =
        {
            {filename = graphics_franckeite .. ore_franckeite .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_franckeite .. ore_franckeite .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_franckeite .. ore_franckeite .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = h
    },
    {
        name = crushed_franckeite,
        subgroup = is_ore_processing_a,
        icon = graphics_franckeite .. crushed_franckeite .. ".png",
        icon_size = 32,
        order = h
    },
    {
        name = chunk_franckeite,
        subgroup = is_ore_processing_b,
        icon = graphics_franckeite .. chunk_franckeite .. ".png",
        icon_size = 32,
        order = h
    },
    {
        name = crystal_franckeite,
        subgroup = is_ore_processing_c,
        icon = graphics_franckeite .. crystal_franckeite .. ".png",
        icon_size = 32,
        order = h
    },
    {
        name = purified_franckeite,
        subgroup = is_ore_processing_d,
        icon = graphics_franckeite .. purified_franckeite .. ".png",
        icon_size = 32,
        order = h
    }
})

-- FLUID

-- RECIPE
crushed_franckeite_processing = "franckeite-crushed-sorting"
chunk_franckeite_processing = "franckeite-chunk-sorting"
crystal_franckeite_processing = "franckeite-crystal-sorting"
purified_franckeite_processing = "franckeite-purified-sorting"
TIMSABA.functions.create_recipes
({
    -- CRUSHED
    {
        name = crushed_franckeite,
        categories = {angels_ore_refining_T1},
        subgroup = is_ore_processing_a,
        icons = THREE_R_I(ore_franckeite, crushed_franckeite, stone_crushed_angels),
        order = h,
        energy_required = 2, -- Franckeite ore -crushing-> Franckeite crushed + Stone crushed (crushing)
        ingredients = {{type = item, name = ore_franckeite, amount = 2}},
        results =
        {
            {type = item, name = crushed_franckeite, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = crushed_franckeite
    },
    -- CHUNKS
    {
        name = chunk_franckeite,
        categories = {angels_ore_refining_T2},
        subgroup = is_ore_processing_b,
        icons = THREE_D_I(crushed_franckeite, nil, water_purified_angels, chunk_franckeite, calcium_silicate, water_green_waste),
        order = h,
        energy_required = 2, -- Franckeite crushed + Purified water -flotation-> Franckeite chunks + Calcium silicate + Chloric waste water
        ingredients =
        {
            {type = item, name = crushed_franckeite, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = chunk_franckeite, amount = 4},
            {type = item, name = calcium_silicate, amount = 1, independent_probability = 0.5},
            {type = fluid, name = water_green_waste, amount = 60}
        },
        main_product = chunk_franckeite
    },
    -- CRYSTALS
    {
        name = crystal_franckeite,
        categories = {angels_ore_refining_T3},
        subgroup = is_ore_processing_c,
        icons = THREE_I(chunk_franckeite, hydrochloric_acid_angels, crystal_franckeite),
        order = h,
        energy_required = 2, -- Franckeite chunks + HCl -leaching-> Franckeite crystals
        ingredients =
        {
            {type = item, name = chunk_franckeite, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 15}
        },
        results = {{type = item, name = crystal_franckeite, amount = 4}},
        main_product = crystal_franckeite
    },
    -- PURIFIED
    {
        name = purified_franckeite,
        categories = {angels_ore_refining_T4},
        subgroup = is_ore_processing_d,
        icons = TWO_I(crystal_franckeite, purified_franckeite),
        order = h,
        energy_required = 2, -- Franckeite crystals -refinery-> Franckeite purified
        ingredients = {{type = item, name = crystal_franckeite, amount = 4}},
        results = {{type = item, name = purified_franckeite, amount = 4}},
        main_product = purified_franckeite
    },
    -- SORTING
    {
        name = crushed_franckeite_processing,
        categories = {ore_sorting_6},
        subgroup = is_ore_sorting_T1,
        icons = RECYCLING_I(recycling_png, crushed_franckeite),
        order = h,
        allow_productivity = true,
        energy_required = 1, -- Franckeite crushed (Sorting) / Sn + Mg + Calcium silicate
        ingredients = {{type = item, name = crushed_franckeite, amount = 4}},
        results =
        {
            {type = item, name = tin_ore_bob, amount = 2},
            {type = item, name = magnesium_ore, amount = 1},
            {type = item, name = calcium_silicate, amount = 1}
        },
        main_product = tin_ore_bob
    },
    {
        name = chunk_franckeite_processing,
        categories = {ore_sorting_6},
        subgroup = is_ore_sorting_T2,
        icons = RECYCLING_I(recycling_png, chunk_franckeite),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Franckeite chunks (Sorting) / Sn + Mg + Al + Ag + Calcium silicate
        ingredients = {{type = item, name = chunk_franckeite, amount = 8}},
        results =
        {
            {type = item, name = tin_ore_bob, amount = 4},
            {type = item, name = magnesium_ore, amount = 2},
            {type = item, name = aluminium_ore_bob, amount = 1},
            {type = item, name = silver_ore_bob, amount = 1},
            {type = item, name = calcium_silicate, amount = 1}
        },
        main_product = tin_ore_bob
    },
    {
        name = crystal_franckeite_processing,
        categories = {ore_sorting_6},
        subgroup = is_ore_sorting_T3,
        icons = RECYCLING_I(recycling_png, crystal_franckeite),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Franckeite crystals (Sorting) / Sn + Mg + Al + Ag + Au + Calcium silicate
        ingredients = {{type = item, name = crystal_franckeite, amount = 8}},
        results =
        {
            {type = item, name = tin_ore_bob, amount = 4},
            {type = item, name = magnesium_ore, amount = 2},
            {type = item, name = aluminium_ore_bob, amount = 1},
            {type = item, name = silver_ore_bob, amount = 1},
            {type = item, name = gold_ore_bob, amount = 1},
            {type = item, name = calcium_silicate, amount = 1}
        },
        main_product = tin_ore_bob
    },
    {
        name = purified_franckeite_processing,
        categories = {ore_sorting_6},
        subgroup = is_ore_sorting_T4,
        icons = RECYCLING_I(recycling_png, purified_franckeite),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Franckeite purified (Sorting) / Sn + Mg + Al + Ag + Au + Pt
        ingredients = {{type = item, name = purified_franckeite, amount = 8}},
        results =
        {
            {type = item, name = tin_ore_bob, amount = 4},
            {type = item, name = magnesium_ore, amount = 2},
            {type = item, name = aluminium_ore_bob, amount = 1},
            {type = item, name = silver_ore_bob, amount = 1},
            {type = item, name = gold_ore_bob, amount = 1},
            {type = item, name = platinum_ore_angels, amount = 1}
        },
        main_product = tin_ore_bob
    }
})

-- ORE
local ore_franckeite_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
ore_franckeite_particle.name = ore_franckeite .. _particle
for _, picture in pairs(ore_franckeite_particle.pictures) do
    picture.tint = {r = 115/256, g = 175/256, b = 035/256, a = 1.000}
end
data:extend({ore_franckeite_particle})

data:extend
({
    TIMSABA.functions.create_resource(
        {name = ore_franckeite, subgroup = is_ores, order = h, map_color = {r = 080/255, g = 135/255, b = 020/255, a = 1.000}, mining_visualisation_tint = {r = 145/255, g = 210/255, b = 045/255, a = 1.000}},
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    )
})

TIMSABA.functions.create_autoplace_control(ore_franckeite)

data_planet[planet_nauvis].map_gen_settings.autoplace_controls[ore_franckeite] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[ore_franckeite] = {}

data_resource[ore_franckeite].location = planet_nauvis