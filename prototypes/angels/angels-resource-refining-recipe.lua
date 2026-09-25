-- STONE
if settings.startup[setting_early_sintering_oven].value then
    TIMSABA.functions.create_recipes
    ({
        {
            name = stone,
            categories = {angels_sintering_1},
            subgroup = is_processing_crafting,
            icons = TWO_I(stone_crushed_angels, calcium),
            order = d,
            energy_required = 1,
            ingredients ={{type = item, name = stone_crushed_angels, amount = 4}},
            results = {{type = item, name = stone, amount = 4}},
            main_product = stone
        }
    })
end

slag_sorting_1 = "slag-sorting-1"
slag_sorting_2 = "slag-sorting-2"
slag_sorting_3 = "slag-sorting-3"
crushed_stone_sorting_1 = "crushed-stone-sorting-1"
crushed_stone_sorting_2 = "crushed-stone-sorting-2"
crushed_stone_sorting_3 = "crushed-stone-sorting-3"
calcium_from_crushed_stone = "calcium-from-crushed-stone"
TIMSABA.functions.create_recipes
({
    -- SLAG SORTING
    {
        name = slag_sorting_1,
        categories = {angels_ore_sorting_1},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, slag_angels, number_1),
        order = c_a,
        allow_productivity = true,
        energy_required = 1, -- Slag --> (Na₂,K₂Ca)(Fe₂,Mg,Al₂)[SiO₄]
        ingredients = {{type = item, name = slag_angels, amount = 4}},
        results = {{type = item, name = stone, amount_min = 0, amount_max = 4, independent_probability = 0.5}},
        main_product = stone
    },
    {
        name = slag_sorting_2,
        categories = {angels_ore_sorting_4},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, slag_angels, number_2),
        order = c_b,
        allow_productivity = true,
        energy_required = 1, -- Slag --> (Na₂,K₂Ca)(Fe₂,Mg,Al₂)[SiO₄] + Silicides(Mg₂Si)
        ingredients = {{type = item, name = slag_angels, amount = 4}},
        results =
        {
            {type = item, name = stone, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = magnesium_silicide, amount_min = 0, amount_max = 4, independent_probability = 0.5}
        },
        main_product = stone
    },
    {
        name = slag_sorting_3,
        categories = {angels_ore_sorting_4},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, slag_angels, number_3),
        order = c_c,
        allow_productivity = true,
        energy_required = 1, -- Slag --> (Na₂,K₂Ca)(Fe₂,Mg,Al₂)[SiO₄] + Silicides(Mg₂Si) + Silicates(CaSiO₃)
        ingredients = {{type = item, name = slag_angels, amount = 4}},
        results =
        {
            {type = item, name = stone, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = magnesium_silicide, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = calcium_silicate, amount_min = 0, amount_max = 4, independent_probability = 0.5}
        },
        main_product = stone
    },
    -- CRUSHED STONE SORTING
    {
        name = crushed_stone_sorting_1,
        categories = {angels_ore_sorting_1},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, stone_crushed_angels, number_1),
        order = e_a,
        allow_productivity = true,
        energy_required = 1, -- (Na₂,K₂Ca)(Fe₂,Mg,Al₂)[SiO₄] --> Ca + 2Fe + Mg + SiO₂
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results =
        {
            {type = item, name = calcium, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = iron_ore, amount_min = 0, amount_max = 8, independent_probability = 0.5},
            {type = item, name = magnesium_ore, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = sand_angels, amount_min = 0, amount_max = 4, independent_probability = 0.5}
        },
        main_product = calcium
    },
    {
        name = crushed_stone_sorting_2,
        categories = {angels_ore_sorting_3},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, stone_crushed_angels, number_2),
        order = e_b,
        allow_productivity = true,
        energy_required = 1, -- (Na₂,K₂Ca)(Fe₂,Mg,Al₂)[SiO₄] --> 2Na + Ca + 2Fe + Mg + 2Al + SiO₂
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results =
        {
            {type = item, name = sodium_angels, amount_min = 0, amount_max = 8, independent_probability = 0.5},
            {type = item, name = calcium, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = iron_ore, amount_min = 0, amount_max = 8, independent_probability = 0.5},
            {type = item, name = magnesium_ore, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = aluminium_ore_bob, amount_min = 0, amount_max = 8, independent_probability = 0.5},
            {type = item, name = sand_angels, amount_min = 0, amount_max = 4, independent_probability = 0.5}
        },
        main_product = sodium_angels
    },
    {
        name = crushed_stone_sorting_3,
        categories = {angels_ore_sorting_4},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, stone_crushed_angels, number_3),
        order = e_c,
        allow_productivity = true,
        energy_required = 1, -- (Na₂,K₂Ca)(Fe₂,Mg,Al₂)[SiO₄] --> 2Na + 2K + Ca + 2Fe + Mg + 2Al + SiO₂
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results =
        {
            {type = item, name = sodium_angels, amount_min = 0, amount_max = 8, independent_probability = 0.5},
            {type = item, name = potassium, amount_min = 0, amount_max = 8, independent_probability = 0.5},
            {type = item, name = calcium, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = iron_ore, amount_min = 0, amount_max = 8, independent_probability = 0.5},
            {type = item, name = magnesium_ore, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = aluminium_ore_bob, amount_min = 0, amount_max = 8, independent_probability = 0.5},
            {type = item, name = sand_angels, amount_min = 0, amount_max = 4, independent_probability = 0.5}
        },
        main_product = sodium_angels
    },
    {
        localised_name = {"item-name." .. calcium},
        name = calcium_from_crushed_stone,
        categories = {angels_ore_refining_T1},
        subgroup = is_processing_crafting,
        icons = TWO_I(stone_crushed_angels, calcium),
        order = f,
        allow_productivity = true,
        energy_required = 1,
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results = {{type = item, name = calcium, amount = 1}},
        main_product = calcium
    }
})