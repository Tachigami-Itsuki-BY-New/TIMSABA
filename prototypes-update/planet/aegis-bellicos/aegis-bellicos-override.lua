if mods[aegis_bellicos_mods] then
    -- BERULLIUM
    data_item[beryllium_ore].localised_description = show_formula and {chemical_formula, "Be"} or nil
    data_item[beryllium_ore].subgroup = is_beryllium
    data_item[beryllium_ore].order = a
    data_item[beryllium_ore].stack_size = 200

    -- BERULLIUM CASTING
    data_item[beryllium_plate].localised_description = show_formula and {chemical_formula, "Be"} or nil
    data_item[beryllium_plate].subgroup = is_beryllium_casting
    data_item[beryllium_plate].order = b
    data_recipe[beryllium_plate].categories = {angels_casting_4}
    data_recipe[beryllium_plate].subgroup = is_beryllium_casting
    data_recipe[beryllium_plate].icons = TWO_I(beryllium_molten, beryllium_plate)
    data_recipe[beryllium_plate].order = b
    data_recipe[beryllium_plate].energy_required = 4
    data_recipe[beryllium_plate].ingredients = {{type = fluid, name = beryllium_molten, amount = 60}}
    data_recipe[beryllium_plate].results[1].amount = 4
    data_recipe[beryllium_plate].main_product = beryllium_plate

    -- RECIPE
    data_item[lightweight_science_pack].subgroup = is_bellicos_recipe
    data_item[lightweight_science_pack].order = a
    data_recipe[lightweight_science_pack].subgroup = is_bellicos_recipe
    data_recipe[lightweight_science_pack].order = a
    data_recipe[lightweight_science_pack].energy_required = 8
    data_recipe[lightweight_science_pack].ingredients =
    {
        {type = item, name = beryllium_plate, amount = 4},
        {type = item, name = beryllium_bronze_plate, amount = 8}
    }

    local beryllium_LDS = "beryllium-LDS"
    data_recipe[beryllium_LDS].subgroup = is_bellicos_recipe
    data_recipe[beryllium_LDS].icons = R_P_I(low_density_structure, space_platform)
    data_recipe[beryllium_LDS].order = b
    data_recipe[beryllium_LDS].energy_required = 16
    data_recipe[beryllium_LDS].ingredients =
    {
        {type = item, name = beryllium_plate, amount = 16},
        {type = item, name = beryllium_bronze_plate, amount = 2},
        {type = item, name = plastic, amount = 4}
    }

    data_item[radioactive_ice].subgroup = is_bellicos_recipe
    data_item[radioactive_ice].order = c
    data_item[radioactive_ice].spoil_ticks = nil

    local tritium_gas_bellicos = "tritium-extraction-bellicos"
    data_recipe[tritium_gas_bellicos].localised_name = {"fluid-name." .. tritium_gas}
    data_recipe[tritium_gas_bellicos].categories = {centrifuging_4}
    data_recipe[tritium_gas_bellicos].subgroup = is_bellicos_recipe
    data_recipe[tritium_gas_bellicos].icons = THREE_R_IS(radioactive_ice, ice, tritium_gas)
    data_recipe[tritium_gas_bellicos].order = c_a
    data_recipe[tritium_gas_bellicos].allow_productivity = false
    data_recipe[tritium_gas_bellicos].allow_quality = false
    data_recipe[tritium_gas_bellicos].energy_required = 64
    data_recipe[tritium_gas_bellicos].ingredients[1].amount = 8
    data_recipe[tritium_gas_bellicos].results =
    {
        {type = item, name = ice, amount = 8},
        {type = fluid, name = tritium_gas, amount = 120}
    }
    data_recipe[tritium_gas_bellicos].main_product = tritium_gas

    data_item[pulsar_science_pack].subgroup = is_bellicos_recipe
    data_item[pulsar_science_pack].order = d
    data_recipe[pulsar_science_pack].subgroup = is_bellicos_recipe
    data_recipe[pulsar_science_pack].order = d
    data_recipe[pulsar_science_pack].energy_required = 8
    data_recipe[pulsar_science_pack].ingredients =
    {
        {type = item, name = uranium_235, amount = 64},
        {type = item, name = radioactive_ice, amount = 128},
        {type = fluid, name = tritium_gas, amount = 480}
    }
    data_recipe[pulsar_science_pack].results = {{type = item, name = pulsar_science_pack, amount = 8}}

    if not data_fluid[helium_vesta] then
        data_fluid[helium].subgroup = is_bellicos_recipe
        data_fluid[helium].order = g
        TIMSABA.barreling.add_gas(helium)
    end
    data_recipe[helium].subgroup = is_bellicos_recipe
    data_recipe[helium].icons = THREE_IS(helium_3_gas, helium_4_gas, He_icon)
    data_recipe[helium].order = g
    data_recipe[helium].energy_required = 32 -- 20% He-3(g) + 80% He-4(g) --> 100% He(g)
    data_recipe[helium].ingredients =
    {
        {type = fluid, name = helium_3_gas, amount = 30},
        {type = fluid, name = helium_4_gas, amount = 120}
    }
    data_recipe[helium].results = {{type = fluid, name = helium, amount = 120}}
    data_recipe[helium].main_product = helium

    local helium_electronic_circuit = "helium-circuits"
    data_recipe[helium_electronic_circuit].localised_name = {"item-name." .. electronic_circuit}
    data_recipe[helium_electronic_circuit].subgroup = is_bellicos_recipe
    data_recipe[helium_electronic_circuit].icons = BUILDING_R_I(electronic_circuit, helium_liquid)
    data_recipe[helium_electronic_circuit].order = h_a
    data_recipe[helium_electronic_circuit].energy_required = 1
    data_recipe[helium_electronic_circuit].ingredients = util.table.deepcopy(data_recipe[electronic_circuit].ingredients)
    table.insert(data_recipe[helium_electronic_circuit].ingredients, {type = fluid, name = helium_liquid, amount = 15})
    data_recipe[helium_electronic_circuit].results =
    {
        {type = item, name = electronic_circuit, amount = 4},
        {type = fluid, name = helium, amount = (15/2), ignored_by_productivity = (15/2)} -- 15
    }

    local helium_advanced_circuit = "helium-advanced-circuits"
    data_recipe[helium_advanced_circuit].localised_name = {"item-name." .. advanced_circuit}
    data_recipe[helium_advanced_circuit].subgroup = is_bellicos_recipe
    data_recipe[helium_advanced_circuit].icons = BUILDING_R_I(advanced_circuit, helium_liquid)
    data_recipe[helium_advanced_circuit].order = h_b
    data_recipe[helium_advanced_circuit].energy_required = 4
    data_recipe[helium_advanced_circuit].ingredients = util.table.deepcopy(data_recipe[advanced_circuit].ingredients)
    table.insert(data_recipe[helium_advanced_circuit].ingredients, {type = fluid, name = helium_liquid, amount = 30})
    data_recipe[helium_advanced_circuit].results =
    {
        {type = item, name = advanced_circuit, amount = 4},
        {type = fluid, name = helium, amount = 15, ignored_by_productivity = 15} -- 30
    }

    local helium_processing_unit = "helium-processing-unit"
    data_recipe[helium_processing_unit].localised_name = {"item-name." .. processing_unit}
    data_recipe[helium_processing_unit].subgroup = is_bellicos_recipe
    data_recipe[helium_processing_unit].icons = BUILDING_R_I(processing_unit, helium_liquid)
    data_recipe[helium_processing_unit].order = h_c
    data_recipe[helium_processing_unit].energy_required = 4
    data_recipe[helium_processing_unit].ingredients = util.table.deepcopy(data_recipe[processing_unit].ingredients)
    table.insert(data_recipe[helium_processing_unit].ingredients, {type = fluid, name = helium_liquid, amount = 60})
    data_recipe[helium_processing_unit].results =
    {
        {type = item, name = processing_unit, amount = 4},
        {type = fluid, name = helium, amount = 30, ignored_by_productivity = 30} -- 60
    }

    local helium_quantum_processor = "quantum-processor-helium"
    data_recipe[helium_quantum_processor].localised_name = {"item-name." .. quantum_processor}
    data_recipe[helium_quantum_processor].subgroup = is_bellicos_recipe
    data_recipe[helium_quantum_processor].icons = BUILDING_R_I(quantum_processor, helium_liquid)
    data_recipe[helium_quantum_processor].order = h_e
    data_recipe[helium_quantum_processor].energy_required = 16
    data_recipe[helium_quantum_processor].ingredients =
    {
        {type = item, name = aluminium_oxide, amount = 4},
        {type = item, name = platinum_plate, amount = 4},
        {type = item, name = holmium_plate, amount = 4},
        {type = item, name = semiconductor, amount = 8},
        {type = item, name = superconductor, amount = 8},
        {type = item, name = carbon_fiber, amount = 4},
        {type = fluid, name = helium_liquid, amount = 240}
    }
    data_recipe[helium_quantum_processor].results =
    {
        {type = item, name = quantum_processor, amount = 4},
        {type = fluid, name = helium, amount = 120, ignored_by_productivity = 120} -- 240
    }

    -- LOGISTICS
    data_item[space_transport_belt].subgroup = is_bellicos_logistic
    data_item[space_transport_belt].order = a
    data_recipe[space_transport_belt].subgroup = is_bellicos_logistic
    data_recipe[space_transport_belt].order = a
    data_recipe[space_transport_belt].energy_required = 0.5
    if mods[arig_mods] then
        data_recipe[space_transport_belt].ingredients =
        {
            {type = item, name = beryllium_bronze_gear_wheel, amount = 4},
            {type = item, name = beryllium_bronze_bearing, amount = 4},
            {type = item, name = hyper_transport_belt_arig, amount = 2},
            {type = item, name = beryllium_bronze_plate, amount = 2}
        }
    else
        data_recipe[space_transport_belt].ingredients =
        {
            {type = item, name = beryllium_bronze_gear_wheel, amount = 4},
            {type = item, name = beryllium_bronze_bearing, amount = 4},
            {type = item, name = vulcanus_transport_belt, amount = 2},
            {type = item, name = beryllium_bronze_plate, amount = 2}
        }
    end
    data_recipe[space_transport_belt].results = {{type = item, name = space_transport_belt, amount = 2}}
    data_transport_belt[space_transport_belt].subgroup = is_bellicos_logistic
    data_transport_belt[space_transport_belt].order = a
    data_transport_belt[space_transport_belt].speed = 22.5/60
    data_transport_belt[space_transport_belt].surface_conditions = nil

    local simulations = require("prototypes.factoriopedia-simulations")
    data_item[space_underground_belt].subgroup = is_bellicos_logistic
    data_item[space_underground_belt].order = b
    data_item[space_underground_belt].stack_size = 64
    data_item[space_underground_belt].weight = 15625
    data_recipe[space_underground_belt].subgroup = is_bellicos_logistic
    data_recipe[space_underground_belt].order = b
    data_recipe[space_underground_belt].energy_required = 1
    if mods[arig_mods] then
        data_recipe[space_underground_belt].ingredients =
        {
            {type = item, name = beryllium_bronze_gear_wheel, amount = 16},
            {type = item, name = beryllium_bronze_bearing, amount = 16},
            {type = item, name = hyper_underground_belt_arig, amount = 2},
            {type = item, name = beryllium_bronze_plate, amount = 8}
        }
    else
        data_recipe[space_underground_belt].ingredients =
        {
            {type = item, name = beryllium_bronze_gear_wheel, amount = 16},
            {type = item, name = beryllium_bronze_bearing, amount = 16},
            {type = item, name = vulcanus_underground_belt, amount = 2},
            {type = item, name = beryllium_bronze_plate, amount = 8}
        }
    end
    data_recipe[space_underground_belt].results = {{type = item, name = space_underground_belt, amount = 2}}
    data_underground_belt[space_underground_belt].subgroup = is_bellicos_logistic
    data_underground_belt[space_underground_belt].order = b
    data_underground_belt[space_underground_belt].speed = 22.5/60
    if settings.startup[setting_rebalance_belts_and_pipes].value then
        data_underground_belt[space_underground_belt].max_distance = 56
    end
    data_underground_belt[space_underground_belt].factoriopedia_simulation = simulations.factoriopedia_space_underground_belt
    data_underground_belt[space_underground_belt].surface_conditions = nil

    data_item[space_splitter].subgroup = is_bellicos_logistic
    data_item[space_splitter].order = c
    data_item[space_splitter].stack_size = 64
    data_item[space_splitter].weight = 15625
    data_recipe[space_splitter].subgroup = is_bellicos_logistic
    data_recipe[space_splitter].order = c
    data_recipe[space_splitter].energy_required = 1
    if mods[arig_mods] then
        data_recipe[space_splitter].ingredients =
        {
            {type = item, name = beryllium_bronze_gear_wheel, amount = 8},
            {type = item, name = beryllium_bronze_bearing, amount = 8},
            {type = item, name = quantum_processor, amount = 1},
            {type = item, name = hyper_splitter_arig, amount = 1},
            {type = item, name = beryllium_bronze_plate, amount = 4}
        }
    else
        data_recipe[space_splitter].ingredients =
        {
            {type = item, name = beryllium_bronze_gear_wheel, amount = 8},
            {type = item, name = beryllium_bronze_bearing, amount = 8},
            {type = item, name = quantum_processor, amount = 1},
            {type = item, name = vulcanus_splitter, amount = 1},
            {type = item, name = beryllium_bronze_plate, amount = 4}
        }
    end
    data_recipe[space_splitter].results = {{type = item, name = space_splitter, amount = 1}}
    data_splitter[space_splitter].subgroup = is_bellicos_logistic
    data_splitter[space_splitter].order = c
    data_splitter[space_splitter].speed = 22.5/60
    data_splitter[space_splitter].surface_conditions = nil

    if mods[arig_mods] then
        data_transport_belt[vulcanus_transport_belt].next_upgrade = hyper_transport_belt_arig
        data_underground_belt[vulcanus_underground_belt].next_upgrade = hyper_underground_belt_arig
        data_splitter[vulcanus_splitter].next_upgrade = hyper_splitter_arig

        data_transport_belt[hyper_transport_belt_arig].next_upgrade = space_transport_belt
        data_underground_belt[hyper_underground_belt_arig].next_upgrade = space_underground_belt
        data_splitter[hyper_splitter_arig].next_upgrade = space_splitter
    else
        data_transport_belt[vulcanus_transport_belt].next_upgrade = space_transport_belt
        data_underground_belt[vulcanus_underground_belt].next_upgrade = space_underground_belt
        data_splitter[vulcanus_splitter].next_upgrade = space_splitter
    end

    data_transport_belt[space_transport_belt].next_upgrade = nil
    data_underground_belt[space_underground_belt].next_upgrade = nil
    data_splitter[space_splitter].next_upgrade = nil

    -- BUILDING
    data_item[tritium_RTG].subgroup = is_bellicos_building
    data_item[tritium_RTG].order = a
    data_item[tritium_RTG].stack_size = 32
    data_item[tritium_RTG].weight = 31250
    data_recipe[tritium_RTG].subgroup = is_bellicos_building
    data_recipe[tritium_RTG].order = a
    data_recipe[tritium_RTG].energy_required = 16
    data_recipe[tritium_RTG].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = lead_plate_bob, amount = 4},
        {type = item, name = uranium_238_plate, amount = 4},
        {type = item, name = beryllium_bronze_plate, amount = 8},
        {type = fluid, name = tritium_gas, amount = 960}
    }
    data_electric_energy_interface[tritium_RTG].subgroup = is_bellicos_building
    data_electric_energy_interface[tritium_RTG].order = a

    bobmods.lib.recipe.update_recycling_recipe
    ({
        space_transport_belt,
        space_underground_belt,
        space_splitter,
        tritium_RTG
    })

    if mods[bobmodules] then
        table.insert(data_recipe[speed_module_8].ingredients, {type = item, name = beryllium_bronze_plate, amount = 16})
        table.insert(data_recipe[efficiency_module_8].ingredients, {type = item, name = beryllium_bronze_plate, amount = 16})
        table.insert(data_recipe[productivity_module_8].ingredients, {type = item, name = beryllium_bronze_plate, amount = 16})
        table.insert(data_recipe[pollution_clean_module_8].ingredients, {type = item, name = beryllium_bronze_plate, amount = 16})
        table.insert(data_recipe[pollution_create_module_8].ingredients, {type = item, name = beryllium_bronze_plate, amount = 16})
        if mods[quality_mods] then
            table.insert(data_recipe[quality_module_8].ingredients, {type = item, name = beryllium_bronze_plate, amount = 16})
        end

        bobmods.lib.recipe.update_recycling_recipe
        ({
            speed_module_8,
            efficiency_module_8,
            productivity_module_8,
            pollution_clean_module_8,
            pollution_create_module_8,
            quality_module_8
        })
    end

    -- TECHNOLOGY
    data_technology[discovery_aegis_outer].unit.ingredients =
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

    data_technology[lightweight_science_pack].prerequisites = {tech_beryllium_bronze_processing}
    data_technology[lightweight_science_pack].research_trigger =
    {
        type = craft_item,
        item = beryllium_bronze_plate,
        count = 256
    }

    data_technology[tech_space_logistic].unit.ingredients =
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

    data_technology[beryllium_LDS].unit.ingredients =
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

    local space_plateform = "space-plateform" -- !!!ИСПРАВИТЬ КАК АВТОР ИСПРАВИТ
    if mods[muluna_mods] then
        table.insert(data_technology[space_plateform .. _productivity].effects, {type = change_recipe_productivity, recipe = LDSPF, change = 0.1})
    end
    data_technology[space_plateform .. _productivity].unit.ingredients =
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

    local discovery_aegis_inner = "discovery-aegis-inner"
    data_technology[discovery_aegis_inner].unit.ingredients =
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

    data_technology["discovery-aegis-warden"].unit.ingredients =
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

    local discovery_bellicos = "discovery-bellicos"
    data_technology[discovery_bellicos].prerequisites = {discovery_aegis_inner}
    data_technology[discovery_bellicos].unit.ingredients =
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

    data_technology["tritium-extraction"].icons = TIMSABA.functions.create_gas_tech_icon("TTT")

    local tech_helium_production = "helium-production"
    data_technology[tech_helium_production].prerequisites = {pulsar_science_pack, cryogenic_plant}
    data_technology[tech_helium_production].icons = TIMSABA.functions.create_gas_tech_icon("HeHeHe")
    data_technology[tech_helium_production].effects =
    {
        {type = unlock_recipe, recipe = helium_3_gas},
        {type = unlock_recipe, recipe = helium_4_gas},
        {type = unlock_recipe, recipe = helium},
        {type = unlock_recipe, recipe = helium_liquid}
    }
    data_technology[tech_helium_production].unit.ingredients =
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

    local tech_circuit_productivity_helium = "circuit" .. _productivity .. "-" .. helium
    data_technology[tech_circuit_productivity_helium].effects =
    {
        {type = unlock_recipe, recipe = helium_electronic_circuit},
        {type = unlock_recipe, recipe = helium_advanced_circuit},
        {type = unlock_recipe, recipe = helium_processing_unit},
        {type = unlock_recipe, recipe = helium_advanced_processing_unit}
    }
    data_technology[tech_circuit_productivity_helium].unit.ingredients =
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

    data_technology[quantum_processor .. "-" .. helium].unit.ingredients =
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

    data_technology[railgun .. "-shooting-speed-1"].prerequisites = {railgun}

    data_technology[railgun .. "-damage-1"].prerequisites = {railgun}

    local function added_prerequisites(tech_name)
        if not data_technology[tech_name] then return end
        table.insert(data_technology[tech_name].prerequisites, pulsar_science_pack)
    end
    added_prerequisites(tech_wolframite_processing_4)
    added_prerequisites(tech_samarskite_processing_4)

    added_prerequisites(tech_brannerite_processing_4)
    added_prerequisites(tech_rheniite_processing_4)

    added_prerequisites(tech_antimonite_processing_3)
    added_prerequisites(tech_germanite_processing_3)

    added_prerequisites(tech_monazite_processing_4)
    added_prerequisites(tech_aeschynite_processing_4)

    added_prerequisites(tech_sphalerite_processing_3)
    added_prerequisites(tech_tetrahedrite_processing_3)

    added_prerequisites(tech_chalcopyrite_processing_3)
    added_prerequisites(tech_sperrylite_processing_3)

    added_prerequisites(tech_millerite_processing_4)

    added_prerequisites(tech_vanadinite_processing_4)

    added_prerequisites(tech_gallite_processing_3)
    added_prerequisites(tech_sylvanite_processing_3)

    added_prerequisites(tech_wodginite_processing_4)

    added_prerequisites(tech_aquilo_cryogenics)

    added_prerequisites(speed_module_8)
    added_prerequisites(efficiency_module_8)
    added_prerequisites(productivity_module_8)
    added_prerequisites(pollution_clean_module_8)
    added_prerequisites(pollution_create_module_8)
    added_prerequisites(quality_module_8)
end