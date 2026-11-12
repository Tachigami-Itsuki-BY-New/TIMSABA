TIMSABA.functions.create_recipes
({
    {
        name = pistol,
        categories = {crafting},
        subgroup = data_gun[pistol].subgroup,
        order = data_gun[pistol].order,
        enabled = true,
        allow_quality = true,
        energy_requred = 1,
        ingredients =
        {
            {type = item, name = iron_plate, amount = 4},
            {type = item, name = copper_plate, amount = 4}
        },
        results = {{type = item, name = pistol, amount = 1}},
        main_product = pistol
    }
})