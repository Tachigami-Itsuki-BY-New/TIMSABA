local graphics_resource = "__TIMSABA__/graphics/icons/angels/resource/"
-- ITEM
purified_catalyst = "purified-catalyst"
powdered_chlorine_bleach = "powdered-chlorine-bleach"
powdered_oxygen_bleach = "powdered-oxygen-bleach"
TIMSABA.functions.create_items
({
    {
        name = purified_catalyst,
        subgroup = is_ore_sorting_advanced_0,
        icon = "__angelsrefininggraphics__/graphics/icons/catalysator-yellow.png",
        icon_size = 32,
        order = d,
    },
    {
        name = powdered_chlorine_bleach,
        subgroup = is_ore_sorting_item,
        icon = graphics_resource .. powdered_chlorine_bleach .. ".png",
        order = a,
    },
    {
        name = powdered_oxygen_bleach,
        subgroup = is_ore_sorting_item,
        icon = graphics_resource .. powdered_oxygen_bleach .. ".png",
        order = b,
    }
})

-- FLUID
liquid_chlorine_bleach = "liquid-chlorine-bleach"
TIMSABA.functions.create_fluids
({
    {
        name = liquid_chlorine_bleach,
        subgroup = is_ore_sorting_fluid,
        icon = graphics_resource .. liquid_chlorine_bleach .. ".png",
        order = e,
        base_color = {r = 116 / 255, g = 148 / 255, b = 106 / 255},
        flow_color = {r = 096 / 255, g = 123 / 255, b = 088 / 255}
    }
})
TIMSABA.barreling.add_dangerous_fluid(liquid_chlorine_bleach)