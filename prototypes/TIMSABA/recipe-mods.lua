slag_processing_4 = "slag-processing-4"
nauvis_slag_processing = "nauvis-slag-processing"
TIMSABA.functions.create_recipes
({
    {
        localised_name = {"recipe-name.angels-slag_processing_2", {"item-name." .. ore_bobmonium}, {"item-name." .. ore_franckeite}},
        name = slag_processing_4,
        categories = {angels_crystallizing_1},
        subgroup = slag_processing_1,
        icons = THREE_R_I(sludge_mineral, ore_bobmonium, ore_franckeite),
        order = b_d,
        allow_productivity = true,
        energy_required = 8,
        ingredients = {{type = fluid, name = sludge_mineral, amount = 120}},
        results =
        {
            {type = item, name = ore_bobmonium, amount = 1, independent_probability = 0.5},
            {type = item, name = ore_franckeite, amount = 1, independent_probability = 0.5}
        }
    },
    {
        localised_name = {"recipe-name.angels-slag_processing_2", {"item-name." .. powellite_ore}, {"item-name." .. molybdenite_ore}},
        name = nauvis_slag_processing,
        categories = {crystallizing_4},
        subgroup = slag_processing_1,
        icons = THREE_R_I(sludge_mineral, powellite_ore, molybdenite_ore),
        order = c .. "-" .. data_planet[planet_nauvis].order,
        allow_productivity = true,
        energy_required = 8,
        ingredients = {{type = fluid, name = sludge_mineral, amount = 120}},
        results =
        {
            {type = item, name = powellite_ore, amount = 1, independent_probability = 0.5},
            {type = item, name = molybdenite_ore, amount = 1, independent_probability = 0.5}
        },
        surface_conditions = {{property = pressure, min = 1000, max = 1000}}
    }
})

local function sortiong_ore_recipe_true(ingredient, order)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.sorting-recipe", {"item-name." .. ingredient}},
            name = ingredient .. _sorting,
            categories = {hand_crafting, angels_ore_sorting_1},
            subgroup = is_ore_sorting,
            icons = RECYCLING_I(recycling_png, ingredient),
            order = order,
            enabled = true,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = ingredient, amount = 4}},
            results = {{type = item, name = slag_angels, amount = 1}},
            main_product = slag_angels
        }
    })
end
if mods[lignumis_mods] then
    sortiong_ore_recipe_true(ore_rubyte, e)
    sortiong_ore_recipe_true(ore_bobmonium, f)
elseif not mods[lignumis_mods] then
    sortiong_ore_recipe_true(ore_saphirite, a)
    sortiong_ore_recipe_true(ore_stiratite, c)
end

local function sortiong_ore_recipe_false(ingredient, order)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.sorting-recipe", {"item-name." .. ingredient}},
            name = ingredient .. _sorting,
            categories = {angels_ore_sorting_1},
            subgroup = is_ore_sorting,
            icons = RECYCLING_I(recycling_png, ingredient),
            order = order,
            allow_productivity = true,
            energy_required = 1,
            ingredients = {{type = item, name = ingredient, amount = 4}},
            results = {{type = item, name = slag_angels, amount = 1}},
            main_product = slag_angels
        }
    })
end
if mods[lignumis_mods] then
    sortiong_ore_recipe_false(ore_saphirite, a)
    sortiong_ore_recipe_false(ore_stiratite, c)
elseif not mods[lignumis_mods] then
    sortiong_ore_recipe_false(ore_rubyte, e)
    sortiong_ore_recipe_false(ore_bobmonium, f)
end
sortiong_ore_recipe_false(ore_jivolite, b)
sortiong_ore_recipe_false(ore_crotinnium, d)
sortiong_ore_recipe_false(ore_senaite, g)
sortiong_ore_recipe_false(ore_franckeite, h)

TIMSABA.functions.create_recipes
({
    {
        name = purified_catalyst,
        categories = {crystallizing_4},
        subgroup = is_ore_sorting_advanced_4,
        icons = THREE_I(hybride_catalyst, liquid_chlorine_bleach, purified_catalyst),
        order = d,
        allow_productivity = true,
        energy_required = 0.5,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 2},
            {type = fluid, name = liquid_chlorine_bleach, amount = 30}
        },
        results = {{type = item, name = purified_catalyst, amount = 2}},
        main_product = purified_catalyst
    }
})

