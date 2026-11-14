shovel = "shovel"
data:extend
({
    {
        type = "selection-tool",
        name = shovel,
        icon = "__TIMSABA__/graphics/icons/shovel.png",
        icon_size = 64,
        flags = {"not-stackable", "hide-from-bonus-gui"},
        subgroup = tool,
        order = z,
        stack_size = 1,
        select = {border_color = {0, 0.6, 1}, cursor_box_type = "copy", mode = {"any-tile"}},
        alt_select = {border_color = {0, 0, 0}, cursor_box_type = "copy", mode = {"any-tile"}}
    }
})

TIMSABA.functions.create_recipes
({
    {
        name = shovel,
        categories = {hand_crafting},
        subgroup = tool,
        order = z,
        ingredients =
        {
            {type = item, name = wood, amount = 1},
            {type = item, name = iron_plate, amount = 1}
        },
        results = {{type = item, name = shovel, amount = 1}},
        main_product = shovel
    }
})