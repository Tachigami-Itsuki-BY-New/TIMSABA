-- SYNTHESIS
manganese_ore_recipe = "ore-crushed-mix5-processing"
magnesium_ore_recipe = "magnesium-ore-crushed-mix-processing"
calcium_recipe = "calcium-ore-crushed-mix-processing"
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
        order = a_e,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = mineral_catalyst, amount = 1},
            {type = item, name = crushed_ferrium, amount = 2},
            {type = item, name = crushed_plumbium, amount = 2}
        },
        results = {{type = item, name = manganese_ore_angels, amount = 4}},
        main_product = manganese_ore_angels
    },
    {
        localised_name = {"item-name." .. magnesium_ore},
        name = magnesium_ore_recipe,
        categories = {angels_ore_sorting_2},
        subgroup = is_ore_sorting_advanced_1,
        icons = AR_FOUR_I(mineral_catalyst, crushed_cuprium, crushed_stannium, magnesium_ore),
        order = a_f,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = mineral_catalyst, amount = 1},
            {type = item, name = crushed_cuprium, amount = 2},
            {type = item, name = crushed_stannium, amount = 2}
        },
        results = {{type = item, name = magnesium_ore, amount = 4}},
    },
    -- T2
    {
        localised_name = {"item-name." .. calcium},
        name = calcium_recipe,
        categories = {ore_sorting_6},
        subgroup = is_ore_sorting_advanced_2,
        icons = AR_FOUR_I(crystal_catalyst, chunk_rubyte, chunk_bobmonium, calcium),
        order = a_f,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = crystal_catalyst, amount = 1},
            {type = item, name = chunk_rubyte, amount = 2},
            {type = item, name = chunk_bobmonium, amount = 2}
        },
        results = {{type = item, name = calcium, amount = 4}},
        main_product = calcium
    },
    -- T4
    {
        localised_name = {"item-name." .. chromium_ore_angels},
        name = chromium_ore_recipe,
        categories = {angels_ore_sorting_4},
        subgroup = is_ore_sorting_advanced_3,
        icons = AR_FOUR_I(hybride_catalyst, purified_saphirite, purified_senaite, chromium_ore_angels),
        order = a_g,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = purified_saphirite, amount = 2},
            {type = item, name = purified_senaite, amount = 2}
        },
        results = {{type = item, name = chromium_ore_angels, amount = 4}},
        main_product = chromium_ore_angels
    }
})