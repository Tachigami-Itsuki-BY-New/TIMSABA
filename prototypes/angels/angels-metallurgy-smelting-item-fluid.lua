local graphics_iron = "__TIMSABA__/graphics/icons/angels/metallurgy/iron/"
-- IRON and STEEL ITEM
iron_sulfate_II = "iron-sulfate-II"
iron_cathode = "iron-cathode"
iron_hydroxide_III = "iron-hydroxide-III"
iron_oxide_III = "iron-oxide-III"
iron_sulfate_II_solution = "iron-sulfate-II-solution"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "FeSO[font=default-tiny-bold]4[/font]"} or nil,
        name = iron_sulfate_II,
        subgroup = is_iron_chemistry,
        icon = graphics_iron .. iron_sulfate_II .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Fe"} or nil,
        name = iron_cathode,
        subgroup = is_iron_chemistry,
        icon = graphics_iron .. iron_cathode .. ".png",
        icon_size = 32,
        order = d
    },
    {
        localised_description = show_formula and {chemical_formula, "Fe(OH)[font=default-tiny-bold]3[/font]"} or nil,
        name = iron_hydroxide_III,
        subgroup = is_iron_chemistry,
        icon = graphics_iron .. iron_hydroxide_III .. ".png",
        order = e
    },
    {
        localised_description = show_formula and {chemical_formula, "Fe[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        name = iron_oxide_III,
        subgroup = is_iron_chemistry,
        icon = graphics_iron .. iron_oxide_III .. ".png",
        order = f
    }
})

-- IRON and STEEL FLUID
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "FeSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = iron_sulfate_II_solution,
        subgroup = is_iron_chemistry,
        icon = graphics_iron .. iron_sulfate_II_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("FeSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("FeSO4Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(iron_sulfate_II_solution)

local graphics_copper = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/"
-- COPPER ITEM
copper_hydroxide_II = "copper-hydroxide-II"
copper_sulfate_II = "copper-sulfate-II"
copper_chloride_I = "copper-chloride-I"
copper_oxide_I = "copper-oxide-I"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Cu(OH)[font=default-tiny-bold]2[/font]"} or nil,
        name = copper_hydroxide_II,
        subgroup = is_copper_chemistry,
        icon = graphics_copper .. copper_hydroxide_II .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "CuSO[font=default-tiny-bold]4[/font]"} or nil,
        name = copper_sulfate_II,
        subgroup = is_copper_chemistry,
        icon = graphics_copper .. copper_sulfate_II .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "CuCl"} or nil,
        name = copper_chloride_I,
        subgroup = is_copper_chemistry,
        icon = graphics_copper .. copper_chloride_I .. ".png",
        order = f
    },
    {
        localised_description = show_formula and {chemical_formula, "Cu[font=default-tiny-bold]2[/font]O"} or nil,
        name = copper_oxide_I,
        subgroup = is_copper_chemistry,
        icon = graphics_copper .. copper_oxide_I .. ".png",
        order = h
    }
})

-- COPPER FLUID
copper_sulfate_II_solution = "copper-sulfate-II-solution"
ammonium_dichlorocuprate_I_solution = "ammonium-dichlorocuprate-I-solution"
copper_nitrate_II_solution = "copper-nitrate-II-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "CuSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = copper_sulfate_II_solution,
        subgroup = is_copper_chemistry,
        icon = graphics_copper .. copper_sulfate_II_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("CuSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("CuSO4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]CuCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = ammonium_dichlorocuprate_I_solution,
        subgroup = is_copper_chemistry,
        icon = graphics_copper .. ammonium_dichlorocuprate_I_solution .. ".png",
        order = g,
        base_color = TIMSABA.functions.fluid_color("NH4CuCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("NH4CuCl2Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "Cu(NO[font=default-tiny-bold]3[/font])[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = copper_nitrate_II_solution,
        subgroup = is_copper_chemistry,
        icon = graphics_copper .. copper_nitrate_II_solution .. ".png",
        order = i,
        base_color = TIMSABA.functions.fluid_color("CuN2O6Wp"),
        flow_color = TIMSABA.functions.flow_color("CuN2O6Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(copper_sulfate_II_solution)
TIMSABA.barreling.add_dangerous_fluid(ammonium_dichlorocuprate_I_solution)
TIMSABA.barreling.add_dangerous_fluid(copper_nitrate_II_solution)

local graphics_lead = "__TIMSABA__/graphics/icons/angels/metallurgy/lead/"
-- LEAD ITEM
lead_oxide_IV = "lead-oxide-IV"
lead_sponge = "lead-sponge"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "PbO[font=default-tiny-bold]2[/font]"} or nil,
        name = lead_oxide_IV,
        subgroup = is_lead_chemistry,
        icon = graphics_lead .. lead_oxide_IV .. ".png",
        order = e
    },
    {
        localised_description = show_formula and {chemical_formula, "Pb"} or nil,
        name = lead_sponge,
        subgroup = is_lead_chemistry,
        icon = graphics_lead .. lead_sponge .. ".png",
        icon_size = 32,
        order = f
    }
})

