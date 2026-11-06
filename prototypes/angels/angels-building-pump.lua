local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")

local new_ground_water_pump = data_pump_offshore[ground_water_pump]
new_ground_water_pump.type = assembling_machine
new_ground_water_pump.crafting_speed = 1
new_ground_water_pump.fixed_recipe = nil
new_ground_water_pump.show_recipe_icon = false
new_ground_water_pump.crafting_categories = {extract_ground}
new_ground_water_pump.fluid_boxes =
{
    {
        production_type = output,
        pipe_covers = pipecoverspictures(),
        volume = 120,
        base_area = 1,
        base_level = 1,
        pipe_connections = new_ground_water_pump.fluid_box.pipe_connections
    }
}
new_ground_water_pump.fluid_box = nil
new_ground_water_pump.graphics_set = {animation = new_ground_water_pump.graphics_set.animation}
new_ground_water_pump.energy_source = {type = "void"}
new_ground_water_pump.energy_usage = 15 .. kW
new_ground_water_pump.surface_conditions = {{property = gravity, min = 1, max = 100}}
new_ground_water_pump.active_components_only = true
data_assembling[ground_water_pump] = new_ground_water_pump

data_pump_offshore[ground_water_pump] = nil

data:extend
({
    {
        localised_name = {"entity-name.angels-sea-pump"},
        localised_description = {"entity-description.angels-sea-pump"},
        type = offshore_pump,
        name = heavy_offshore_pump,
        icon = "__angelsrefininggraphics__/graphics/icons/sea-pump-ico.png",
        icon_size = 32,
        flags = {flag_placeable_neutral, flag_player_creation, "filter-directions"},
        collision_mask = {layers = {object = true, train = true, is_object = true, is_lower_object = true}},
        tile_buildability_rules =
        {
            {
                area = {{-1.4, -1.4}, {1.4, 0.4}},
                required_tiles = {layers = {ground_tile = true}},
                colliding_tiles = {layers = {water_tile = true}},
                remove_on_collision = true
            },
            {
                area = {{-2, -3}, {2, -2}},
                required_tiles = {layers = {water_tile = true}},
                colliding_tiles = {layers = {}}
            }
        },
        minable = {mining_time = 0.1, result = heavy_offshore_pump},
        placeable_by = {item = heavy_offshore_pump, count = 1},
        resource_categories = {heavy_offshore_pump},
        max_health = 200,
        corpse = "small-remnants",
        dying_explosion = "pumpjack-explosion",
        resistances =
        {
            {type = "fire", percent = 70},
            {type = "impact", percent = 30}
        },
        collision_box = {{-1.6, -2.05}, {1.6, 0.3}},
        selection_box = {{-1.6, -2.49}, {1.6, 0.49}},
        damaged_trigger_effect = hit_effects.entity(),
        fluid_box =
        {
            volume = 3840,
            pipe_covers = pipecoverspictures(),
            production_type = output,
            pipe_connections = {{position = {0, 0}, direction = defines.direction.south, flow_direction = output}}
        },
        energy_source =
        {
            type = "void",
            usage_priority = secondary_input,
        },
        energy_usage = 15 .. kW,
        tile_width = 3,
        tile_height = 3,
        impact_category = "metal",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/offshore-pump.ogg",
                volume = 0.5,
                modifiers = data_mining_drill[heavy_offshore_pump].working_sound.sound.modifiers,
                audible_distance_modifier = 0.7,
            },
            match_volume_to_activity = true,
            max_sounds_per_prototype = 3,
            fade_in_ticks = 4,
            fade_out_ticks = 20,
        },
        uses_force_mining_productivity_bonus = false,
        resource_searching_radius = 0.49,
        vector_to_place_result = {0, 0},
        radius_visualisation_picture =
        {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
            width = 12,
            height = 12,
        },
        graphics_set =
        {
            animation =
            {
                north =
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
                    priority = high,
                    shift = {0, -1},
                    width = 160,
                    height = 160
                },
                east =
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
                    priority = high,
                    shift = {1, 0},
                    x = 160,
                    width = 160,
                    height = 160
                },
                south =
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
                    priority = high,
                    shift = {0, 1},
                    x = 320,
                    width = 160,
                    height = 160
                },
                west =
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png",
                    priority = high,
                    shift = {-1, 0},
                    x = 480,
                    width = 160,
                    height = 160
                }
            }
        },
        circuit_connector = circuit_connector_definitions[heavy_offshore_pump],
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        center_collision_mask = {layers = {water_tile = true}},
        adjacent_resources_required = true,
        --fluid_source_offset = {0, -3},
        -- Корректируем смещение водозабора под габариты 3х3
        fluid_source_offset = {0, -2},

        -- Добавляем отображение зеленого индикатора на воде при установке
        placeable_position_visualization =
        {
            filename = "__core__/graphics/cursor-boxes-32x32.png",
            priority = "extra-high-no-scale",
            width = 64,
            height = 64,
            scale = 0.5,
            x = 3 * 64
        },
        
        -- Позволяет визуализировать поток воды в трубе, если графика это поддерживает
        always_draw_fluid = true
    }
})