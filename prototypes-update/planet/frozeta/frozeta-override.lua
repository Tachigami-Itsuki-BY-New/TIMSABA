if mods[secretas_frozeta_mods] then
    -- RECIPE
    local spaceship_scrap = "spaceship-scrap"
    data_item[spaceship_scrap].subgroup = is_frozeta_recipe
    data_item[spaceship_scrap].order = a
    data_item[spaceship_scrap].stack_size = 200
    data_resource[spaceship_scrap].subgroup = is_frozeta_recipe
    data_resource[spaceship_scrap].order = a

    local spaceship_scrap_recycling = "spaceship-scrap-recycling"
    data_recipe[spaceship_scrap_recycling].subgroup = is_frozeta_recipe
    data_recipe[spaceship_scrap_recycling].order = a_a
    data_recipe[spaceship_scrap_recycling].results =
    {
        {type = item, name = solid_fuel,                amount = 1, independent_probability = 0.06250, show_details_in_recipe_tooltip = false},
        {type = item, name = enriched_fuel_bob,         amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = electric_engine_unit,      amount = 1, independent_probability = 0.06250, show_details_in_recipe_tooltip = false},
        {type = item, name = supercapacitor,            amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = carbon_fiber,              amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = space_platform_foundation, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = molybdenum_rhenium_pipe,   amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = storage_tank_4_alt,        amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = rocket,                    amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = T5_inserter,               amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = pump_4,                    amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = medium_electric_pole_4,    amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = small_lamp,                amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = combinator_arithmetic,     amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = combinator_constant,       amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = display_panel,             amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = heat_pipe_4,               amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = scrap,                     amount = 1, independent_probability = 0.25000, show_details_in_recipe_tooltip = false},
        {type = item, name = gallite_ore,               amount = 1, independent_probability = 0.50000, show_details_in_recipe_tooltip = false},
        {type = item, name = sylvanite_ore,             amount = 1, independent_probability = 0.50000, show_details_in_recipe_tooltip = false}
    }
    if settings.startup[setting_bobmods_power_steam].value then
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = boiler_6, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = steam_turbine_4, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
    else
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = boiler_1, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = steam_turbine_1, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
    end
    if settings.startup[setting_bobmods_power_solar].value then
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = solar_panel_4, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
    else
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = solar_panel_1, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
    end
    if data_item[flying_robot_frame_4] then
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = flying_robot_frame_4, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
    else
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = flying_robot_frame_1, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
    end
    if data_item[gun_turret_5] then
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = gun_turret_5, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
    else
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = gun_turret_1, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
    end
    if data_item[laser_turret_5] then
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = laser_turret_5, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
    else
        table.insert(data_recipe[spaceship_scrap_recycling].results, {type = item, name = laser_turret_1, amount = 1, independent_probability = 0.03125, show_details_in_recipe_tooltip = false})
    end

    data_recipe[gold_plate_mods].localised_name = data_item[gold_plate_bob].localised_name
    data_recipe[gold_plate_mods].categories = {sintering_6}
    data_recipe[gold_plate_mods].subgroup = is_frozeta_recipe
    data_recipe[gold_plate_mods].icons = TWO_I(gold_powder, gold_plate_bob)
    data_recipe[gold_plate_mods].order = c
    data_recipe[gold_plate_mods].enabled = false
    data_recipe[gold_plate_mods].energy_required = 4
    data_recipe[gold_plate_mods].ingredients = {{type = item, name = gold_powder, amount = 16}}
    data_recipe[gold_plate_mods].results = {{type = item, name = gold_plate_bob, amount = 16}}
    data_recipe[gold_plate_mods].main_product = gold_plate_bob
    data_recipe[gold_plate_mods].surface_conditions = {{property = pressure, min = 200, max = 280}}

    local solid_fuel_liquefaction = "solid-fuel-liquefaction"
    data_recipe[solid_fuel_liquefaction].subgroup = is_frozeta_recipe
    data_recipe[solid_fuel_liquefaction].icons = STONKS_I(stonks_png, naphtha_angels)
    data_recipe[solid_fuel_liquefaction].order = d_a
    data_recipe[solid_fuel_liquefaction].energy_required = 4 -- CnHn + C₈H₁₈ + 4H₂O --> 2C₈H₁₈ + 2O₂
    data_recipe[solid_fuel_liquefaction].ingredients =
    {
        {type = item, name = solid_fuel, amount = 4},
        {type = fluid, name = naphtha_angels, amount = 60},
        {type = fluid, name = steam, amount = 240}
    }
    data_recipe[solid_fuel_liquefaction].results =
    {
        {type = fluid, name = naphtha_angels, amount = 120},
        {type = fluid, name = oxygen_angels, amount = 120}
    }
    data_recipe[solid_fuel_liquefaction].surface_conditions = {{property = pressure, min = 200, max = 280}}

    data_item[golden_biter_egg].subgroup = is_frozeta_recipe
    data_item[golden_biter_egg].order = e
    data_item[golden_biter_egg].stack_size = 200
    data_item[golden_biter_egg].fuel_categories = {base_fuel}
    data_item[golden_biter_egg].fuel_value = 15360 .. kJ

    data_item[golden_science_pack].subgroup = is_frozeta_recipe
    data_item[golden_science_pack].order = f
    data_recipe[golden_science_pack].subgroup = is_frozeta_recipe
    data_recipe[golden_science_pack].order = f
    data_recipe[golden_science_pack].energy_required = 16
    if settings.startup[setting_bobmods_power_steam].value then
        data_recipe[golden_science_pack].ingredients =
        {
            {type = item, name = combinator_arithmetic, amount = 16},
            {type = item, name = steam_turbine_4, amount = 2},
            {type = item, name = gold_plate_bob, amount = 16},
            {type = item, name = solid_fuel, amount = 8},
            {type = fluid, name = steam, amount = 240}
        }
    else
        data_recipe[golden_science_pack].ingredients =
        {
            {type = item, name = combinator_arithmetic, amount = 16},
            {type = item, name = steam_turbine_1, amount = 2},
            {type = item, name = gold_plate_bob, amount = 16},
            {type = item, name = solid_fuel, amount = 8},
            {type = fluid, name = steam, amount = 240}
        }
    end
    data_recipe[golden_science_pack].results = {{type = item, name = golden_science_pack, amount = 8}}

    -- GALLIUM
    data_item_subgroup[is_gallium].group = ig_frozeta

    data_item_subgroup[is_gallium_chemistry].group = ig_frozeta

    -- BUILDING
    data_item[steam_recycler].subgroup = is_frozeta_building
    data_item[steam_recycler].order = a
    data_item[steam_recycler].stack_size = 32
    data_item[steam_recycler].weight = 31250
    data_recipe[steam_recycler].subgroup = is_frozeta_building
    data_recipe[steam_recycler].order = a
    data_recipe[steam_recycler].energy_required = 4
    data_recipe[steam_recycler].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = niobium_iron_plate, amount = 8},
        {type = item, name = reinforced_concrete, amount = 8}
    }
    data_furnace[steam_recycler].subgroup = is_frozeta_building
    data_furnace[steam_recycler].order = a
    data_furnace[steam_recycler].crafting_categories = {recycling}
    data_furnace[steam_recycler].module_slots = 4
    data_furnace[steam_recycler].crafting_speed = 1
    data_furnace[steam_recycler].energy_usage = 480 .. kW
    data_furnace[steam_recycler].result_inventory_size = 80

    bobmods.lib.recipe.update_recycling_recipe({steam_recycler})

    -- TECHNOLOGY
    planet_discovery_secretas = "planet-discovery-secretas"
    data_technology[planet_discovery_secretas].prerequisites = {tech_full_asteroid_processing, heating_tower}
    table.insert(data_technology[planet_discovery_secretas].effects, {type = unlock_recipe, recipe = auric_asteroid_crushing})
    table.insert(data_technology[planet_discovery_secretas].effects, {type = unlock_recipe, recipe = ammonia_from_frozeta_air})
    data_technology[planet_discovery_secretas].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    table.insert(data_technology[steam_recycler].prerequisites, "captivity")
    data_technology[steam_recycler].effects =
    {
        {type = unlock_recipe, recipe = steam_recycler},
        {type = unlock_recipe, recipe = spaceship_scrap_recycling},
        {type = unlock_recipe, recipe = solid_fuel_liquefaction}
    }

    data_technology[golden_science_pack].prerequisites = {tech_gallite_processing_1, tech_sylvanite_processing_1}
    table.insert(data_technology[golden_science_pack].effects, {type = unlock_recipe, recipe = frozeta_slag_processing})
    table.insert(data_technology[golden_science_pack].effects, {type = unlock_recipe, recipe = golden_biter_egg})

    data_technology[spaceship_scrap_recycling .. _productivity].prerequisites = {golden_science_pack}

    local tech_transport_belt_capacity_3_Secretas = "transport-belt-capacity-3-Secretas"
    data_technology[tech_transport_belt_capacity_3_Secretas].prerequisites = {golden_science_pack, tech_transport_belt_capacity_2}
    data_technology[tech_transport_belt_capacity_3_Secretas].unit.ingredients =
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
        table.insert(data_technology[tech_transport_belt_capacity_3_Secretas].unit.ingredients, {transport_science_pack, 1})
    end

    local tech_science_pack = "science-pack"
    data_technology[tech_science_pack .. _productivity].prerequisites = {promethium_science_pack}
    data_technology[tech_science_pack .. _productivity].effects = {}
    local function add_effects(recipe_name)
        if not data_recipe[recipe_name] then return end
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = recipe_name, change = 0.1})
    end
    add_effects(automation_science_pack)
    add_effects(logistic_science_pack)
    add_effects(military_science_pack)
    add_effects(chemical_science_pack)
    add_effects(production_science_pack)
    add_effects(utility_science_pack)
    add_effects(space_science_pack)
    add_effects(space_science_pack_hyarion)
    add_effects(metallurgic_science_pack)
    add_effects(agricultural_science_pack)
    add_effects(electromagnetic_science_pack)
    add_effects(cryogenic_science_pack)
    add_effects(promethium_science_pack)
    add_effects(promethium_science_pack_hyarion)
    add_effects(compression_science_pack)
    add_effects(polishing_science_pack)
    add_effects(refraction_science_pack)
    add_effects(bioengineering_science_pack)
    add_effects(pathological_science_pack)
    add_effects(galvanization_science_pack)
    add_effects(electrochemical_science_pack)
    add_effects(battlefield_science_pack)
    add_effects(vanadium_science_pack)
    add_effects(hydraulic_science_pack)
    add_effects(gas_manipulation_science_pack)
    add_effects(interstellar_science_pack)
    add_effects(golden_science_pack)

    data_technology["worker-robots-storage-4"].prerequisites = {golden_science_pack, "worker-robots-storage-3"}

    -- ADD
    local function add_ingredients(recipe_name)
        if not data_recipe[recipe_name] then return end
        table.insert(data_recipe[recipe_name].ingredients, {type = item, name = golden_biter_egg, amount = 8})
        bobmods.lib.recipe.update_recycling_recipe({recipe_name})
    end
    add_ingredients(speed_module_8)
    add_ingredients(efficiency_module_8)
    add_ingredients(productivity_module_8)
    add_ingredients(pollution_clean_module_8)
    add_ingredients(pollution_create_module_8)
    add_ingredients(quality_module_8)

    local function add_prerequisites(tech_name)
        if not data_technology[tech_name] then return end
        table.insert(data_technology[tech_name].prerequisites, golden_science_pack)
    end
    add_prerequisites(tech_wolframite_processing_4)
    add_prerequisites(tech_samarskite_processing_4)

    add_prerequisites(tech_brannerite_processing_4)
    add_prerequisites(tech_rheniite_processing_4)

    add_prerequisites(speed_module_8)
    add_prerequisites(efficiency_module_8)
    add_prerequisites(productivity_module_8)
    add_prerequisites(pollution_clean_module_8)
    add_prerequisites(pollution_create_module_8)
    add_prerequisites(quality_module_8)

    add_prerequisites(quantum_processor)

    table.insert(data_technology[tech_gallium_smelting_1].prerequisites, tech_gallite_processing_1)
    table.insert(data_technology[tech_gallium_smelting_2].prerequisites, tech_gallite_processing_2)
    table.insert(data_technology[tech_gallium_smelting_3].prerequisites, tech_gallite_processing_3)
end