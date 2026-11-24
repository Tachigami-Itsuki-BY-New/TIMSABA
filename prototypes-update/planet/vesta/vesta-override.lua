if mods[vesta_mods] then
    -- AIR
    if data_fluid[helium_vesta] then
        data_fluid[helium_vesta].localised_description = show_formula and {chemical_formula, "He"} or nil
        data_fluid[helium_vesta].subgroup = is_vesta_air
        data_fluid[helium_vesta].order = f
        TIMSABA.barreling.add_gas(helium_vesta)
    end

    data_recipe[deuterium_mods].localised_name = {"fluid-name." .. deuterium_angels}
    data_recipe[deuterium_mods].categories = {angels_air_filtering}
    data_recipe[deuterium_mods].subgroup = is_vesta_air
    data_recipe[deuterium_mods].icons = BUILDING_R_I(deuterium_angels, planet_vesta)
    data_recipe[deuterium_mods].order = g
    data_recipe[deuterium_mods].energy_required = 8
    data_recipe[deuterium_mods].ingredients = {}
    data_recipe[deuterium_mods].results = {{type = fluid, name = deuterium_angels, amount = (15 / 2)}}
    data_recipe[deuterium_mods].main_product = deuterium_angels
    data_recipe[deuterium_mods].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_recipe[tritium_mods].localised_name = {"fluid-name." .. tritium_gas}
    data_recipe[tritium_mods].categories = {angels_air_filtering}
    data_recipe[tritium_mods].subgroup = is_vesta_air
    data_recipe[tritium_mods].icons = BUILDING_R_I(tritium_gas, planet_vesta)
    data_recipe[tritium_mods].order = h
    data_recipe[tritium_mods].energy_required = 8
    data_recipe[tritium_mods].ingredients = {}
    data_recipe[tritium_mods].results = {{type = fluid, name = tritium_gas, amount = (15 / 2)}}
    data_recipe[tritium_mods].main_product = tritium_gas
    data_recipe[tritium_mods].surface_conditions = {{property = pressure, min = 500, max = 500}}

    -- RECIPE
    data_fluid[algea_water_vesta].subgroup = is_vesta_recipe
    data_fluid[algea_water_vesta].order = a
    TIMSABA.barreling.add_simple_fluid(algea_water_vesta)
    data_recipe[algea_water_vesta].subgroup = is_vesta_recipe
    data_recipe[algea_water_vesta].icons = TWO_I(water, algea_water_vesta)
    data_recipe[algea_water_vesta].order = a
    data_recipe[algea_water_vesta].ingredients =
    {
        {type = item, name = algae_green, amount = 4},
        {type = item, name = algae_brown, amount = 4},
        {type = item, name = algae_red, amount = 4},
        {type = item, name = algae_blue, amount = 4},
        {type = fluid, name = water, amount = 60}
    }
    data_recipe[algea_water_vesta].results[1].amount = 60
    data_recipe[algea_water_vesta].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local stone_mineraliztion = "ske-carbon-mineralization"
    if settings.startup[setting_vesta_legacy_recipes].value == false then
        data_recipe[stone_mineraliztion].categories = {angels_bio_processing_4}
        data_recipe[stone_mineraliztion].subgroup = is_vesta_recipe
        data_recipe[stone_mineraliztion].icons = STONKS_I(stonks_png, stone)
        data_recipe[stone_mineraliztion].order = a_a
        data_recipe[stone_mineraliztion].energy_required = 32
        data_recipe[stone_mineraliztion].ingredients =
        {
            {type = item, name = stone, amount = 16},
            {type = fluid, name = algea_water_vesta, amount = 240}
        }
        data_recipe[stone_mineraliztion].results[1].amount = 32
        data_recipe[stone_mineraliztion].surface_conditions = {{property = pressure, min = 500, max = 500}}
    end

    data_recipe[coal_mineraliztion].categories = {angels_bio_processing_4}
    data_recipe[coal_mineraliztion].subgroup = is_vesta_recipe
    data_recipe[coal_mineraliztion].icons = STONKS_I(stonks_png, coal)
    data_recipe[coal_mineraliztion].order = a_b
    data_recipe[coal_mineraliztion].energy_required = 32
    data_recipe[coal_mineraliztion].ingredients =
    {
        {type = item, name = coal, amount = 16},
        {type = fluid, name = algea_water_vesta, amount = 240}
    }
    data_recipe[coal_mineraliztion].results[1].amount = 32
    data_recipe[coal_mineraliztion].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_item[algea_clump_iron].subgroup = is_vesta_recipe
    data_item[algea_clump_iron].order = b
    data_item[algea_clump_iron].stack_size = 200
    data_recipe[algea_clump_iron].subgroup = is_vesta_recipe
    data_recipe[algea_clump_iron].icons = TWO_I(algea_water_vesta, algea_clump_iron)
    data_recipe[algea_clump_iron].order = b
    data_recipe[algea_clump_iron].ingredients = {{type = fluid, name = algea_water_vesta, amount = 60}}
    data_recipe[algea_clump_iron].results[1].amount = 4
    data_recipe[algea_clump_iron].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local algea_iron_extraction = "ske_algea_iron_extraction"
    local algea_iron_electrolysis = "ske-algea-iron-electrolysis"
    if settings.startup[setting_vesta_legacy_recipes].value then
        data_recipe[algea_iron_extraction].categories = {vesta_electrolysis}
        data_recipe[algea_iron_extraction].subgroup = is_vesta_recipe
        data_recipe[algea_iron_extraction].icons = FOUR_R_I(algea_clump_iron, ore_saphirite, nil, ore_jivolite)
        data_recipe[algea_iron_extraction].order = b_a
        data_recipe[algea_iron_extraction].allow_quality = false
        data_recipe[algea_iron_extraction].energy_required = 1
        data_recipe[algea_iron_extraction].ingredients =
        {
            {type = item, name = algea_clump_iron, amount = 1},
            {type = fluid, name = helium_vesta, amount = 15}
        }
        data_recipe[algea_iron_extraction].results =
        {
            {type = item, name = ore_saphirite, amount = 2},
            {type = item, name = ore_jivolite, amount = 2}
        }
        data_recipe[algea_iron_extraction].surface_conditions = {{property = pressure, min = 500, max = 500}}
    else
        data_recipe[algea_iron_electrolysis].subgroup = is_vesta_recipe
        data_recipe[algea_iron_electrolysis].icons = FOUR_R_I(algea_clump_iron, ore_saphirite, nil, ore_jivolite)
        data_recipe[algea_iron_electrolysis].order = b_a
        data_recipe[algea_iron_electrolysis].allow_quality = false
        data_recipe[algea_iron_electrolysis].ingredients =
        {
            {type = item, name = algea_clump_iron, amount = 1},
            {type = fluid, name = helium_vesta, amount = 15}
        }
        data_recipe[algea_iron_electrolysis].results =
        {
            {type = item, name = ore_saphirite, amount = 2},
            {type = item, name = ore_jivolite, amount = 2}
        }
        data_recipe[algea_iron_electrolysis].surface_conditions = {{property = pressure, min = 500, max = 500}}
    end

    data_item[algea_clump_copper].subgroup = is_vesta_recipe
    data_item[algea_clump_copper].order = c
    data_item[algea_clump_copper].stack_size = 200
    data_recipe[algea_clump_copper].subgroup = is_vesta_recipe
    data_recipe[algea_clump_copper].icons = TWO_I(algea_water_vesta, algea_clump_copper)
    data_recipe[algea_clump_copper].order = c
    data_recipe[algea_clump_copper].ingredients = {{type = fluid, name = algea_water_vesta, amount = 60}}
    data_recipe[algea_clump_copper].results[1].amount = 4
    data_recipe[algea_clump_copper].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local algea_copper_extraction = "ske_algea_copper_extraction"
    local algea_copper_electrolysis = "ske-algea-copper-electrolysis"
    if settings.startup[setting_vesta_legacy_recipes].value then
        data_recipe[algea_copper_extraction].categories = {vesta_electrolysis}
        data_recipe[algea_copper_extraction].subgroup = is_vesta_recipe
        data_recipe[algea_copper_extraction].icons = FOUR_R_I(algea_clump_copper, ore_stiratite, nil, ore_crotinnium)
        data_recipe[algea_copper_extraction].order = c_a
        data_recipe[algea_copper_extraction].allow_quality = false
        data_recipe[algea_copper_extraction].energy_required = 1
        data_recipe[algea_copper_extraction].ingredients =
        {
            {type = item, name = algea_clump_copper, amount = 1},
            {type = fluid, name = helium_vesta, amount = 15}
        }
        data_recipe[algea_copper_extraction].results =
        {
            {type = item, name = ore_stiratite, amount = 2},
            {type = item, name = ore_crotinnium, amount = 2}
        }
        data_recipe[algea_copper_extraction].surface_conditions = {{property = pressure, min = 500, max = 500}}
    else
        data_recipe[algea_copper_electrolysis].subgroup = is_vesta_recipe
        data_recipe[algea_copper_electrolysis].icons = FOUR_R_I(algea_clump_copper, ore_stiratite, nil, ore_crotinnium)
        data_recipe[algea_copper_electrolysis].order = c_a
        data_recipe[algea_copper_electrolysis].allow_quality = false
        data_recipe[algea_copper_electrolysis].ingredients =
        {
            {type = item, name = algea_clump_copper, amount = 1},
            {type = fluid, name = helium_vesta, amount = 15}
        }
        data_recipe[algea_copper_electrolysis].results =
        {
            {type = item, name = ore_stiratite, amount = 2},
            {type = item, name = ore_crotinnium, amount = 2}
        }
        data_recipe[algea_copper_electrolysis].surface_conditions = {{property = pressure, min = 500, max = 500}}
    end

    local algea_clump_stonite = "ske_algea_clump_stonite"
    data_item[algea_clump_stonite].subgroup = is_vesta_recipe
    data_item[algea_clump_stonite].order = d
    data_item[algea_clump_stonite].stack_size = 200
    data_recipe[algea_clump_stonite].subgroup = is_vesta_recipe
    data_recipe[algea_clump_stonite].icons = TWO_I(algea_water_vesta, algea_clump_stonite)
    data_recipe[algea_clump_stonite].order = d
    data_recipe[algea_clump_stonite].ingredients = {{type = fluid, name = algea_water_vesta, amount = 60}}
    data_recipe[algea_clump_stonite].results[1].amount = 4
    data_recipe[algea_clump_stonite].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local algea_stone_electrolysis = "ske-algea-stone-electrolysis"
    data_recipe[algea_stone_electrolysis].categories = {vesta_electrolysis}
    data_recipe[algea_stone_electrolysis].subgroup = is_vesta_recipe
    data_recipe[algea_stone_electrolysis].icons = FOUR_R_I(algea_clump_stonite, stone, nil, stone)
    data_recipe[algea_stone_electrolysis].order = d_a
    data_recipe[algea_stone_electrolysis].ingredients =
    {
        {type = item, name = algea_clump_stonite, amount = 1},
        {type = fluid, name = helium_vesta, amount = 15}
    }
    data_recipe[algea_stone_electrolysis].results = {{type = item, name = stone, amount = 4}}
    data_recipe[algea_stone_electrolysis].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local H2O = "ske_h2o"
    if settings.startup[setting_vesta_legacy_recipes].value then
        data_recipe[H2O].subgroup = is_vesta_recipe
        data_recipe[H2O].icons = THREE_I(hydrogen_angels, oxygen_angels, water)
        data_recipe[H2O].order = e_a
        data_recipe[H2O].energy_required = 4
        data_recipe[H2O].ingredients =
        {
            {type = fluid, name = hydrogen_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 30}
        }
        data_recipe[H2O].results[1].amount = 60
    end

    data_recipe[carbon_seperation].categories = {cryogenics}
    data_recipe[carbon_seperation].subgroup = is_vesta_recipe
    data_recipe[carbon_seperation].icons = THREE_R_I(carbon_dioxide_angels, carbon_monoxide_angels, oxygen_angels)
    data_recipe[carbon_seperation].order = e_b
    data_recipe[carbon_seperation].energy_required = 1 -- 2CO₂ --> 2CO + O₂
    data_recipe[carbon_seperation].ingredients = {{type = fluid, name = carbon_dioxide_angels, amount = 30}}
    data_recipe[carbon_seperation].results =
    {
        {type = fluid, name = carbon_monoxide_angels, amount = 30},
        {type = fluid, name = oxygen_angels, amount = 15}
    }
    data_recipe[carbon_seperation].main_product = carbon_monoxide_angels
    data_recipe[carbon_seperation].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local co2_filter_carbon = "ske_co2_filter_carbon"
    data_recipe[co2_filter_carbon].categories = {cryogenics}
    data_recipe[co2_filter_carbon].subgroup = is_vesta_recipe
    data_recipe[co2_filter_carbon].icons = THREE_R_I(carbon_dioxide_angels, carbon_angels, oxygen_angels)
    data_recipe[co2_filter_carbon].order = e_c
    data_recipe[co2_filter_carbon].energy_required = 1 -- CO₂ --> C + O₂
    data_recipe[co2_filter_carbon].ingredients = {{type = fluid, name = carbon_dioxide_angels, amount = 30}}
    data_recipe[co2_filter_carbon].results =
    {
        {type = item, name = carbon_angels, amount = 2},
        {type = fluid, name = oxygen_angels, amount = 30}
    }
    data_recipe[co2_filter_carbon].main_product = carbon_angels
    data_recipe[co2_filter_carbon].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_recipe[carbon_super_cooling].subgroup = is_vesta_recipe
    data_recipe[carbon_super_cooling].icons = TWO_D_I(nitrogen_liquid, carbon_monoxide_angels, carbon_angels, nitrogen_oxide)
    data_recipe[carbon_super_cooling].order = e_d
    -- N₂(l) + CO(g) --> C(s) + N₂O(g)
    data_recipe[carbon_super_cooling].ingredients =
    {
        {type = fluid, name = carbon_monoxide_angels, amount = 30},
        {type = fluid, name = nitrogen_liquid, amount = 30}
    }
    data_recipe[carbon_super_cooling].results =
    {
        {type = item, name = carbon_angels, amount = 2},
        {type = fluid, name = nitrogen_oxide, amount = 30}
    }
    data_recipe[carbon_super_cooling].main_product = carbon_angels

    local sulfuric_acid_vesta = "vesta-sulfur"
    local used_algea_water_filter_cleaning = used_algea_water_filter .. "_cleaning"
    if settings.startup[setting_vesta_legacy_recipes].value then
        data_recipe[sulfuric_acid_vesta].localised_name = {"fluid-name." .. sulfuric_acid_angels}
        data_recipe[sulfuric_acid_vesta].subgroup = is_vesta_recipe
        data_recipe[sulfuric_acid_vesta].icons = THREE_D_I(hydrogen_sulfide_angels, water_purified_angels, oxygen_angels, sulfuric_acid_angels, nil, hydrogen_angels)
        data_recipe[sulfuric_acid_vesta].order = e_e
        -- 2H₂S(g) + 2H₂O(l) + 3O₂(g) --> 2H₂SO₄(l) + 2H₂(g)
        data_recipe[sulfuric_acid_vesta].ingredients =
        {
            {type = fluid, name = hydrogen_sulfide_angels, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 90}
        }
        data_recipe[sulfuric_acid_vesta].results =
        {
            {type = fluid, name = sulfuric_acid_angels, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 60}
        }
        data_recipe[sulfuric_acid_vesta].main_product = sulfuric_acid_angels

        data_item[ceramic].subgroup = is_vesta_recipe
        data_item[ceramic].order = f
        data_item[ceramic].stack_size = 200
        data_recipe[ceramic].categories = {sintering_6}
        data_recipe[ceramic].subgroup = is_vesta_recipe
        data_recipe[ceramic].icons = TWO_I(silicon_nitride_bob, ceramic)
        data_recipe[ceramic].order = f
        data_recipe[ceramic].energy_required = 8
        data_recipe[ceramic].ingredients = {{type = item, name = silicon_nitride_bob, amount = 16}}
        data_recipe[ceramic].results = {{type = item, name = ceramic, amount = 16}}

        data_item[mesh].subgroup = is_vesta_recipe
        data_item[mesh].order = g
        data_item[mesh].stack_size = 200
        data_recipe[mesh].subgroup = is_vesta_recipe
        data_recipe[mesh].icons = TWO_I(ceramic, mesh)
        data_recipe[mesh].order = g
        data_recipe[mesh].energy_required = 4
        data_recipe[mesh].ingredients = {{type = item, name = ceramic, amount = 1}}
        data_recipe[mesh].results = {{type = item, name = mesh, amount = 2}}

        data_item[algea_water_filter].subgroup = is_vesta_recipe
        data_item[algea_water_filter].order = h
        data_recipe[algea_water_filter].subgroup = is_vesta_recipe
        data_recipe[algea_water_filter].order = h
        data_recipe[algea_water_filter].energy_required = 4
        data_recipe[algea_water_filter].ingredients =
        {
            {type = item, name = mesh, amount = 2},
            {type = item, name = carbon_angels, amount = 2},
            {type = item, name = steel_rod, amount = 4},
            {type = item, name = steel_plate, amount = 8}
        }

        data_recipe[used_algea_water_filter_cleaning].localised_name = {"item-name." .. algea_water_filter}
        data_recipe[used_algea_water_filter_cleaning].categories = {crafting_fluid}
        data_recipe[used_algea_water_filter_cleaning].subgroup = is_vesta_recipe
        data_recipe[used_algea_water_filter_cleaning].icons = TWO_I(water_purified_angels, algea_water_filter)
        data_recipe[used_algea_water_filter_cleaning].order = h_a
        data_recipe[used_algea_water_filter_cleaning].energy_required = 8
        data_recipe[used_algea_water_filter_cleaning].ingredients =
        {
            {type = item, name = used_algea_water_filter, amount = 1},
            {type = fluid, name = water_purified_angels, amount = 30}
        }
        data_recipe[used_algea_water_filter_cleaning].results =
        {
            {type = item, name = algea_water_filter, amount = 1},
            {type = item, name = algea_clump, amount = 1, independent_probability = 0.9375},
            {type = item, name = algea_clump_exotic, amount = 1, independent_probability = 0.0625},
            {type = fluid, name = water, amount = 30}
        }

        data_item[used_algea_water_filter].subgroup = is_vesta_recipe
        data_item[used_algea_water_filter].order = i

        data_item[algea_clump].subgroup = is_vesta_recipe
        data_item[algea_clump].order = j
        data_item[algea_clump].stack_size = 200
        data_item[algea_clump].fuel_categories = {base_fuel}
        data_item[algea_clump].fuel_value = 3840 .. kJ
        data_recipe[algea_clump].localised_name = {"item-name." .. algea_clump}
        data_recipe[algea_clump].categories = {angels_water_treatment}
        data_recipe[algea_clump].subgroup = is_vesta_recipe
        data_recipe[algea_clump].icons = FOUR_R_I(algea_water_vesta, algea_clump, water_purified_angels, algea_clump_exotic)
        data_recipe[algea_clump].order = j
        data_recipe[algea_clump].energy_required = 8
        data_recipe[algea_clump].ingredients =
        {
            {type = item, name = algea_water_filter, amount = 1},
            {type = fluid, name = algea_water_vesta, amount = 480}
        }
        data_recipe[algea_clump].results =
        {
            {type = item, name = algea_clump, amount = 16, independent_probability = 0.875},
            {type = item, name = algea_clump_exotic, amount = 16, independent_probability = 0.125},
            {type = fluid, name = water_purified_angels, amount = 240},
            {type = item, name = algea_water_filter, amount = 1, independent_probability = 0.875},
            {type = item, name = used_algea_water_filter, amount = 1, independent_probability = 0.125}
        }
        data_recipe[algea_clump].main_product = algea_clump

        data_recipe[algea_clump_petrite].subgroup = is_vesta_recipe
        data_recipe[algea_clump_petrite].icons = THREE_I(algea_clump, methane_angels, algea_clump_petrite)
        data_recipe[algea_clump_petrite].order = k
        data_recipe[algea_clump_petrite].energy_required = 4
        data_recipe[algea_clump_petrite].ingredients =
        {
            {type = item, name = algea_clump, amount = 4},
            {type = fluid, name = methane_angels, amount = 3840}
        }
        data_recipe[algea_clump_petrite].results[1].amount = 4

        data_item[algea_clump_tritite].subgroup = is_vesta_recipe
        data_item[algea_clump_tritite].order = l
        data_item[algea_clump_tritite].stack_size = 200
        data_recipe[algea_clump_tritite].subgroup = is_vesta_recipe
        data_recipe[algea_clump_tritite].icons = THREE_I(algea_clump, tritium_gas, algea_clump_tritite)
        data_recipe[algea_clump_tritite].order = l
        data_recipe[algea_clump_tritite].energy_required = 4
        data_recipe[algea_clump_tritite].ingredients =
        {
            {type = item, name = algea_clump, amount = 4},
            {type = fluid, name = tritium_gas, amount = 60}
        }
        data_recipe[algea_clump_tritite].results[1].amount = 4

        data_item[algea_clump_agitated].subgroup = is_vesta_recipe
        data_item[algea_clump_agitated].order = m
        data_item[algea_clump_agitated].stack_size = 200
        data_recipe[algea_clump_agitated].categories = {organic}
        data_recipe[algea_clump_agitated].subgroup = is_vesta_recipe
        data_recipe[algea_clump_agitated].icons = THREE_I(algea_clump_tritite, carbon_dioxide_angels, algea_clump_agitated)
        data_recipe[algea_clump_agitated].order = m
        data_recipe[algea_clump_agitated].energy_required = 4
        data_recipe[algea_clump_agitated].ingredients =
        {
            {type = item, name = algea_clump_tritite, amount = 4},
            {type = fluid, name = carbon_dioxide_angels, amount = 480}
        }
        data_recipe[algea_clump_agitated].results[1].amount = 4

        data_item[algea_clump_iritite].subgroup = is_vesta_recipe
        data_item[algea_clump_iritite].order = m
        data_item[algea_clump_iritite].stack_size = 200
        data_recipe[algea_clump_iritite].subgroup = is_vesta_recipe
        data_recipe[algea_clump_iritite].icons = TWO_I(algea_clump_agitated, algea_clump_iritite)
        data_recipe[algea_clump_iritite].order = m

        data_item[algea_clump_exotic].subgroup = is_vesta_recipe
        data_item[algea_clump_exotic].order = n
        data_item[algea_clump_exotic].stack_size = 200
        data_item[algea_clump_exotic].fuel_categories = {base_fuel}
        data_item[algea_clump_exotic].fuel_value = 3840 .. kJ
        data_recipe[algea_clump_exotic].localised_name = {"item-name." .. algea_clump_exotic}
        data_recipe[algea_clump_exotic].subgroup = is_vesta_recipe
        data_recipe[algea_clump_exotic].icons = STONKS_I(stonks_png, algea_clump_exotic)
        data_recipe[algea_clump_exotic].order = n

        data_item[algea_clump_holmium].subgroup = is_vesta_recipe
        data_item[algea_clump_holmium].order = o
        data_item[algea_clump_holmium].stack_size = 200
        data_recipe[algea_clump_holmium].localised_name = {"item-name." .. algea_clump_holmium}
        data_recipe[algea_clump_holmium].subgroup = is_vesta_recipe
        data_recipe[algea_clump_holmium].icons = TWO_I(algea_clump_exotic, algea_clump_holmium)
        data_recipe[algea_clump_holmium].order = o
        data_recipe[algea_clump_holmium].results =
        {
            {type = item, name = algea_clump_holmium, amount = 1, independent_probability = 0.875},
            {type = item, name = algea_clump_exotic, amount = 1, independent_probability = 0.125}
        }
        data_recipe[algea_clump_holmium].main_product = algea_clump_holmium

        data_item[algea_clump_iridium].subgroup = is_vesta_recipe
        data_item[algea_clump_iridium].order = p
        data_item[algea_clump_iridium].stack_size = 200
        data_item[algea_clump_iridium].fuel_categories = {base_fuel}
        data_item[algea_clump_iridium].fuel_value = 3840 .. kJ
        data_recipe[algea_clump_iridium].subgroup = is_vesta_recipe
        data_recipe[algea_clump_iridium].icons = FOUR_I(algea_clump_iritite, algea_water_vesta, algea_clump_exotic, algea_clump_iridium)
        data_recipe[algea_clump_iridium].order = p
        data_recipe[algea_clump_iridium].energy_required = 4
        data_recipe[algea_clump_iridium].ingredients =
        {
            {type = item, name = algea_clump_iritite, amount = 4},
            {type = item, name = algea_clump_exotic, amount = 4},
            {type = fluid, name = algea_water_vesta, amount = 60}
        }
        data_recipe[algea_clump_iridium].results[1].amount = 4
    end

    data_item[algea_clump_petrite].subgroup = is_vesta_recipe
    data_item[algea_clump_petrite].order = k
    data_item[algea_clump_petrite].stack_size = 200
    data_item[algea_clump_petrite].fuel_categories = {base_fuel}
    data_item[algea_clump_petrite].fuel_value = 30720 .. kJ

    data_item[algea_clump_nutrient].subgroup = is_vesta_recipe
    data_item[algea_clump_nutrient].order = q
    data_item[algea_clump_nutrient].stack_size = 200
    data_item[algea_clump_nutrient].fuel_value = 1920 .. kJ

    data_item[vesta_foundation].subgroup = is_vesta_recipe
    data_item[vesta_foundation].order = r
    data_item[vesta_foundation].stack_size = 200
    data_recipe[vesta_foundation].subgroup = is_vesta_recipe
    data_recipe[vesta_foundation].order = r
    data_recipe[vesta_foundation].energy_required = 4
    data_recipe[vesta_foundation].ingredients =
    {
        {type = item, name = foundation, amount = 4},
        {type = item, name = space_platform_foundation, amount = 4},
        {type = fluid, name = helium_vesta, amount = 60}
    }
    data_recipe[vesta_foundation].results[1].amount = 8
    data_tile[vesta_foundation].subgroup = is_vesta_recipe
    data_tile[vesta_foundation].order = r

    local rocket_fuel_from_vesta = "ske-rocket-fuel-from-vesta"
    data_recipe[rocket_fuel_from_vesta].subgroup = is_vesta_recipe
    data_recipe[rocket_fuel_from_vesta].icons = BUILDING_R_I(rocket_fuel, planet_vesta)
    data_recipe[rocket_fuel_from_vesta].order = r_a
    data_recipe[rocket_fuel_from_vesta].allow_quality = true
    data_recipe[rocket_fuel_from_vesta].energy_required = 2
    data_recipe[rocket_fuel_from_vesta].ingredients[1].amount = 30
    data_recipe[rocket_fuel_from_vesta].ingredients[2].amount = 30
    data_recipe[rocket_fuel_from_vesta].ingredients[3].amount = 30
    data_recipe[rocket_fuel_from_vesta].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local lds_from_vesta = "ske-lds-from-vesta"
    data_recipe[lds_from_vesta].subgroup = is_vesta_recipe
    data_recipe[lds_from_vesta].icons = BUILDING_R_I(low_density_structure, planet_vesta)
    data_recipe[lds_from_vesta].order = r_b
    data_recipe[lds_from_vesta].energy_required = 4
    data_recipe[lds_from_vesta].ingredients =
    {
        {type = item, name = steel_plate, amount = 4},
        {type = item, name = iridium_plate_mods, amount = 4},
        {type = fluid, name = methane_angels, amount = 60}
    }
    data_recipe[lds_from_vesta].results[1].amount = 1
    data_recipe[lds_from_vesta].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_fluid[supermagnetic_vesta].subgroup = is_vesta_recipe
    data_fluid[supermagnetic_vesta].order = s
    TIMSABA.barreling.add_dangerous_fluid(supermagnetic_vesta)
    data_recipe[supermagnetic_vesta].categories = {vesta_magnetics}
    data_recipe[supermagnetic_vesta].subgroup = is_vesta_recipe
    data_recipe[supermagnetic_vesta].icons = TWO_I(electrolyte, supermagnetic_vesta)
    data_recipe[supermagnetic_vesta].order = s
    data_recipe[supermagnetic_vesta].energy_required = 4
    data_recipe[supermagnetic_vesta].ingredients = {{type = fluid, name = electrolyte, amount = 60}}
    data_recipe[supermagnetic_vesta].results[1].amount = 60
    data_recipe[supermagnetic_vesta].surface_conditions = {{property = pressure, min = 500, max = 500}}

    if settings.startup[setting_vesta_legacy_recipes].value then
        data_item[gas_manipulation_science_pack].subgroup = is_vesta_recipe
        data_item[gas_manipulation_science_pack].order = t
    else
        data_tool[gas_manipulation_science_pack].subgroup = is_vesta_recipe
        data_tool[gas_manipulation_science_pack].order = t
    end
    data_recipe[gas_manipulation_science_pack].subgroup = is_vesta_recipe
    data_recipe[gas_manipulation_science_pack].order = t
    data_recipe[gas_manipulation_science_pack].ingredients =
    {
        {type = item, name = carbon_angels, amount = 4},
        {type = item, name = algea_clump_stonite, amount = 4},
        {type = item, name = iridium_plate_mods, amount = 4},
        {type = fluid, name = supermagnetic_vesta, amount = 60}
    }
    data_recipe[gas_manipulation_science_pack].results = {{type = item, name = gas_manipulation_science_pack, amount = 1}}
    data_recipe[gas_manipulation_science_pack].main_product = gas_manipulation_science_pack
    data_recipe[gas_manipulation_science_pack].surface_conditions = {{property = pressure, min = 500, max = 500}}

    -- IRIDIUM
    data_item[iridium_plate_mods].localised_description = show_formula and {chemical_formula, "Ir"} or nil
    data_item[iridium_plate_mods].subgroup = is_iridium_casting
    data_item[iridium_plate_mods].order = a
    data_item[iridium_plate_mods].stack_size = 200
    data_recipe[iridium_plate_mods].categories = {sintering_6}
    data_recipe[iridium_plate_mods].subgroup = is_iridium_casting
    data_recipe[iridium_plate_mods].icons = TWO_I(iridium_powder, iridium_plate_mods)
    data_recipe[iridium_plate_mods].order = a
    data_recipe[iridium_plate_mods].energy_required = 8
    data_recipe[iridium_plate_mods].ingredients = {{type = item, name = iridium_powder, amount = 16}}
    data_recipe[iridium_plate_mods].results[1].amount = 16

    -- LOGISTICS
    local magnetic_pipe = "magnetic-pipe"
    data_item[magnetic_pipe].subgroup = is_vesta_logistic
    data_item[magnetic_pipe].order = a
    data_item[magnetic_pipe].stack_size = 200
    data_recipe[magnetic_pipe].subgroup = is_vesta_logistic
    data_recipe[magnetic_pipe].order = a
    data_recipe[magnetic_pipe].energy_required = 2
    data_recipe[magnetic_pipe].ingredients =
    {
        {type = item, name = niobium_titanium_plate, amount = 1},
        {type = item, name = niobium_titanium_cable, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 1},
        {type = item, name = iridium_plate_mods, amount = 1},
        {type = fluid, name = supermagnetic_vesta, amount = 30}
    }
    data_recipe[magnetic_pipe].results =
    {
        {type = item, name = magnetic_pipe, amount = 1},
        {type = fluid, name = electrolyte, amount = 15},
    }
    data_recipe[magnetic_pipe].main_product = magnetic_pipe
    if mods[moshine_mods] then
        table.insert(data_recipe[magnetic_pipe].ingredients, {type = item, name = neodymium_magnet, amount = 4})
    end
    data_pipe[magnetic_pipe].subgroup = is_vesta_logistic
    data_pipe[magnetic_pipe].order = a

    local simulations = require("prototypes.factoriopedia-simulations")

    local magnetic_pipe_to_ground = "magnetic-pipe-to-ground"
    data_item[magnetic_pipe_to_ground].subgroup = is_vesta_logistic
    data_item[magnetic_pipe_to_ground].order = b
    data_item[magnetic_pipe_to_ground].stack_size = 64
    data_item[magnetic_pipe_to_ground].weight = 15625
    data_recipe[magnetic_pipe_to_ground].subgroup = is_vesta_logistic
    data_recipe[magnetic_pipe_to_ground].order = b
    data_recipe[magnetic_pipe_to_ground].ingredients =
    {
        {type = item, name = magnetic_pipe, amount = 32},
        {type = item, name = iridium_plate_mods, amount = 4},
        {type = fluid, name = supermagnetic_vesta, amount = 120}
    }
    data_recipe[magnetic_pipe_to_ground].results =
    {
        {type = item, name = magnetic_pipe_to_ground, amount = 2},
        {type = fluid, name = electrolyte, amount = 60},
    }
    data_recipe[magnetic_pipe_to_ground].main_product = magnetic_pipe_to_ground
    data_pipe_to_ground[magnetic_pipe_to_ground].subgroup = is_vesta_logistic
    data_pipe_to_ground[magnetic_pipe_to_ground].order = b
    data_pipe_to_ground[magnetic_pipe_to_ground].fluid_box.pipe_connections[2].max_underground_distance = 32
    data_pipe_to_ground[magnetic_pipe_to_ground].factoriopedia_simulation = simulations.factoriopedia_magnetic_pipe_to_ground

    -- BUILDING
    data_item[electrolyser_vesta].subgroup = is_vesta_building
    data_item[electrolyser_vesta].order = a
    data_item[electrolyser_vesta].stack_size = 32
    data_item[electrolyser_vesta].weight = 31250
    data_recipe[electrolyser_vesta].subgroup = is_vesta_building
    data_recipe[electrolyser_vesta].order = a
    data_recipe[electrolyser_vesta].energy_required = 2
    data_recipe[electrolyser_vesta].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = niobium_titanium_cable, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = iridium_plate_mods, amount = 4}
    }

    data_assembling[electrolyser_vesta].subgroup = is_vesta_building
    data_assembling[electrolyser_vesta].order = a
    data_assembling[electrolyser_vesta].crafting_speed = 1
    data_assembling[electrolyser_vesta].module_slots = 4
    data_assembling[electrolyser_vesta].energy_usage = (1920 - 240) .. kW
    data_assembling[electrolyser_vesta].energy_source.emissions_per_minute.pollution = 8
    data_assembling[electrolyser_vesta].energy_source.drain = 240 .. kW
    data_assembling[electrolyser_vesta].effect_receiver.base_effect.productivity = nil

    data_item[supermagnet].subgroup = is_vesta_building
    data_item[supermagnet].order = b
    data_item[supermagnet].stack_size = 32
    data_item[supermagnet].weight = 31250
    data_recipe[supermagnet].subgroup = is_vesta_building
    data_recipe[supermagnet].order = b
    data_recipe[supermagnet].energy_required = 4
    data_recipe[supermagnet].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = niobium_titanium_cable, amount = 64},
        {type = item, name = iridium_plate_mods, amount = 16}
    }
    if mods[moshine_mods] then
        table.insert(data_recipe[supermagnet].ingredients, {type = item, name = neodymium_magnet, amount = 8})
    end
    data_assembling[supermagnet].subgroup = is_vesta_building
    data_assembling[supermagnet].order = b
    data_assembling[supermagnet].energy_usage = (3840 - 240) .. kW
    data_assembling[supermagnet].energy_source.drain = 240 .. kW

    data_item[combustion_furnace].subgroup = is_vesta_building
    data_item[combustion_furnace].order = c
    data_item[combustion_furnace].stack_size = 32
    data_item[combustion_furnace].weight = 31250
    data_recipe[combustion_furnace].subgroup = is_vesta_building
    data_recipe[combustion_furnace].order = c
    data_recipe[combustion_furnace].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = niobium_iron_plate, amount = 2},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = niobium_titanium_cable, amount = 4},
        {type = item, name = iridium_plate_mods, amount = 4}
    }

    data_assembling[combustion_furnace].subgroup = is_vesta_building
    data_assembling[combustion_furnace].order = c
    data_assembling[combustion_furnace].crafting_speed = 2
    data_assembling[combustion_furnace].energy_usage = (480 - drain) .. kW
    data_assembling[combustion_furnace].energy_source = data_assembling[electric_mixing_furnace_1].energy_source
    data_assembling[combustion_furnace].energy_source.drain = drain .. kW
    data_assembling[combustion_furnace].effect_receiver.base_effect.productivity = 1

    -- SPACE
    local fusion_thruster = "ske_fusion_thruster"
    data_item[fusion_thruster].subgroup = is_vesta_recipe_space
    data_item[fusion_thruster].order = a
    data_item[fusion_thruster].stack_size = 8
    data_item[fusion_thruster].weight = 125000
    data_recipe[fusion_thruster].subgroup = is_vesta_recipe_space
    data_recipe[fusion_thruster].order = a
    data_recipe[fusion_thruster].energy_required = 32
    data_recipe[fusion_thruster].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 32},
        {type = item, name = quantum_processor, amount = 32},
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 128},
        {type = item, name = niobium_iron_bearing, amount = 64},
        {type = item, name = niobium_titanium_cable, amount = 256},
        {type = item, name = magnetic_pipe, amount = 32},
        {type = item, name = iridium_plate_mods, amount = 64},
        {type = fluid, name = supermagnetic_vesta, amount = 960}
    }
    if mods[shchierbin_mods] then
        data_recipe[fusion_thruster].ingredients[1].name = vanadium_electro_engine_unit
    end
    if mods[moshine_mods] then
        table.insert(data_recipe[fusion_thruster].ingredients, {type = item, name = neodymium_magnet, amount = 64})
    end
    data_recipe[fusion_thruster].results =
    {
        {type = item, name = fusion_thruster, amount = 1},
        {type = fluid, name = electrolyte, amount = 480}
    }
    data_recipe[fusion_thruster].main_product = fusion_thruster
    data_thruster[fusion_thruster].subgroup = is_vesta_recipe_space
    data_thruster[fusion_thruster].order = a
    data_thruster[fusion_thruster].min_performance = {fluid_volume = 0.1, fluid_usage = 0.125, effectivity = 1}
    data_thruster[fusion_thruster].max_performance = {fluid_volume = 0.8, fluid_usage = 1, effectivity = 0.5}

    data_fluid[fusion_thruster_fuel].subgroup = is_vesta_recipe_space
    data_fluid[fusion_thruster_fuel].order = b
    data_recipe[fusion_thruster_fuel].categories = {cryogenics}
    data_recipe[fusion_thruster_fuel].subgroup = is_vesta_recipe_space
    data_recipe[fusion_thruster_fuel].icons = THREE_I(thruster_fuel, fusion_plasma, fusion_thruster_fuel)
    data_recipe[fusion_thruster_fuel].order = b
    data_recipe[fusion_thruster_fuel].energy_required = 4
    data_recipe[fusion_thruster_fuel].ingredients =
    {
        {type = fluid, name = thruster_fuel, amount = 480},
        {type = fluid, name = fusion_plasma, amount = (15 / 2)}
    }
    data_recipe[fusion_thruster_fuel].results = {{type = fluid, name = fusion_thruster_fuel, amount = 240}}

    data_fluid[fusion_thruster_oxidizer].subgroup = is_vesta_recipe_space
    data_fluid[fusion_thruster_oxidizer].order = c
    data_recipe[fusion_thruster_oxidizer].subgroup = is_vesta_recipe_space
    data_recipe[fusion_thruster_oxidizer].icons = THREE_I(thruster_oxidizer, fusion_plasma, fusion_thruster_oxidizer)
    data_recipe[fusion_thruster_oxidizer].order = c
    data_recipe[fusion_thruster_oxidizer].energy_required = 4
    data_recipe[fusion_thruster_oxidizer].ingredients =
    {
        {type = fluid, name = thruster_oxidizer, amount = 480},
        {type = fluid, name = fusion_plasma, amount = (15 / 2)}
    }
    data_recipe[fusion_thruster_oxidizer].results = {{type = fluid, name = fusion_thruster_oxidizer, amount = 240}}

    bobmods.lib.recipe.update_recycling_recipe
    ({
        ceramic,
        algea_water_filter,
        magnetic_pipe,
        magnetic_pipe_to_ground,
        electrolyser_vesta,
        supermagnet,
        combustion_furnace,
        fusion_thruster
    })

    -- TECHNOLOGY
    local planet_discovery_vesta = "planet-discovery-vesta"
    table.insert(data_technology[planet_discovery_vesta].prerequisites, tech_advanced_full_asteroid_processing)
    table.insert(data_technology[planet_discovery_vesta].prerequisites, railgun)
    data_technology[planet_discovery_vesta].effects = {{type = unlock_space_location, space_location = planet_vesta, use_icon_overlay_constant = true}}
    local function added_recipe_in_planet_discovery_vesta(recipe_name)
        if not data_recipe[recipe_name] then return end

        table.insert(data_technology[planet_discovery_vesta].effects, {type = unlock_recipe, recipe = recipe_name})
    end
    data_technology[planet_discovery_vesta].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {cryogenic_science_pack, 1}
    }

    data_technology[tech_gas_manipulation_science_pack].effects = {}
    local function added_recipe_in_tech_gas_manipulation_science_pack(recipe_name)
        if not data_recipe[recipe_name] then return end

        table.insert(data_technology[tech_gas_manipulation_science_pack].effects, {type = unlock_recipe, recipe = recipe_name})
    end

    local tech_ore_to_plate = "s2_plateworkings"
    data_technology[tech_ore_to_plate].effects = {}
    local function add_recipe_for_ore_to_plate(recipe)
        table.insert(data_technology[tech_ore_to_plate].effects, {type = unlock_recipe, recipe = recipe})
    end

    local tech_algea_culturing = "s1_algea_culturing"
    data_technology[tech_algea_culturing].prerequisites = {planet_discovery_vesta}
    if settings.startup[setting_vesta_legacy_recipes].value then
        added_recipe_in_planet_discovery_vesta(algea_water_vesta)
        added_recipe_in_planet_discovery_vesta(hydrogen_vesta)
        added_recipe_in_planet_discovery_vesta(nitrogen_vesta)
        added_recipe_in_planet_discovery_vesta(carbon_dioxide_vesta)
        added_recipe_in_planet_discovery_vesta(hydrogen_sulfide_vesta)
        added_recipe_in_planet_discovery_vesta(methane_vesta)
        added_recipe_in_planet_discovery_vesta(helium_vesta)
        added_recipe_in_planet_discovery_vesta(helium_vesta_alt)
        added_recipe_in_planet_discovery_vesta(iridium_ore)

        data_technology[tech_algea_culturing].effects =
        {
            {type = unlock_recipe, recipe = coal_mineraliztion},
            {type = unlock_recipe, recipe = algea_clump_stonite},
            {type = unlock_recipe, recipe = algea_stone_electrolysis}
        }

        data_technology[tech_iridium_smelting_1].prerequisites = {planet_discovery_vesta}
        data_technology[tech_iridium_smelting_1].effects[5].recipe = combustion_furnace

        local tech_algea_treatment = "s1_algea_treatment"
        data_technology[tech_algea_treatment].prerequisites = {tech_algea_culturing, tech_iridium_smelting_1}
        data_technology[tech_algea_treatment].effects =
        {
            {type = unlock_recipe, recipe = electrolyser_vesta},
            {type = unlock_recipe, recipe = algea_clump_iron},
            {type = unlock_recipe, recipe = algea_iron_extraction},
            {type = unlock_recipe, recipe = algea_clump_copper},
            {type = unlock_recipe, recipe = algea_copper_extraction},
            {type = unlock_recipe, recipe = algea_clump_petrite}
        }

        local tech_electrolysis = "s1_electrolysis"
        data_technology[tech_electrolysis].prerequisites = {tech_algea_treatment}
        data_technology[tech_electrolysis].effects =
        {
            {type = unlock_recipe, recipe = supermagnet},
            {type = unlock_recipe, recipe = sulfuric_acid_vesta}
        }

        local tech_working_with_gases = "ske_working_with_gases"
        data_technology[tech_working_with_gases].effects =
        {
            {type = unlock_recipe, recipe = H2O},
            {type = unlock_recipe, recipe = carbon_seperation},
            {type = unlock_recipe, recipe = carbon_super_cooling},
            {type = unlock_recipe, recipe = ceramic},
            {type = unlock_recipe, recipe = mesh}
        }

        local tech_gas_giant_platform = "ske_gas_giant_platform"
        data_technology[tech_gas_giant_platform].prerequisites = {tech_working_with_gases}

        local tech_algea_filtering = "s1_algea_filtering"
        data_technology[tech_algea_filtering].prerequisites = {tech_working_with_gases}
        data_technology[tech_algea_filtering].research_trigger = {type = craft_item, item = mesh}

        local tech_exotic_algae = "s1_exotic_algae"
        data_technology[tech_exotic_algae].prerequisites = {tech_electrolysis, tech_algea_filtering}
        data_technology[tech_exotic_algae].effects =
        {
            {type = unlock_recipe, recipe = algea_clump_tritite},
            {type = unlock_recipe, recipe = algea_clump_agitated},
            {type = unlock_recipe, recipe = algea_clump_iritite},
            {type = unlock_recipe, recipe = algea_clump_exotic},
            {type = unlock_recipe, recipe = algea_clump_holmium},
            {type = unlock_recipe, recipe = holmium_ore_2},
            {type = unlock_recipe, recipe = algea_clump_iridium},
            {type = unlock_recipe, recipe = iridium_ore_2}
        }

        local tech_deuterium_production = "deuterium-production"
        data_technology[tech_deuterium_production].icons = TIMSABA.functions.create_gas_tech_icon("DDD")
        data_technology[tech_deuterium_production].prerequisites = {tech_exotic_algae}
        data_technology[tech_deuterium_production].research_trigger = {type = craft_item, item = algea_clump_holmium}

        local tech_tritium_production = "tritium-production"
        data_technology[tech_tritium_production].icons = TIMSABA.functions.create_gas_tech_icon("TTT")
        data_technology[tech_tritium_production].prerequisites = {tech_exotic_algae}
        data_technology[tech_tritium_production].research_trigger = {type = craft_item, item = algea_clump_iridium}

        local tech_supermagnet = "s1_supermagnet"
        data_technology[tech_supermagnet].prerequisites = {tech_deuterium_production, tech_tritium_production}
        data_technology[tech_supermagnet].effects =
        {
            {type = unlock_recipe, recipe = rocket_fuel_from_vesta},
            {type = unlock_recipe, recipe = lds_from_vesta},
            {type = unlock_recipe, recipe = supermagnetic_vesta}
        }

        data_technology[tech_gas_manipulation_science_pack].research_trigger = {type = craft_fluid, fluid = supermagnetic_vesta}
        added_recipe_in_tech_gas_manipulation_science_pack(gas_manipulation_science_pack)
    else
        added_recipe_in_planet_discovery_vesta(algea_water_vesta)
        added_recipe_in_planet_discovery_vesta(hydrogen_vesta)
        added_recipe_in_planet_discovery_vesta(nitrogen_vesta)
        added_recipe_in_planet_discovery_vesta(carbon_dioxide_vesta)
        added_recipe_in_planet_discovery_vesta(hydrogen_sulfide_vesta)
        added_recipe_in_planet_discovery_vesta(methane_vesta)
        added_recipe_in_planet_discovery_vesta(helium_vesta)
        added_recipe_in_planet_discovery_vesta(helium_vesta_alt)
        added_recipe_in_planet_discovery_vesta(stone_mineraliztion)
        added_recipe_in_planet_discovery_vesta(coal_mineraliztion)
        added_recipe_in_planet_discovery_vesta(carbon_seperation)
        added_recipe_in_planet_discovery_vesta(co2_filter_carbon)
        added_recipe_in_planet_discovery_vesta(carbon_super_cooling)
        added_recipe_in_planet_discovery_vesta(vesta_foundation)

        local tech_algea_extracting = "s1_algea_extracting"
        data_technology[tech_algea_extracting].prerequisites = {tech_iridium_smelting_1, tech_algea_culturing}
        if mods[moshine_mods] then table.insert(data_technology[tech_algea_extracting].prerequisites, tech_magnet_moshine) end
        data_technology[tech_algea_extracting].effects =
        {
            {type = unlock_recipe, recipe = supermagnet},
            {type = unlock_recipe, recipe = algea_iron_electrolysis},
            {type = unlock_recipe, recipe = algea_copper_electrolysis},
            {type = unlock_recipe, recipe = algea_stone_electrolysis}
        }

        data_technology[tech_deuterium].prerequisites = {planet_discovery_vesta}
        data_technology[tech_deuterium].effects =
        {
            {type = unlock_recipe, recipe = deuterium_mods},
            {type = unlock_recipe, recipe = tritium_mods},
            {type = unlock_recipe, recipe = iridium_ore}
        }

        added_recipe_in_tech_gas_manipulation_science_pack(rocket_fuel_from_vesta)
        added_recipe_in_tech_gas_manipulation_science_pack(lds_from_vesta)
        added_recipe_in_tech_gas_manipulation_science_pack(supermagnetic_vesta)
        added_recipe_in_tech_gas_manipulation_science_pack(gas_manipulation_science_pack)

        add_recipe_for_ore_to_plate(combustion_furnace)
    end

    add_recipe_for_ore_to_plate(iron_plate .. _burning)
    add_recipe_for_ore_to_plate(steel_plate .. _burning)
    add_recipe_for_ore_to_plate(copper_plate .. _burning)
    add_recipe_for_ore_to_plate(lead_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(tin_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(nickel_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(aluminium_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(zinc_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(silver_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(titanium_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(gold_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(platinum_plate .. _burning)
    add_recipe_for_ore_to_plate(bronze_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(brass_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(gunmetal_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(invar_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(cobalt_steel_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(nitinol_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(aluminium_lithium_plate .. _burning)
    add_recipe_for_ore_to_plate(holmium_plate .. _burning)
    add_recipe_for_ore_to_plate(antimony_plate .. _burning)
    add_recipe_for_ore_to_plate(germanium_plate .. _burning)
    if mods[shchierbin_mods] then
        add_recipe_for_ore_to_plate(vanadium_plate .. _burning)
        add_recipe_for_ore_to_plate(vanadium_steel_plate .. _burning)
        add_recipe_for_ore_to_plate(titanium_aluminium_vanadium_plate .. _burning)
    end
    if mods[aegis_bellicos_mods] then
        add_recipe_for_ore_to_plate(beryllium_plate .. _burning)
        add_recipe_for_ore_to_plate(beryllium_bronze_plate .. _burning)
    end
    data_technology[tech_ore_to_plate].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {cryogenic_science_pack, 1}
    }

    local tech_fusion_enhancements = "s2_fusion_enhancements"
    if data_technology[tech_fusion_enhancements] then
        data_technology[tech_fusion_enhancements].unit.ingredients =
        {
            {automation_science_pack, 1},
            {logistic_science_pack, 1},
            {chemical_science_pack, 1},
            {production_science_pack, 1},
            {utility_science_pack, 1},
            {metallurgic_science_pack, 1},
            {agricultural_science_pack, 1},
            {electromagnetic_science_pack, 1},
            {cryogenic_science_pack, 1}
        }
    end

    if mods[shchierbin_mods] then
        table.insert(data_technology[fusion_thruster].prerequisites, vanadium_crusher)
    end
    data_technology[fusion_thruster].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {cryogenic_science_pack, 1}
    }

    local tech_transport_belt_capacity_vesta = "transport-belt-capacity-vesta"
    if data_technology[tech_transport_belt_capacity_vesta] then
        data_technology[tech_transport_belt_capacity_vesta].unit.ingredients =
        {
            {automation_science_pack, 1},
            {logistic_science_pack, 1},
            {chemical_science_pack, 1},
            {production_science_pack, 1},
            {utility_science_pack, 1},
            {space_science_pack, 1},
            {metallurgic_science_pack, 1},
            {agricultural_science_pack, 1},
            {electromagnetic_science_pack, 1},
            {cryogenic_science_pack, 1}
        }
        if mods[bobtech] then
            table.insert(data_technology[tech_transport_belt_capacity_vesta].unit.ingredients, {transport_science_pack, 1})
        end
    end

    local tech_worker_robots_storage_vesta = "worker-robots-storage-vesta"
    if data_technology[tech_worker_robots_storage_vesta] then
        data_technology[tech_worker_robots_storage_vesta].localised_description = {"technplogy-description.worker-robots-storage"}
        data_technology[tech_worker_robots_storage_vesta].unit.ingredients =
        {
            {automation_science_pack, 1},
            {logistic_science_pack, 1},
            {chemical_science_pack, 1},
            {production_science_pack, 1},
            {utility_science_pack, 1},
            {metallurgic_science_pack, 1},
            {agricultural_science_pack, 1},
            {electromagnetic_science_pack, 1},
            {cryogenic_science_pack, 1}
        }
    end

    -- ADD
    local function add_prerequisites(tech_name)
        if not data_technology[tech_name] then return end
        table.insert(data_technology[tech_name].prerequisites, tech_gas_manipulation_science_pack)
    end
    add_prerequisites(tech_antimonite_processing_3)
    add_prerequisites(tech_germanite_processing_3)

    add_prerequisites(tech_sphalerite_processing_3)
    add_prerequisites(tech_tetrahedrite_processing_3)

    add_prerequisites(tech_chalcopyrite_processing_3)
    add_prerequisites(tech_sperrylite_processing_3)

    add_prerequisites(tech_gallite_processing_3)
    add_prerequisites(tech_sylvanite_processing_3)

    add_prerequisites(tech_aquilo_cryogenics)
end