-- LEAD FLUID
hexafluorosilicate_lead_II_solution = "hexafluorosilicate-lead-II-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "PbSiF[font=default-tiny-bold]6(aq)[/font]"} or nil,
        name = hexafluorosilicate_lead_II_solution,
        subgroup = is_lead_chemistry,
        icon = graphics_lead .. hexafluorosilicate_lead_II_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("PbSiF6Wp"),
        flow_color = TIMSABA.functions.flow_color("PbSiF6Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(hexafluorosilicate_lead_II_solution)

local graphics_tin = "__TIMSABA__/graphics/icons/angels/metallurgy/tin/"
-- TIN ITEM
tin_cathode = "tin-cathode"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Sn"} or nil,
        name = tin_cathode,
        subgroup = is_tin_chemistry,
        icon = graphics_tin .. tin_cathode .. ".png",
        icon_size = 32,
        order = d
    }
})

-- TIN FLUID
tin_chloride_IV = "tin-chloride-IV-liquid"
hexafluorosilicate_tin_II_solution = "hexafluorosilicate-tin-II-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "SnCl[font=default-tiny-bold]4[/font]"} or nil,
        name = tin_chloride_IV,
        subgroup = is_tin_chemistry,
        icon = graphics_tin .. tin_chloride_IV .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("SnCl4"),
        flow_color = TIMSABA.functions.flow_color("SnCl4")
    },
    {
        localised_description = show_formula and {chemical_formula, "SnSiF[font=default-tiny-bold]6(aq)[/font]"} or nil,
        name = hexafluorosilicate_tin_II_solution,
        subgroup = is_tin_chemistry,
        icon = graphics_tin .. hexafluorosilicate_tin_II_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("SnSiF6Wp"),
        flow_color = TIMSABA.functions.flow_color("SnSiF6Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(tin_chloride_IV)
TIMSABA.barreling.add_dangerous_fluid(hexafluorosilicate_tin_II_solution)

local graphics_manganese = "__TIMSABA__/graphics/icons/angels/metallurgy/manganese/"
-- MANGANESE ITEM
manganese_oxide_IV = "manganese-oxide-IV"
manganese_sulfate_II = "manganese-sulfate-II"
potassium_permanganate = "potassium-permanganate"
potassium_manganate = "potassium-manganate"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "MnO[font=default-tiny-bold]2[/font]"} or nil,
        name = manganese_oxide_IV,
        subgroup = is_manganese_chemistry,
        icon = graphics_manganese .. manganese_oxide_IV .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "MnSO[font=default-tiny-bold]4[/font]"} or nil,
        name = manganese_sulfate_II,
        subgroup = is_manganese_chemistry,
        icon = graphics_manganese .. manganese_sulfate_II .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "KMnO[font=default-tiny-bold]4[/font]"} or nil,
        name = potassium_permanganate,
        subgroup = is_manganese_chemistry,
        icon = graphics_manganese .. potassium_permanganate .. ".png",
        order = f
    },
    {
        localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]MnO[font=default-tiny-bold]4[/font]"} or nil,
        name = potassium_manganate,
        subgroup = is_manganese_chemistry,
        icon = graphics_manganese .. potassium_manganate .. ".png",
        order = g
    }
})

-- MANGANESE FLUID
manganese_sulfate_II_solution = "manganese-sulfate-II-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "MnSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = manganese_sulfate_II_solution,
        subgroup = is_manganese_chemistry,
        icon = graphics_manganese .. manganese_sulfate_II_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("MnSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("MnSO4Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(manganese_sulfate_II_solution)

local graphics_silicon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/"
-- SILICON ITEM
silicon_oxide_IV = "silicon-oxide-IV"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil,
        name = silicon_oxide_IV,
        subgroup = is_silicon_chemistry,
        icon = graphics_silicon .. silicon_oxide_IV .. ".png",
        order = a
    }
})

