local _equipment_grid = "-equipment-grid"

-- TRANSPORT
local _vehicle = "-vehicle"

small_vehicle_equipment_grid = small .. _vehicle .. _equipment_grid
local new_small_vehicle_equipment_grid = util.table.deepcopy(data_equipment_grid[spidertron .. _equipment_grid])
new_small_vehicle_equipment_grid.name = small_vehicle_equipment_grid
new_small_vehicle_equipment_grid.width = 4
new_small_vehicle_equipment_grid.height = 4

medium_vehicle_equipment_grid = medium .. _vehicle .. _equipment_grid
local new_medium_vehicle_equipment_grid = util.table.deepcopy(data_equipment_grid[spidertron .. _equipment_grid])
new_medium_vehicle_equipment_grid.name = medium_vehicle_equipment_grid
new_medium_vehicle_equipment_grid.width = 4
new_medium_vehicle_equipment_grid.height = 8

big_vehicle_equipment_grid = big .. _vehicle .. _equipment_grid
local new_big_vehicle_equipment_grid = util.table.deepcopy(data_equipment_grid[spidertron .. _equipment_grid])
new_big_vehicle_equipment_grid.name = big_vehicle_equipment_grid
new_big_vehicle_equipment_grid.width = 8
new_big_vehicle_equipment_grid.height = 8

large_vehicle_equipment_grid = large .. _vehicle .. _equipment_grid
local new_large_vehicle_equipment_grid = util.table.deepcopy(data_equipment_grid[spidertron .. _equipment_grid])
new_large_vehicle_equipment_grid.name = large_vehicle_equipment_grid
new_large_vehicle_equipment_grid.width = 8
new_large_vehicle_equipment_grid.height = 12