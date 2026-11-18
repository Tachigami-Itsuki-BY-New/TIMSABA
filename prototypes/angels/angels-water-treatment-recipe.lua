TIMSABA.functions.create_recipes
({
    {
        name = mud_angels,
        categories = {angels_washing},
        subgroup = is_water_salination,
        icons = TWO_I(water_viscous_mud, mud_angels),
        order = a,
        energy_required = 8,
        ingredients = {{type = fluid, name = water_viscous_mud, amount = 240}},
        results = {{type = item, name = mud_angels, amount = 8}},
        main_product = mud_angels
    }
})