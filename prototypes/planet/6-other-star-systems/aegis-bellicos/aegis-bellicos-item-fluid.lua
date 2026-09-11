if mods[aegis_bellicos_mods] then
    local graphics_beryllium = "__TIMSABA__/graphics/icons/bellicos-and-aegis/beryllium/"

    -- BERYLLIUM ITEM
    beryllium_processed = "beryllium-processed"
    beryllium_pellet = "beryllium-pellet"
    beryllium_ingot = "beryllium-ingot"
    beryllium_oxide = "beryllium-oxide"
    beryllium_hydroxide = "beryllium-hydroxide"
    ammonium_fluoroberyllate = "ammonium-fluoroberyllate"
    beryllium_fluoride = "beryllium-fluoride"
    beryllium_bronze_plate = "beryllium-bronze-plate"
    beryllium_bronze_gear_wheel = "beryllium-bronze-gear-wheel"
    beryllium_bronze_bearing_ball = "beryllium-bronze-bearing-ball"
    beryllium_bronze_bearing = "beryllium-bronze-bearing"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "Be"} or nil,
            name = beryllium_processed,
            subgroup = is_beryllium,
            icon = graphics_beryllium .. beryllium_processed .. ".png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "Be"} or nil,
            name = beryllium_pellet,
            subgroup = is_beryllium,
            icon = graphics_beryllium .. beryllium_pellet .. ".png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "Be"} or nil,
            name = beryllium_ingot,
            subgroup = is_beryllium,
            icon = graphics_beryllium .. beryllium_ingot .. ".png",
            pictures =
            {
                {filename = graphics_beryllium .. beryllium_ingot .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_beryllium .. beryllium_ingot .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_beryllium .. beryllium_ingot .. "-3.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_beryllium .. beryllium_ingot .. "-3.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_beryllium .. beryllium_ingot .. "-5.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_beryllium .. beryllium_ingot .. "-6.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_beryllium .. beryllium_ingot .. "-7.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_beryllium .. beryllium_ingot .. "-8.png", width = 64, height = 64, scale = 0.5}
            },
            order = d
        },
        -- CHEMISTRY
        {
            localised_description = show_formula and {chemical_formula, "BeO"} or nil,
            name = beryllium_oxide,
            subgroup = is_beryllium_chemistry,
            icon = graphics_beryllium .. beryllium_oxide .. ".png",
            order = a
        },
        {
            localised_description = show_formula and {chemical_formula, "Be(OH)[font=default-tiny-bold]2[/font]"} or nil,
            name = beryllium_hydroxide,
            subgroup = is_beryllium_chemistry,
            icon = graphics_beryllium .. beryllium_hydroxide .. ".png",
            order = d
        },
        {
            localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]BeF[font=default-tiny-bold]4[/font]"} or nil,
            name = ammonium_fluoroberyllate,
            subgroup = is_beryllium_chemistry,
            icon = graphics_beryllium .. ammonium_fluoroberyllate .. ".png",
            order = e
        },
        {
            localised_description = show_formula and {chemical_formula, "BeF[font=default-tiny-bold]2[/font]"} or nil,
            name = beryllium_fluoride,
            subgroup = is_beryllium_chemistry,
            icon = graphics_beryllium .. beryllium_fluoride .. ".png",
            order = f
        },
        -- CASTING Cu-Be-Ni
        {
            localised_description = show_formula and {chemical_formula, "CuBeNi"} or nil,
            name = beryllium_bronze_plate,
            subgroup = is_beryllium_bronze,
            icon = graphics_beryllium .. beryllium_bronze_plate .. ".png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "CuBeNi"} or nil,
            name = beryllium_bronze_gear_wheel,
            subgroup = is_beryllium_bronze,
            icon = graphics_beryllium .. beryllium_bronze_gear_wheel .. ".png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "CuBeNi"} or nil,
            name = beryllium_bronze_bearing_ball,
            subgroup = is_beryllium_bronze,
            icon = graphics_beryllium .. beryllium_bronze_bearing_ball .. ".png",
            order = d
        },
        {
            localised_description = show_formula and {chemical_formula, "CuBeNi"} or nil,
            name = beryllium_bronze_bearing,
            subgroup = is_beryllium_bronze,
            icon = graphics_beryllium .. beryllium_bronze_bearing .. ".png",
            order = e
        }
    })

    -- BERYLLIUM FLUID
    beryllium_chloride_gas = "beryllium-chloride-gas"
    beryllium_sulfate_solution = "beryllium-sulfate-solution"
    beryllium_molten = "beryllium-molten"
    beryllium_bronze_molten = "beryllium-bronze-molten"
    TIMSABA.functions.create_fluids
    ({
        -- CHEMISTRY
        {
            localised_description = show_formula and {chemical_formula, "BeCl[font=default-tiny-bold]2[/font]"} or nil,
            name = beryllium_chloride_gas,
            subgroup = is_beryllium_chemistry,
            icon = graphics_beryllium .. beryllium_chloride_gas .. ".png",
            order = b,
            base_color = TIMSABA.functions.fluid_color("BeCl2"),
            flow_color = TIMSABA.functions.flow_color("BeCl2")
        },
        {
            localised_description = show_formula and {chemical_formula, "BeSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
            name = beryllium_sulfate_solution,
            subgroup = is_beryllium_chemistry,
            icon = graphics_beryllium .. beryllium_sulfate_solution .. ".png",
            order = c,
            base_color = TIMSABA.functions.fluid_color("BeSO4Wp"),
            flow_color = TIMSABA.functions.flow_color("BeSO4Wp")
        },
        -- CASTING
        {
            localised_description = show_formula and {chemical_formula, "Be"} or nil,
            name = beryllium_molten,
            subgroup = is_beryllium_casting,
            icon = graphics_beryllium .. beryllium_molten .. ".png",
            order = a,
            base_color = TIMSABA.functions.fluid_color("BeBeBe"),
            flow_color = TIMSABA.functions.flow_color("BeBeBe")
        },
        -- CASTING Cu-Be-Ni
        {
            localised_description = show_formula and {chemical_formula, "CuBeNi"} or nil,
            name = beryllium_bronze_molten,
            subgroup = is_beryllium_bronze,
            icon = graphics_beryllium .. beryllium_bronze_molten .. ".png",
            order = a,
            base_color = TIMSABA.functions.fluid_color("CuBeNi"),
            flow_color = TIMSABA.functions.flow_color("CuBeNi")
        }
    })
    TIMSABA.barreling.add_dangerous_fluid(beryllium_sulfate_solution)

    local graphics_bellicos_and_aegis = "__TIMSABA__/graphics/icons/bellicos-and-aegis/"

    -- OTHER CHEMISTRY ITEM
    magnesium_fluoride = "magnesium-fluoride"
    potassium_fluoride = "potassium-fluoride"
    ammonium_hydrofluoride = "ammonium-hydrofluoride"
    sodium_fluoride = "sodium-fluoride"
    TIMSABA.functions.create_items
    ({
        -- MAGNESIUM
        {
            localised_description = show_formula and {chemical_formula, "MgF[font=default-tiny-bold]2[/font]"} or nil,
            name = magnesium_fluoride,
            subgroup = is_magnesium_chemistry,
            icon = graphics_bellicos_and_aegis .. magnesium_fluoride .. ".png",
            order = f
        },
        -- POTASSIUM
        {
            localised_description = show_formula and {chemical_formula, "KF"} or nil,
            name = potassium_fluoride,
            subgroup = is_potassium,
            icon = graphics_bellicos_and_aegis .. potassium_fluoride .. ".png",
            order = i
        },
        -- NITROGNE
        {
            localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]HF[font=default-tiny-bold]2[/font]"} or nil,
            name = ammonium_hydrofluoride,
            subgroup = is_nitrogen,
            icon = graphics_bellicos_and_aegis .. ammonium_hydrofluoride .. ".png",
            order = j
        },
        -- SODIUM
        {
            localised_description = show_formula and {chemical_formula, "NaF"} or nil,
            name = sodium_fluoride,
            subgroup = is_sodium,
            icon = graphics_bellicos_and_aegis .. sodium_fluoride .. ".png",
            order = n
        }
    })

    -- OTHER CHEMISTRY FLUID
    ammonium_fluoride_gas = "ammonium-fluoride-gas"
    TIMSABA.functions.create_fluids
    ({
        -- NITROGNE
        {
            localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]F"} or nil,
            name = ammonium_fluoride_gas,
            subgroup = is_nitrogen_fluids,
            icon = graphics_bellicos_and_aegis .. ammonium_fluoride_gas .. ".png",
            order = z,
            base_color = TIMSABA.functions.fluid_color("NH4F"),
            flow_color = TIMSABA.functions.flow_color("NH4F")
        }
    })

    local graphics_vesta = "__TIMSABA__/graphics/icons/vesta/"
    -- HELIUM
    helium_3_gas = "helium-3-gas"
    helium_4_gas = "helium-4-gas"
    helium_liquid = "helium-liquid"
    TIMSABA.functions.create_fluids
    ({
        {
            localised_description = show_formula and {chemical_formula, "He-3"} or nil,
            name = helium_3_gas,
            subgroup = is_bellicos_recipe,
            icons = {{icon = graphics_vesta .. helium_vesta .. ".png", scale = 0.5, shift = {0,0}}, {icon = number_3, scale = 0.5, shift = {0,0}}},
            order = e,
            base_color = TIMSABA.functions.fluid_color("HeHeHe"),
            flow_color = TIMSABA.functions.flow_color("HeHeHe")
        },
        {
            localised_description = show_formula and {chemical_formula, "He-4"} or nil,
            name = helium_4_gas,
            subgroup = is_bellicos_recipe,
            icons = {{icon = graphics_vesta .. helium_vesta .. ".png", scale = 0.5, shift = {0,0}}, {icon = number_4, scale = 0.5, shift = {0,0}}},
            order = f,
            base_color = TIMSABA.functions.fluid_color("HeHeHe"),
            flow_color = TIMSABA.functions.flow_color("HeHeHe")
        },
        {
            localised_description = show_formula and {chemical_formula, "He"} or nil,
            name = helium_liquid,
            subgroup = is_bellicos_recipe,
            icon = graphics_bellicos_and_aegis .. helium_liquid .. ".png",
            order = h,
            base_color = TIMSABA.functions.fluid_color("HeHeHe"),
            flow_color = TIMSABA.functions.flow_color("HeHeHe")
        }
    })
    --TIMSABA.barreling.add_gas(helium_3_gas)
    --TIMSABA.barreling.add_gas(helium_4_gas)
    TIMSABA.barreling.add_gas(helium_liquid)
end