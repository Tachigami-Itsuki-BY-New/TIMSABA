data_resource[ore_saphirite].icon = data_item[ore_saphirite].icon

local graphics_bobs = "__TIMSABA__/graphics/icons/bobs/"

data_fluid[liquid_fuel_bob].icons = nil
data_fluid[liquid_fuel_bob].icon = graphics_bobs .. liquid_fuel_bob .. ".png"
data_fluid[liquid_fuel_bob].base_color = {r = 255 / 255, g = 220 / 255, b = 78 / 255}
data_fluid[liquid_fuel_bob].flow_color = {r = 255 / 255, g = 222 / 255, b = 87 / 255}

if mods[bobwarfare] then
    data_fluid[nitroglycerin_bob].icons = nil
    data_fluid[nitroglycerin_bob].icon = graphics_bobs .. nitroglycerin_bob .. ".png"
    data_fluid[nitroglycerin_bob].base_color = TIMSABA.functions.fluid_color("C3H5N3O9")
    data_fluid[nitroglycerin_bob].flow_color = TIMSABA.functions.flow_color("C3H5N3O9")
end

if mods[bobmodules] then
    local graphics_agricultural_module = "__TIMSABA__/graphics/icons/bobs/modules/agricultural/agricultural"

    data_module[agricultural_module_1].icon = graphics_agricultural_module .. "-1.png"
    data_module[agricultural_module_2].icon = graphics_agricultural_module .. "-2.png"
    data_module[agricultural_module_3].icon = graphics_agricultural_module .. "-3.png"

    local graphics_agricultural_module_tech = "__TIMSABA__/graphics/icons/bobs/modules/technology/agricultural/agricultural"

    data_technology[agricultural_module_1].icon = graphics_agricultural_module_tech .. "-1.png"
    data_technology[agricultural_module_2].icon = graphics_agricultural_module_tech .. "-2.png"
    data_technology[agricultural_module_3].icon = graphics_agricultural_module_tech .. "-3.png"
end

if mods[muluna_mods] then
    data_recipe[silicon_solar_panel_small_4].icons = BUILDING_R_IS(solar_panel_small_4, silicon_cell_mods)
    data_recipe[silicon_solar_panel_4].icons = BUILDING_R_IS(solar_panel_4, silicon_cell_mods)
    data_recipe[silicon_solar_panel_large_4].icons = BUILDING_R_IS(solar_panel_large_4, silicon_cell_mods)
end