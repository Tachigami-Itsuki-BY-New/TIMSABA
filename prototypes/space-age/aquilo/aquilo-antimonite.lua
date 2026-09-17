local graphics_antimonite = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/"

-- Antimonite ore / Sb + As + Fe + Cu + Pb + Ag
antimonite_ore = "antimonite-ore"
antimonite_crushed = "antimonite-crushed"
antimonite_chunks = "antimonite-chunks"
antimonite_crystals = "antimonite-crystals"
antimonite_purified = "antimonite-purified"
TIMSABA.functions.create_items
({
    {
        name = antimonite_ore,
        subgroup = is_antimonite,
        icon = graphics_antimonite .. antimonite_ore .. ".png",
        pictures =
        {
            {filename = graphics_antimonite .. antimonite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_antimonite .. antimonite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_antimonite .. antimonite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        name = antimonite_crushed,
        subgroup = is_antimonite,
        icon = graphics_antimonite .. antimonite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = antimonite_chunks,
        subgroup = is_antimonite,
        icon = graphics_antimonite .. antimonite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = antimonite_crystals,
        subgroup = is_antimonite,
        icon = graphics_antimonite .. antimonite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        name = antimonite_purified,
        subgroup = is_antimonite,
        icon = graphics_antimonite .. antimonite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

antimonite_crushed_sorting = "antimonite-crushed-sorting"
antimonite_chunks_sorting = "antimonite-chunks-sorting"
antimonite_crystals_sorting = "antimonite-crystals-sorting"
antimonite_purified_sorting = "antimonite-purified-sorting"
TIMSABA.functions.create_recipes
({
    -- CRUSHED
    {
        name = antimonite_crushed,
        categories = {angels_ore_refining_T1},
        subgroup = is_antimonite,
        icons = THREE_R_I(antimonite_ore, antimonite_crushed, stone_crushed_angels),
        order = b,
        energy_required = 2, -- Antimonite ore -crushing-> Antimonite crushed + Stone crushed
        ingredients = {{type = item, name = antimonite_ore, amount = 2}},
        results =
        {
            {type = item, name = antimonite_crushed, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = antimonite_crushed
    },
    -- CHUNKS
    {
        name = antimonite_chunks,
        categories = {angels_ore_refining_T2},
        subgroup = is_antimonite,
        icons = THREE_D_I(antimonite_crushed, nil, water_purified_angels, antimonite_chunks, sulfur, water_green_waste),
        order = c,
        energy_required = 2, -- Antimonite crushed + Purified water -flotation-> Antimonite chunks + S + Chloric waste water
        ingredients =
        {
            {type = item, name = antimonite_crushed, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = antimonite_chunks, amount = 4},
            {type = item, name = sulfur, amount = 1, independent_probability = 0.5},
            {type = fluid, name = water_green_waste, amount = 60}
        },
        main_product = antimonite_chunks
    },
    -- CRYSTALS
    {
        name = antimonite_crystals,
        categories = {angels_ore_refining_T3},
        subgroup = is_antimonite,
        icons = THREE_I(antimonite_chunks, hydrochloric_acid_angels, antimonite_crystals),
        order = d,
        energy_required = 2, -- Antimonite chunks + HCl(aq) -leaching-> Antimonite crystals
        ingredients =
        {
            {type = item, name = antimonite_chunks, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 15}
        },
        results = {{type = item, name = antimonite_crystals, amount = 4}},
        main_product = antimonite_crystals
    },
    -- PURIFIED
    {
        name = antimonite_purified,
        categories = {angels_ore_refining_T4},
        subgroup = is_antimonite,
        icons = TWO_I(antimonite_crystals, antimonite_purified),
        order = e,
        energy_required = 2, -- Antimonite crystals -refinery-> Antimonite purified
        ingredients = {{type = item, name = antimonite_crystals, amount = 4}},
        results = {{type = item, name = antimonite_purified, amount = 4}},
        main_product = antimonite_purified
    },
    -- SORTING
    {
        localised_name = {"recipe-name.sorting-stone-recipe", {"item-name." .. antimonite_ore}},
        name = antimonite_ore .. _sorting_stone,
        categories = {ore_sorting_6},
        subgroup = is_antimonite,
        icons = RECYCLING_I(recycling_png, antimonite_ore),
        order = f,
        allow_productivity = true,
        energy_required = 1,
        ingredients = {{type = item, name = antimonite_ore, amount = 4}},
        results = {{type = item, name = stone, amount = 1}},
        main_product = stone
    },
    {
        name = antimonite_crushed_sorting,
        categories = {ore_sorting_6},
        subgroup = is_antimonite,
        icons = RECYCLING_I(recycling_png, antimonite_crushed),
        order = g,
        allow_productivity = true,
        energy_required = 1, -- Antimonite crushed (Sorting) / Sb + As + S
        ingredients = {{type = item, name = antimonite_crushed, amount = 4}},
        results =
        {
            {type = item, name = antimony_ore, amount = 2},
            {type = item, name = arsenic, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = antimony_ore
    },
    {
        name = antimonite_chunks_sorting,
        categories = {ore_sorting_6},
        subgroup = is_antimonite,
        icons = RECYCLING_I(recycling_png, antimonite_chunks),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Antimonite chunks (Sorting) / Sb + As + Fe + Cu + S
        ingredients = {{type = item, name = antimonite_chunks, amount = 8}},
        results =
        {
            {type = item, name = antimony_ore, amount = 4},
            {type = item, name = arsenic, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = copper_ore, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = antimony_ore
    },
    {
        name = antimonite_crystals_sorting,
        categories = {ore_sorting_6},
        subgroup = is_antimonite,
        icons = RECYCLING_I(recycling_png, antimonite_crystals),
        order = i,
        allow_productivity = true,
        energy_required = 2, -- Antimonite crystals (Sorting) / Sb + As + Fe + Cu + Pb + S
        ingredients = {{type = item, name = antimonite_crystals, amount = 8}},
        results =
        {
            {type = item, name = antimony_ore, amount = 4},
            {type = item, name = arsenic, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = copper_ore, amount = 1},
            {type = item, name = lead_ore_bob, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = antimony_ore
    },
    {
        name = antimonite_purified_sorting,
        categories = {ore_sorting_6},
        subgroup = is_antimonite,
        icons = RECYCLING_I(recycling_png, antimonite_purified),
        order = j,
        allow_productivity = true,
        energy_required = 2, -- Antimonite purified (Sorting) / Sb + As + Fe + Cu + Pb + Ag
        ingredients = {{type = item, name = antimonite_purified, amount = 8}},
        results =
        {
            {type = item, name = antimony_ore, amount = 4},
            {type = item, name = arsenic, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = copper_ore, amount = 1},
            {type = item, name = lead_ore_bob, amount = 1},
            {type = item, name = silver_ore_bob, amount = 1}
        },
        main_product = antimony_ore
    }
})