local _equipment_grid = "-equipment-grid"

-- PERSONAL
small_equipment_grid = small .. _equipment_grid
data_equipment_grid[small_equipment_grid].width = 4
data_equipment_grid[small_equipment_grid].height = 4

medium_equipment_grid = medium .. _equipment_grid
data_equipment_grid[medium_equipment_grid].width = 4
data_equipment_grid[medium_equipment_grid].height = 8

large_equipment_grid = large .. _equipment_grid
data_equipment_grid[large_equipment_grid].width = 8
data_equipment_grid[large_equipment_grid].height = 8

mech_armor_equipment_grid = "mech-armor-equipment-grid"
if mods[bobequipment] then
    power_armor_equipment_grid_3 = "power-armor-equipment-grid-mk3"
    data_equipment_grid[power_armor_equipment_grid_3].width = 8
    data_equipment_grid[power_armor_equipment_grid_3].height = 12

    power_armor_equipment_grid_4 = "power-armor-equipment-grid-mk4"
    data_equipment_grid[power_armor_equipment_grid_4].width = 12
    data_equipment_grid[power_armor_equipment_grid_4].height = 12

    power_armor_equipment_grid_5 = "power-armor-equipment-grid-mk5"
    data_equipment_grid[power_armor_equipment_grid_5].width = 12
    data_equipment_grid[power_armor_equipment_grid_5].height = 16

    if not data_equipment_grid[mech_armor_equipment_grid] then
        local new_equipment_grid = table.deepcopy(data_equipment_grid[power_armor_equipment_grid_5])
        new_equipment_grid.name = mech_armor_equipment_grid
        new_equipment_grid.width = 16
        new_equipment_grid.height = 16
        data:extend({new_equipment_grid})
    else
        data_equipment_grid[mech_armor_equipment_grid].width = 16
        data_equipment_grid[mech_armor_equipment_grid].height = 16
    end
end

-- TRANSPORT
if mods[bobwarfare] then
    data_equipment_grid[small_vehicle_equipment_grid].equipment_categories = {"vehicle", "armoured-vehicle"}
    data_equipment_grid[medium_vehicle_equipment_grid].equipment_categories = {"vehicle", "armoured-vehicle"}
    data_equipment_grid[big_vehicle_equipment_grid].equipment_categories = {"vehicle", "armoured-vehicle"}
    data_equipment_grid[large_vehicle_equipment_grid].equipment_categories = {"vehicle", "armoured-vehicle"}

    local antron_equipment_grid = antron .. _equipment_grid
    data_equipment_grid[antron_equipment_grid].width = 4
    data_equipment_grid[antron_equipment_grid].height = 8

    local tankotron_equipment_grid = tankotron .. _equipment_grid
    data_equipment_grid[tankotron_equipment_grid].width = 8
    data_equipment_grid[tankotron_equipment_grid].height = 8

    local logitron_equipment_grid = logitron .. _equipment_grid
    data_equipment_grid[logitron_equipment_grid].width = 12
    data_equipment_grid[logitron_equipment_grid].height = 12

    local spidertron_equipment_grid = spidertron .. _equipment_grid
    data_equipment_grid[spidertron_equipment_grid].width = 12
    data_equipment_grid[spidertron_equipment_grid].height = 12

    local heavy_spidertron_equipment_grid = heavy_spidertron .. _equipment_grid
    data_equipment_grid[heavy_spidertron_equipment_grid].width = 12
    data_equipment_grid[heavy_spidertron_equipment_grid].height = 16
end

-- QUALITY
if mods[quality_mods] then
    local data_quality = data.raw["quality"]
    data_quality["uncommon"].equipment_grid_width_bonus = 2
    data_quality["uncommon"].equipment_grid_height_bonus = 2
    data_quality["rare"].equipment_grid_width_bonus = 4
    data_quality["rare"].equipment_grid_height_bonus = 4
    data_quality["epic"].equipment_grid_width_bonus = 6
    data_quality["epic"].equipment_grid_height_bonus = 6
    data_quality["legendary"].equipment_grid_width_bonus = 10
    data_quality["legendary"].equipment_grid_height_bonus = 10
end