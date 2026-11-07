if mods [vesta_mods] then
    local graphics_iridium = "__TIMSABA__/graphics/icons/vesta/iridium/"

    -- IRIDIUM ITEM
    iridium_ore = "iridium-ore"
    iridium_processed = "iridium-processed"
    iridium_pellet = "iridium-pellet"
    iridium_powder = "iridium-powder"
    iridium_chloride_III = "iridium-chloride-III"
    ammonium_hexachloroiridate_IV = "ammonium-hexachloroiridate-IV"
    sodium_iridate_IV = "sodium-iridate-IV"
    iridium_fluoride_VI = "iridium-fluoride-VI"
    iridium_hydroxide_IV = "iridium-hydroxide-IV"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "Ir"} or nil,
            name = iridium_ore,
            subgroup = is_iridium,
            icon = graphics_iridium .. iridium_ore .. ".png",
            pictures =
            {
                {filename = graphics_iridium .. iridium_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_iridium .. iridium_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_iridium .. iridium_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            localised_description = show_formula and {chemical_formula, "Ir"} or nil,
            name = iridium_processed,
            subgroup = is_iridium,
            icon = graphics_iridium .. iridium_processed .. ".png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "Ir"} or nil,
            name = iridium_pellet,
            subgroup = is_iridium,
            icon = graphics_iridium .. iridium_pellet .. ".png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "Ir"} or nil,
            name = iridium_powder,
            subgroup = is_iridium,
            icon = graphics_iridium .. iridium_powder .. ".png",
            order = d
        },
        -- CHEMISTRY
        {
            localised_description = show_formula and {chemical_formula, "IrCl[font=default-tiny-bold]3[/font]"} or nil,
            name = iridium_chloride_III,
            subgroup = is_iridium_chemistry,
            icon = graphics_iridium .. iridium_chloride_III .. ".png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]IrCl[font=default-tiny-bold]6[/font]"} or nil,
            name = ammonium_hexachloroiridate_IV,
            subgroup = is_iridium_chemistry,
            icon = graphics_iridium .. ammonium_hexachloroiridate_IV .. ".png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]IrO[font=default-tiny-bold]3[/font]"} or nil,
            name = sodium_iridate_IV,
            subgroup = is_iridium_chemistry,
            icon = graphics_iridium .. sodium_iridate_IV .. ".png",
            order = d
        },
        {
            localised_description = show_formula and {chemical_formula, "IrF[font=default-tiny-bold]6[/font]"} or nil,
            name = iridium_fluoride_VI,
            subgroup = is_iridium_chemistry,
            icon = graphics_iridium .. iridium_fluoride_VI .. ".png",
            order = e
        },
        {
            localised_description = show_formula and {chemical_formula, "Ir(OH)[font=default-tiny-bold]4[/font]"} or nil,
            name = iridium_hydroxide_IV,
            subgroup = is_iridium_chemistry,
            icon = graphics_iridium .. iridium_hydroxide_IV .. ".png",
            order = f
        }
    })

    -- FLUID
    sodium_hexachloroiridate_IV_solution = "sodium-hexachloroiridate-IV-solution"
    hexachloroiridic_acid_solution = "hexachloroiridic-acid-solution"
    TIMSABA.functions.create_fluids
    ({
        {
            localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]IrCl[font=default-tiny-bold]6(aq)[/font]"} or nil,
            name = sodium_hexachloroiridate_IV_solution,
            subgroup = is_iridium_chemistry,
            icon = graphics_iridium .. sodium_hexachloroiridate_IV_solution .. ".png",
            order = a,
            base_color = TIMSABA.functions.fluid_color("Na2IrCl6Wp"),
            flow_color = TIMSABA.functions.flow_color("Na2IrCl6Wp")
        },
        {
            localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]IrCl[font=default-tiny-bold]6(aq)[/font]"} or nil,
            name = hexachloroiridic_acid_solution,
            subgroup = is_iridium_chemistry,
            icon = graphics_iridium .. hexachloroiridic_acid_solution .. ".png",
            order = g,
            base_color = TIMSABA.functions.fluid_color("H2IrCl6Wp"),
            flow_color = TIMSABA.functions.flow_color("H2IrCl6Wp")
        }
    })
    TIMSABA.barreling.add_dangerous_fluid(sodium_hexachloroiridate_IV_solution)
    TIMSABA.barreling.add_dangerous_fluid(hexachloroiridic_acid_solution)
end