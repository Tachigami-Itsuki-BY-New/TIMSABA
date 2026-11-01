if mods[asteroid_belt_mods] then
    local asteroids = require("__kry-asteroid-belt__.prototypes.asteroid-spawn-definitions")
    local AsteroidBelt = require("__kry-asteroid-belt__.lib.asteroid-belt")

    northeast_asteroid_belt_inner_edge = "northeast-asteroid-belt-inner-edge"
    data:extend
    ({
        {
            localised_name = {"kry-belt-location.inner", AsteroidBelt.asteroid_name},
            localised_description = {"kry-belt-location-description.inner", AsteroidBelt.asteroid_name},
            type = "space-location",
            name = northeast_asteroid_belt_inner_edge,
            subgroup = "planets",
            icon = "__kry-asteroid-belt__/graphics/inner-belt-edge.png",
            icon_size = 256,
            starmap_icon = "__kry-asteroid-belt__/graphics/inner-belt-edge.png",
            starmap_icon_size = 256,
            order = z_c .. "-" .. a,
            draw_orbit = false,
            solar_power_in_space = 50,
            label_orientation = 0.875,
            distance = 28,
            orientation = 0.125,
            starmap_icon_orientation = 0.75,
            asteroid_spawn_definitions = asteroids.asteroid_definitions.inner
        }
    })

    northeast_asteroid_belt_outer_edge = "northeast-asteroid-belt-outer-edge"
    data:extend
    ({
        {
            localised_name = {"kry-belt-location.outer", AsteroidBelt.asteroid_name},
            localised_description = {"kry-belt-location-description.outer", AsteroidBelt.asteroid_name},
            type = "space-location",
            name = northeast_asteroid_belt_outer_edge,
            subgroup = "planets",
            icon = "__kry-asteroid-belt__/graphics/outer-belt-edge.png",
            icon_size = 256,
            starmap_icon = "__kry-asteroid-belt__/graphics/outer-belt-edge.png",
            starmap_icon_size = 256,
            order = z_c .. "-" .. b,
            draw_orbit = false,
            solar_power_in_space = 25,
            label_orientation = 0.375,
            distance = 32,
            orientation = 0.125,
            starmap_icon_orientation = 0.75,
            asteroid_spawn_definitions = asteroids.asteroid_definitions.outer
        }
    })

    east_asteroid_belt_inner_edge = "asteroid-belt-inner-edge"
    east_asteroid_belt_outer_edge = "asteroid-belt-outer-edge"

    if mods[muria_mods] then
        southeast_asteroid_belt_inner_edge = "muria-asteroid-belt-inner-edge"
        southeast_asteroid_belt_outer_edge = "muria-asteroid-belt-outer-edge"
    elseif not mods[muria_mods] then
        southeast_asteroid_belt_inner_edge = "southeast-asteroid-belt-inner-edge"
        data:extend
        ({
            {
                localised_name = {"kry-belt-location.inner", AsteroidBelt.asteroid_name},
                localised_description = {"kry-belt-location-description.inner", AsteroidBelt.asteroid_name},
                type = "space-location",
                name = southeast_asteroid_belt_inner_edge,
                subgroup = "planets",
                icon = "__kry-asteroid-belt__/graphics/inner-belt-edge.png",
                icon_size = 256,
                starmap_icon = "__kry-asteroid-belt__/graphics/inner-belt-edge.png",
                starmap_icon_size = 256,
                order = z_b .. "-" .. a,
                draw_orbit = false,
                solar_power_in_space = 50,
                label_orientation = 0.875,
                distance = 28,
                orientation = 0.375,
                starmap_icon_orientation = 0.875,
                asteroid_spawn_definitions = asteroids.asteroid_definitions.inner
            }
        })

        southeast_asteroid_belt_outer_edge = "southeast-asteroid-belt-outer-edge"
        data:extend
        ({
            {
                localised_name = {"kry-belt-location.outer", AsteroidBelt.asteroid_name},
                localised_description = {"kry-belt-location-description.outer", AsteroidBelt.asteroid_name},
                type = "space-location",
                name = southeast_asteroid_belt_outer_edge,
                subgroup = "planets",
                icon = "__kry-asteroid-belt__/graphics/outer-belt-edge.png",
                icon_size = 256,
                starmap_icon = "__kry-asteroid-belt__/graphics/outer-belt-edge.png",
                starmap_icon_size = 256,
                order = z_b .. "-" .. b,
                draw_orbit = false,
                solar_power_in_space = 25,
                label_orientation = 0.375,
                distance = 32,
                orientation = 0.375,
                starmap_icon_orientation = 0.875,
                asteroid_spawn_definitions = asteroids.asteroid_definitions.outer
            }
        })
    end

    east_kuiper_belt_inner_edge = "kuiper-belt-inner-edge"
    east_kuiper_belt_outer_edge = "kuiper-belt-outer-edge"

    if data_space_location[east_kuiper_belt_inner_edge] then
        southeast_kuiper_belt_inner_edge = "southeast-kuiper-belt-inner-edge"
        data:extend
        ({
            {
                localised_name = {"kry-belt-location.inner", AsteroidBelt.kuiper_name},
                localised_description = {"kry-belt-location-description.inner", AsteroidBelt.kuiper_name},
                type = "space-location",
                name = southeast_kuiper_belt_inner_edge,
                subgroup = "planets",
                icon = "__kry-asteroid-belt__/graphics/inner-belt-edge.png",
                icon_size = 256,
                starmap_icon = "__kry-asteroid-belt__/graphics/inner-belt-edge.png",
                starmap_icon_size = 256,
                order = z_d .. "-" .. a,
                draw_orbit = false,
                solar_power_in_space = 1,
                label_orientation = 0.875,
                distance = 60,
                orientation = 0.375,
                starmap_icon_orientation = 0,
                asteroid_spawn_definitions = asteroids.asteroid_definitions.outer
            }
        })
    end

    if data_space_location[east_kuiper_belt_outer_edge] then
        southeast_kuiper_belt_outer_edge = "southeast-kuiper-belt-outer-edge"
        data:extend
        ({
            {
                localised_name = {"kry-belt-location.outer", AsteroidBelt.kuiper_name},
                localised_description = {"kry-belt-location-description.outer", AsteroidBelt.kuiper_name},
                type = "space-location",
                name = southeast_kuiper_belt_outer_edge,
                subgroup = "planets",
                icon = "__kry-asteroid-belt__/graphics/outer-belt-edge.png",
                icon_size = 256,
                starmap_icon = "__kry-asteroid-belt__/graphics/outer-belt-edge.png",
                starmap_icon_size = 256,
                order = z_d .. "-" .. b,
                draw_orbit = false,
                solar_power_in_space = 1,
                label_orientation = 0.375,
                distance = 68,
                orientation = 0.375,
                starmap_icon_orientation = 0,
                asteroid_spawn_definitions = asteroids.asteroid_definitions.outer
            }
        })
    end
end