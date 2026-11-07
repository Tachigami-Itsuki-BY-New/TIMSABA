if mods[vesta_mods] then
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"fluid-name." .. hydrogen_angels},
            name = hydrogen_vesta,
            categories = {angels_petrochem_air_filtering},
            subgroup = is_vesta_air,
            icons = BUILDING_R_I(hydrogen_angels, planet_vesta),
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = hydrogen_angels, amount = 240}},
            main_product = hydrogen_angels,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        },
        {
            localised_name = {"fluid-name." .. nitrogen_angels},
            name = nitrogen_vesta,
            categories = {angels_petrochem_air_filtering},
            subgroup = is_vesta_air,
            icons = BUILDING_R_I(nitrogen_angels, planet_vesta),
            order = b,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = nitrogen_angels, amount = 240}},
            main_product = nitrogen_angels,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        },
        {
            localised_name = {"fluid-name." .. carbon_dioxide_angels},
            name = carbon_dioxide_vesta,
            categories = {angels_petrochem_air_filtering},
            subgroup = is_vesta_air,
            icons = BUILDING_R_I(carbon_dioxide_angels, planet_vesta),
            order = c,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = carbon_dioxide_angels, amount = 240}},
            main_product = carbon_dioxide_angels,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        },
        {
            localised_name = {"fluid-name." .. hydrogen_sulfide_angels},
            name = hydrogen_sulfide_vesta,
            categories = {angels_petrochem_air_filtering},
            subgroup = is_vesta_air,
            icons = BUILDING_R_I(hydrogen_sulfide_angels, planet_vesta),
            order = d,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = hydrogen_sulfide_angels, amount = 240}},
            main_product = hydrogen_sulfide_angels,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        },
        {
            localised_name = {"fluid-name." .. methane_angels},
            name = methane_vesta,
            categories = {angels_petrochem_air_filtering},
            subgroup = is_vesta_air,
            icons = BUILDING_R_I(methane_angels, planet_vesta),
            order = e,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = methane_angels, amount = 240}},
            main_product = methane_angels,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        }
    })

    if data_fluid[helium_vesta] then
        TIMSABA.functions.create_recipes
        ({
            {
                name = helium_vesta,
                categories = {angels_petrochem_air_filtering},
                subgroup = is_vesta_air,
                icons = BUILDING_R_I(helium_vesta, planet_vesta),
                order = f,
                energy_required = 8,
                ingredients = {},
                results = {{type = fluid, name = helium_vesta, amount = 240}},
                main_product = helium_vesta,
                surface_conditions = {{property = pressure, min = 500, max = 500}}
            }
        })
    elseif data_fluid[helium] then
        helium_vesta_alt = "helium-vesta-alt"
        TIMSABA.functions.create_recipes
        ({
            {
                localised_name = {"fluid-name." .. helium_vesta},
                name = helium_vesta_alt,
                categories = {angels_petrochem_air_filtering},
                subgroup = is_vesta_air,
                icons = BUILDING_R_I(helium, planet_vesta),
                order = f,
                energy_required = 8,
                ingredients = {},
                results = {{type = fluid, name = helium, amount = 240}},
                main_product = helium,
                surface_conditions = {{property = pressure, min = 500, max = 500}}
            }
        })
    end

    -- ORE to PLATE
    _burning = "-burning"
    local function one_ore_to_plate_recipe(name_ore, order, name_plate)
        TIMSABA.functions.create_recipes
        ({
            {
                localised_name = {"recipe-name.burning", {"item-name." .. name_plate}},
                name = name_plate .. _burning,
                categories = {vesta_combustion},
                subgroup = is_ore_to_plate,
                icons = TWO_I(name_ore, name_plate),
                order = order,
                allow_productivity = true,
                allow_quality = true,
                energy_required = 1,
                ingredients =
                {
                    {type = item, name = name_ore, amount = 1},
                    {type = fluid, name = hydrogen_angels, amount = 15},
                    {type = fluid, name = oxygen_angels, amount = 15}
                },
                results = {{type = item, name = name_plate, amount = 1}},
                main_product = name_plate,
                surface_conditions = {{property = pressure, min = 500, max = 500}}
            }
        })
    end
    one_ore_to_plate_recipe(iron_ore, a, iron_plate)
    one_ore_to_plate_recipe(copper_ore, b, copper_plate)
    one_ore_to_plate_recipe(lead_ore_bob, c, lead_plate_bob)
    one_ore_to_plate_recipe(tin_ore_bob, d, tin_plate_bob)
    one_ore_to_plate_recipe(nickel_ore_bob, e, nickel_plate_bob)
    one_ore_to_plate_recipe(aluminium_ore_bob, f, aluminium_plate_bob)
    one_ore_to_plate_recipe(zinc_ore_bob, g, zinc_plate_bob)
    one_ore_to_plate_recipe(silver_ore_bob, h, silver_plate_bob)
    one_ore_to_plate_recipe(titanium_ore_bob, i, titanium_plate_bob)
    one_ore_to_plate_recipe(gold_ore_bob, j, gold_plate_bob)
    one_ore_to_plate_recipe(platinum_ore_angels, k, platinum_plate)
    one_ore_to_plate_recipe(holmium_ore, l, holmium_plate)
    one_ore_to_plate_recipe(antimony_ore, m, antimony_plate)
    one_ore_to_plate_recipe(germanium_ore, n, germanium_plate)
    if mods[shchierbin_mods] then
        one_ore_to_plate_recipe(vanadium_ore, o, vanadium_plate)
    end
    if mods[aegis_bellicos_mods] then
        one_ore_to_plate_recipe(beryllium_ore, p, beryllium_plate)
    end

    local function two_ores_to_plate_recipe(name_ore_1, name_ore_2, order, name_plate)
        TIMSABA.functions.create_recipes
        ({
            {
                localised_name = {"recipe-name.burning", {"item-name." .. name_plate}},
                name = name_plate .. _burning,
                categories = {vesta_combustion},
                subgroup = is_ore_to_plate,
                icons = THREE_I(name_ore_1, name_ore_2, name_plate),
                order = order,
                allow_productivity = true,
                allow_quality = true,
                energy_required = 1,
                ingredients =
                {
                    {type = item, name = name_ore_1, amount = 1},
                    {type = item, name = name_ore_2, amount = 1},
                    {type = fluid, name = hydrogen_angels, amount = 15},
                    {type = fluid, name = oxygen_angels, amount = 15}
                },
                results = {{type = item, name = name_plate, amount = 1}},
                main_product = name_plate,
                surface_conditions = {{property = pressure, min = 500, max = 500}}
            }
        })
    end
    two_ores_to_plate_recipe(iron_ore, carbon_angels, a_a, steel_plate)
    two_ores_to_plate_recipe(copper_ore, tin_ore_bob, k_a, bronze_plate_bob)
    two_ores_to_plate_recipe(copper_ore, zinc_ore_bob, k_b, brass_plate_bob)
    two_ores_to_plate_recipe(iron_ore, nickel_ore_bob, k_d, invar_plate_bob)
    two_ores_to_plate_recipe(titanium_ore_bob, nickel_ore_bob, k_f, nitinol_plate_bob)
    two_ores_to_plate_recipe(aluminium_ore_bob, lithium_bob, k_g, aluminium_lithium_plate)

    local function three_ores_to_plate_recipe(name_ore_1, name_ore_2, name_ore_3, order, name_plate)
        TIMSABA.functions.create_recipes
        ({
            {
                localised_name = {"recipe-name.burning", {"item-name." .. name_plate}},
                name = name_plate .. _burning,
                categories = {vesta_combustion},
                subgroup = is_ore_to_plate,
                icons = AR_FOUR_I(name_ore_1, name_ore_2, name_ore_3, name_plate),
                order = order,
                allow_productivity = true,
                allow_quality = true,
                energy_required = 1,
                ingredients =
                {
                    {type = item, name = name_ore_1, amount = 1},
                    {type = item, name = name_ore_2, amount = 1},
                    {type = item, name = name_ore_3, amount = 1},
                    {type = fluid, name = hydrogen_angels, amount = 15},
                    {type = fluid, name = oxygen_angels, amount = 15}
                },
                results = {{type = item, name = name_plate, amount = 1}},
                main_product = name_plate,
                surface_conditions = {{property = pressure, min = 500, max = 500}}
            }
        })
    end
    three_ores_to_plate_recipe(copper_ore, tin_ore_bob, zinc_ore_bob, k_c, gunmetal_plate_bob)
    three_ores_to_plate_recipe(iron_ore, carbon_angels, cobalt_ore_bob, k_e, cobalt_steel_plate_bob)
    if mods[shchierbin_mods] then
        three_ores_to_plate_recipe(vanadium_ore, iron_ore, carbon_angels, o_a, vanadium_steel_plate)
        three_ores_to_plate_recipe(vanadium_ore, aluminium_ore_bob, titanium_ore_bob, o_b, titanium_aluminium_vanadium_plate)
    end
    if mods[aegis_bellicos_mods] then
        three_ores_to_plate_recipe(beryllium_ore, copper_ore, nickel_ore_bob, p_a, beryllium_bronze_plate)
    end

    -- IRIDIUM
    sodium_hexachloroiridate_IV_solution_2 = sodium_hexachloroiridate_IV_solution .. "-2"
    sodium_hexachloroiridate_IV_solution_3 = sodium_hexachloroiridate_IV_solution .. "-3"
    iridium_powder_2 = iridium_powder .. "-2"
    TIMSABA.functions.create_recipes
    ({
        {
            name = iridium_ore,
            categories = {ore_sorting_6},
            subgroup = is_iridium,
            order = a,
            allow_productivity = true,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = purified_catalyst, amount = 1},
                {type = item, name = purified_saphirite, amount = 1},
                {type = item, name = purified_jivolite, amount = 1},
                {type = item, name = purified_stiratite, amount = 1},
                {type = item, name = purified_crotinnium, amount = 1},
                {type = item, name = purified_rubyte, amount = 1},
                {type = item, name = purified_bobmonium, amount = 1},
                {type = item, name = purified_senaite, amount = 1},
                {type = item, name = purified_franckeite, amount = 1},
                {type = item, name = powellite_purified, amount = 1},
                {type = item, name = molybdenite_purified, amount = 1},
                {type = item, name = wolframite_purified, amount = 1},
                {type = item, name = samarskite_purified, amount = 1},
                {type = item, name = brannerite_purified, amount = 1},
                {type = item, name = rheniite_purified, amount = 1},
                {type = item, name = antimonite_purified, amount = 1},
                {type = item, name = germanite_purified, amount = 1}
            },
            results = {{type = item, name = iridium_ore, amount = 16}},
            main_product = iridium_ore
        },
        {
            name = iridium_processed,
            categories = {angels_processed_pressing_4},
            subgroup = is_iridium,
            icons = TWO_I(iridium_ore, iridium_processed),
            order = b,
            ingredients = {{type = item, name = iridium_ore, amount = 4}},
            results = {{type = item, name = iridium_processed, amount = 4}},
            main_product = iridium_processed
        },
        {
            name = iridium_pellet,
            categories = {angels_pellet_pressing_4},
            subgroup = is_iridium,
            icons = TWO_I(iridium_processed, iridium_pellet),
            order = c,
            ingredients = {{type = item, name = iridium_processed, amount = 4}},
            results = {{type = item, name = iridium_pellet, amount = 4}},
            main_product = iridium_pellet
        },
        {
            name = iridium_powder,
            categories = {angels_chemical_smelting_4},
            subgroup = is_iridium,
            icons = THREE_D_I(ammonium_hexachloroiridate_IV, nil, hydrogen_angels, iridium_powder, ammonia_angels, hydrogen_chloride_angels),
            order = e,
            energy_required = 8, -- (NH₄)₂IrCl₆(s) + 2H₂(g) --> Ir + 2NH₃(g) + 6HCl(g)
            ingredients =
            {
                {type = item, name = ammonium_hexachloroiridate_IV, amount = 16},
                {type = fluid, name = hydrogen_angels, amount = 480}
            },
            results =
            {
                {type = item, name = iridium_powder, amount = 16},
                {type = fluid, name = ammonia_angels, amount = 240}, -- 480
                {type = fluid, name = hydrogen_chloride_angels, amount = 480} -- 1440
            },
            main_product = iridium_powder
        },
        {
            localised_name = {"item-name." .. iridium_powder},
            name = iridium_powder_2,
            categories = {advanced_electrolysis},
            subgroup = is_iridium,
            icons = FOUR_R_I(hexachloroiridic_acid_solution, hydrogen_angels, iridium_powder, chlorine_angels),
            order = e_a,
            energy_required = 8, -- 2H₂IrCl₆(aq) -electrode/electrolys-> 2Ir(s) + 4H₂(g) + 6Cl₂(g) + O₂(g)
            ingredients =
            {
                {type = fluid, name = hexachloroiridic_acid_solution, amount = 240},
                {type = item, name = electrode, amount = 1}
            },
            results =
            {
                {type = item, name = iridium_powder, amount = 16},
                {type = fluid, name = hydrogen_angels, amount = 240}, -- 480
                {type = fluid, name = chlorine_angels, amount = 240}, -- 720
                {type = fluid, name = oxygen_angels, amount = 60}, -- 120
                {type = item, name = electrode, amount = 1, independent_probability = 0.875},
                {type = item, name = electrode_used, amount = 1, independent_probability = 0.125}
            },
            main_product = iridium_powder
        },
        -- CHEMISTRY
        {
            name = sodium_hexachloroiridate_IV_solution,
            categories = {angels_chemical_smelting_4},
            subgroup = is_iridium_chemistry,
            icons = FOUR_THREE_I(iridium_ore, salt_angels, chlorine_angels, water_purified_angels, sodium_hexachloroiridate_IV_solution),
            order = a,
            energy_required = 8, -- Ir(s) + 2NaCl₂(s) + Cl₂(g) + H₂O(l) --> Na₂IrCl₆(aq)
            ingredients =
            {
                {type = item, name = iridium_ore, amount = 32},
                {type = item, name = salt_angels, amount = 32},
                {type = fluid, name = chlorine_angels, amount = 240},
                {type = fluid, name = water_purified_angels, amount = 240}
            },
            results = {{type = fluid, name = sodium_hexachloroiridate_IV_solution, amount = 240}},
            main_product = sodium_hexachloroiridate_IV_solution
        },
        {
            localised_name = {"fluid-name." .. sodium_hexachloroiridate_IV_solution},
            name = sodium_hexachloroiridate_IV_solution_2,
            categories = {angels_advanced_chemistry},
            subgroup = is_iridium_chemistry,
            icons = FOUR_THREE_R_I(sodium_iridate_IV, sodium_angels, hydrogen_chloride_angels, sodium_hexachloroiridate_IV_solution, sodium_chloride_solution, iridium_chloride_III, water_purified_angels),
            order = a_a,
            energy_required = 8, -- 4Na₂IrO₃(s) + 24HCl(g) + 2Na(s) --> 2Na₂IrCl₆(aq) + 6NaCl(aq) + 2IrCl₃(s) + 4H₂O(l)
            ingredients =
            {
                {type = item, name = sodium_iridate_IV, amount = 16},
                {type = fluid, name = hydrogen_chloride_angels, amount = 1440},
                {type = item, name = sodium_angels, amount = 8}
            },
            results =
            {
                {type = fluid, name = sodium_hexachloroiridate_IV_solution, amount = 120},
                {type = fluid, name = sodium_chloride_solution, amount = 120}, -- 360
                {type = item, name = iridium_chloride_III, amount = 8},
                {type = fluid, name = water_purified_angels, amount = 120} -- 240
            },
            main_product = sodium_hexachloroiridate_IV_solution
        },
        {
            localised_name = {"fluid-name." .. sodium_hexachloroiridate_IV_solution},
            name = sodium_hexachloroiridate_IV_solution_3,
            categories = {angels_chemical_smelting_4},
            subgroup = is_iridium_chemistry,
            icons = FOUR_THREE_I(iridium_chloride_III, sodium_chloride_solution, sodium_hypochlorite_angels, hydrogen_chloride_angels, sodium_hexachloroiridate_IV_solution, nil, water_purified_angels),
            order = a_b,
            energy_required = 8, -- 2IrCl₃(s) + 3NaCl(aq) + NaClO(s) + 2HCl(g) --> 2Na₂IrCl₆(aq) + H₂O(l)
            ingredients =
            {
                {type = item, name = iridium_chloride_III, amount = 16},
                {type = fluid, name = sodium_chloride_solution, amount = 360},
                {type = item, name = sodium_hypochlorite_angels, amount = 8},
                {type = fluid, name = hydrogen_chloride_angels, amount = 240}
            },
            results =
            {
                {type = fluid, name = sodium_hexachloroiridate_IV_solution, amount = 240},
                {type = fluid, name = water_purified_angels, amount = 60} -- 120
            },
            main_product = sodium_hexachloroiridate_IV_solution
        },
        {
            name = ammonium_hexachloroiridate_IV,
            categories = {angels_chemical_smelting_4},
            subgroup = is_iridium_chemistry,
            icons = THREE_D_I(sodium_hexachloroiridate_IV_solution, ammonium_chloride_solution_angels, water_purified_angels, ammonium_hexachloroiridate_IV, nil, sodium_chloride_solution),
            order = b,
            energy_required = 8, -- Na₂IrCl₆(aq) + 2NH₄Cl(s) + H₂O(l) --> (NH₄)₂IrCl₆(s) + 2NaCl(aq)
            ingredients =
            {
                {type = fluid, name = sodium_hexachloroiridate_IV_solution, amount = 240},
                {type = item, name = ammonium_chloride, amount = 32},
                {type = fluid, name = water_purified_angels, amount = 240}
            },
            results =
            {
                {type = item, name = ammonium_hexachloroiridate_IV, amount = 16},
                {type = fluid, name = sodium_chloride_solution, amount = 240} -- 480
            },
            main_product = ammonium_hexachloroiridate_IV
        },
        {
            name = sodium_iridate_IV,
            categories = {angels_blast_smelting_4},
            subgroup = is_iridium_chemistry,
            icons = TWO_D_I(iridium_processed, sodium_peroxide, sodium_iridate_IV, sodium_oxide),
            order = c,
            energy_required = 8, -- Ir(s) + 2Na₂O₂(s) --> Na₂IrO₃(s) + Na₂O(s)
            ingredients =
            {
                {type = item, name = iridium_processed, amount = 16},
                {type = item, name = sodium_peroxide, amount = 32}
            },
            results =
            {
                {type = item, name = sodium_iridate_IV, amount = 16},
                {type = item, name = sodium_oxide, amount = 16} -- 32
            },
            main_product = sodium_iridate_IV
        },
        {
            name = iridium_fluoride_VI,
            categories = {angels_chemical_smelting_4},
            subgroup = is_iridium_chemistry,
            icons = THREE_I(iridium_pellet, fluorine, iridium_fluoride_VI),
            order = d,
            energy_required = 8, -- Ir(s) + 3F₂(g) --> IrF₆(s)
            ingredients =
            {
                {type = item, name = iridium_pellet, amount = 8},
                {type = fluid, name = fluorine, amount = 720}
            },
            results = {{type = item, name = iridium_fluoride_VI, amount = 16}},
            main_product = iridium_fluoride_VI
        },
        {
            name = iridium_hydroxide_IV,
            categories = {angels_chemical_smelting_4},
            subgroup = is_iridium_chemistry,
            icons = THREE_D_I(iridium_fluoride_VI, nil, water_purified_angels, iridium_hydroxide_IV, hydrogen_fluoride_angels, oxygen_angels),
            order = e,
            energy_required = 8, -- 2IrF₆(s) + 10H₂O(l) --> 2Ir(OH)₄(s) + 12HF(g) + O₂(g)
            ingredients =
            {
                {type = item, name = iridium_fluoride_VI, amount = 16},
                {type = fluid, name = water_purified_angels, amount = 1200}
            },
            results =
            {
                {type = item, name = iridium_hydroxide_IV, amount = 16},
                {type = fluid, name = hydrogen_fluoride_angels, amount = 480}, -- 1440
                {type = fluid, name = oxygen_angels, amount = 60} -- 120
            },
            main_product = iridium_hydroxide_IV
        },
        {
            name = hexachloroiridic_acid_solution,
            categories = {angels_advanced_chemistry},
            subgroup = is_iridium_chemistry,
            icons = THREE_D_I(iridium_hydroxide_IV, nil, hydrochloric_acid_angels, hexachloroiridic_acid_solution, hydrogen_angels, water_purified_angels),
            order = f,
            energy_required = 8, -- Ir(OH)₄(s) + 6HCl(aq) --> H₂IrCl₆(aq) + 2H₂(g) + 9H₂O(l)
            ingredients =
            {
                {type = item, name = iridium_hydroxide_IV, amount = 16},
                {type = fluid, name = hydrochloric_acid_angels, amount = 1440}
            },
            results =
            {
                {type = fluid, name = hexachloroiridic_acid_solution, amount = 240},
                {type = fluid, name = hydrogen_angels, amount = 240}, -- 480
                {type = fluid, name = water_purified_angels, amount = 1200} -- 2160
            },
            main_product = hexachloroiridic_acid_solution
        }
    })

    TIMSABA.functions.create_recipes
    ({
        -- NITROGEN
        {
            name = ammonium_chloride,
            categories = {chemistry},
            subgroup = is_nitrogen,
            icons = THREE_I(ammonia_angels, hydrogen_chloride_angels, ammonium_chloride),
            order = e,
            energy_required = 2, -- NH₃(g) + HCl(g) --> NH₄Cl(s)
            ingredients =
            {
                {type = fluid, name = ammonia_angels, amount = 60},
                {type = fluid, name = hydrogen_chloride_angels, amount = 60}
            },
            results = {{type = item, name = ammonium_chloride, amount = 4}},
            main_product = ammonium_chloride
        }
    })
end