if mods[bobwarfare] then
    data:extend
    ({
        {
            localised_name = {"entity-name.artillery-wagon-4"},
            type = item_entity,
            name = artillery_wagon_4,
            subgroup = is_artillery_wagon,
            icon = "__base__/graphics/icons/artillery-wagon.png",
            order = d,
            stack_size = 16,
            weight = 62500,
            place_result = artillery_wagon_4
        }
    })

    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"entity-name.artillery-wagon-4"},
            name = artillery_wagon_4,
            subgroup = is_artillery_wagon,
            order = d,
            enabled = false,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
                {type = item, name = niobium_iron_bearing, amount = 8},
                {type = item, name = advanced_processing_unit, amount = 32},
                {type = item, name = niobium_titanium_plate, amount = 32},
                {type = item, name = artillery_wagon_3, amount = 1}
            },
            results = {{type = item, name = artillery_wagon_4, amount = 1}}
        }
    })

    local base_artillery_wagon = data_wagon_artillery[artillery_wagon_1]
    base_artillery_wagon.resistances =
    {
        {type = "fire",       decrease = 25, percent = 75},
        {type = "physical",   decrease = 25, percent = 50},
        {type = "impact",     decrease = 75, percent = 90},
        {type = "explosion",  decrease = 25, percent = 50},
        {type = "acid",       decrease = 20, percent = 30},
        {type = "laser",      decrease = 10, percent = 50},
        {type = electric,     decrease = 12, percent = 75},
        {type = "poison",     decrease = 15, percent = 90},
        {type = "bob-pierce", decrease = 15, percent = 90},
        {type = "bob-plasma", decrease = 25, percent = 90}
    }
    base_artillery_wagon.fast_replaceable_group = "artillery-wagon"

    local T4_artillery_wagon = util.table.deepcopy(base_artillery_wagon)
    T4_artillery_wagon.localised_name = {"entity-name.artillery-wagon-4"}
    T4_artillery_wagon.name = artillery_wagon_4
    T4_artillery_wagon.inventory_size = 4
    T4_artillery_wagon.minable = {mining_time = 1, result = artillery_wagon_4}
    T4_artillery_wagon.max_health = 1200
    T4_artillery_wagon.weight = 5000
    T4_artillery_wagon.braking_force = 7.5
    T4_artillery_wagon.friction_force = 0.125
    T4_artillery_wagon.air_resistance = 0.0075
    T4_artillery_wagon.gun = artillery_wagon_cannon_4
    T4_artillery_wagon.turret_rotation_speed = 0.004
    T4_artillery_wagon.turn_after_shooting_cooldown = 20
    T4_artillery_wagon.cannon_parking_speed = 0.4
    --T4_artillery_wagon.equipment_grid = large_vehicle_equipment_grid
    data:extend({T4_artillery_wagon})

    data_wagon_artillery[artillery_wagon_3].next_upgrade = artillery_wagon_4
    data_wagon_artillery[artillery_wagon_4].next_upgrade = nil
end