-- SYNTHESIS from CRUSHED
local function ore_crushed_recipe(name, order, ingredient_1, ingredient_2, result)
    if not data_item[ingredient_1] and not data_item[ingredient_2] then return end

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
            energy_required = 16,
            ingredients =
            {
                {type = item, name = purified_catalyst, amount = 8},
                {type = item, name = ingredient_1, amount = 16},
                {type = item, name = ingredient_2, amount = 16}
            },
            results = {{type = item, name = result, amount = 4}},
            main_product = result
        }
    })
end

-- NAVUIS
calcium_crushed_recipe = "calcium-crushed-mix-processing"
molybdenum_crushed_recipe = "molybdenum-ore-crushed-mix-processing"
rhenium_crushed_recipe = "rhenium-ore-crushed-mix-processing"
ore_crushed_recipe(calcium_crushed_recipe,    a,   powellite_crushed,   brannerite_crushed, calcium)
ore_crushed_recipe(molybdenum_crushed_recipe, b,   powellite_crushed,  molybdenite_crushed, molybdenum_ore)
ore_crushed_recipe(rhenium_crushed_recipe,    c, molybdenite_crushed,     rheniite_crushed, rhenium_ore)

niobium_crushed_recipe = "niobium-ore-crushed-mix-processing"
holmium_crushed_recipe = "holmium-ore-crushed-mix-processing"
ore_crushed_recipe(niobium_crushed_recipe,    d,  wolframite_crushed,   samarskite_crushed, niobium_ore)
ore_crushed_recipe(holmium_crushed_recipe,    e,  brannerite_crushed,   samarskite_crushed, holmium_ore)

-- LIGNUMIS
tantalum_crushed_recipe = "tantalum-ore-crushed-mix-processing"
--ore_crushed_recipe(tantalum_crushed_recipe, f, wodginite_crushed, , tantalum_ore)

-- MOSHINE
neodymium_crushed_recipe = "neodymium-ore-crushed-mix-processing"
ore_crushed_recipe(neodymium_crushed_recipe,  g,    monazite_crushed,   aeschynite_crushed, neodymium_ore)

-- SHCHIERBIN
vanadium_crushed_recipe = "vanadium-ore-crushed-mix-processing"
--ore_crushed_recipe(vanadium_crushed_recipe, h, vanadinite_crushed, , vanadium_ore)

-- AQUILO + PARACELSIN
antimony_crushed_recipe = "antimony-ore-crushed-mix-processing"
germanium_crushed_recipe = "germanium-ore-crushed-mix-processing"
ore_crushed_recipe(antimony_crushed_recipe,   i,  antimonite_crushed, tetrahedrite_crushed, antimony_ore)
ore_crushed_recipe(germanium_crushed_recipe,  j,   germanite_crushed,   sphalerite_crushed, germanium_ore)

-- FROZETA + AQUILO
gallium_crushed_recipe = "gallium-ore-crushed-mix-processing"
ore_crushed_recipe(gallium_crushed_recipe,    k,     gallite_crushed,    germanite_crushed, gallium_ore)

-- SYNTHESIS from CHUNKS
local function ore_chunks_recipe(name, order, ingredient_1, ingredient_2, result)
    if not data_item[ingredient_1] and not data_item[ingredient_2] then return end

    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"item-name." .. result},
            name = name,
            categories = {ore_sorting_6},
            subgroup = is_ore_sorting_advanced_5,
            icons = AR_FOUR_I(purified_catalyst, ingredient_1, ingredient_2, result),
            order = order,
            allow_productivity = true,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = purified_catalyst, amount = 4},
                {type = item, name = ingredient_1, amount = 8},
                {type = item, name = ingredient_2, amount = 8}
            },
            results = {{type = item, name = result, amount = 4}},
            main_product = result
        }
    })
end

