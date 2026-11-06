local graphics_boron = "__TIMSABA__/graphics/icons/angels/petrochem/boron/"

-- GROUPS
is_boron = "is-boron"
local is_boron_fluid = "is-boron-fluid"
TIMSABA.functions.create_subgroups(ig_petrochem_refining,
{
    {name = is_boron, order = j},
    {name = is_boron_fluid, order = j_a}
})

-- ITEM
borax = "borax"
boron_oxide_III = "boron-oxide-III"
magnesium_boride = "magnesium-boride"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]B[font=default-tiny-bold]4[/font]O[font=default-tiny-bold]7[/font] * 10H[font=default-tiny-bold]2[/font]O"} or nil,
        name = borax,
        subgroup = is_boron,
        icon = graphics_boron .. borax .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "B[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        name = boron_oxide_III,
        subgroup = is_boron,
        icon = graphics_boron .. boron_oxide_III .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg[font=default-tiny-bold]3[/font]B[font=default-tiny-bold]2[/font]"} or nil,
        name = magnesium_boride,
        subgroup = is_boron,
        icon = graphics_boron .. magnesium_boride .. ".png",
        order = d
    }
})

-- FLUID
boric_acid_solution = "boric-acid-solution"
diborane_gas = "diborane-gas"
pentaborane_liquid = "pentaborane-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]3[/font]BO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = boric_acid_solution,
        subgroup = is_boron_fluid,
        icon = graphics_boron .. boric_acid_solution .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("H3BO3Wp"),
        flow_color = TIMSABA.functions.flow_color("H3BO3Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "B[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]6[/font]"} or nil,
        name = diborane_gas,
        subgroup = is_boron_fluid,
        icon = graphics_boron .. diborane_gas .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("B2H6"),
        flow_color = TIMSABA.functions.flow_color("B2H6")
    },
    {
        localised_description = show_formula and {chemical_formula, "B[font=default-tiny-bold]5[/font]H[font=default-tiny-bold]9[/font]"} or nil,
        name = pentaborane_liquid,
        subgroup = is_boron_fluid,
        icon = graphics_boron .. pentaborane_liquid .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("B5H9"),
        flow_color = TIMSABA.functions.flow_color("B5H9")
    }
})
TIMSABA.barreling.add_dangerous_fluid(boric_acid_solution)
TIMSABA.barreling.add_gas(diborane_gas)
TIMSABA.barreling.add_dangerous_fluid(pentaborane_liquid)

-- RECIPE
boric_acid_from_diborane_gas = "boric-acid-from-diborane-gas"
boric_acid_from_hydrochloric_acid = "boric-acid-from-hydrochloric-acid"
TIMSABA.functions.create_recipes
({
    -- ITEM
    {
        name = magnesium_boride,
        categories = {smelting_filtering},
        subgroup = is_boron,
        icons = TWO_D_I(boron_oxide_III, magnesium_powder, magnesium_boride, magnesium_oxide),
        order = d,
        -- B₂O₃(s) + 6Mg(s) --> Mg₃B₂(s) + 3MgO(s)
        ingredients =
        {
            {type = item, name = boron_oxide_III, amount = 4},
            {type = item, name = magnesium_powder, amount = 24}
        },
        results =
        {
            {type = item, name = magnesium_boride, amount = 4},
            {type = item, name = magnesium_oxide, amount = 4} -- 12
        },
        main_product = magnesium_boride
    },
    -- FLUID
    {
        name = boric_acid_solution,
        categories = {chemistry},
        subgroup = is_boron_fluid,
        icons = TWO_D_I(borax, sulfuric_acid_angels, boric_acid_solution, sodium_sulfate_solution),
        order = a,
        -- (Na₂B₄O₇ * 10H₂O)(s) + H₂SO₄(l) --> 4H₃BO₃(aq) + Na₂SO₄(aq)
        ingredients =
        {
            {type = item, name = borax, amount = 4},
            {type = fluid, name = sulfuric_acid_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = boric_acid_solution, amount = 240},
            {type = fluid, name = sodium_sulfate_solution, amount = 30} -- 60
        },
        main_product = boric_acid_solution
    },
    {
        name = boric_acid_from_hydrochloric_acid,
        categories = {angels_advanced_chemistry},
        subgroup = is_boron_fluid,
        icons = THREE_D_I(borax, nil, hydrochloric_acid_angels, boric_acid_solution, sodium_chloride_solution, water_purified_angels),
        order = a_a,
        -- (Na₂B₄O₇ * 10H₂O)(s) + 2HCl(aq) --> 4H₃BO₃(aq) + 2NaCl(aq) + H₂O(l)
        ingredients =
        {
            {type = item, name = borax, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = boric_acid_solution, amount = 240},
            {type = fluid, name = sodium_chloride_solution, amount = 60}, -- 120
            {type = fluid, name = water_purified_angels, amount = 30} -- 60
        }
    },
    {
        name = boric_acid_from_diborane_gas,
        categories = {chemistry},
        subgroup = is_boron_fluid,
        icons = TWO_D_I(diborane_gas, water_purified_angels, boric_acid_solution, hydrogen_angels),
        order = a_b,
        -- B₂H₆(g) + 8H₂O(l) --> 2H₃BO₃(aq) + 6H₂(g)
        ingredients =
        {
            {type = fluid, name = diborane_gas, amount = 120},
            {type = fluid, name = water_purified_angels, amount = 960}
        },
        results =
        {
            {type = fluid, name = boric_acid_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 240} -- 720
        }
    },
    {
        name = diborane_gas,
        categories = {angels_advanced_chemistry},
        subgroup = is_boron_fluid,
        icons = THREE_D_I(magnesium_boride, hydrogen_chloride_angels, water_purified_angels, diborane_gas, nil, magnesium_chloride_solution),
        order = b,
        -- Mg₃B₂(s) + 6HCl(g) + 3H₂O(l) --> B₂H₃(g) + 3MgCl₂(aq)
        ingredients =
        {
            {type = item, name = magnesium_boride, amount = 4},
            {type = fluid, name = hydrogen_chloride_angels, amount = 360},
            {type = fluid, name = water_purified_angels, amount = 180}
        },
        results =
        {
            {type = fluid, name = diborane_gas, amount = 60},
            {type = fluid, name = magnesium_chloride_solution, amount = 60} -- 180
        },
        main_product = diborane_gas
    },
    {
        name = pentaborane_liquid,
        categories = {chemistry},
        subgroup = is_boron_fluid,
        icons = THREE_R_I(diborane_gas, pentaborane_liquid, hydrogen_angels),
        order = c,
        -- 5B₂H₆(g) --> 2B₅H₉(l) + 6H₂(g)
        ingredients = {{type = fluid, name = diborane_gas, amount = 150}},
        results =
        {
            {type = fluid, name = pentaborane_liquid, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 60} -- 180
        },
        main_product = pentaborane_liquid
    }
})