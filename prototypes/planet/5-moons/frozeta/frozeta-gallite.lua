if mods[secretas_frozeta_mods] then
    local graphics_gallite = "__TIMSABA__/graphics/icons/frozeta/gallite/"

    -- Gallite ore / Ga + Au + Fe + Cu + Ag + Se
    gallite_ore = "gallite-ore"
    gallite_crushed = "gallite-crushed"
    gallite_chunks = "gallite-chunks"
    gallite_crystals = "gallite-crystals"
    gallite_purified = "gallite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = gallite_ore,
            subgroup = is_gallite,
            icon = graphics_gallite .. gallite_ore .. ".png",
            pictures =
            {
                {filename = graphics_gallite .. gallite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_gallite .. gallite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_gallite .. gallite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            name = gallite_crushed,
            subgroup = is_gallite,
            icon = graphics_gallite .. gallite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = gallite_chunks,
            subgroup = is_gallite,
            icon = graphics_gallite .. gallite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = gallite_crystals,
            subgroup = is_gallite,
            icon = graphics_gallite .. gallite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = gallite_purified,
            subgroup = is_gallite,
            icon = graphics_gallite .. gallite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- FLUID


    -- RECIPE
    gallite_crushed_sorting = "gallite-crushed-sorting"
    gallite_chunks_sorting = "gallite-chunks-sorting"
    gallite_crystals_sorting = "gallite-crystals-sorting"
    gallite_purified_sorting = "gallite-purified-sorting"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = gallite_crushed,
            categories = {angels_ore_refining_T1},
            subgroup = is_gallite,
            icons = THREE_R_I(gallite_ore, gallite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Gallite ore -crushing-> Gallite crushed + Stone crushed (crushing)
            ingredients = {{type = item, name = gallite_ore, amount = 2}},
            results =
            {
                {type = item, name = gallite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = gallite_crushed
        },
        -- CHUNKS
        {
            name = gallite_chunks,
            categories = {angels_ore_refining_T2},
            subgroup = is_gallite,
            icons = THREE_D_I(gallite_crushed, nil, water_purified_angels, gallite_chunks, sulfur, water_yellow_waste),
            order = c,
            energy_required = 2, -- Gallite crushed + Purified water -flotation-> Gallite chunks + S + Sulfuric waste water
            ingredients =
            {
                {type = item, name = gallite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = gallite_chunks, amount = 4},
                {type = item, name = sulfur, amount = 1, independent_probability = 0.5},
                {type = fluid, name = water_yellow_waste, amount = 60}
            },
            main_product = gallite_chunks
        },
        -- CRYSTALS
        {
            name = gallite_crystals,
            categories = {angels_ore_refining_T3},
            subgroup = is_gallite,
            icons = THREE_I(gallite_chunks, sulfuric_acid_angels, gallite_crystals),
            order = d,
            energy_required = 2, -- Gallite chunks + H₂SO₄ -leaching-> Gallite crystals
            ingredients =
            {
                {type = item, name = gallite_chunks, amount = 4},
                {type = fluid, name = sulfuric_acid_angels, amount = 15}
            },
            results = {{type = item, name = gallite_crystals, amount = 4}},
            main_product = gallite_crystals
        },
        -- PURIFIED
        {
            name = gallite_purified,
            categories = {angels_ore_refining_T4},
            subgroup = is_gallite,
            icons = TWO_I(gallite_crystals, gallite_purified),
            order = e,
            energy_required = 2, -- Gallite crystals -refinery-> Gallite purified
            ingredients = {{type = item, name = gallite_crystals, amount = 4}},
            results = {{type = item, name = gallite_purified, amount = 4}},
            main_product = gallite_purified
        },
        -- SORTING
        {
            localised_name = {"recipe-name.sorting-recipe", {"item-name." .. gallite_ore}},
            name = gallite_ore .. _sorting,
            categories = {ore_sorting_6},
            subgroup = is_gallite,
            icons = RECYCLING_I(recycling_png, gallite_ore),
            order = f,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = gallite_ore, amount = 4}},
            results = {{type = item, name = slag_angels, amount = 1}},
            main_product = slag_angels
        },
        {
            name = gallite_crushed_sorting,
            categories = {ore_sorting_6},
            subgroup = is_gallite,
            icons = RECYCLING_I(recycling_png, gallite_crushed),
            order = g,
            allow_productivity = true,
            energy_required = 1, -- Gallite crushed (Sorting) / Ga + Au + S
            ingredients = {{type = item, name = gallite_crushed, amount = 4}},
            results =
            {
                {type = item, name = gallium_ore, amount = 2},
                {type = item, name = gold_ore_bob, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = gallium_ore
        },
        {
            name = gallite_chunks_sorting,
            categories = {ore_sorting_6},
            subgroup = is_gallite,
            icons = RECYCLING_I(recycling_png, gallite_chunks),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Gallite chunks (Sorting) / Ga + Au + Fe + Cu + S
            ingredients = {{type = item, name = gallite_chunks, amount = 8}},
            results =
            {
                {type = item, name = gallium_ore, amount = 4},
                {type = item, name = gold_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = gallium_ore
        },
        {
            name = gallite_crystals_sorting,
            categories = {ore_sorting_6},
            subgroup = is_gallite,
            icons = RECYCLING_I(recycling_png, gallite_crystals),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Gallite crystals (Sorting) / Ga + Au + Fe + Cu + Ag + S
            ingredients = {{type = item, name = gallite_crystals, amount = 8}},
            results =
            {
                {type = item, name = gallium_ore, amount = 4},
                {type = item, name = gold_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = silver_ore_bob, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = gallium_ore
        },
        {
            name = gallite_purified_sorting,
            categories = {ore_sorting_6},
            subgroup = is_gallite,
            icons = RECYCLING_I(recycling_png, gallite_purified),
            order = j,
            allow_productivity = true,
            energy_required = 2, -- Gallite purified (Sorting) / Ga + Au + Fe + Cu + Ag + Se
            ingredients = {{type = item, name = gallite_purified, amount = 8}},
            results =
            {
                {type = item, name = gallium_ore, amount = 4},
                {type = item, name = gold_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = silver_ore_bob, amount = 1},
                {type = item, name = selenium, amount = 1}
            },
            main_product = gallium_ore
        }
    })
end