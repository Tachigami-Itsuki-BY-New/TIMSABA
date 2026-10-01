if mods[shchierbin_mods] then
    local graphics_vanadinite = "__TIMSABA__/graphics/icons/shchierbin/vanadinite-ore/"

    -- Vanadinite ore / V + Pb + Ca + Cr + Mo + As
    vanadinite_crushed = "vanadinite-crushed"
    vanadinite_chunks = "vanadinite-chunks"
    vanadinite_crystals = "vanadinite-crystals"
    vanadinite_purified = "vanadinite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = vanadinite_crushed,
            subgroup = is_vanadinite,
            icon = graphics_vanadinite .. vanadinite_crushed .. ".png",
            order = b
        },
        {
            name = vanadinite_chunks,
            subgroup = is_vanadinite,
            icon = graphics_vanadinite .. vanadinite_chunks .. ".png",
            order = c
        },
        {
            name = vanadinite_crystals,
            subgroup = is_vanadinite,
            icon = graphics_vanadinite .. vanadinite_crystals .. ".png",
            order = d
        },
        {
            name = vanadinite_purified,
            subgroup = is_vanadinite,
            icon = graphics_vanadinite .. vanadinite_purified .. ".png",
            order = e
        }
    })

    -- RECIPE
    vanadinite_crushed_sorting = "vanadinite-crushed-sorting"
    vanadinite_chunks_sorting = "vanadinite-chunks-sorting"
    vanadinite_crystals_sorting = "vanadinite-crystals-sorting"
    vanadinite_purified_sorting = "vanadinite-purified-sorting"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = vanadinite_crushed,
            categories = {angels_ore_refining_T1},
            subgroup = is_vanadinite,
            icons = THREE_R_I(vanadinite_ore, vanadinite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Vanadinite ore -crushing-> Vanadinite crushed + Stone crushed
            ingredients = {{type = item, name = vanadinite_ore, amount = 2}},
            results =
            {
                {type = item, name = vanadinite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = vanadinite_crushed
        },
        -- CHUNKS
        {
            name = vanadinite_chunks,
            categories = {angels_ore_refining_T2},
            subgroup = is_vanadinite,
            icons = THREE_D_I(vanadinite_crushed, nil, water_purified_angels, vanadinite_chunks, salt_angels, water_green_waste),
            order = c,
            energy_required = 2, -- Vanadinite crushed + Purified water -flotation-> Vanadinite chunks + NaCl + Chloric waste water
            ingredients =
            {
                {type = item, name = vanadinite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = vanadinite_chunks, amount = 4},
                {type = item, name = salt_angels, amount = 1, independent_probability = 0.5},
                {type = fluid, name = water_green_waste, amount = 60}
            },
            main_product = vanadinite_chunks
        },
        -- CRYSTALS
        {
            name = vanadinite_crystals,
            categories = {angels_ore_refining_T3},
            subgroup = is_vanadinite,
            icons = THREE_I(vanadinite_chunks, hydrochloric_acid_angels, vanadinite_crystals),
            order = d,
            energy_required = 2, -- Vanadinite chunks + HCl -leaching-> Vanadinite crystals
            ingredients =
            {
                {type = item, name = vanadinite_chunks, amount = 4},
                {type = fluid, name = hydrochloric_acid_angels, amount = 15}
            },
            results = {{type = item, name = vanadinite_crystals, amount = 4}},
            main_product = vanadinite_crystals
        },
        -- PURIFIED
        {
            name = vanadinite_purified,
            categories = {angels_ore_refining_T4},
            subgroup = is_vanadinite,
            icons = TWO_I(vanadinite_crystals, vanadinite_purified),
            order = e,
            energy_required = 2, -- Vanadinite crystals -refinery-> Vanadinite purified
            ingredients = {{type = item, name = vanadinite_crystals, amount = 4}},
            results = {{type = item, name = vanadinite_purified, amount = 4}},
            main_product = vanadinite_purified
        },
        -- SORTING
        {
            localised_name = {"recipe-name.sorting-recipe", {"item-name.vanadinite-ore"}},
            name = vanadinite_ore .. _sorting,
            categories = {ore_sorting_6},
            subgroup = is_vanadinite,
            icons = RECYCLING_I(recycling_png, vanadinite_ore),
            order = f,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = vanadinite_ore, amount = 4}},
            results = {{type = item, name = slag_angels, amount = 1}},
            main_product = slag_angels
        },
        {
            name = vanadinite_crushed_sorting,
            categories = {ore_sorting_6},
            subgroup = is_vanadinite,
            icons = RECYCLING_I(recycling_png, vanadinite_crushed),
            order = g,
            allow_productivity = true,
            energy_required = 1, -- Vanadinite crushed (Sorting) / V + Pb + NaCl
            ingredients = {{type = item, name = vanadinite_crushed, amount = 4}},
            results =
            {
                {type = item, name = vanadium_ore, amount = 2},
                {type = item, name = lead_ore_bob, amount = 1},
                {type = item, name = salt_angels, amount = 1}
            },
            main_product = vanadium_ore
        },
        {
            name = vanadinite_chunks_sorting,
            categories = {ore_sorting_6},
            subgroup = is_vanadinite,
            icons = RECYCLING_I(recycling_png, vanadinite_chunks),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Vanadinite chunks (Sorting) / V + Pb + Ca + Cr + NaCl
            ingredients = {{type = item, name = vanadinite_chunks, amount = 8}},
            results =
            {
                {type = item, name = vanadium_ore, amount = 4},
                {type = item, name = lead_ore_bob, amount = 2},
                {type = item, name = calcium, amount = 1},
                {type = item, name = chromium_ore_angels, amount = 1},
                {type = item, name = salt_angels, amount = 1}
            },
            main_product = vanadium_ore
        },
        {
            name = vanadinite_crystals_sorting,
            categories = {ore_sorting_6},
            subgroup = is_vanadinite,
            icons = RECYCLING_I(recycling_png, vanadinite_crystals),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Vanadinite crystals (Sorting) / V + Pb + Ca + Cr + Mo + NaCl
            ingredients = {{type = item, name = vanadinite_crystals, amount = 8}},
            results =
            {
                {type = item, name = vanadium_ore, amount = 4},
                {type = item, name = lead_ore_bob, amount = 2},
                {type = item, name = calcium, amount = 1},
                {type = item, name = chromium_ore_angels, amount = 1},
                {type = item, name = molybdenum_ore, amount = 1},
                {type = item, name = salt_angels, amount = 1}
            },
            main_product = vanadium_ore
        },
        {
            name = vanadinite_purified_sorting,
            categories = {ore_sorting_6},
            subgroup = is_vanadinite,
            icons = RECYCLING_I(recycling_png, vanadinite_purified),
            order = j,
            allow_productivity = true,
            energy_required = 2, -- Vanadinite purified (Sorting) / V + Pb + Ca + Cr + Mo + As
            ingredients = {{type = item, name = vanadinite_purified, amount = 8}},
            results =
            {
                {type = item, name = vanadium_ore, amount = 4},
                {type = item, name = lead_ore_bob, amount = 2},
                {type = item, name = calcium, amount = 1},
                {type = item, name = chromium_ore_angels, amount = 1},
                {type = item, name = molybdenum_ore, amount = 1},
                {type = item, name = arsenic, amount = 1}
            },
            main_product = vanadium_ore
        }
    })
end