-- SILICON FLUID
silicon_chloride_IV_gas = "silicon-chloride-IV-gas"
silicon_fluoride_IV_gas = "silicon-fluoride-IV-gas"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "SiCl[font=default-tiny-bold]4[/font]"} or nil,
        name = silicon_chloride_IV_gas,
        subgroup = is_silicon_chemistry,
        icon = graphics_silicon .. silicon_chloride_IV_gas .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("SiCl4"),
        flow_color = TIMSABA.functions.flow_color("SiCl4")
    },
    {
        localised_description = show_formula and {chemical_formula, "SiF[font=default-tiny-bold]4[/font]"} or nil,
        name = silicon_fluoride_IV_gas,
        subgroup = is_silicon_chemistry,
        icon = graphics_silicon .. silicon_fluoride_IV_gas .. ".png",
        order = g,
        base_color = TIMSABA.functions.fluid_color("SiF4"),
        flow_color = TIMSABA.functions.flow_color("SiF4")
    }
})
TIMSABA.barreling.add_gas(silicon_chloride_IV_gas)
TIMSABA.barreling.add_gas(silicon_fluoride_IV_gas)

local graphics_nickel = "__TIMSABA__/graphics/icons/angels/metallurgy/nickel/"
-- NICKEL ITEM
nickel_hydroxide_II = "nickel-hydroxide-II"
nickel_oxide_II = "nickel-oxide-II"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Ni(OH)[font=default-tiny-bold]2[/font]"} or nil,
        name = nickel_hydroxide_II,
        subgroup = is_nickel_chemistry,
        icon = graphics_nickel .. nickel_hydroxide_II .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "NiO"} or nil,
        name = nickel_oxide_II,
        subgroup = is_nickel_chemistry,
        icon = graphics_nickel .. nickel_oxide_II .. ".png",
        order = e
    }
})

-- NICKEL FLUID
nickel_chloride_II_solution = "nickel-chloride-II-solution"
tetracarbonyl_nickel = "tetracarbonyl-nickel-liquid"
nickel_sulfate_II_solution = "nickel-sulfate-II-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "NiCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = nickel_chloride_II_solution,
        subgroup = is_nickel_chemistry,
        icon = graphics_nickel .. nickel_chloride_II_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("NiCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("NiCl2Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "Ni(CO)[font=default-tiny-bold]4[/font]"} or nil,
        name = tetracarbonyl_nickel,
        subgroup = is_nickel_chemistry,
        icon = graphics_nickel .. tetracarbonyl_nickel .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("NiC4O4"),
        flow_color = TIMSABA.functions.flow_color("NiC4O4")
    },
    {
        localised_description = show_formula and {chemical_formula, "NiSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = nickel_sulfate_II_solution,
        subgroup = is_nickel_chemistry,
        icon = graphics_nickel .. nickel_sulfate_II_solution .. ".png",
        order = f,
        base_color = TIMSABA.functions.fluid_color("NiSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("NiSO4Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(nickel_chloride_II_solution)
TIMSABA.barreling.add_dangerous_fluid(tetracarbonyl_nickel)
TIMSABA.barreling.add_dangerous_fluid(nickel_sulfate_II_solution)

local graphics_aluminium = "__TIMSABA__/graphics/icons/angels/metallurgy/aluminium/"
-- ALUMINIUM ITEM
calcium_aluminate = "calcium-aluminate"
aluminium_carbide = "aluminium-carbide"
aluminium_sulfate = "aluminium-sulfate"
aluminium_chloride = "aluminium-chloride"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Ca(AlO[font=default-tiny-bold]2[/font])[font=default-tiny-bold]2[/font]"} or nil,
        name = calcium_aluminate,
        subgroup = is_aluminium_chemistry,
        icon = graphics_aluminium .. calcium_aluminate .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]4[/font]C[font=default-tiny-bold]3[/font]"} or nil,
        name = aluminium_carbide,
        subgroup = is_aluminium_chemistry,
        icon = graphics_aluminium .. aluminium_carbide .. ".png",
        order = f
    },
    {
        localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font](SO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]3[/font]"} or nil,
        name = aluminium_sulfate,
        subgroup = is_aluminium_chemistry,
        icon = graphics_aluminium .. aluminium_sulfate .. ".png",
        order = g
    },
    {
        localised_description = show_formula and {chemical_formula, "AlCl[font=default-tiny-bold]3[/font]"} or nil,
        name = aluminium_chloride,
        subgroup = is_aluminium_chemistry,
        icon = graphics_aluminium .. aluminium_chloride .. ".png",
        order = i
    }
})

