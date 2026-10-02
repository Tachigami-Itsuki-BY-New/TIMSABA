if mods[paracelsin_mods] then
    -- AIR
    nitrogen_from_paracelsin_air = "nitrogen-from-paracelsin-air"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"fluid-name." .. nitrogen_angels},
            name = nitrogen_from_paracelsin_air,
            categories = {angels_petrochem_air_filtering},
            subgroup = is_paracelsin_air,
            icons = BUILDING_R_I(nitrogen_angels, planet_paracelsin),
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = nitrogen_angels, amount = 240}},
            main_product = nitrogen_angels,
            surface_conditions = {{property = pressure, min = 5300, max = 5300}}
        }
    })

    -- ZINC
    zinc_powder_paracelsin = "zinc-powder-paracelsin"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"item-name." .. zinc_powder},
            name = zinc_powder_paracelsin,
            categories = {powderizing_4},
            subgroup = is_paracelsin_zinc,
            icons = TWO_I(zinc_ore_bob, zinc_powder),
            order = a,
            ingredients = {{type = item, name = zinc_ore_bob, amount = 1}},
            results = {{type = item, name = zinc_powder, amount = 1}},
            main_product = zinc_powder,
            surface_conditions = {{property = pressure, min = 5300, max = 5300}}
        },
        {
            name = galvanized_steel_plate,
            categories = {metallurgy},
            subgroup = is_paracelsin_zinc,
            icons = THREE_I(steel_plate, zinc_molten_angels, galvanized_steel_plate),
            order = f,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = steel_plate, amount = 16},
                {type = fluid, name = zinc_molten_angels, amount = 240}
            },
            results = {{type = item, name = galvanized_steel_plate, amount = 16}},
            main_product = galvanized_steel_plate
        }
    })

    -- SLAG PROCESSING
    paracelsin_slag_processing = "paracelsin-slag-processing"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.angels-slag_processing_2", {"item-name." .. sphalerite_ore}, {"item-name." .. tetrahedrite_ore}},
            name = paracelsin_slag_processing,
            categories = {crystallizing_4},
            subgroup = slag_processing_1,
            icons = THREE_R_I(sludge_mineral, sphalerite_ore, tetrahedrite_ore),
            order = c .. "-" .. data_planet[planet_paracelsin].order,
            allow_productivity = true,
            energy_required = 8,
            ingredients = {{type = fluid, name = sludge_mineral, amount = 120}},
            results =
            {
                {type = item, name = sphalerite_ore, amount = 1, independent_probability = 0.5},
                {type = item, name = tetrahedrite_ore, amount = 1, independent_probability = 0.5}
            },
            surface_conditions = {{property = pressure, min = 5300, max = 5300}}
        }
    })
end