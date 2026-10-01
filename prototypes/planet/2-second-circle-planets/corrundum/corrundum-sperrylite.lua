if mods[corrundum_mods] then
    local graphics_sperrylite = "__TIMSABA__/graphics/icons/corrundum/sperrylite-ore/"

    -- Sperrylite ore / Pt + As + Sn + Cu + Fe + Ir
    sperrylite_crushed = "sperrylite-crushed"
    sperrylite_chunks = "sperrylite-chunks"
    sperrylite_crystals = "sperrylite-crystals"
    sperrylite_purified = "sperrylite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = sperrylite_crushed,
            subgroup = is_sperrylite,
            icon = graphics_sperrylite .. sperrylite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = sperrylite_chunks,
            subgroup = is_sperrylite,
            icon = graphics_sperrylite .. sperrylite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = sperrylite_crystals,
            subgroup = is_sperrylite,
            icon = graphics_sperrylite .. sperrylite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = sperrylite_purified,
            subgroup = is_sperrylite,
            icon = graphics_sperrylite .. sperrylite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    sperrylite_crushed_sorting = "sperrylite-crushed-sorting"
    sperrylite_chunks_sorting = "sperrylite-chunks-sorting"
    sperrylite_crystals_sorting = "sperrylite-crystals-sorting"
    sperrylite_purified_sorting = "sperrylite-purified-sorting"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = sperrylite_crushed,
            categories = {angels_ore_refining_T1},
            subgroup = is_sperrylite,
            icons = THREE_R_I(sperrylite_ore, sperrylite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Sperrylite ore -crushing-> Sperrylite crushed + Stone crushed
            ingredients = {{type = item, name = sperrylite_ore, amount = 2}},
            results =
            {
                {type = item, name = sperrylite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = sperrylite_crushed
        },
        -- CHUNKS
        {
            name = sperrylite_chunks,
            categories = {angels_ore_refining_T2},
            subgroup = is_sperrylite,
            icons = THREE_D_I(sperrylite_crushed, nil, water_purified_angels, sperrylite_chunks, calcium_silicate, water_greenyellow_waste),
            order = c,
            energy_required = 2, -- Sperrylite crushed + Purified water -flotation-> Sperrylite chunks + CaSiO₃ + Fluoric waste water
            ingredients =
            {
                {type = item, name = sperrylite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = sperrylite_chunks, amount = 4},
                {type = item, name = calcium_silicate, amount = 1, independent_probability = 0.5},
                {type = fluid, name = water_greenyellow_waste, amount = 60}
            },
            main_product = sperrylite_chunks
        },
        -- CRYSTALS
        {
            name = sperrylite_crystals,
            categories = {angels_ore_refining_T3},
            subgroup = is_sperrylite,
            icons = THREE_I(sperrylite_chunks, hydrofluoric_acid_angels, sperrylite_crystals),
            order = d,
            energy_required = 2, -- Sperrylite chunks + HF -leaching-> Sperrylite crystals
            ingredients =
            {
                {type = item, name = sperrylite_chunks, amount = 4},
                {type = fluid, name = hydrofluoric_acid_angels, amount = 15}
            },
            results = {{type = item, name = sperrylite_crystals, amount = 4}},
            main_product = sperrylite_crystals
        },
        -- PURIFIED
        {
            name = sperrylite_purified,
            categories = {angels_ore_refining_T4},
            subgroup = is_sperrylite,
            icons = TWO_I(sperrylite_crystals, sperrylite_purified),
            order = e,
            energy_required = 2, -- Sperrylite crystals -refinery-> Sperrylite purified
            ingredients = {{type = item, name = sperrylite_crystals, amount = 4}},
            results = {{type = item, name = sperrylite_purified, amount = 4}},
            main_product = sperrylite_purified
        },
        -- SORTING
        {
            localised_name = {"recipe-name.sorting-recipe", {"item-name.sperrylite-ore"}},
            name = sperrylite_ore .. _sorting,
            categories = {ore_sorting_6},
            subgroup = is_sperrylite,
            icons = RECYCLING_I(recycling_png, sperrylite_ore),
            order = f,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = sperrylite_ore, amount = 4}},
            results = {{type = item, name = slag_angels, amount = 1}},
            main_product = slag_angels
        },
        {
            name = sperrylite_crushed_sorting,
            categories = {ore_sorting_6},
            subgroup = is_sperrylite,
            icons = RECYCLING_I(recycling_png, sperrylite_crushed),
            order = g,
            allow_productivity = true,
            energy_required = 1, -- Sperrylite crushed (Sorting) / Pt + As + CaSiO₃
            ingredients = {{type = item, name = sperrylite_crushed, amount = 4}},
            results =
            {
                {type = item, name = platinum_ore_angels, amount = 2},
                {type = item, name = arsenic, amount = 1},
                {type = item, name = calcium_silicate, amount = 1}
            },
            main_product = platinum_ore_angels
        },
        {
            name = sperrylite_chunks_sorting,
            categories = {ore_sorting_6},
            subgroup = is_sperrylite,
            icons = RECYCLING_I(recycling_png, sperrylite_chunks),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Sperrylite chunks (Sorting) / Pt + As + Sn + Cu + CaSiO₃
            ingredients = {{type = item, name = sperrylite_chunks, amount = 8}},
            results =
            {
                {type = item, name = platinum_ore_angels, amount = 4},
                {type = item, name = arsenic, amount = 2},
                {type = item, name = tin_ore_bob, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = calcium_silicate, amount = 1}
            },
            main_product = platinum_ore_angels
        },
        {
            name = sperrylite_crystals_sorting,
            categories = {ore_sorting_6},
            subgroup = is_sperrylite,
            icons = RECYCLING_I(recycling_png, sperrylite_crystals),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Sperrylite crystals (Sorting) / Pt + As + Sn + Cu + Fe + CaSiO₃
            ingredients = {{type = item, name = sperrylite_crystals, amount = 8}},
            results =
            {
                {type = item, name = platinum_ore_angels, amount = 4},
                {type = item, name = arsenic, amount = 2},
                {type = item, name = tin_ore_bob, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = calcium_silicate, amount = 1}
            },
            main_product = platinum_ore_angels
        },
        {
            name = sperrylite_purified_sorting,
            categories = {ore_sorting_6},
            subgroup = is_sperrylite,
            icons = RECYCLING_I(recycling_png, sperrylite_purified),
            order = j,
            allow_productivity = true,
            energy_required = 2, -- Sperrylite purified (Sorting) / Pt + As + Sn + Cu + Fe + Ir
            ingredients = {{type = item, name = sperrylite_purified, amount = 8}},
            results =
            {
                {type = item, name = platinum_ore_angels, amount = 4},
                {type = item, name = arsenic, amount = 2},
                {type = item, name = tin_ore_bob, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = iridium_ore, amount = 1}
            },
            main_product = platinum_ore_angels
        }
    })
end