-- ALUMINIUM FLUID
aluminium_chloride_solution = "aluminium-chloride-solution"
aluminium_chloride_solution_ether = "aluminium-chloride-solution-ether"
lithium_aluminium_hydride_solution_ether = "lithium-aluminium-hydride-solution-ether"
lithium_tetraethoxy_aluminate_solution_ether = "lithium-tetraethoxy-aluminate-solution-ether"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "AlCl[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = aluminium_chloride_solution,
        subgroup = is_aluminium_chemistry,
        icon = graphics_aluminium .. aluminium_chloride_solution .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("AlCl3Wp"),
        flow_color = TIMSABA.functions.flow_color("AlCl3Wp")
    },
    -- ETHER
    {
        localised_description = show_formula and {chemical_formula, "AlCl[font=default-tiny-bold]3(ether)[/font]"} or nil,
        name = aluminium_chloride_solution_ether,
        subgroup = is_aluminium_chemistry_ether,
        icon = graphics_aluminium .. aluminium_chloride_solution_ether .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("AlCl3De"),
        flow_color = TIMSABA.functions.flow_color("AlCl3De")
    },
    {
        localised_description = show_formula and {chemical_formula, "LiAlH[font=default-tiny-bold]4(ether)[/font]"} or nil,
        name = lithium_aluminium_hydride_solution_ether,
        subgroup = is_aluminium_chemistry_ether,
        icon = graphics_aluminium .. lithium_aluminium_hydride_solution_ether .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("LiAlH4De"),
        flow_color = TIMSABA.functions.flow_color("LiAlH4De")
    },
    {
        localised_description = show_formula and {chemical_formula, "LiAl(C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]5[/font]O)[font=default-tiny-bold]4(ether)[/font]"} or nil,
        name = lithium_tetraethoxy_aluminate_solution_ether,
        subgroup = is_aluminium_chemistry_ether,
        icon = graphics_aluminium .. lithium_tetraethoxy_aluminate_solution_ether .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("LiAlC8H20O4De"),
        flow_color = TIMSABA.functions.flow_color("LiAlC8H20O4De")
    }
})
TIMSABA.barreling.add_dangerous_fluid(aluminium_chloride_solution)
TIMSABA.barreling.add_dangerous_fluid(aluminium_chloride_solution_ether)
TIMSABA.barreling.add_dangerous_fluid(lithium_aluminium_hydride_solution_ether)
TIMSABA.barreling.add_dangerous_fluid(lithium_tetraethoxy_aluminate_solution_ether)

local graphics_zinc = "__TIMSABA__/graphics/icons/angels/metallurgy/zinc/"
-- ZINC ITEM
zinc_chloride = "zinc-chloride"
zinc_hydroxide = "zinc-hydroxide"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "ZnCl[font=default-tiny-bold]2[/font]"} or nil,
        name = zinc_chloride,
        subgroup = is_zinc_chemistry,
        icon = graphics_zinc .. zinc_chloride .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Zn(OH)[font=default-tiny-bold]2[/font]"} or nil,
        name = zinc_hydroxide,
        subgroup = is_zinc_chemistry,
        icon = graphics_zinc .. zinc_hydroxide .. ".png",
        order = d
    }
})

