local graphics_rheniite = "__TIMSABA__/graphics/icons/space-age/fulgora/rheniite/"

-- Rheniite ore / Re + Nb + Cr + W + Mo + V
rheniite_ore = "rheniite-ore"
rheniite_crushed = "rheniite-crushed"
rheniite_chunks = "rheniite-chunks"
rheniite_crystals = "rheniite-crystals"
rheniite_purified = "rheniite-purified"
TIMSABA.functions.create_items
({
    {
        name = rheniite_ore,
        subgroup = is_rheniite,
        icon = graphics_rheniite .. rheniite_ore .. ".png",
        pictures =
        {
            {filename = graphics_rheniite .. rheniite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_rheniite .. rheniite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_rheniite .. rheniite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        name = rheniite_crushed,
        subgroup = is_rheniite,
        icon = graphics_rheniite .. rheniite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = rheniite_chunks,
        subgroup = is_rheniite,
        icon = graphics_rheniite .. rheniite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = rheniite_crystals,
        subgroup = is_rheniite,
        icon = graphics_rheniite .. rheniite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        name = rheniite_purified,
        subgroup = is_rheniite,
        icon = graphics_rheniite .. rheniite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

-- FLUID


-- RECIPE
rheniite_crushed_sorting = "rheniite-crushed-sorting"
rheniite_chunks_sorting = "rheniite-chunks-sorting"
rheniite_crystals_sorting = "rheniite-crystals-sorting"
rheniite_purified_sorting = "rheniite-purified-sorting"
TIMSABA.functions.create_recipes
({
    -- CRUSHED
    {
        name = rheniite_crushed,
        categories = {angels_ore_refining_T1},
        subgroup = is_rheniite,
        icons = THREE_R_I(rheniite_ore, rheniite_crushed, stone_crushed_angels),
        order = b,
        energy_required = 2, -- Rheniite ore -crushing-> Rheniite crushed + Stone crushed (crushing)
        ingredients = {{type = item, name = rheniite_ore, amount = 2}},
        results =
        {
            {type = item, name = rheniite_crushed, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = rheniite_crushed
    },
    -- CHUNKS
    {
        name = rheniite_chunks,
        categories = {angels_ore_refining_T2},
        subgroup = is_rheniite,
        icons = THREE_D_I(rheniite_crushed, nil, water_purified_angels, rheniite_chunks, sulfur, water_red_waste),
        order = c,
        energy_required = 2, -- Rheniite crushed + Purified water -flotation-> Rheniite chunks + S + Nitric waste water
        ingredients =
        {
            {type = item, name = rheniite_crushed, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = rheniite_chunks, amount = 4},
            {type = item, name = sulfur, amount = 1, independent_probability = 0.5},
            {type = fluid, name = water_red_waste, amount = 60}
        },
        main_product = rheniite_chunks
    },
    -- CRYSTALS
    {
        name = rheniite_crystals,
        categories = {angels_ore_refining_T3},
        subgroup = is_rheniite,
        icons = THREE_I(rheniite_chunks, nitric_acid_angels, rheniite_crystals),
        order = d,
        energy_required = 2, -- Rheniite chunks + HNO₃ -leaching-> Rheniite crystals
        ingredients =
        {
            {type = item, name = rheniite_chunks, amount = 4},
            {type = fluid, name = nitric_acid_angels, amount = 15}
        },
        results = {{type = item, name = rheniite_crystals, amount = 4}},
        main_product = rheniite_crystals
    },
    -- PURIFIED
    {
        name = rheniite_purified,
        categories = {angels_ore_refining_T4},
        subgroup = is_rheniite,
        icons = TWO_I(rheniite_crystals, rheniite_purified),
        order = e,
        energy_required = 2, -- Rheniite crystals -refinery-> Rheniite purified
        ingredients = {{type = item, name = rheniite_crystals, amount = 4}},
        results = {{type = item, name = rheniite_purified, amount = 4}},
        main_product = rheniite_purified
    },
    -- SORTING
    {
        localised_name = {"recipe-name.sorting-recipe", {"item-name." .. rheniite_ore}},
        name = rheniite_ore .. _sorting,
        categories = {ore_sorting_6},
        subgroup = is_rheniite,
        icons = RECYCLING_I(recycling_png, rheniite_ore),
        order = f,
        allow_productivity = true,
        energy_required = 1,
        ingredients = {{type = item, name = rheniite_ore, amount = 4}},
        results = {{type = item, name = slag_angels, amount = 1}},
        main_product = slag_angels
    },
    {
        name = rheniite_crushed_sorting,
        categories = {ore_sorting_6},
        subgroup = is_rheniite,
        icons = RECYCLING_I(recycling_png, rheniite_crushed),
        order = g,
        allow_productivity = true,
        energy_required = 1, -- Rheniite crushed (Sorting) / Re + Nb + S
        ingredients = {{type = item, name = rheniite_crushed, amount = 4}},
        results =
        {
            {type = item, name = rhenium_ore, amount = 2},
            {type = item, name = niobium_ore, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = rhenium_ore
    },
    {
        name = rheniite_chunks_sorting,
        categories = {ore_sorting_6},
        subgroup = is_rheniite,
        icons = RECYCLING_I(recycling_png, rheniite_chunks),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Rheniite chunks (Sorting) / Re + Nb + Cr + W + S
        ingredients = {{type = item, name = rheniite_chunks, amount = 8}},
        results =
        {
            {type = item, name = rhenium_ore, amount = 4},
            {type = item, name = niobium_ore, amount = 2},
            {type = item, name = chromium_ore_angels, amount = 1},
            {type = item, name = tungsten_ore_bob, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = rhenium_ore
    },
    {
        name = rheniite_crystals_sorting,
        categories = {ore_sorting_6},
        subgroup = is_rheniite,
        icons = RECYCLING_I(recycling_png, rheniite_crystals),
        order = i,
        allow_productivity = true,
        energy_required = 2, -- Rheniite crystals (Sorting) / Re + Nb + Cr + W + Mo + S
        ingredients = {{type = item, name = rheniite_crystals, amount = 8}},
        results =
        {
            {type = item, name = rhenium_ore, amount = 4},
            {type = item, name = niobium_ore, amount = 2},
            {type = item, name = chromium_ore_angels, amount = 1},
            {type = item, name = tungsten_ore_bob, amount = 1},
            {type = item, name = molybdenum_ore, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = rhenium_ore
    },
    {
        name = rheniite_purified_sorting,
        categories = {ore_sorting_6},
        subgroup = is_rheniite,
        icons = RECYCLING_I(recycling_png, rheniite_purified),
        order = j,
        allow_productivity = true,
        energy_required = 2, -- Rheniite purified (Sorting) / Re + Nb + Cr + W + Mo + V
        ingredients = {{type = item, name = rheniite_purified, amount = 8}},
        results =
        {
            {type = item, name = rhenium_ore, amount = 4},
            {type = item, name = niobium_ore, amount = 2},
            {type = item, name = chromium_ore_angels, amount = 1},
            {type = item, name = tungsten_ore_bob, amount = 1},
            {type = item, name = molybdenum_ore, amount = 1},
            {type = item, name = vanadium_ore, amount = 1}
        },
        main_product = rhenium_ore
    }
})