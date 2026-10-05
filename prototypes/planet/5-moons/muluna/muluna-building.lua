if mods[muluna_mods] then
    local item_sounds = require("__base__.prototypes.item_sounds")
    lumber_mill = "lumber-mill-muluna"
    data:extend
    ({
        {
            type = item,
            name = lumber_mill,
            subgroup = is_muluna_recipe_tree,
            icon = "__TIMSABA__/graphics/icons/muluna/lumber-mill.png",
            order = z_a,
            place_result = lumber_mill,
            stack_size = 32,
            weight = 31250,
            drop_sound = item_sounds.mechanical_large_inventory_move,
            inventory_move_sound = item_sounds.mechanical_large_inventory_pickup,
            pick_sound = item_sounds.mechanical_large_inventory_move
        },
        {
            type = recipe,
            name = lumber_mill,
            categories = {crafting},
            subgroup = is_muluna_recipe_tree,
            icon = "__TIMSABA__/graphics/icons/muluna/lumber-mill.png",
            order = z_a,
            enabled = false,
            auto_recycle = true,
            allow_show = true,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = true,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = steel_gear_wheel, amount = 64},
                {type = item, name = electronic_circuit, amount = 16},
                {type = item, name = steel_plate, amount = 64},
                {type = item, name = clay_brick, amount = 32},
                {type = item, name = saw, amount = 8}
            },
            results = {{type = item, name = lumber_mill, amount = 1}},
            main_product = lumber_mill
        },
        {
            type = assembling_machine,
            name = lumber_mill,
            subgroup = is_muluna_recipe_tree,
            icon = "__TIMSABA__/graphics/icons/muluna/lumber-mill.png",
            order = z_a,
            minable = {mining_time = 1, result = lumber_mill},
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            fast_replaceable_group = burner_lumber_mill,
            max_health = 1000,
            corpse = "big-remnants",
            dying_explosion = "medium-explosion",
            icon_draw_specification = {shift = {0, -0.3}},
            resistances = {{type = "fire", percent = 70}},
            collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
            selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
            alert_icon_shift = util.by_pixel(0, -12),
            graphics_set =
            {
                animation =
                {
                    layers =
                    {
                        {
                            filename = "__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-shadow.png",
                            priority = high,
                            width = 660,
                            height = 700,
                            frame_count = 1,
                            repeat_count = 80,
                            shift = util.by_pixel(15, 2),
                            scale = 0.3125,
                            draw_as_shadow = false
                        },
                        {
                            filenames = {"__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-animation-1.png", "__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-animation-2.png"},
                            priority = high,
                            width = 525,
                            height = 557,
                            frame_count = 80,
                            line_length = 8,
                            lines_per_file = 8,
                            shift = util.by_pixel(0, 2),
                            scale = 0.3125
                        },
                        {
                            filenames = {"__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-emission-1.png", "__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-emission-2.png"},
                            priority = high,
                            width = 525,
                            height = 557,
                            frame_count = 80,
                            line_length = 8,
                            lines_per_file = 8,
                            shift = util.by_pixel(0, 2),
                            scale = 0.3125,
                            draw_as_glow = true
                        }
                    }
                }
            },
            crafting_categories = {advanced_wood_processing},
            crafting_speed = 4,
            module_slots = 4,
            energy_usage = (480 - drain) .. kW,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 0},
                drain = drain .. kW
            },
            allowed_effects = {speed, consumption, productivity, quality},
            allowed_module_categories = {speed, efficiency, productivity, quality},
            effect_receiver = {base_effect = {productivity = 1}},
            impact_category = "metal",
            open_sound = {filename = "__base__/sound/open-close/train-stop-open.ogg", volume = 0.6},
            close_sound = {filename = "__base__/sound/open-close/train-stop-close.ogg", volume = 0.5},
            working_sound =
            {
                sound = {filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.5, audible_distance_modifier = 0.5},
                fade_in_ticks = 4,
                fade_out_ticks = 20
            },
            circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
            circuit_connector = circuit_connector_definitions.create_vector(universal_connector_template,
            {
                {variation = 30, main_offset = util.by_pixel(59, 70), shadow_offset = util.by_pixel(59, 70), show_shadow = true},
                {variation = 30, main_offset = util.by_pixel(59, 70), shadow_offset = util.by_pixel(59, 70), show_shadow = true},
                {variation = 30, main_offset = util.by_pixel(59, 70), shadow_offset = util.by_pixel(59, 70), show_shadow = true},
                {variation = 30, main_offset = util.by_pixel(59, 70), shadow_offset = util.by_pixel(59, 70), show_shadow = true}
            }),
            perceived_performance = {minimum = 0.25, performance_to_activity_rate = 0.25, maximum = 4}
        }
    })
end