-- ZINC FLUID
zinc_chloride_solution = "zinc-chloride-solution"
sodium_tetrahydroxozincate_II_solution = "sodium-tetrahydroxozincate-II-solution"
zinc_sulfate_solution = "zinc-sulfate-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "ZnCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = zinc_chloride_solution,
        subgroup = is_zinc_chemistry,
        icon = graphics_zinc .. zinc_chloride_solution .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("ZnCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("ZnCl2Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]Zn(OH)[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = sodium_tetrahydroxozincate_II_solution,
        subgroup = is_zinc_chemistry,
        icon = graphics_zinc .. sodium_tetrahydroxozincate_II_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("Na2ZnO4H4Wp"),
        flow_color = TIMSABA.functions.flow_color("Na2ZnO4H4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "ZnSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = zinc_sulfate_solution,
        subgroup = is_zinc_chemistry,
        icon = graphics_zinc .. zinc_sulfate_solution .. ".png",
        order = f,
        base_color = TIMSABA.functions.fluid_color("ZnSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("ZnSO4Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(zinc_chloride_solution)
TIMSABA.barreling.add_dangerous_fluid(sodium_tetrahydroxozincate_II_solution)
TIMSABA.barreling.add_dangerous_fluid(zinc_sulfate_solution)

-- SILVER FLUID
sodium_dicyanoargentate_I_solution = "sodium-dicyanoargentate-I-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "NaAg(CN)[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_dicyanoargentate_I_solution,
        subgroup = is_silver_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silver/sodium-dicyanoargentate-I-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NaAgC2N2Wp"),
        flow_color = TIMSABA.functions.flow_color("NaAgC2N2Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})
TIMSABA.barreling.add_dangerous_fluid(sodium_dicyanoargentate_I_solution)

local graphics_titanium = "__TIMSABA__/graphics/icons/angels/metallurgy/titanium/"
-- TITANIUM ITEM
titanium_oxide_IV = "titanium-oxide-IV"
titanium_carbide = "titanium-carbide"
metatitanic_acid = "metatitanic-acid"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "TiO[font=default-tiny-bold]2[/font]"} or nil,
        name = titanium_oxide_IV,
        subgroup = is_titanium_chemistry,
        icon = graphics_titanium .. titanium_oxide_IV .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "TiC"} or nil,
        name = titanium_carbide,
        subgroup = is_titanium_chemistry,
        icon = graphics_titanium .. titanium_carbide .. ".png",
        order = d
    },
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]TiO[font=default-tiny-bold]3[/font]"} or nil,
        name = metatitanic_acid,
        subgroup = is_titanium_chemistry,
        icon = graphics_titanium .. metatitanic_acid .. ".png",
        order = f
    }
})

-- TITANIUM FLUID
titanium_iodide_IV_gas = "titanium-iodide-IV-gas"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "TiI[font=default-tiny-bold]4[/font]"} or nil,
        name = titanium_iodide_IV_gas,
        subgroup = is_titanium_chemistry,
        icon = graphics_titanium .. titanium_iodide_IV_gas .. ".png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("TiI4"),
        flow_color = TIMSABA.functions.flow_color("TiI4")
    }
})
TIMSABA.barreling.add_gas(titanium_iodide_IV_gas)

-- GOLD FLUID
sodium_dicyanoaurate_I_solution = "sodium-dicyanoaurate-I-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "NaAu(CN)[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = sodium_dicyanoaurate_I_solution,
        subgroup = is_gold_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/gold/sodium-dicyanoaurate-I-solution.png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("NaAuC2N2Wp"),
        flow_color = TIMSABA.functions.flow_color("NaAuC2N2Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(sodium_dicyanoaurate_I_solution)

-- COBALT FLUID
cobalt_chloride_II_solution = "cobalt-chloride-II-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "CoCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = cobalt_chloride_II_solution,
        subgroup = is_cobalt_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/cobalt/cobalt-chloride-II-solution.png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("CoCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("CoCl2Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(cobalt_chloride_II_solution)

local graphics_chromium = "__TIMSABA__/graphics/icons/angels/metallurgy/chromium/"
-- CHROMIUM ITEM
chromium_oxide_VI = "chromium-oxide-VI"
chromium_cathode = "chromium-cathode"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "CrO[font=default-tiny-bold]3[/font]"} or nil,
        name = chromium_oxide_VI,
        subgroup = is_chromium_chemistry,
        icon = graphics_chromium .. chromium_oxide_VI .. ".png",
        order = g,
    },
    {
        localised_description = show_formula and {chemical_formula, "Cr"} or nil,
        name = chromium_cathode,
        subgroup = is_chromium_chemistry,
        icon = graphics_chromium .. chromium_cathode .. ".png",
        icon_size = 32,
        order = i
    }
})

