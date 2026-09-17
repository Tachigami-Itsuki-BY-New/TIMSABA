if mods[moshine_mods] then
    local graphics_monazite = "__TIMSABA__/graphics/icons/moshine/monazite/"

    -- Monazite ore / Nd + Ho + U + Th + Ce + Pm
    monazite_ore = "monazite-ore"
    monazite_crushed = "monazite-crushed"
    monazite_chunks = "monazite-chunks"
    monazite_crystals = "monazite-crystals"
    monazite_purified = "monazite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = monazite_ore,
            subgroup = is_monazite,
            icon = graphics_monazite .. monazite_ore .. ".png",
            pictures =
            {
                {filename = graphics_monazite .. monazite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_monazite .. monazite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_monazite .. monazite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            name = monazite_crushed,
            subgroup = is_monazite,
            icon = graphics_monazite .. monazite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = monazite_chunks,
            subgroup = is_monazite,
            icon = graphics_monazite .. monazite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = monazite_crystals,
            subgroup = is_monazite,
            icon = graphics_monazite .. monazite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = monazite_purified,
            subgroup = is_monazite,
            icon = graphics_monazite .. monazite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    monazite_crushed_sorting = "monazite-crushed-sorting"
    monazite_chunks_sorting = "monazite-chunks-sorting"
    monazite_crystals_sorting = "monazite-crystals-sorting"
    monazite_purified_sorting = "monazite-purified-sorting"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = monazite_crushed,
            categories = {angels_ore_refining_T1},
            subgroup = is_monazite,
            icons = THREE_R_I(monazite_ore, monazite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Monazite ore -crushing-> Monazite crushed + Stone crushed
            ingredients = {{type = item, name = monazite_ore, amount = 2}},
            results =
            {
                {type = item, name = monazite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = monazite_crushed
        },
        -- CHUNKS
        {
            name = monazite_chunks,
            categories = {angels_ore_refining_T2},
            subgroup = is_monazite,
            icons = THREE_D_I(monazite_crushed, nil, water_purified_angels, monazite_chunks, calcium_phosphate, water_orange_waste),
            order = c,
            energy_required = 2, -- Monazite crushed + Purified water -flotation-> Monazite chunks + Ca₃(PO₄)₂ + Phosphoric waste water
            ingredients =
            {
                {type = item, name = monazite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = monazite_chunks, amount = 4},
                {type = item, name = calcium_phosphate, amount = 1, independent_probability = 0.5},
                {type = fluid, name = water_orange_waste, amount = 60}
            },
            main_product = monazite_chunks
        },
        -- CRYSTALS
        {
            name = monazite_crystals,
            categories = {angels_ore_refining_T3},
            subgroup = is_monazite,
            icons = THREE_I(monazite_chunks, orthophosphoric_acid, monazite_crystals),
            order = d,
            energy_required = 2, -- Monazite chunks + H₃PO₄ -leaching-> Monazite crystals
            ingredients =
            {
                {type = item, name = monazite_chunks, amount = 4},
                {type = fluid, name = orthophosphoric_acid, amount = 15}
            },
            results = {{type = item, name = monazite_crystals, amount = 4}},
            main_product = monazite_crystals
        },
        -- PURIFIED
        {
            name = monazite_purified,
            categories = {angels_ore_refining_T4},
            subgroup = is_monazite,
            icons = TWO_I(monazite_crystals, monazite_purified),
            order = e,
            energy_required = 2, -- Monazite crystals -refinery-> Monazite purified
            ingredients = {{type = item, name = monazite_crystals, amount = 4}},
            results = {{type = item, name = monazite_purified, amount = 4}},
            main_product = monazite_purified
        },
        -- SORTING
        {
            localised_name = {"recipe-name.sorting-stone-recipe", {"item-name." .. monazite_ore}},
            name = monazite_ore .. _sorting_stone,
            categories = {ore_sorting_6},
            subgroup = is_monazite,
            icons = RECYCLING_I(recycling_png, monazite_ore),
            order = f,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = monazite_ore, amount = 4}},
            results = {{type = item, name = stone, amount = 1}},
            main_product = stone
        },
        {
            name = monazite_crushed_sorting,
            categories = {ore_sorting_6},
            subgroup = is_monazite,
            icons = RECYCLING_I(recycling_png, monazite_crushed),
            order = g,
            allow_productivity = true,
            energy_required = 1, -- Monazite crushed (Sorting) / Nd + Ho + Ca₃(PO₄)₂
            ingredients = {{type = item, name = monazite_crushed, amount = 4}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 2},
                {type = item, name = holmium_ore, amount = 1},
                {type = item, name = calcium_phosphate, amount = 1}
            },
            main_product = neodymium_ore
        },
        {
            name = monazite_chunks_sorting,
            categories = {ore_sorting_6},
            subgroup = is_monazite,
            icons = RECYCLING_I(recycling_png, monazite_chunks),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Monazite chunks (Sorting) / Nd + Ho + U + Th + Ca₃(PO₄)₂
            ingredients = {{type = item, name = monazite_chunks, amount = 8}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 4},
                {type = item, name = holmium_ore, amount = 2},
                {type = item, name = uranium_ore, amount = 1},
                {type = item, name = thorium_ore_bob, amount = 1},
                {type = item, name = calcium_phosphate, amount = 1}
            },
            main_product = neodymium_ore
        },
        {
            name = monazite_crystals_sorting,
            categories = {ore_sorting_6},
            subgroup = is_monazite,
            icons = RECYCLING_I(recycling_png, monazite_crystals),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Monazite crystals (Sorting) / Nd + Ho + U + Th + Ce + Ca₃(PO₄)₂
            ingredients = {{type = item, name = monazite_crystals, amount = 8}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 4},
                {type = item, name = holmium_ore, amount = 2},
                {type = item, name = uranium_ore, amount = 1},
                {type = item, name = thorium_ore_bob, amount = 1},
                {type = item, name = cerium_ore, amount = 1},
                {type = item, name = calcium_phosphate, amount = 1}
            },
            main_product = neodymium_ore
        },
        {
            name = monazite_purified_sorting,
            categories = {ore_sorting_6},
            subgroup = is_monazite,
            icons = RECYCLING_I(recycling_png, monazite_purified),
            order = j,
            allow_productivity = true,
            energy_required = 2, -- Monazite purified (Sorting) / Nd + Ho + U + Th + Ce + Pm
            ingredients = {{type = item, name = monazite_purified, amount = 8}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 4},
                {type = item, name = holmium_ore, amount = 2},
                {type = item, name = uranium_ore, amount = 1},
                {type = item, name = thorium_ore_bob, amount = 1},
                {type = item, name = cerium_ore, amount = 1},
                {type = item, name = promethium_ore, amount = 1}
            },
            main_product = neodymium_ore
        }
    })
end