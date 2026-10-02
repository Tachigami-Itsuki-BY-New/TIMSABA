if mods[secretas_frozeta_mods] then
    ammonia_from_frozeta_air = "ammonia-from-frozeta-air"
    gold_powder_frozeta = "gold-powder-frozeta"
    TIMSABA.functions.create_recipes
    ({
        -- AIR
        {
            localised_name = {"fluid-name." .. ammonia_angels},
            name = ammonia_from_frozeta_air,
            categories = {angels_petrochem_air_filtering},
            subgroup = is_frozeta_air,
            icons = BUILDING_R_I(ammonia_angels, planet_frozeta),
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = ammonia_angels, amount = 240}},
            main_product = ammonia_angels,
            surface_conditions = {{property = pressure, min = 200, max = 280}}
        },
        -- GOLD
        {
            localised_name = {"item-name." .. gold_powder},
            name = gold_powder_frozeta,
            categories = {powderizing_4},
            subgroup = is_frozeta_recipe,
            icons = TWO_I(gold_ore_bob, gold_powder),
            order = b,
            ingredients = {{type = item, name = gold_ore_bob, amount = 1}},
            results = {{type = item, name = gold_powder, amount = 1}},
            main_product = gold_powder,
            surface_conditions = {{property = pressure, min = 200, max = 280}}
        },
        -- EGG
        {
            name = golden_biter_egg,
            categories = {crafting},
            subgroup = is_frozeta_recipe,
            icons = THREE_D_I(biter_egg, gold_plate_bob, jelly, golden_biter_egg),
            order = e,
            ingredients =
            {
                {type = item, name = biter_egg, amount = 1},
                {type = item, name = gold_plate_bob, amount = 2},
                {type = item, name = jelly, amount = 8}
            },
            results = {{type = item, name = golden_biter_egg, amount = 1}},
            main_product = golden_biter_egg,
            surface_conditions = {{property = pressure, min = 200, max = 280}}
        }
    })

    -- SLAG PROCESSING
    frozeta_slag_processing = "frozeta-slag-processing"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.angels-slag_processing_2", {"item-name." .. gallite_ore}, {"item-name." .. sylvanite_ore}},
            name = frozeta_slag_processing,
            categories = {crystallizing_4},
            subgroup = slag_processing_1,
            icons = THREE_R_I(sludge_mineral, gallite_ore, sylvanite_ore),
            order = d .. "-" .. data_planet[planet_frozeta].order,
            allow_productivity = true,
            energy_required = 8,
            ingredients = {{type = fluid, name = sludge_mineral, amount = 120}},
            results =
            {
                {type = item, name = gallite_ore, amount = 1, independent_probability = 0.5},
                {type = item, name = sylvanite_ore, amount = 1, independent_probability = 0.5}
            },
            surface_conditions = {{property = pressure, min = 200, max = 280}}
        }
    })
end