-- NAVUIS
calcium_chunks_recipe = "calcium-chunks-mix-processing"
molybdenum_chunks_recipe = "molybdenum-ore-chunks-mix-processing"
rhenium_chunks_recipe = "rhenium-ore-chunks-mix-processing"
ore_chunks_recipe(calcium_chunks_recipe,    a,   powellite_chunks,   brannerite_chunks, calcium)
ore_chunks_recipe(molybdenum_chunks_recipe, b,   powellite_chunks,  molybdenite_chunks, molybdenum_ore)
ore_chunks_recipe(rhenium_chunks_recipe,    c, molybdenite_chunks,     rheniite_chunks, rhenium_ore)

niobium_chunks_recipe = "niobium-ore-chunks-mix-processing"
holmium_chunks_recipe = "holmium-ore-chunks-mix-processing"
ore_chunks_recipe(niobium_chunks_recipe,    d,  wolframite_chunks,   samarskite_chunks, niobium_ore)
ore_chunks_recipe(holmium_chunks_recipe,    e,  brannerite_chunks,   samarskite_chunks, holmium_ore)

-- LIGNUMIS
tantalum_chunks_recipe = "tantalum-ore-chunks-mix-processing"
--ore_chunks_recipe(tantalum_chunks_recipe, f, wodginite_chunks, , tantalum_ore)

-- MOSHINE
neodymium_chunks_recipe = "neodymium-ore-chunks-mix-processing"
ore_chunks_recipe(neodymium_chunks_recipe,  g,    monazite_chunks,   aeschynite_chunks, neodymium_ore)

-- SHCHIERBIN
vanadium_chunks_recipe = "vanadium-ore-chunks-mix-processing"
--ore_chunks_recipe(vanadium_chunks_recipe, h, vanadinite_chunks, , vanadium_ore)

-- AQUILO + PARACELSIN
antimony_chunks_recipe = "antimony-ore-chunks-mix-processing"
germanium_chunks_recipe = "germanium-ore-chunks-mix-processing"
ore_chunks_recipe(antimony_chunks_recipe,   i,  antimonite_chunks, tetrahedrite_chunks, antimony_ore)
ore_chunks_recipe(germanium_chunks_recipe,  j,   germanite_chunks,   sphalerite_chunks, germanium_ore)

-- FROZETA + AQUILO
gallium_chunks_recipe = "gallium-ore-chunks-mix-processing"
ore_chunks_recipe(gallium_chunks_recipe,    k,     gallite_chunks,    germanite_chunks, gallium_ore)

-- SYNTHESIS from CRYSTALS
local function ore_crystals_recipe(name, order, ingredient_1, ingredient_2, result)
    if not data_item[ingredient_1] and not data_item[ingredient_2] then return end

    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"item-name." .. result},
            name = name,
            categories = {ore_sorting_6},
            subgroup = is_ore_sorting_advanced_6,
            icons = AR_FOUR_I(purified_catalyst, ingredient_1, ingredient_2, result),
            order = order,
            allow_productivity = true,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = purified_catalyst, amount = 2},
                {type = item, name = ingredient_1, amount = 4},
                {type = item, name = ingredient_2, amount = 4}
            },
            results = {{type = item, name = result, amount = 4}},
            main_product = result
        }
    })
end

-- NAVUIS
calcium_crystals_recipe = "calcium-crystals-mix-processing"
molybdenum_crystals_recipe = "molybdenum-ore-crystals-mix-processing"
rhenium_crystals_recipe = "rhenium-ore-crystals-mix-processing"
ore_crystals_recipe(calcium_crystals_recipe,    a,   powellite_crystals,   brannerite_crystals, calcium)
ore_crystals_recipe(molybdenum_crystals_recipe, b,   powellite_crystals,  molybdenite_crystals, molybdenum_ore)
ore_crystals_recipe(rhenium_crystals_recipe,    c, molybdenite_crystals,     rheniite_crystals, rhenium_ore)

niobium_crystals_recipe = "niobium-ore-crystals-mix-processing"
holmium_crystals_recipe = "holmium-ore-crystals-mix-processing"
ore_crystals_recipe(niobium_crystals_recipe,    d,  wolframite_crystals,   samarskite_crystals, niobium_ore)
ore_crystals_recipe(holmium_crystals_recipe,    e,  brannerite_crystals,   samarskite_crystals, holmium_ore)

