if mods[secretas_frozeta_mods] then
    local graphics_sylvanite = "__TIMSABA__/graphics/icons/frozeta/sylvanite/"

    -- Sylvanite / Au + Ag + Pb + Cu + Ni + Sb
    sylvanite_ore = "sylvanite-ore"
    sylvanite_crushed = "sylvanite-crushed"
    sylvanite_chunks = "sylvanite-chunks"
    sylvanite_crystals = "sylvanite-crystals"
    sylvanite_purified = "sylvanite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = sylvanite_ore,
            subgroup = is_sylvanite,
            icon = graphics_sylvanite .. sylvanite_ore .. ".png",
            pictures =
            {
                {filename = graphics_sylvanite .. sylvanite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_sylvanite .. sylvanite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_sylvanite .. sylvanite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            name = sylvanite_crushed,
            subgroup = is_sylvanite,
            icon = graphics_sylvanite .. sylvanite_crushed .. ".png",
            order = b
        },
        {
            name = sylvanite_chunks,
            subgroup = is_sylvanite,
            icon = graphics_sylvanite .. sylvanite_chunks .. ".png",
            order = c
        },
        {
            name = sylvanite_crystals,
            subgroup = is_sylvanite,
            icon = graphics_sylvanite .. sylvanite_crystals .. ".png",
            order = d
        },
        {
            name = sylvanite_purified,
            subgroup = is_sylvanite,
            icon = graphics_sylvanite .. sylvanite_purified .. ".png",
            order = e
        }
    })

    -- FLUID


    -- RECIPE
    sylvanite_crushed_sorting = "sylvanite-crushed-sorting"
    sylvanite_chunks_sorting = "sylvanite-chunks-sorting"
    sylvanite_crystals_sorting = "sylvanite-crystals-sorting"
    sylvanite_purified_sorting = "sylvanite-purified-sorting"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = sylvanite_crushed,
            categories = {angels_ore_refining_T1},
            subgroup = is_sylvanite,
            icons = THREE_R_I(sylvanite_ore, sylvanite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Sylvanite ore -crushing-> Sylvanite crushed + Stone crushed (crushing)
            ingredients = {{type = item, name = sylvanite_ore, amount = 2}},
            results =
            {
                {type = item, name = sylvanite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = sylvanite_crushed
        },
        -- CHUNKS
        {
            name = sylvanite_chunks,
            categories = {angels_ore_refining_T2},
            subgroup = is_sylvanite,
            icons = THREE_D_I(sylvanite_crushed, nil, water_purified_angels, sylvanite_chunks, salt_angels, water_green_waste),
            order = c,
            energy_required = 2, -- Sylvanite crushed + Purified water -flotation-> Sylvanite chunks + NaCl + Chloric waste water
            ingredients =
            {
                {type = item, name = sylvanite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = sylvanite_chunks, amount = 4},
                {type = item, name = salt_angels, amount = 1, independent_probability = 0.5},
                {type = fluid, name = water_green_waste, amount = 60}
            },
            main_product = sylvanite_chunks
        },
        -- CRYSTALS
        {
            name = sylvanite_crystals,
            categories = {angels_ore_refining_T3},
            subgroup = is_sylvanite,
            icons = THREE_I(sylvanite_chunks, hydrochloric_acid_angels, sylvanite_crystals),
            order = d,
            energy_required = 2, -- Sylvanite chunks + HCl -leaching-> Sylvanite crystals
            ingredients =
            {
                {type = item, name = sylvanite_chunks, amount = 4},
                {type = fluid, name = hydrochloric_acid_angels, amount = 15}
            },
            results = {{type = item, name = sylvanite_crystals, amount = 4}},
            main_product = sylvanite_crystals
        },
        -- PURIFIED
        {
            name = sylvanite_purified,
            categories = {angels_ore_refining_T4},
            subgroup = is_sylvanite,
            icons = TWO_I(sylvanite_crystals, sylvanite_purified),
            order = e,
            energy_required = 2, -- Sylvanite crystals -refinery-> Sylvanite purified
            ingredients = {{type = item, name = sylvanite_crystals, amount = 4}},
            results = {{type = item, name = sylvanite_purified, amount = 4}},
            main_product = sylvanite_purified
        },
        -- SORTING
        {
            localised_name = {"recipe-name.sorting-recipe", {"item-name." .. sylvanite_ore}},
            name = sylvanite_ore .. _sorting,
            categories = {ore_sorting_6},
            subgroup = is_sylvanite,
            icons = RECYCLING_I(recycling_png, sylvanite_ore),
            order = f,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = sylvanite_ore, amount = 4}},
            results = {{type = item, name = slag_angels, amount = 1}},
            main_product = slag_angels
        },
        {
            name = sylvanite_crushed_sorting,
            categories = {ore_sorting_6},
            subgroup = is_sylvanite,
            icons = RECYCLING_I(recycling_png, sylvanite_crushed),
            order = g,
            allow_productivity = true,
            energy_required = 1, -- Sylvanite crushed (Sorting) / Au + Ag + NaCl
            ingredients = {{type = item, name = sylvanite_crushed, amount = 4}},
            results =
            {
                {type = item, name = gold_ore_bob, amount = 2},
                {type = item, name = silver_ore_bob, amount = 1},
                {type = item, name = salt_angels, amount = 1}
            },
            main_product = gold_ore_bob
        },
        {
            name = sylvanite_chunks_sorting,
            categories = {ore_sorting_6},
            subgroup = is_sylvanite,
            icons = RECYCLING_I(recycling_png, sylvanite_chunks),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Sylvanite chunks (Sorting) / Au + Ag + Pb + Cu + NaCl
            ingredients = {{type = item, name = sylvanite_chunks, amount = 8}},
            results =
            {
                {type = item, name = gold_ore_bob, amount = 4},
                {type = item, name = silver_ore_bob, amount = 2},
                {type = item, name = lead_ore_bob, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = salt_angels, amount = 1}
            },
            main_product = gold_ore_bob
        },
        {
            name = sylvanite_crystals_sorting,
            categories = {ore_sorting_6},
            subgroup = is_sylvanite,
            icons = RECYCLING_I(recycling_png, sylvanite_crystals),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Sylvanite crystals (Sorting) / Au + Ag + Pb + Cu + Ni + NaCl
            ingredients = {{type = item, name = sylvanite_crystals, amount = 8}},
            results =
            {
                {type = item, name = gold_ore_bob, amount = 4},
                {type = item, name = silver_ore_bob, amount = 2},
                {type = item, name = lead_ore_bob, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = nickel_ore_bob, amount = 1},
                {type = item, name = salt_angels, amount = 1}
            },
            main_product = gold_ore_bob
        },
        {
            name = sylvanite_purified_sorting,
            categories = {ore_sorting_6},
            subgroup = is_sylvanite,
            icons = RECYCLING_I(recycling_png, sylvanite_purified),
            order = j,
            allow_productivity = true,
            energy_required = 2, -- Sylvanite purified (Sorting) / Au + Ag + Pb + Cu + Ni + Sb
            ingredients = {{type = item, name = sylvanite_purified, amount = 8}},
            results =
            {
                {type = item, name = gold_ore_bob, amount = 4},
                {type = item, name = silver_ore_bob, amount = 2},
                {type = item, name = lead_ore_bob, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = nickel_ore_bob, amount = 1},
                {type = item, name = antimony_ore, amount = 1}
            },
            main_product = gold_ore_bob
        }
    })
end