if mods[lignumis_mods] then
    local graphics_wodginite = "__TIMSABA__/graphics/icons/lignumis/wodginite/"

    -- Wodginite ore / Ta + Sn + Fe + Mn + Li + Nb
    wodginite_ore = "wodginite-ore"
    wodginite_crushed = "wodginite-crushed"
    wodginite_chunks = "wodginite-chunks"
    wodginite_crystals = "wodginite-crystals"
    wodginite_purified = "wodginite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = wodginite_ore,
            subgroup = is_wodginite,
            icon = graphics_wodginite .. wodginite_ore .. ".png",
            pictures =
            {
                {filename = graphics_wodginite .. wodginite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_wodginite .. wodginite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_wodginite .. wodginite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            name = wodginite_crushed,
            subgroup = is_wodginite,
            icon = graphics_wodginite .. wodginite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = wodginite_chunks,
            subgroup = is_wodginite,
            icon = graphics_wodginite .. wodginite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = wodginite_crystals,
            subgroup = is_wodginite,
            icon = graphics_wodginite .. wodginite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = wodginite_purified,
            subgroup = is_wodginite,
            icon = graphics_wodginite .. wodginite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- FLUID


    -- RECIPE
    wodginite_crushed_sorting = "wodginite-crushed-sorting"
    wodginite_chunks_sorting = "wodginite-chunks-sorting"
    wodginite_crystals_sorting = "wodginite-crystals-sorting"
    wodginite_purified_sorting = "wodginite-purified-sorting"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = wodginite_crushed,
            categories = {angels_ore_refining_T1},
            subgroup = is_wodginite,
            icons = THREE_R_I(wodginite_ore, wodginite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Wodginite ore -crushing-> Wodginite crushed + Stone crushed (crushing)
            ingredients = {{type = item, name = wodginite_ore, amount = 2}},
            results =
            {
                {type = item, name = wodginite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = wodginite_crushed
        },
        -- CHUNKS
        {
            name = wodginite_chunks,
            categories = {angels_ore_refining_T2},
            subgroup = is_wodginite,
            icons = THREE_D_I(wodginite_crushed, nil, water_purified_angels, wodginite_chunks, calcium_silicate, water_greenyellow_waste),
            order = c,
            energy_required = 2, -- Wodginite crushed + Purified water -flotation-> Wodginite chunks + CaSiO₃ + fluoric waste water
            ingredients =
            {
                {type = item, name = wodginite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = wodginite_chunks, amount = 4},
                {type = item, name = calcium_silicate, amount = 1, independent_probability = 0.5},
                {type = fluid, name = water_greenyellow_waste, amount = 60}
            },
            main_product = wodginite_chunks
        },
        -- CRYSTALS
        {
            name = wodginite_crystals,
            categories = {angels_ore_refining_T3},
            subgroup = is_wodginite,
            icons = THREE_I(wodginite_chunks, hydrochloric_acid_angels, wodginite_crystals),
            order = d,
            energy_required = 2, -- Wodginite chunks + HF -leaching-> Wodginite crystals
            ingredients =
            {
                {type = item, name = wodginite_chunks, amount = 4},
                {type = fluid, name = hydrochloric_acid_angels, amount = 15}
            },
            results = {{type = item, name = wodginite_crystals, amount = 4}},
            main_product = wodginite_crystals
        },
        -- PURIFIED
        {
            name = wodginite_purified,
            categories = {angels_ore_refining_T4},
            subgroup = is_wodginite,
            icons = TWO_I(wodginite_crystals, wodginite_purified),
            order = e,
            energy_required = 2, -- Wodginite crystals -refinery-> Wodginite purified
            ingredients = {{type = item, name = wodginite_crystals, amount = 4}},
            results = {{type = item, name = wodginite_purified, amount = 4}},
            main_product = wodginite_purified
        },
        -- SORTING
        {
            localised_name = {"recipe-name.sorting-recipe", {"item-name." .. wodginite_ore}},
            name = wodginite_ore .. _sorting,
            categories = {ore_sorting_6},
            subgroup = is_wodginite,
            icons = RECYCLING_I(recycling_png, wodginite_ore),
            order = f,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = wodginite_ore, amount = 4}},
            results = {{type = item, name = slag_angels, amount = 1}},
            main_product = slag_angels
        },
        {
            name = wodginite_crushed_sorting,
            categories = {ore_sorting_6},
            subgroup = is_wodginite,
            icons = RECYCLING_I(recycling_png, wodginite_crushed),
            order = g,
            allow_productivity = true,
            energy_required = 1, -- Wodginite crushed (Sorting) / Ta + Sn + CaSiO₃
            ingredients = {{type = item, name = wodginite_crushed, amount = 4}},
            results =
            {
                {type = item, name = tantalum_ore, amount = 2},
                {type = item, name = tin_ore_bob, amount = 1},
                {type = item, name = calcium_silicate, amount = 1}
            },
            main_product = tantalum_ore
        },
        {
            name = wodginite_chunks_sorting,
            categories = {ore_sorting_6},
            subgroup = is_wodginite,
            icons = RECYCLING_I(recycling_png, wodginite_chunks),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Wodginite chunks (Sorting) / Ta + Sn + Fe + Mn + CaSiO₃
            ingredients = {{type = item, name = wodginite_chunks, amount = 8}},
            results =
            {
                {type = item, name = tantalum_ore, amount = 4},
                {type = item, name = tin_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = manganese_ore_angels, amount = 1},
                {type = item, name = calcium_silicate, amount = 1}
            },
            main_product = tantalum_ore
        },
        {
            name = wodginite_crystals_sorting,
            categories = {ore_sorting_6},
            subgroup = is_wodginite,
            icons = RECYCLING_I(recycling_png, wodginite_crystals),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Wodginite crystals (Sorting) / Ta + Sn + Fe + Mn + Li + CaSiO₃
            ingredients = {{type = item, name = wodginite_crystals, amount = 8}},
            results =
            {
                {type = item, name = tantalum_ore, amount = 4},
                {type = item, name = tin_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = manganese_ore_angels, amount = 1},
                {type = item, name = lithium_bob, amount = 1},
                {type = item, name = calcium_silicate, amount = 1}
            },
            main_product = tantalum_ore
        },
        {
            name = wodginite_purified_sorting,
            categories = {ore_sorting_6},
            subgroup = is_wodginite,
            icons = RECYCLING_I(recycling_png, wodginite_purified),
            order = j,
            allow_productivity = true,
            energy_required = 2, -- Wodginite purified (Sorting) / Ta + Sn + Fe + Mn + Li + Nb
            ingredients = {{type = item, name = wodginite_purified, amount = 8}},
            results =
            {
                {type = item, name = tantalum_ore, amount = 4},
                {type = item, name = tin_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = manganese_ore_angels, amount = 1},
                {type = item, name = lithium_bob, amount = 1},
                {type = item, name = niobium_ore, amount = 1}
            },
            main_product = tantalum_ore
        }
    })
end