-- LIGNUMIS
tantalum_crystals_recipe = "tantalum-ore-crystals-mix-processing"
--ore_crystals_recipe(tantalum_crystals_recipe, f, wodginite_crystals, , tantalum_ore)

-- MOSHINE
neodymium_crystals_recipe = "neodymium-ore-crystals-mix-processing"
ore_crystals_recipe(neodymium_crystals_recipe,  g,    monazite_crystals,   aeschynite_crystals, neodymium_ore)

-- SHCHIERBIN
vanadium_crystals_recipe = "vanadium-ore-crystals-mix-processing"
--ore_crystals_recipe(vanadium_crystals_recipe, h, vanadinite_crystals, , vanadium_ore)

-- AQUILO + PARACELSIN
antimony_crystals_recipe = "antimony-ore-crystals-mix-processing"
germanium_crystals_recipe = "germanium-ore-crystals-mix-processing"
ore_crystals_recipe(antimony_crystals_recipe,   i,  antimonite_crystals, tetrahedrite_crystals, antimony_ore)
ore_crystals_recipe(germanium_crystals_recipe,  j,   germanite_crystals,   sphalerite_crystals, germanium_ore)

-- FROZETA + AQUILO
gallium_crystals_recipe = "gallium-ore-crystals-mix-processing"
ore_crystals_recipe(gallium_crystals_recipe,    k,     gallite_crystals,    germanite_crystals, gallium_ore)

-- SYNTHESIS from PURIFIED
local function ore_purified_recipe(name, order, ingredient_1, ingredient_2, result)
    if not data_item[ingredient_1] and not data_item[ingredient_2] then return end

    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"item-name." .. result},
            name = name,
            categories = {ore_sorting_6},
            subgroup = is_ore_sorting_advanced_7,
            icons = AR_FOUR_I(purified_catalyst, ingredient_1, ingredient_2, result),
            order = order,
            allow_productivity = true,
            energy_required = 8,
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

-- NAVUIS
calcium_purified_recipe = "calcium-purified-mix-processing"
molybdenum_purified_recipe = "molybdenum-ore-purified-mix-processing"
rhenium_purified_recipe = "rhenium-ore-purified-mix-processing"
ore_purified_recipe(calcium_purified_recipe,    a,   powellite_purified,   brannerite_purified, calcium)
ore_purified_recipe(molybdenum_purified_recipe, b,   powellite_purified,  molybdenite_purified, molybdenum_ore)
ore_purified_recipe(rhenium_purified_recipe,    c, molybdenite_purified,     rheniite_purified, rhenium_ore)

niobium_purified_recipe = "niobium-ore-purified-mix-processing"
holmium_purified_recipe = "holmium-ore-purified-mix-processing"
ore_purified_recipe(niobium_purified_recipe,    d,  wolframite_purified,   samarskite_purified, niobium_ore)
ore_purified_recipe(holmium_purified_recipe,    e,  brannerite_purified,   samarskite_purified, holmium_ore)

-- LIGNUMIS
tantalum_purified_recipe = "tantalum-ore-purified-mix-processing"
--ore_purified_recipe(tantalum_purified_recipe, f, wodginite_purified, , tantalum_ore)

-- MOSHINE
neodymium_purified_recipe = "neodymium-ore-purified-mix-processing"
ore_purified_recipe(neodymium_purified_recipe,  g,    monazite_purified,   aeschynite_purified, neodymium_ore)

-- SHCHIERBIN
vanadium_purified_recipe = "vanadium-ore-purified-mix-processing"
--ore_purified_recipe(vanadium_purified_recipe, h, vanadinite_purified, , vanadium_ore)

-- AQUILO + PARACELSIN
antimony_purified_recipe = "antimony-ore-purified-mix-processing"
germanium_purified_recipe = "germanium-ore-purified-mix-processing"
ore_purified_recipe(antimony_purified_recipe,   i,  antimonite_purified, tetrahedrite_purified, antimony_ore)
ore_purified_recipe(germanium_purified_recipe,  j,   germanite_purified,   sphalerite_purified, germanium_ore)

-- FROZETA + AQUILO
gallium_purified_recipe = "gallium-ore-purified-mix-processing"
ore_purified_recipe(gallium_purified_recipe,    k,     gallite_purified,    germanite_purified, gallium_ore)