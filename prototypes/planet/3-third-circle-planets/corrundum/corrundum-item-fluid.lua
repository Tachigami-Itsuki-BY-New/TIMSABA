if mods[corrundum_mods] then
    if not mods[vesta_mods] then
        local graphics_iridium = "__TIMSABA__/graphics/icons/vesta/iridium/"
        iridium_ore = "iridium-ore"
        TIMSABA.functions.create_items
        ({
            {
                localised_description = show_formula and {chemical_formula, "Ir"} or nil,
                name = iridium_ore,
                subgroup = is_corrundum_iridium,
                icon = graphics_iridium .. iridium_ore .. ".png",
                pictures =
                {
                    {filename = graphics_iridium .. iridium_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                    {filename = graphics_iridium .. iridium_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                    {filename = graphics_iridium .. iridium_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
                },
                order = a
            }
        })
    end
    -- CORRUNDUM AIR
    corrundum_air = "corrundum-air"
    TIMSABA.functions.create_fluids
    ({
        {
            name = corrundum_air,
            subgroup = is_corrundum_air,
            icon = "__TIMSABA__/graphics/icons/corrundum/corrundum-air.png",
            order = a,
            base_color = {r = 114 / 255, g = 114 / 255, b = 088 / 255},
            flow_color = {r = 125 / 255, g = 125 / 255, b = 100 / 255}
        }
    })
    TIMSABA.barreling.add_gas(corrundum_air)
end