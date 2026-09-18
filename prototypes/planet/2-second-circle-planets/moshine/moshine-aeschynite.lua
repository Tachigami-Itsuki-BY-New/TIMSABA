if mods[moshine_mods] then
    local graphics_aeschynite = "__TIMSABA__/graphics/icons/moshine/aeschynite/"

    -- Aeschynite ore / Nd + Th + Fe + Sn + Ti + Nb
    aeschynite_ore = "aeschynite-ore"
    aeschynite_crushed = "aeschynite-crushed"
    aeschynite_chunks = "aeschynite-chunks"
    aeschynite_crystals = "aeschynite-crystals"
    aeschynite_purified = "aeschynite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = aeschynite_ore,
            subgroup = is_aeschynite,
            icon = graphics_aeschynite .. aeschynite_ore .. ".png",
            pictures =
            {
                {filename = graphics_aeschynite .. aeschynite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_aeschynite .. aeschynite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_aeschynite .. aeschynite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            name = aeschynite_crushed,
            subgroup = is_aeschynite,
            icon = graphics_aeschynite .. aeschynite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = aeschynite_chunks,
            subgroup = is_aeschynite,
            icon = graphics_aeschynite .. aeschynite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = aeschynite_crystals,
            subgroup = is_aeschynite,
            icon = graphics_aeschynite .. aeschynite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = aeschynite_purified,
            subgroup = is_aeschynite,
            icon = graphics_aeschynite .. aeschynite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- FLUID

    -- RECIPE
    aeschynite_crushed_sorting = "aeschynite-crushed-sorting"
    aeschynite_chunks_sorting = "aeschynite-chunks-sorting"
    aeschynite_crystals_sorting = "aeschynite-crystals-sorting"
    aeschynite_purified_sorting = "aeschynite-purified-sorting"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = aeschynite_crushed,
            categories = {angels_ore_refining_T1},
            subgroup = is_aeschynite,
            icons = THREE_R_I(aeschynite_ore, aeschynite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Aeschynite ore -crushing-> Aeschynite crushed + Stone crushed (crushing)
            ingredients = {{type = item, name = aeschynite_ore, amount = 2}},
            results =
            {
                {type = item, name = aeschynite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = aeschynite_crushed
        },
        -- CHUNKS
        {
            name = aeschynite_chunks,
            categories = {angels_ore_refining_T2},
            subgroup = is_aeschynite,
            icons = THREE_D_I(aeschynite_crushed, nil, water_purified_angels, aeschynite_chunks, calcium_silicate, water_green_waste),
            order = c,
            energy_required = 2, -- Aeschynite crushed + Purified water -flotation-> Aeschynite chunks + Calcium silicate + Chloric waste water
            ingredients =
            {
                {type = item, name = aeschynite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = aeschynite_chunks, amount = 4},
                {type = item, name = calcium_silicate, amount = 1, independent_probability = 0.5},
                {type = fluid, name = water_green_waste, amount = 60}
            },
            main_product = aeschynite_chunks
        },
        -- CRYSTALS
        {
            name = aeschynite_crystals,
            categories = {angels_ore_refining_T3},
            subgroup = is_aeschynite,
            icons = THREE_I(aeschynite_chunks, hydrochloric_acid_angels, aeschynite_crystals),
            order = d,
            energy_required = 2, -- Aeschynite chunks + HCl -leaching-> Aeschynite crystals
            ingredients =
            {
                {type = item, name = aeschynite_chunks, amount = 4},
                {type = fluid, name = hydrochloric_acid_angels, amount = 15}
            },
            results = {{type = item, name = aeschynite_crystals, amount = 4}},
            main_product = aeschynite_crystals
        },
        -- PURIFIED
        {
            name = aeschynite_purified,
            categories = {angels_ore_refining_T4},
            subgroup = is_aeschynite,
            icons = TWO_I(aeschynite_crystals, aeschynite_purified),
            order = e,
            energy_required = 2, -- Aeschynite crystals -refinery-> Aeschynite purified
            ingredients = {{type = item, name = aeschynite_crystals, amount = 4}},
            results = {{type = item, name = aeschynite_purified, amount = 4}},
            main_product = aeschynite_purified
        },
        -- SORTING
        {
            localised_name = {"recipe-name.sorting-stone-recipe", {"item-name." .. aeschynite_ore}},
            name = aeschynite_ore .. _sorting_stone,
            categories = {ore_sorting_6},
            subgroup = is_aeschynite,
            icons = RECYCLING_I(recycling_png, aeschynite_ore),
            order = f,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = aeschynite_ore, amount = 4}},
            results = {{type = item, name = stone, amount = 1}},
            main_product = stone
        },
        {
            name = aeschynite_crushed_sorting,
            categories = {ore_sorting_6},
            subgroup = is_aeschynite,
            icons = RECYCLING_I(recycling_png, aeschynite_crushed),
            order = g,
            allow_productivity = true,
            energy_required = 1, -- Aeschynite crushed (Sorting) / Nd + Th + Calcium silicate
            ingredients = {{type = item, name = aeschynite_crushed, amount = 4}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 2},
                {type = item, name = thorium_ore_bob, amount = 1},
                {type = item, name = calcium_silicate, amount = 1}
            },
            main_product = neodymium_ore
        },
        {
            name = aeschynite_chunks_sorting,
            categories = {ore_sorting_6},
            subgroup = is_aeschynite,
            icons = RECYCLING_I(recycling_png, aeschynite_chunks),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Aeschynite chunks (Sorting) / Nd + Th + Fe + Sn + Calcium silicate
            ingredients = {{type = item, name = aeschynite_chunks, amount = 8}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 4},
                {type = item, name = thorium_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = tin_ore_bob, amount = 1},
                {type = item, name = calcium_silicate, amount = 1}
            },
            main_product = neodymium_ore
        },
        {
            name = aeschynite_crystals_sorting,
            categories = {ore_sorting_6},
            subgroup = is_aeschynite,
            icons = RECYCLING_I(recycling_png, aeschynite_crystals),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Aeschynite crystals (Sorting) / Nd + Th + Fe + Sn + Ti + Calcium silicate
            ingredients = {{type = item, name = aeschynite_crystals, amount = 8}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 4},
                {type = item, name = thorium_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = tin_ore_bob, amount = 1},
                {type = item, name = titanium_ore_bob, amount = 1},
                {type = item, name = calcium_silicate, amount = 1}
            },
            main_product = neodymium_ore
        },
        {
            name = aeschynite_purified_sorting,
            categories = {ore_sorting_6},
            subgroup = is_aeschynite,
            icons = RECYCLING_I(recycling_png, aeschynite_purified),
            order = j,
            allow_productivity = true,
            energy_required = 2, -- Aeschynite purified (Sorting) / Nd + Th + Fe + Sn + Ti + Nb
            ingredients = {{type = item, name = aeschynite_purified, amount = 8}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 4},
                {type = item, name = thorium_ore_bob, amount = 2},
                {type = item, name = tin_ore_bob, amount = 1},
                {type = item, name = manganese_ore_angels, amount = 1},
                {type = item, name = titanium_ore_bob, amount = 1},
                {type = item, name = niobium_ore, amount = 1}
            },
            main_product = neodymium_ore
        }
    })
end