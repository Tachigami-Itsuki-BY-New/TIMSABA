-- STONE
if settings.startup[setting_early_sintering_oven].value then
    TIMSABA.functions.create_recipes
    ({
        {
            name = stone,
            categories = {angels_sintering_1},
            subgroup = is_processing_crafting,
            icons = TWO_I(stone_crushed_angels, stone),
            order = d,
            energy_required = 8,
            ingredients = {{type = item, name = stone_crushed_angels, amount = 16}},
            results = {{type = item, name = stone, amount = 8}},
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
crushed_stone_sorting_4 = "crushed-stone-sorting-4"
sand_from_crushed_stone = "sand-from-crushed-stone"
crystal_dust_sorting = "crystal-dust-sorting"
TIMSABA.functions.create_recipes
({
    -- SLAG SORTING
    {
        name = slag_sorting_1,
        categories = {hand_crafting, angels_ore_sorting_1},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, slag_angels, number_1),
        order = c_a,
        allow_productivity = true,
        energy_required = 1, -- Slag --> (Na₂,K₂,Ca)(Fe₂,Mg,Al₂)[SiO₄]₂
        ingredients = {{type = item, name = slag_angels, amount = 4}},
        results = {{type = item, name = stone, amount_min = 0, amount_max = 4, independent_probability = 0.5}},
        main_product = stone
    },
    {
        name = slag_sorting_2,
        categories = {angels_ore_sorting_2},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, slag_angels, number_2),
        order = c_b,
        allow_productivity = true,
        energy_required = 1, -- Slag --> CaSiO₃
        ingredients = {{type = item, name = slag_angels, amount = 4}},
        results = {{type = item, name = calcium_silicate, amount_min = 0, amount_max = 4, independent_probability = 0.5}},
        main_product = calcium_silicate
    },
    {
        name = slag_sorting_3,
        categories = {angels_ore_sorting_3},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, slag_angels, number_3),
        order = c_c,
        allow_productivity = true,
        energy_required = 1, -- Slag --> Mg₂Si
        ingredients = {{type = item, name = slag_angels, amount = 4}},
        results = {{type = item, name = magnesium_silicide, amount_min = 0, amount_max = 4, independent_probability = 0.5}},
        main_product = magnesium_silicide
    },
    -- CRUSHED STONE SORTING
    {
        name = crushed_stone_sorting_1,
        categories = {angels_ore_sorting_1},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, stone_crushed_angels, number_1),
        order = e_a,
        allow_productivity = true,
        energy_required = 1, -- (Na₂,K₂,Ca)(Fe₂,Mg,Al₂)[SiO₄]₂ --> Ca + 2Fe + Mg + Si
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results =
        {
            {type = item, name = calcium, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = iron_ore, amount_min = 0, amount_max = 8, independent_probability = 0.5},
            {type = item, name = magnesium_ore, amount_min = 0, amount_max = 4, independent_probability = 0.5}
        },
        main_product = calcium
    },
    {
        name = crushed_stone_sorting_2,
        categories = {angels_ore_sorting_2},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, stone_crushed_angels, number_2),
        order = e_b,
        allow_productivity = true,
        energy_required = 1, -- (Na₂,K₂,Ca)(Fe₂,Mg,Al₂)[SiO₄]₂ --> 2Si + 2Al
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results =
        {
            {type = item, name = silicon_ore_bob, amount_min = 0, amount_max = 8, independent_probability = 0.5},
            {type = item, name = aluminium_ore_bob, amount_min = 0, amount_max = 8, independent_probability = 0.5}
        },
        main_product = silicon_ore_bob
    },
    {
        name = crushed_stone_sorting_3,
        categories = {angels_ore_sorting_3},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, stone_crushed_angels, number_3),
        order = e_c,
        allow_productivity = true,
        energy_required = 1, -- (Na₂,K₂,Ca)(Fe₂,Mg,Al₂)[SiO₄] --> 2Na
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results = {{type = item, name = sodium_angels, amount_min = 0, amount_max = 8, independent_probability = 0.5}},
        main_product = sodium_angels
    },
    {
        name = crushed_stone_sorting_4,
        categories = {angels_ore_sorting_4},
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, stone_crushed_angels, number_4),
        order = e_d,
        allow_productivity = true,
        energy_required = 1, -- (Na₂,K₂Ca)(Fe₂,Mg,Al₂)[SiO₄] --> 2K
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results = {{type = item, name = potassium, amount_min = 0, amount_max = 8, independent_probability = 0.5}},
        main_product = potassium
    },
    {
        localised_name = {"item-name." .. sand_angels},
        name = sand_from_crushed_stone,
        categories = {angels_ore_refining_T1, hand_crafting},
        subgroup = is_processing_crafting,
        icons = TWO_I(stone_crushed_angels, sand_angels),
        order = f,
        energy_required = 1,
        ingredients = {{type = item, name = stone_crushed_angels, amount = 1}},
        results = {{type = item, name = sand_angels, amount = 2}},
        main_product = sand_angels
    },
    -- CRYSTAL SORTING
    {
        name = crystal_dust_sorting,
        categories = {angels_ore_sorting_5},
        subgroup = is_geode_processing_2,
        icons = RECYCLING_I(recycling_png, crystal_dust),
        order = g,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = crystal_dust, amount = 4}},
        results =
        {
            {type = item, name = ruby_bob, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = sapphire_bob, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = emerald_bob, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = amethyst_bob, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = topaz_bob, amount_min = 0, amount_max = 4, independent_probability = 0.5},
            {type = item, name = diamond_bob, amount_min = 0, amount_max = 4, independent_probability = 0.5}
        }
    }
})