-- CHROMIUM FLUID
chromium_sulfate_II_solution = "chromium-sulfate-II-solution"
chromic_acid = "chromic-acid-solution"
potassium_chromate_solution = "potassium-chromate-solution"
potassium_dichromate_solution = "potassium-dichromate-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "CrSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = chromium_sulfate_II_solution,
        subgroup = is_chromium_chemistry,
        icon = graphics_chromium .. chromium_sulfate_II_solution .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("CrSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("CrSO4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]CrO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = potassium_chromate_solution,
        subgroup = is_chromium_chemistry,
        icon = graphics_chromium .. potassium_chromate_solution .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("K2CrO4Wp"),
        flow_color = TIMSABA.functions.flow_color("K2CrO4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]Cr[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]7(aq)[/font]"} or nil,
        name = potassium_dichromate_solution,
        subgroup = is_chromium_chemistry,
        icon = graphics_chromium .. potassium_dichromate_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("K2Cr2O7Wp"),
        flow_color = TIMSABA.functions.flow_color("K2Cr2O7Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]CrO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = chromic_acid,
        subgroup = is_chromium_chemistry,
        icon = graphics_chromium .. chromic_acid .. ".png",
        order = h,
        base_color = TIMSABA.functions.fluid_color("H2CrO4Wp"),
        flow_color = TIMSABA.functions.flow_color("H2CrO4Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(chromium_sulfate_II_solution)
TIMSABA.barreling.add_dangerous_fluid(potassium_chromate_solution)
TIMSABA.barreling.add_dangerous_fluid(potassium_dichromate_solution)
TIMSABA.barreling.add_dangerous_fluid(chromic_acid)

local graphics_tungsten = "__TIMSABA__/graphics/icons/angels/metallurgy/tungsten/"
-- TUNGSTEN ITEM
copper_tungsten_powder = "copper-tungsten-powder"
tungstic_acid = "tungstic-acid"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "WCu"} or nil,
        name = copper_tungsten_powder,
        subgroup = is_tungsten,
        icon = graphics_tungsten .. copper_tungsten_powder .. ".png",
        order = f
    },
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]WO[font=default-tiny-bold]4[/font]"} or nil,
        name = tungstic_acid,
        subgroup = is_tungsten_chemistry,
        icon = graphics_tungsten .. tungstic_acid .. ".png",
        order = e
    }
})

-- TUNGSTEN FLUID
peroxo_tungstic_acid = "peroxo-tungstic-acid-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]WO[font=default-tiny-bold]6(aq)[/font]"} or nil,
        name = peroxo_tungstic_acid,
        subgroup = is_tungsten_chemistry,
        icon = graphics_tungsten .. peroxo_tungstic_acid .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("H2WO6Wp"),
        flow_color = TIMSABA.functions.flow_color("H2WO6Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(peroxo_tungstic_acid)

local graphics_platinum = "__TIMSABA__/graphics/icons/angels/metallurgy/platinum/"
-- PLATINUM ITEM
platinum_chloride_II = "platinum-chloride-II"
platinum_fluoride_IV = "platinum-fluoride-IV"
platinum_hydroxide_IV = "platinum-hydroxide-IV"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "PtCl[font=default-tiny-bold]2[/font]"} or nil,
        name = platinum_chloride_II,
        subgroup = is_platinum_chemistry,
        icon = graphics_platinum .. platinum_chloride_II .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "PtF[font=default-tiny-bold]4[/font]"} or nil,
        name = platinum_fluoride_IV,
        subgroup = is_platinum_chemistry,
        icon = graphics_platinum .. platinum_fluoride_IV .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Pt(OH)[font=default-tiny-bold]4[/font]"} or nil,
        name = platinum_hydroxide_IV,
        subgroup = is_platinum_chemistry,
        icon = graphics_platinum .. platinum_hydroxide_IV .. ".png",
        order = f
    }
})

-- PLATINUM FLUID
sodium_hexachloroplatinate_IV_solution = "sodium-hexachloroplatinate-IV-solution"
sodium_hexahydroxoplatinate_IV_solution = "sodium-hexahydroxoplatinate-IV-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]PtCl[font=default-tiny-bold]6(aq)[/font]"} or nil,
        name = sodium_hexachloroplatinate_IV_solution,
        subgroup = is_platinum_chemistry,
        icon = graphics_platinum .. sodium_hexachloroplatinate_IV_solution .. ".png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("Na2PtCl6Wp"),
        flow_color = TIMSABA.functions.flow_color("Na2PtCl6Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]Pt(OH)[font=default-tiny-bold]6(aq)[/font]"} or nil,
        name = sodium_hexahydroxoplatinate_IV_solution,
        subgroup = is_platinum_chemistry,
        icon = graphics_platinum .. sodium_hexahydroxoplatinate_IV_solution .. ".png",
        order = g,
        base_color = TIMSABA.functions.fluid_color("Na2PtO6H6Wp"),
        flow_color = TIMSABA.functions.flow_color("Na2PtO6H6Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(sodium_hexachloroplatinate_IV_solution)
TIMSABA.barreling.add_dangerous_fluid(sodium_hexahydroxoplatinate_IV_solution)