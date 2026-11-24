-- SYNTHESIS
manganese_ore_recipe = "ore-crushed-mix5-processing"
magnesium_ore_recipe = "magnesium-ore-crushed-mix-processing"
sodium_recipe = "sodium-ore-crushed-mix-processing"
chromium_ore_recipe = "ore-crystal-mix7-processing"
TIMSABA.functions.create_recipes
({
    -- T1
    {
        localised_name = {"item-name." .. manganese_ore_angels},
        name = manganese_ore_recipe,
        categories = {angels_ore_sorting_2},
        subgroup = is_ore_sorting_advanced_1,
        icons = AR_FOUR_I(mineral_catalyst, crushed_ferrium, crushed_plumbium, manganese_ore_angels),
        order = e,
        allow_productivity = true,
        energy_required = 8,
        ingredients =
        {
            {type = item, name = mineral_catalyst, amount = 4},
            {type = item, name = crushed_ferrium, amount = 8},
            {type = item, name = crushed_plumbium, amount = 8}
        },
        results = {{type = item, name = manganese_ore_angels, amount = 16}},
        main_product = manganese_ore_angels,
        hide_from_signal_gui = false
    },
    {
        localised_name = {"item-name." .. magnesium_ore},
        name = magnesium_ore_recipe,
        categories = {angels_ore_sorting_2},
        subgroup = is_ore_sorting_advanced_1,
        icons = AR_FOUR_I(mineral_catalyst, crushed_cuprium, crushed_stannium, magnesium_ore),
        order = f,
        allow_productivity = true,
        energy_required = 8,
        ingredients =
        {
            {type = item, name = mineral_catalyst, amount = 4},
            {type = item, name = crushed_cuprium, amount = 8},
            {type = item, name = crushed_stannium, amount = 8}
        },
        results = {{type = item, name = magnesium_ore, amount = 16}},
        main_product = magnesium_ore,
        hide_from_signal_gui = false
    },
    -- T2
    {
        localised_name = {"item-name." .. sodium_angels},
        name = sodium_recipe,
        categories = {angels_ore_sorting_3},
        subgroup = is_ore_sorting_advanced_2,
        icons = AR_FOUR_I(crystal_catalyst, chunk_rubyte, chunk_bobmonium, sodium_angels),
        order = f,
        allow_productivity = true,
        energy_required = 8,
        ingredients =
        {
            {type = item, name = crystal_catalyst, amount = 4},
            {type = item, name = chunk_rubyte, amount = 8},
            {type = item, name = chunk_bobmonium, amount = 8}
        },
        results = {{type = item, name = sodium_angels, amount = 16}},
        main_product = sodium_angels,
        hide_from_signal_gui = false
    },
    -- T4
    {
        localised_name = {"item-name." .. chromium_ore_angels},
        name = chromium_ore_recipe,
        categories = {angels_ore_sorting_5},
        subgroup = is_ore_sorting_advanced_3,
        icons = AR_FOUR_I(hybride_catalyst, purified_saphirite, purified_senaite, chromium_ore_angels),
        order = f,
        allow_productivity = true,
        energy_required = 8,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 4},
            {type = item, name = purified_saphirite, amount = 8},
            {type = item, name = purified_senaite, amount = 8}
        },
        results = {{type = item, name = chromium_ore_angels, amount = 16}},
        main_product = chromium_ore_angels,
        hide_from_signal_gui = false
    }
})