if mods[lignumis_mods] then
    data_recipe[slag_sorting_1].enabled = true
end
if not mods[lignumis_mods] then
    data_recipe[sand_from_crushed_stone].enabled = true
end

liquid_chlorine_bleach_2 = liquid_chlorine_bleach .. "-2"
TIMSABA.functions.create_recipes
({
    {
        name = powdered_chlorine_bleach,
        categories = {chemistry},
        subgroup = is_ore_sorting_item,
        icons = THREE_D_I(calcium_hydroxide, calcium_chloride_solution, calcium_hypochlorite_solution, powdered_chlorine_bleach),
        order = a,
        -- Ca(OH)₂(s) + CaCl₂(aq) + Ca(ClO)₂(aq) = Ca(ClO)₂*CaCl₂*Ca(OH)₂*2H₂O(s)
        ingredients =
        {
            {type = item, name = calcium_hydroxide, amount = 4},
            {type = fluid, name = calcium_chloride_solution, amount = 60},
            {type = fluid, name = calcium_hypochlorite_solution, amount = 60}
        },
        results = {{type = item, name = powdered_chlorine_bleach, amount = 4}},
        main_product = powdered_chlorine_bleach
    },
    {
        name = powdered_oxygen_bleach,
        categories = {chemistry},
        subgroup = is_ore_sorting_item,
        icons = THREE_I(sodium_carbonate_angels, hydrogen_peroxide, powdered_oxygen_bleach),
        order = b,
        -- 2Na₂CO₃(s) + 3H₂O₂(l) --> 2Na₂CO₃*1.5H₂O₂(s)
        ingredients =
        {
            {type = item, name = sodium_carbonate_angels, amount = 4},
            {type = fluid, name = hydrogen_peroxide, amount = 90}
        },
        results = {{type = item, name = powdered_oxygen_bleach, amount = 4}},
        main_product = powdered_oxygen_bleach
    },
    {
        name = liquid_chlorine_bleach,
        categories = {chemistry},
        subgroup = is_ore_sorting_fluid,
        icons = THREE_D_I(sodium_hydroxide_angels, sodium_hypochlorite_angels, lauryl_dimethylamine_oxide_solution, liquid_chlorine_bleach),
        order = e,
        -- NaOH(s) + NaOCl(s) + С₁₄H₃₁NO(aq) --> NaOCl*NaOH*SAC(aq)
        ingredients =
        {
            {type = item, name = sodium_hydroxide_angels, amount = 4},
            {type = item, name = sodium_hypochlorite_angels, amount = 4},
            {type = fluid, name = lauryl_dimethylamine_oxide_solution, amount = 60}
        },
        results = {{type = fluid, name = liquid_chlorine_bleach, amount = 60}},
        main_product = liquid_chlorine_bleach
    },
    {
        localised_name = {"fluid-name." .. liquid_chlorine_bleach},
        name = liquid_chlorine_bleach_2,
        categories = {chemistry},
        subgroup = is_ore_sorting_fluid,
        icons = THREE_D_I(sodium_hydroxide_angels, sodium_hypochlorite_angels, sodium_lauryl_sulfate_solution, liquid_chlorine_bleach),
        order = e_a,
        -- NaOH(s) + NaOCl(s) + NaC₁₂H₂₅SO₄(aq) --> NaOCl*NaOH*SAC(aq)
        ingredients =
        {
            {type = item, name = sodium_hydroxide_angels, amount = 4},
            {type = item, name = sodium_hypochlorite_angels, amount = 4},
            {type = fluid, name = sodium_lauryl_sulfate_solution, amount = 60}
        },
        results = {{type = fluid, name = liquid_chlorine_bleach, amount = 240}},
        main_product = liquid_chlorine_bleach
    }
})