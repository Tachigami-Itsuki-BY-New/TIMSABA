ig_vulcanus = "vulcanus"
data:extend
({
    {
        type = item_group,
        name = ig_vulcanus,
        order = data_planet[planet_vulcanus].order,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/vulcanus-planet.png",
        icon_size = 128,
    }
})

is_vulcanus_air = "is-vulcanus-air"
is_calcite = "is-calcite"
is_wolframite = "is-wolframite"
is_samarskite = "is-samarskite"
is_lava = "is-lava"
is_vulcanus_molten = "is-vulcanus-molten"
is_vulcanus_plate = "is-vulcanus-plate"
is_vulcanus_rod = "is-vulcanus-rod"
is_vulcanus_gear_wheel = "is-vulcanus-gear-wheel"
is_vulcanus_bearing_ball = "is-vulcanus-bearing-ball"
is_vulcanus_bearing = "is-vulcanus-bearing"
is_vulcanus_cable = "is-vulcanus-cable"
is_vulcanus_pipe = "is-vulcanus-pipe"
is_vulcanus_pipe_to_ground = "is-vulcanus-pipe-to-ground"
is_vulcanus_tungsten = "is-vulcanus-tungsten"
is_vulcanus_logistic = "is-vulcanus-logistics"
is_vulcanus_building = "is-vulcanus-building"
TIMSABA.functions.create_subgroups(ig_vulcanus,
{
    {name = is_vulcanus_air,            order = a},
    {name = is_vulcanus_tungsten,       order = b},
    {name = is_wolframite,              order = c},
    {name = is_samarskite,              order = d},
    {name = is_lava,                    order = e},
    {name = is_vulcanus_molten,         order = e_a},
    {name = is_vulcanus_plate,          order = e_b},
    {name = is_vulcanus_rod,            order = e_c},
    {name = is_vulcanus_gear_wheel,     order = e_d},
    {name = is_vulcanus_bearing_ball,   order = e_e},
    {name = is_vulcanus_bearing,        order = e_f},
    {name = is_vulcanus_cable,          order = e_g},
    {name = is_vulcanus_pipe,           order = e_h},
    {name = is_vulcanus_pipe_to_ground, order = e_i},
    {name = is_calcite,                 order = f},
    {name = is_vulcanus_logistic,       order = g},
    {name = is_vulcanus_building,       order = h}
})