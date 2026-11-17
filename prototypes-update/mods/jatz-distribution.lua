local jatz_distribution_mods = "jatz-distribution"
if mods[jatz_distribution_mods] then
    local provider_depot = "jatz-provider-depot"
    data_item[provider_depot].stack_size = 16
    data_item[provider_depot].weight = 62500
    data_recipe[provider_depot].energy_required = 4
    data_recipe[provider_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local request_depot = "jatz-request-depot"
    data_item[request_depot].stack_size = 16
    data_item[request_depot].weight = 62500
    data_recipe[request_depot].energy_required = 4
    data_recipe[request_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local buffer_depot = "jatz-buffer-depot"
    data_item[buffer_depot].stack_size = 16
    data_item[buffer_depot].weight = 62500
    data_recipe[buffer_depot].energy_required = 4
    data_recipe[buffer_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local liquid_provider_depot = "jatz-liquid-provider-depot"
    data_item[liquid_provider_depot].stack_size = 16
    data_item[liquid_provider_depot].weight = 62500
    data_recipe[liquid_provider_depot].energy_required = 4
    data_recipe[liquid_provider_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local liquid_request_depot = "jatz-liquid-request-depot"
    data_item[liquid_request_depot].stack_size = 16
    data_item[liquid_request_depot].weight = 62500
    data_recipe[liquid_request_depot].energy_required = 4
    data_recipe[liquid_request_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local liquid_buffer_depot = "jatz-liquid-buffer-depot"
    data_item[liquid_buffer_depot].stack_size = 16
    data_item[liquid_buffer_depot].weight = 62500
    data_recipe[liquid_buffer_depot].energy_required = 4
    data_recipe[liquid_buffer_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local fuel_depot = "jatz-fuel-depot"
    data_item[fuel_depot].stack_size = 8
    data_item[fuel_depot].weight = 125000
    data_recipe[fuel_depot].energy_required = 8
    data_recipe[fuel_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 64},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local quinityn_freighter = "jatz-quinityn-freighter"
    data_item_entity[quinityn_freighter].stack_size = 32
    data_item_entity[quinityn_freighter].weight = 31250
    data_recipe[quinityn_freighter].ingredients =
    {
        {type = item, name = steel_gear_wheel, amount = 4},
        {type = item, name = steel_bearing, amount = 4},
        {type = item, name = steel_plate, amount = 4},
        {type = item, name = electronic_circuit, amount = 1},
        {type = item, name = engine_unit, amount = 1}
    }

    data_recipe[quinityn_freighter .. "-" .. carbon] = nil

    local road = "jatz-road"
    data_item[road].stack_size = 200
    data_recipe[road].ingredients =
    {
        {type = item, name = stone_brick, amount = 4},
        {type = item, name = coal, amount = 4}
    }
    data_recipe[road].results[1].amount = 4

    local road_tunnel = road .. "-tunnel"
    data_recipe[road_tunnel].energy_required = 8
    data_recipe[road_tunnel].ingredients =
    {
        {type = item, name = steel_gear_wheel, amount = 16},
        {type = item, name = steel_bearing, amount = 8},
        {type = item, name = steel_plate, amount = 32}
    }
    data_recipe[road_tunnel].results[1].amount = 2

    local road_network_monitor = road .. "-monitor"
    data_recipe[road_network_monitor].energy_required = 4
    data_recipe[road_network_monitor].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 8},
        {type = item, name = copper_insulated_cable, amount = 4}
    }

    bobmods.lib.recipe.update_recycling_recipe
    ({
        provider_depot,
        request_depot,
        buffer_depot,
        liquid_provider_depot,
        liquid_request_depot,
        liquid_buffer_depot,
        road,
        road_tunnel,
    })

    local tech_freight_system = "jatz-freight-system"
    data_technology[tech_freight_system].effects =
    {
        {type = unlock_recipe, recipe = provider_depot},
        {type = unlock_recipe, recipe = request_depot},
        {type = unlock_recipe, recipe = buffer_depot},
        {type = unlock_recipe, recipe = fuel_depot},
        {type = unlock_recipe, recipe = quinityn_freighter},
        {type = unlock_recipe, recipe = road}
    }

    local tech_freighter_speed = "jatz-freighter-speed"
    local tech_freighter_item_capacity = "jatz-freighter-item-capacity"
    local tech_freighter_fluid_capacity = "jatz-freighter-fluid-capacity"

    table.insert(data_technology[tech_freighter_speed .. "-2"].prerequisites, chemical_science_pack)
    table.insert(data_technology[tech_freighter_item_capacity .. "-2"].prerequisites, chemical_science_pack)
    table.insert(data_technology[tech_freighter_fluid_capacity .. "-2"].prerequisites, chemical_science_pack)

    table.insert(data_technology[tech_freighter_speed .. "-3"].prerequisites, production_science_pack)
    table.insert(data_technology[tech_freighter_item_capacity .. "-3"].prerequisites, production_science_pack)
    table.insert(data_technology[tech_freighter_fluid_capacity .. "-3"].prerequisites, production_science_pack)

    table.insert(data_technology[tech_freighter_speed .. "-4"].prerequisites, utility_science_pack)
    table.insert(data_technology[tech_freighter_item_capacity .. "-4"].prerequisites, utility_science_pack)
    table.insert(data_technology[tech_freighter_fluid_capacity .. "-4"].prerequisites, utility_science_pack)

    table.insert(data_technology[tech_freighter_speed .. "-5"].prerequisites, space_science_pack)
    table.insert(data_technology[tech_freighter_item_capacity .. "-5"].prerequisites, space_science_pack)
    table.insert(data_technology[tech_freighter_item_capacity .. "-5"].unit.ingredients, {space_science_pack, 1})

    -- Duplicates
    --[[table.insert(data_technology[tech_freighter_fluid_capacity .. "-5"].prerequisites, space_science_pack)
    table.insert(data_technology[tech_freighter_fluid_capacity .. "-5"].unit.ingredients, {space_science_pack, 1})

    table.insert(data_technology[tech_freighter_item_capacity .. "-6"].unit.ingredients, {space_science_pack, 1})
    table.insert(data_technology[tech_freighter_fluid_capacity .. "-6"].unit.ingredients, {space_science_pack, 1})

    table.insert(data_technology[tech_freighter_item_capacity .. "-7"].unit.ingredients, {space_science_pack, 1})
    table.insert(data_technology[tech_freighter_fluid_capacity .. "-7"].unit.ingredients, {space_science_pack, 1})

    table.insert(data_technology[tech_freighter_item_capacity .. "-8"].unit.ingredients, {space_science_pack, 1})
    table.insert(data_technology[tech_freighter_fluid_capacity .. "-8"].unit.ingredients, {space_science_pack, 1})

    table.insert(data_technology[tech_freighter_item_capacity .. "-9"].unit.ingredients, {space_science_pack, 1})
    table.insert(data_technology[tech_freighter_fluid_capacity .. "-9"].unit.ingredients, {space_science_pack, 1})

    table.insert(data_technology[tech_freighter_item_capacity .. "-10"].unit.ingredients, {space_science_pack, 1})
    table.insert(data_technology[tech_freighter_fluid_capacity .. "-10"].unit.ingredients, {space_science_pack, 1})]]
end