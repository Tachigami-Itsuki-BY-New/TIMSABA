slag_processing_4 = "slag-processing-4"
TIMSABA.functions.create_recipes
({
    {
        localised_name = {"recipe-name.angels-slag_processing_2", {"item-name." .. ore_bobmonium}, {"item-name." .. ore_franckeite}},
        name = slag_processing_4,
        categories = {angels_crystallizing_1},
        subgroup = slag_processing_1,
        icons = THREE_R_I(sludge_mineral, ore_bobmonium, ore_franckeite),
        order = h,
        allow_productivity = true,
        energy_required = 8,
        ingredients = {{type = fluid, name = sludge_mineral, amount = 120}},
        results =
        {
            {type = item, name = ore_bobmonium, amount = 1, independent_probability = 0.5},
            {type = item, name = ore_franckeite, amount = 1, independent_probability = 0.5}
        }
    }
})

local function sortiong_ore_recipe_true(ingredient, order)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.sorting-stone-recipe", {"item-name." .. ingredient}},
            name = ingredient .. _sorting_stone,
            categories = {hand_crafting, angels_ore_sorting_1},
            subgroup = is_ore_sorting,
            icons = RECYCLING_I(recycling_png, ingredient),
            order = order,
            enabled = true,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = ingredient, amount = 4}},
            results = {{type = item, name = stone, amount = 1}},
            main_product = stone
        }
    })
end
sortiong_ore_recipe_true(ore_saphirite, a)
sortiong_ore_recipe_true(ore_stiratite, c)

local function sortiong_ore_recipe_false(ingredient, order)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.sorting-stone-recipe", {"item-name." .. ingredient}},
            name = ingredient .. _sorting_stone,
            categories = {angels_ore_sorting_1},
            subgroup = is_ore_sorting,
            icons = RECYCLING_I(recycling_png, ingredient),
            order = order,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = ingredient, amount = 4}},
            results = {{type = item, name = stone, amount = 1}},
            main_product = stone
        }
    })
end
sortiong_ore_recipe_false(ore_jivolite, b)
sortiong_ore_recipe_false(ore_crotinnium, d)
sortiong_ore_recipe_false(ore_rubyte, e)
sortiong_ore_recipe_false(ore_bobmonium, f)
sortiong_ore_recipe_false(ore_senaite, g)
sortiong_ore_recipe_false(ore_franckeite, h)
sortiong_ore_recipe_false(powellite_ore, i)
sortiong_ore_recipe_false(molybdenite_ore, j)

TIMSABA.functions.create_recipes
({
    {
        name = purified_catalyst,
        categories = {crystallizing_4},
        subgroup = is_ore_sorting_advanced_4,
        icons = THREE_I(hybride_catalyst, water_purified_angels, purified_catalyst),
        order = a,
        allow_productivity = true,
        energy_required = 0.5,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 2},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = item, name = purified_catalyst, amount = 2}},
        main_product = purified_catalyst
    }
})

-- SYNTHESIS
local function create_ore_recipe(name, order, ingredient_1, ingredient_2, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"item-name." .. result},
            name = name,
            categories = {ore_sorting_6},
            subgroup = is_ore_sorting_advanced_4,
            icons = AR_FOUR_I(purified_catalyst, ingredient_1, ingredient_2, result),
            order = order,
            allow_productivity = true,
            energy_required = 2,
            ingredients =
            {
                {type = item, name = purified_catalyst, amount = 1},
                {type = item, name = ingredient_1, amount = 2},
                {type = item, name = ingredient_2, amount = 2}
            },
            results = {{type = item, name = result, amount = 4}},
            main_product = result
        }
    })
end

molybdenum_ore_recipe = "molybdenum-ore-pure-mix-processing"
rhenium_ore_recipe = "rhenium-ore-pure-mix-processing"
niobium_ore_recipe = "niobium-ore-pure-mix-processing"
holmium_ore_recipe = "holmium-ore-pure-mix-processing"
create_ore_recipe(molybdenum_ore_recipe, a_a,   powellite_crushed, molybdenite_crushed, molybdenum_ore)
create_ore_recipe(rhenium_ore_recipe,    a_b, molybdenite_crushed,    rheniite_crushed, rhenium_ore)
create_ore_recipe(niobium_ore_recipe,    a_c,      wolframite_ore,  samarskite_crushed, niobium_ore)
create_ore_recipe(holmium_ore_recipe,    a_d,  brannerite_crushed,  samarskite_crushed, holmium_ore)
if mods[paracelsin_mods] then
    antimony_ore_recipe = "antimony-ore-pure-mix-processing"
    germanium_ore_recipe = "germanium-ore-pure-mix-processing"
    create_ore_recipe(antimony_ore_recipe,  a_e, antimonite_crushed, tetrahedrite_crushed, antimony_ore)
    create_ore_recipe(germanium_ore_recipe, a_f,  germanite_crushed,   sphalerite_crushed, germanium_ore)
end
if mods[secretas_frozeta_mods] then
    gallium_ore_recipe = "gallium-ore-pure-mix-processing"
    create_ore_recipe(gallium_ore_recipe, a_g, germanite_crushed, gallite_crushed, gallium_ore)
end
if mods[castra_mods] then
    vanadium_ore_recipe = "vanadium-ore-pure-mix-processing"
    create_ore_recipe(vanadium_ore_recipe, a_g, rheniite_purified, millerite_purified, gallium_ore)
end
if mods[moshine_mods] then
    neodymium_ore_recipe = "neodymium-ore-pure-mix-processing"
    create_ore_recipe(neodymium_ore_recipe, a_h, monazite_crushed, aeschynite_crushed, neodymium_ore)
end
if mods[corrundum_mods] then
    selenium_recipe = "selenium-pure-mix-processing"
    create_ore_recipe(selenium_recipe, a_i, molybdenite_purified, chalcopyrite_purified, selenium)
end
if mods[paracelsin_mods] then
    arsenic_recipe = "arsenic-pure-mix-processing"
    create_ore_recipe(arsenic_recipe, a_j, germanite_purified, tetrahedrite_purified, arsenic)
end
-- cerium ore
-- promethium ore