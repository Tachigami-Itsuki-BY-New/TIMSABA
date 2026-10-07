if mods[lignumis_mods] then
    local graphics_tantalum = "__TIMSABA__/graphics/icons/lignumis/tantalum/"

    -- TANTALUM ITEM
    tantalum_ore = "tantalum-ore"
    tantalum_processed = "tantalum-processed"
    tantalum_pellet = "tantalum-pellet"
    tantalum_powder = "tantalum-powder"
    tantalum_hydroxide_V = "tantalum-hydroxide-V"
    tantalum_oxide_V = "tantalum-oxide-V"
    potassium_heptafluorotantalate = "potassium-heptafluorotantalate"
    sodium_tantalate = "sodium-tantalate"
    tantalum_tungsten_powder_mixture = "tantalum-tungsten-powder-mixture"
    tantalum_tungsten_plate = "tantalum-tungsten-plate"
    tantalum_tungsten_gear_wheel = "tantalum-tungsten-gear-wheel"
    tantalum_molybdenum_rhenium_powder_mixture = "tantalum-molybdenum-rhenium-powder-mixture"
    tantalum_molybdenum_rhenium_plate = "tantalum-molybdenum-rhenium-plate"
    tantalum_niobium_powder_mixture = "tantalum-niobium-powder-mixture"
    tantalum_niobium_plate = "tantalum-niobium-plate"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "Ta"} or nil,
            name = tantalum_ore,
            subgroup = is_tantalum,
            icon = graphics_tantalum .. tantalum_ore .. ".png",
            pictures =
            {
                {filename = graphics_tantalum .. tantalum_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_tantalum .. tantalum_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_tantalum .. tantalum_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            localised_description = show_formula and {chemical_formula, "Ta"} or nil,
            name = tantalum_processed,
            subgroup = is_tantalum,
            icon = graphics_tantalum .. tantalum_processed .. ".png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "Ta"} or nil,
            name = tantalum_pellet,
            subgroup = is_tantalum,
            icon = graphics_tantalum .. tantalum_pellet .. ".png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "Ta"} or nil,
            name = tantalum_powder,
            subgroup = is_tantalum,
            icon = graphics_tantalum .. tantalum_powder .. ".png",
            order = d
        },
        {
            localised_description = show_formula and {chemical_formula, "TaW"} or nil,
            name = tantalum_tungsten_powder_mixture,
            subgroup = is_tantalum,
            icon = graphics_tantalum .. tantalum_tungsten_powder_mixture .. ".png",
            order = e
        },
        {
            localised_description = show_formula and {chemical_formula, "TaMoRe"} or nil,
            name = tantalum_molybdenum_rhenium_powder_mixture,
            subgroup = is_tantalum,
            icon = graphics_tantalum .. tantalum_molybdenum_rhenium_powder_mixture .. ".png",
            order = f
        },
        {
            localised_description = show_formula and {chemical_formula, "TaNb"} or nil,
            name = tantalum_niobium_powder_mixture,
            subgroup = is_tantalum,
            icon = graphics_tantalum .. tantalum_niobium_powder_mixture .. ".png",
            order = g
        },
        -- CHEMISTRY
        {
            localised_description = show_formula and {chemical_formula, "Ta(OH)[font=default-tiny-bold]5[/font]"} or nil,
            name = tantalum_hydroxide_V,
            subgroup = is_tantalum_chemistry,
            icon = graphics_tantalum .. tantalum_hydroxide_V .. ".png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "Ta[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]5[/font]"} or nil,
            name = tantalum_oxide_V,
            subgroup = is_tantalum_chemistry,
            icon = graphics_tantalum .. tantalum_oxide_V .. ".png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]TaF[font=default-tiny-bold]7[/font]"} or nil,
            name = potassium_heptafluorotantalate,
            subgroup = is_tantalum_chemistry,
            icon = graphics_tantalum .. potassium_heptafluorotantalate .. ".png",
            order = d
        },
        {
            localised_description = show_formula and {chemical_formula, "NaTaO[font=default-tiny-bold]3[/font]"} or nil,
            name = sodium_tantalate,
            subgroup = is_tantalum_chemistry,
            icon = graphics_tantalum .. sodium_tantalate .. ".png",
            order = f
        },
        -- CASTING Ta-W
        {
            localised_description = show_formula and {chemical_formula, "TaW"} or nil,
            name = tantalum_tungsten_plate,
            subgroup = is_tantalum_tungsten,
            icon = graphics_tantalum .. tantalum_tungsten_plate .. ".png",
            order = a
        },
        {
            localised_description = show_formula and {chemical_formula, "TaW"} or nil,
            name = tantalum_tungsten_gear_wheel,
            subgroup = is_tantalum_tungsten,
            icon = graphics_tantalum .. tantalum_tungsten_gear_wheel .. ".png",
            order = b,
            drop_sound = data_item[iron_gear_wheel].drop_sound,
            inventory_move_sound = data_item[iron_gear_wheel].inventory_move_sound,
            pick_sound = data_item[iron_gear_wheel].pick_sound
        },
        -- CASTING Ta-Mo-Re
        {
            localised_description = show_formula and {chemical_formula, "TaMoRe"} or nil,
            name = tantalum_molybdenum_rhenium_plate,
            subgroup = is_tantalum_molybdenum_rhenium,
            icon = graphics_tantalum .. tantalum_molybdenum_rhenium_plate .. ".png",
            order = a
        },
        -- CASTING Ta-Nb
        {
            localised_description = show_formula and {chemical_formula, "TaNb"} or nil,
            name = tantalum_niobium_plate,
            subgroup = is_tantalum_niobium,
            icon = graphics_tantalum .. tantalum_niobium_plate .. ".png",
            order = a
        }
    })

    -- TANTALUM FLUID
    hexafluorotantalic_acid_solution = "hexafluorotantalic-acid-solution"
    tantalum_chloride_V_gas = "tantalum-chloride-V-gas"
    TIMSABA.functions.create_fluids
    ({
        {
            localised_description = show_formula and {chemical_formula, "HTaF[font=default-tiny-bold]6(aq)[/font]"} or nil,
            name = hexafluorotantalic_acid_solution,
            subgroup = is_tantalum_chemistry,
            icon = graphics_tantalum .. hexafluorotantalic_acid_solution .. ".png",
            order = a,
            base_color = TIMSABA.functions.fluid_color("HTaF6Wp"),
            flow_color = TIMSABA.functions.flow_color("HTaF6Wp")
        },
        {
            localised_description = show_formula and {chemical_formula, "TaCl[font=default-tiny-bold]5[/font]"} or nil,
            name = tantalum_chloride_V_gas,
            subgroup = is_tantalum_chemistry,
            icon = graphics_tantalum .. tantalum_chloride_V_gas .. ".png",
            order = e,
            base_color = TIMSABA.functions.fluid_color("TaCl5"),
            flow_color = TIMSABA.functions.flow_color("TaCl5")
        }
    })
    TIMSABA.barreling.add_dangerous_fluid(hexafluorotantalic_acid_solution)

    local graphics_bellicos_and_aegis = "__TIMSABA__/graphics/icons/bellicos-and-aegis/"

    -- OTHER CHEMISTRY ITEM
    calcium_hydride = "calcium-hydride"
    TIMSABA.functions.create_items
    ({
        -- POTASSIUM
        {
            localised_description = show_formula and {chemical_formula, "KF"} or nil,
            name = potassium_fluoride,
            subgroup = is_potassium,
            icon = graphics_bellicos_and_aegis .. potassium_fluoride .. ".png",
            order = i
        },
        -- SODIUM
        {
            localised_description = show_formula and {chemical_formula, "NaF"} or nil,
            name = sodium_fluoride,
            subgroup = is_sodium,
            icon = graphics_bellicos_and_aegis .. sodium_fluoride .. ".png",
            order = n
        },
        -- CALCIUM
        {
            localised_description = show_formula and {chemical_formula, "CaH[font=default-tiny-bold]2[/font]"} or nil,
            name = calcium_hydride,
            subgroup = is_calcium,
            icon = "__TIMSABA__/graphics/icons/lignumis/" .. calcium_hydride .. ".png",
            order = j
        }
    })
end