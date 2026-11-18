local icon_tungsten_ore = "__TIMSABA__/graphics/icons/angels/metallurgy/tungsten/bob-tungsten-ore"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "W"} or nil,
        name = tungsten_ore_bob,
        subgroup = "angels-tungsten",
        icon = icon_tungsten_ore .. ".png",
        pictures =
        {
            {filename = icon_tungsten_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = icon_tungsten_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = icon_tungsten_ore .. "-3.png", width = 64, height = 64, scale = 0.5},
            {filename = icon_tungsten_ore .. "-4.png", width = 64, height = 64, scale = 0.5},
            {filename = icon_tungsten_ore .. "-5.png", width = 64, height = 64, scale = 0.5},
            {filename = icon_tungsten_ore .. "-6.png", width = 64, height = 64, scale = 0.5},
            {filename = icon_tungsten_ore .. "-7.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    }
})

wolframite_ore = "wolframite-ore"
local item_wolframite_ore = table.deepcopy(data_item[tungsten_ore])
item_wolframite_ore.localised_name = {"item-name." .. wolframite_ore}
item_wolframite_ore.name = wolframite_ore

wolframite_ore_ac = "wolframite_ore"
local autoplace_control_wolframite_ore = table.deepcopy(data_autoplace_control["tungsten_ore"])
autoplace_control_wolframite_ore.localised_name = {"", "[item=wolframite-ore] ", {"entity-name.wolframite-ore"}}
autoplace_control_wolframite_ore.name = wolframite_ore_ac

local noise_expressions =
{
    {
        type = "noise-expression",
        name = "vulcanus_wolframite_ore_size",
        expression = "slider_rescale(control:wolframite_ore:size, 2)"
    },
    {
        type = "noise-expression",
        name = "vulcanus_wolframite_ore_region",
        expression = "max(vulcanus_starting_tungsten,\z
                        min(1 - vulcanus_starting_circle,\z
                            vulcanus_place_metal_spots(789, 15, 2,\z
                            vulcanus_wolframite_ore_size * min(1.2, vulcanus_ore_dist) * 25,\z
                            control:wolframite_ore:frequency,\z
                            vulcanus_basalts_resource_favorability)))"
    },
    {
        type = "noise-expression",
        name = "vulcanus_wolframite_ore_probability",
        expression = "(control:wolframite_ore:size > 0) * (1000 * ((1 + vulcanus_wolframite_ore_region) * random_penalty_between(0.9, 1, 1) - 1))"
    },
    {
        type = "noise-expression",
        name = "vulcanus_wolframite_ore_richness",
        expression = "vulcanus_wolframite_ore_region * random_penalty_between(0.9, 1, 1)\z
                    * 10000 * vulcanus_starting_area_multiplier\z
                    * control:wolframite_ore:richness / vulcanus_wolframite_ore_size"
    }
}

local resource_wolframite_ore = table.deepcopy(data_resource[tungsten_ore])
resource_wolframite_ore.localised_name = {"entity-name." .. wolframite_ore}
resource_wolframite_ore.name = wolframite_ore
resource_wolframite_ore.autoplace =
{
    control = wolframite_ore_ac,
    order = "b",
    probability_expression = "vulcanus_wolframite_ore_probability",
    richness_expression = "vulcanus_wolframite_ore_richness"
}

data:extend({item_wolframite_ore, autoplace_control_wolframite_ore, resource_wolframite_ore})
data:extend(noise_expressions)

data_planet[planet_vulcanus].map_gen_settings.autoplace_controls[wolframite_ore_ac] = {}
data_planet[planet_vulcanus].map_gen_settings.autoplace_settings.entity.settings[wolframite_ore] = {}