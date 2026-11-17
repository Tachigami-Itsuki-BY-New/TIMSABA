local transport_drones_mods = "Transport_Drones"
if mods[transport_drones_mods] then
    local road = "road"
    data_recipe[road].ingredients[1].amount = 4
    data_recipe[road].ingredients[2].amount = 4
    data_recipe[road].results[1].amount = 4

    local fast_road = "fast-" .. road
    data_recipe[fast_road].ingredients =
    {
        {type = item, name = road, amount = 4},
        {type = fluid, name = crude_oil, amount = 60}
    }
    data_recipe[fast_road].results[1].amount = 4

    local supply_depot = "supply-depot"
    data_item[supply_depot].stack_size = 16
    data_item[supply_depot].weight = 62500
    data_recipe[supply_depot].energy_required = 4
    data_recipe[supply_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local request_depot = "request-depot"
    data_item[request_depot].stack_size = 16
    data_item[request_depot].weight = 62500
    data_recipe[request_depot].energy_required = 4
    data_recipe[request_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local buffer_depot = "buffer-depot"
    data_item[buffer_depot].stack_size = 16
    data_item[buffer_depot].weight = 62500
    data_recipe[buffer_depot].energy_required = 4
    data_recipe[buffer_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local mini_supply_depot = "mini-" .. supply_depot
    data_item[mini_supply_depot].stack_size = 32
    data_item[mini_supply_depot].weight = 31250
    data_recipe[mini_supply_depot].energy_required = 4
    data_recipe[mini_supply_depot].ingredients =
    {
        {type = item, name = brass_plate_bob, amount = 16},
        {type = item, name = advanced_circuit, amount = 1}
    }

    local mini_request_depot = "mini-" .. request_depot
    data_item[mini_request_depot].stack_size = 32
    data_item[mini_request_depot].weight = 31250
    data_recipe[mini_request_depot].energy_required = 4
    data_recipe[mini_request_depot].ingredients =
    {
        {type = item, name = brass_plate_bob, amount = 16},
        {type = item, name = advanced_circuit, amount = 1}
    }

    local fluid_depot = "fluid-depot"
    data_item[fluid_depot].stack_size = 16
    data_item[fluid_depot].weight = 62500
    data_recipe[fluid_depot].energy_required = 4
    data_recipe[fluid_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local fuel_depot = "fuel-depot"
    data_item[fuel_depot].stack_size = 8
    data_item[fuel_depot].weight = 125000
    data_recipe[fuel_depot].energy_required = 8
    data_recipe[fuel_depot].ingredients =
    {
        {type = item, name = steel_plate, amount = 64},
        {type = item, name = electronic_circuit, amount = 1}
    }

    local transport_drone = "transport-drone"
    data_item[transport_drone].stack_size = 32
    data_item[transport_drone].weight = 31250
    data_recipe[transport_drone].ingredients =
    {
        {type = item, name = steel_gear_wheel, amount = 4},
        {type = item, name = steel_bearing, amount = 4},
        {type = item, name = steel_plate, amount = 4},
        {type = item, name = electronic_circuit, amount = 1},
        {type = item, name = engine_unit, amount = 1}
    }

    local road_network_reader = road .. "-network-reader"
    data_item[road_network_reader].stack_size = 64
    data_item[road_network_reader].weight = 15625
    data_recipe[road_network_reader].energy_required = 4
    data_recipe[road_network_reader].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 8},
        {type = item, name = copper_insulated_cable, amount = 4}
    }

    bobmods.lib.recipe.update_recycling_recipe
    ({
        road,
        fast_road,
        supply_depot,
        request_depot,
        buffer_depot,
        mini_supply_depot,
        mini_request_depot,
        fluid_depot,
        fuel_depot,
        transport_drone,
        road_network_reader
    })

    local tech_miniature_transport_depots = "miniature-transport-depots"
    table.insert(data_technology[tech_miniature_transport_depots].prerequisites, tech_brass_processing)

    data_technology[fast_road].prerequisites = {tech_miniature_transport_depots}

    local tech_transport_drone_speed_2 = transport_drone .. "-" .. speed .. "-2"
    local tech_transport_drone_capacity_2 = transport_drone .. "-capacity-2"
    table.insert(data_technology[tech_transport_drone_speed_2].prerequisites, chemical_science_pack)
    table.insert(data_technology[tech_transport_drone_capacity_2].prerequisites, chemical_science_pack)

    local tech_transport_drone_speed_3 = transport_drone .. "-" .. speed .. "-3"
    local tech_transport_drone_capacity_3 = transport_drone .. "-capacity-3"
    table.insert(data_technology[tech_transport_drone_speed_3].prerequisites, production_science_pack)
    table.insert(data_technology[tech_transport_drone_capacity_3].prerequisites, production_science_pack)

    local tech_transport_drone_speed_4 = transport_drone .. "-" .. speed .. "-4"
    local tech_transport_drone_capacity_4 = transport_drone .. "-capacity-4"
    table.insert(data_technology[tech_transport_drone_speed_4].prerequisites, utility_science_pack)
    table.insert(data_technology[tech_transport_drone_capacity_4].prerequisites, utility_science_pack)

    local tech_transport_drone_speed_5 = transport_drone .. "-" .. speed .. "-5"
    local tech_transport_drone_capacity_5 = transport_drone .. "-capacity-5"
    table.insert(data_technology[tech_transport_drone_speed_5].prerequisites, space_science_pack)
    table.insert(data_technology[tech_transport_drone_capacity_5].prerequisites, space_science_pack)
    table.insert(data_technology[tech_transport_drone_capacity_5].unit.ingredients, {space_science_pack, 1})
end