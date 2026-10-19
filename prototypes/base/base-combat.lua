if mods[bobwarfare] then
    local sounds = require("__base__.prototypes.entity.sounds")

    local white = {r = 1, g = 1, b = 1, a = 1}
    local red = {r = 1, g = 0.5, b = 0.5, a = 1}
    local orange = {r = 1, g = 0.5, b = 0, a = 1}

    local function bob_gun_turret_base(inputs)
        local size = inputs.size or 1
        return
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
                    priority = high,
                    width = 150,
                    height = 118,
                    frame_count = 1,
                    shift = util.by_pixel(0.5 * size, -1 * size),
                    scale = 0.5 * size
                },
                {
                    filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
                    flags = {"mask"},
                    line_length = 1,
                    width = 122,
                    height = 102,
                    frame_count = 1,
                    shift = util.by_pixel(0, -4.5 * size),
                    tint = inputs.tint or white,
                    scale = 0.5 * size
                }
            }
        }
    end

    local function bob_laser_turret_base(inputs)
        local size = inputs.size or 1
        return
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
                    priority = high,
                    width = 138,
                    height = 104,
                    frame_count = 1,
                    shift = util.by_pixel(-0.5 * size, 2 * size),
                    tint = inputs.tint or white,
                    scale = 0.5 * size
                },
                {
                    filename = "__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
                    flags = {"mask"},
                    line_length = 1,
                    width = 132,
                    height = 82,
                    draw_as_shadow = true,
                    frame_count = 1,
                    shift = util.by_pixel(6 * size, 3 * size),
                    scale = 0.5 * size
                }
            }
        }
    end

    local function bob_artillery_turret_base(inputs)
        local size = inputs.size or 1
        return
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/artillery-turret/artillery-turret-base.png",
                    priority = high,
                    line_length = 1,
                    width = 207,
                    height = 199,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-0, 22),
                    scale = 0.5 * size * (2 / 3)
                },
                {
                    filename = "__base__/graphics/entity/artillery-turret/artillery-turret-base-shadow.png",
                    priority = high,
                    line_length = 1,
                    width = 277,
                    height = 149,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(18, 38),
                    draw_as_shadow = true,
                    scale = 0.5 * size * (2 / 3)
                }
            }
        }
    end

    local function bob_turret_base(inputs)
        local size = inputs.size or 1
        local anim
        if inputs.type == "gun" then
            anim = bob_gun_turret_base({tint = inputs.tint, size = size})
        elseif inputs.type == "laser" then
            anim = bob_laser_turret_base({tint = inputs.tint, size = size})
        else
            anim = bob_artillery_turret_base({tint = inputs.tint, size = size})
        end
        return anim
    end

    local function bob_gun_turret_attack(inputs)
        return
        {
            layers =
            {
                {
                    width = 132,
                    height = 130,
                    frame_count = inputs.frame_count and inputs.frame_count or 2,
                    direction_count = 64,
                    shift = util.by_pixel(0, -27.5),
                    stripes =
                    {
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-1.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16},
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-2.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16},
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-3.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16},
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-4.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16}
                    },
                    scale = 0.5
                },
                {
                    flags = {"mask"},
                    line_length = inputs.frame_count or 2,
                    width = 58,
                    height = 54,
                    frame_count = inputs.frame_count or 2,
                    direction_count = 64,
                    shift = util.by_pixel(0, -32.5),
                    tint = inputs.tint or white,
                    stripes =
                    {
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-1.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16},
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-2.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16},
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-3.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16},
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-4.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16}
                    },
                    scale = 0.5
                },
                {
                    width = 250,
                    height = 124,
                    frame_count = inputs.frame_count or 2,
                    direction_count = 64,
                    shift = util.by_pixel(22, 2.5),
                    draw_as_shadow = true,
                    stripes =
                    {
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-1.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16},
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-2.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16},
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-3.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16},
                        {filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-4.png", width_in_frames = inputs.frame_count or 2, height_in_frames = 16}
                    },
                    scale = 0.5
                }
            }
        }
    end

    local function bob_laser_turret_attack(inputs)
        local size = inputs.size or 1
        return
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting.png",
                    line_length = 8,
                    width = 126,
                    height = 120,
                    frame_count = 1,
                    direction_count = 64,
                    shift = util.by_pixel(0, -35 * size),
                    scale = 0.5 * size
                },
                {
                    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-mask.png",
                    flags = { "mask" },
                    line_length = 8,
                    width = 92,
                    height = 80,
                    frame_count = 1,
                    tint = inputs.tint or white,
                    direction_count = 64,
                    shift = util.by_pixel(0, -43.5 * size),
                    scale = 0.5 * size
                },
                {
                    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-shadow.png",
                    line_length = 8,
                    width = 170,
                    height = 92,
                    frame_count = 1,
                    direction_count = 64,
                    draw_as_shadow = true,
                    shift = util.by_pixel(50.5 * size, 2.5 * size),
                    scale = 0.5 * size
                }
            }
        }
    end

    local function bob_turret_attack(inputs)
        local anim
        if inputs.type == "gun" then
            anim = bob_gun_turret_attack(inputs)
        else
            anim = bob_laser_turret_attack(inputs)
        end
        return anim
    end

    local function bob_gun_turret_extension(inputs)
        return
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/gun-turret/gun-turret-raising.png",
                    priority = medium,
                    width = 130,
                    height = 126,
                    direction_count = 4,
                    frame_count = inputs.frame_count or 5,
                    line_length = inputs.line_length or 0,
                    run_mode = inputs.run_mode or "forward",
                    shift = util.by_pixel(0, -26.5),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/gun-turret/gun-turret-raising-mask.png",
                    flags = {"mask"},
                    width = 48,
                    height = 62,
                    direction_count = 4,
                    frame_count = inputs.frame_count or 5,
                    line_length = inputs.line_length or 0,
                    run_mode = inputs.run_mode or "forward",
                    shift = util.by_pixel(0, -28),
                    tint = inputs.tint or white,
                    scale = 0.5,
                },
                {
                    filename = "__base__/graphics/entity/gun-turret/gun-turret-raising-shadow.png",
                    width = 250,
                    height = 124,
                    direction_count = 4,
                    frame_count = inputs.frame_count or 5,
                    line_length = inputs.line_length or 0,
                    run_mode = inputs.run_mode or "forward",
                    shift = util.by_pixel(19, 2.5),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
    end

    local function bob_laser_turret_extension(inputs)
        local size = inputs.size or 1
        return
        {
            layers =
            {
                {
                    filename = "__base__/graphics/entity/laser-turret/laser-turret-raising.png",
                    priority = medium,
                    width = 130,
                    height = 126,
                    frame_count = inputs.frame_count and inputs.frame_count or 15,
                    line_length = inputs.line_length and inputs.line_length or 0,
                    run_mode = inputs.run_mode and inputs.run_mode or "forward",
                    direction_count = 4,
                    shift = util.by_pixel(0, -32.5 * size),
                    scale = 0.5 * size
                },
                {
                    filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-mask.png",
                    flags = {"mask"},
                    width = 86,
                    height = 80,
                    frame_count = inputs.frame_count or 15,
                    line_length = inputs.line_length or 0,
                    run_mode = inputs.run_mode or "forward",
                    tint = inputs.tint or white,
                    direction_count = 4,
                    shift = util.by_pixel(0, -43 * size),
                    scale = 0.5 * size
                },
                {
                    filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-shadow.png",
                    width = 182,
                    height = 96,
                    frame_count = inputs.frame_count or 15,
                    line_length = inputs.line_length or 0,
                    run_mode = inputs.run_mode or "forward",
                    direction_count = 4,
                    draw_as_shadow = true,
                    shift = util.by_pixel(47 * size, 2.5 * size),
                    scale = 0.5 * size
                }
            }
        }
    end

    local function bob_turret_extension(inputs)
        local anim
        if inputs.type == "gun" then
            anim = bob_gun_turret_extension(inputs)
        else
            anim = bob_laser_turret_extension(inputs)
        end
        return anim
    end

    local function bob_gun_turret(inputs)
        local size = inputs.size or 1
        local preparerange = inputs.range or 17
        preparerange = preparerange + 1
        local turret =
        {
            type = "ammo-turret",
            name = inputs.name,
            icon = "__base__/graphics/icons/gun-turret.png",
            icon_size = 64,
            flags = {"placeable-player", "player-creation"},
            minable = {mining_time = 0.5, result = inputs.name},
            max_health = inputs.health,
            next_upgrade = inputs.next_upgrade,
            resistances = inputs.resistances,
            corpse = "gun-turret-remnants",
            collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
            selection_box = {{-1, -1 }, {1, 1}},
            drawing_box_vertical_extension = 0.2 * size,
            circuit_wire_max_distance = default_circuit_wire_max_distance,
            rotation_speed = inputs.rotation_speed or 0.015,
            preparing_speed = 0.08,
            folding_speed = 0.08,
            dying_explosion = "medium-explosion",
            inventory_size = inputs.inventory_size or 1,
            automated_ammo_count = inputs.automated_ammo_count or 10,
            fast_replaceable_group = "turret",
            attacking_speed = 0.5,
            folded_animation = bob_turret_extension({frame_count = 1, line_length = 1, type = inputs.gun_type, tint = inputs.tint}),
            preparing_animation = bob_turret_extension({ type = inputs.gun_type, tint = inputs.tint }),
            folding_animation = bob_turret_extension({ run_mode = "backward", type = inputs.gun_type, tint = inputs.tint }),
            prepared_animation = bob_turret_attack({ frame_count = 1, type = inputs.gun_type, tint = inputs.tint }),
            preparing_sound = sounds.gun_turret_activate,
            folding_sound = sounds.gun_turret_deactivate,
            attacking_animation = bob_turret_attack({type = inputs.gun_type, tint = inputs.tint}),
            graphics_set = {base_visualisation = {animation = bob_turret_base(inputs.base)}},
            water_reflection =
            {
                rotate = false,
                orientation_to_variation = false,
                pictures =
                {
                    filename = "__base__/graphics/entity/gun-turret/gun-turret-reflection.png",
                    width = 20,
                    height = 32,
                    priority = "extra-high",
                    scale = 5 * size,
                    shift = util.mul_shift({ 0, 1.25 }, size),
                    variation_count = 1
                }
            },
            icon_draw_specification = {scale = 0.7},
            attack_parameters =
            {
                type = "projectile",
                ammo_category = inputs.ammo_category or "bullet",
                cooldown = inputs.cooldown or 6,
                health_penalty = inputs.health_penalty,
                projectile_creation_distance = 1.39375,
                projectile_center = {0, -0.0875}, -- same as gun_turret_attack shift
                damage_modifier = inputs.damage_modifier or 2,
                ammo_consumption_modifier = inputs.ammo_consumption_modifier,
                range = inputs.range or 17,
                shell_particle =
                {
                    name = "shell-particle",
                    direction_deviation = 0.1,
                    speed = 0.1,
                    speed_deviation = 0.03,
                    center = { 0, 0 },
                    creation_distance = -1.925,
                    starting_frame_speed = 0.2,
                    starting_frame_speed_deviation = 0.1,
                },
                sound = sounds.heavy_gunshot
            },
            call_for_help_radius = 40,
            prepare_range = inputs.prepare_range or preparerange
        }
        if inputs.base.type == "gun" then
            turret.circuit_connector = circuit_connector_definitions["gun-turret"]
        else
            turret.circuit_connector = circuit_connector_definitions["laser-turret"]
        end
        turret.heating_energy = inputs.heating_energy or "50kW"
        return turret
    end

    -- SNIPER TURRET T4
    local turretmovesound = {filename = "__base__/sound/item/turret-inventory-move.ogg", volume = 0.6}
    local turretplacesound = {filename = "__base__/sound/item/turret-inventory-pickup.ogg", volume = 0.5}

    TIMSABA.functions.create_items
    ({
        {
            name = sniper_turret_4,
            subgroup = is_turret_3,
            icon = "__base__/graphics/icons/gun-turret.png",
            order = d,
            stack_size = 64,
            weight = 15625,
            place_result = sniper_turret_4,
            drop_sound = turretmovesound,
            inventory_move_sound = turretmovesound,
            pick_sound = turretplacesound
        }
    })

    TIMSABA.functions.create_recipes
    ({
        {
            name = sniper_turret_4,
            subgroup = is_turret_3,
            order = d,
            enabled = false,
            energy_required = 16,
            ingredients =
            {
                {type = item, name = nitinol_gear_wheel, amount = 16},
                {type = item, name = nitinol_bearing, amount = 16},
                {type = item, name = nitinol_plate_bob, amount = 16},
                {type = item, name = copper_tungsten_plate_bob, amount = 16},
                {type = item, name = sniper_turret_3, amount = 1}
            },
            results = {{type = item, name = sniper_turret_4, amount = 1}}
        }
    })

    data:extend
    ({
        bob_gun_turret({
            name = sniper_turret_4,
            health = 1000,
            inventory_size = 1,
            automated_ammo_count = 40,
            ammo_category = "bullet",
            damage_modifier = 32,
            ammo_consumption_modifier = 0,
            cooldown = 60,
            health_penalty = -5,
            range = 64,
            prepare_range = 68,
            tint = orange,
            gun_type = "gun",
            base = {type = "laser", tint = red},
            resistances =
            {
                {type = "acid",      decrease = 8,  percent = 40},
                {type = electric,    decrease = 15, percent = 50},
                {type = "explosion",                percent = 0},
                {type = "fire",                     percent = 40},
                {type = "laser",                    percent = 40},
                {type = "poison",    decrease = 8,  percent = 80},
            }
        })
    })

    data_ammo_turret[sniper_turret_3].next_upgrade = sniper_turret_4
    data_ammo_turret[sniper_turret_4].next_upgrade = nil

    -- ARTILLERY TURRET T4
    TIMSABA.functions.create_items
    ({
        {
            localised_name = {"entity-name.artillery-turret-4"},
            name = artillery_turret_4,
            subgroup = is_turret_4,
            icon = "__base__/graphics/icons/artillery-turret.png",
            order = d,
            stack_size = 16,
            weight = 62500,
            place_result = artillery_turret_4,
            drop_sound = {filename = "__base__/sound/item/artillery-large-inventory-move.ogg", volume = 0.5},
            inventory_move_sound = {filename = "__base__/sound/item/artillery-large-inventory-move.ogg", volume = 0.5},
            pick_sound = {filename = "__base__/sound/item/artillery-large-inventory-pickup.ogg", volume = 0.4}
        }
    })

    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"entity-name.artillery-turret-4"},
            name = artillery_turret_4,
            subgroup = is_turret_4,
            order = d,
            enabled = false,
            energy_required = 32,
            ingredients =
            {
                {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 32},
                {type = item, name = niobium_iron_bearing, amount = 16},
                {type = item, name = advanced_processing_unit, amount = 16},
                {type = item, name = reinforced_graphene_concrete_brick, amount = 64},
                {type = item, name = niobium_titanium_plate, amount = 64},
                {type = item, name = artillery_turret_3, amount = 1}
            },
            results = {{type = item, name = artillery_turret_4, amount = 1}}
        }
    })

    artillery_wagon_cannon_1 = "artillery-wagon-cannon"
    artillery_wagon_cannon_2 = "bob-artillery-wagon-cannon-2"
    artillery_wagon_cannon_3 = "bob-artillery-wagon-cannon-3"
    artillery_wagon_cannon_4 = "artillery-wagon-cannon-4"
    local T4_artillery_cannon = util.table.deepcopy(data_gun["artillery-wagon-cannon"])

    T4_artillery_cannon.name = artillery_wagon_cannon_4
    T4_artillery_cannon.attack_parameters.cooldown = 240
    T4_artillery_cannon.attack_parameters.range = 512
    T4_artillery_cannon.attack_parameters.damage_modifier = 2

    data:extend({T4_artillery_cannon})

    local T4_artillery_turret = util.table.deepcopy(data_artillery_turret[artillery_turret_1])
    T4_artillery_turret.localised_name = {"entity-name.artillery-turret-4"}
    T4_artillery_turret.name = artillery_turret_4
    T4_artillery_turret.inventory_size = 4
    T4_artillery_turret.ammo_stack_limit = 50
    T4_artillery_turret.automated_ammo_count = 20
    T4_artillery_turret.minable = {mining_time = 1, result = artillery_turret_4}
    T4_artillery_turret.max_health = 3500
    T4_artillery_turret.gun = artillery_wagon_cannon_4
    T4_artillery_turret.turret_rotation_speed = 0.004
    T4_artillery_turret.turn_after_shooting_cooldown = 10
    T4_artillery_turret.cannon_parking_speed = 0.4
    T4_artillery_turret.resistances =
    {
        {type = "acid",       decrease = 35,  percent = 95},
        {type = "bob-pierce",                 percent = 80},
        {type = electric,     decrease = 25,  percent = 90},
        {type = "explosion",                  percent = 90},
        {type = "fire",       decrease = 30,  percent = 100},
        {type = "impact",     decrease = 200, percent = 100},
        {type = "laser",                      percent = 60},
        {type = "physical",   decrease = 50,  percent = 100},
        {type = "poison",     decrease = 20,  percent = 100}
    }
    data:extend({T4_artillery_turret})

    data_artillery_turret[artillery_turret_3].next_upgrade = artillery_turret_4
    data_artillery_turret[artillery_turret_4].next_upgrade = nil
end