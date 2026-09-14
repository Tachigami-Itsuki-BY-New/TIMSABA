TIMSABA.functions.create_fluids
({
    {
        localised_name = {"fluid-name.sulfuric-acid"},
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4[/font]"} or nil,
        name = sulfuric_acid_angels,
        subgroup = is_sulfur_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sulfur/angels-liquid-sulfuric-acid.png",
        order = f,
        base_color = TIMSABA.functions.fluid_color("H2SO4"),
        flow_color = TIMSABA.functions.flow_color("H2SO4")
    }
})

TIMSABA.functions.create_recipes
({
    {
        name = coke_purification_2,
        categories = {angels_liquifying},
        subgroup = is_coal,
        icons = TWO_D_I(coke_angels, water_purified_angels, carbon_angels, water_yellow_waste, number_2),
        order = d_a,
        ingredients =
        {
            {type = item, name = coke_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = carbon_angels, amount = 4},
            {type = fluid, name = water_yellow_waste, amount = 60}
        },
        main_product = carbon_angels
    }
})