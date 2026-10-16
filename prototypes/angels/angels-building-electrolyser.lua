-- ADVANCED ELECTROLYSER
local advanced_electrolyser_layers = {filename = entity_error_png, width = 512, height = 512, frame_count = 1, shift = util.by_pixel(0, 0), scale = 0.3125}

advanced_electrolyser_1 = "advanced-electrolyser-1"
advanced_electrolyser_2 = "advanced-electrolyser-2"
advanced_electrolyser_3 = "advanced-electrolyser-3"
advanced_electrolyser_4 = "advanced-electrolyser-4"
TIMSABA.functions.create_buildings
({
    {
        name = advanced_electrolyser_1,
        subgroup = is_buildings_advanced_electrolyser,
        icons = TIMSABA.numeral_tier({icon = error_png, icon_size = 64}, 1, angelsmods.refining.number_tint),
        order = a,

        ingredients =
        {
            {type = item, name = electronic_circuit, amount = 4},
            {type = item, name = bronze_pipe, amount = 32},
            {type = item, name = clay_brick, amount = 16},
            {type = item, name = bronze_plate_bob, amount = 16}
        },

        base_prototype = data_assembling[electrolyser_1],

        localised_description = {"entity-description.angels-electrolyser"},
        module_slots = 1,
        crafting_speed = 1,
        pollution = 0,
        drain = 120 .. kW,
        energy_usage = (960 - 120) .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy,
        allowed_effects = {speed, consumption},
        allowed_module_categories = {speed, efficiency}
    },
    {
        name = advanced_electrolyser_2,
        subgroup = is_buildings_advanced_electrolyser,
        icons = TIMSABA.numeral_tier({icon = error_png, icon_size = 64}, 2, angelsmods.refining.number_tint),
        order = b,

        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 32},
            {type = item, name = concrete_brick, amount = 16},
            {type = item, name = brass_plate_bob, amount = 16},
            {type = item, name = advanced_electrolyser_1, amount = 1}
        },

        base_prototype = data_assembling[electrolyser_1],

        localised_description = {"entity-description.angels-electrolyser"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = 0,
        drain = 240 .. kW,
        energy_usage = (1920 - 240) .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy,
        allowed_effects = {speed, consumption},
        allowed_module_categories = {speed, efficiency}
    },
    {
        name = advanced_electrolyser_3,
        subgroup = is_buildings_advanced_electrolyser,
        icons = TIMSABA.numeral_tier({icon = error_png, icon_size = 64}, 3, angelsmods.refining.number_tint),
        order = c,

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 32},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = titanium_plate_bob, amount = 16},
            {type = item, name = advanced_electrolyser_2, amount = 1}
        },

        base_prototype = data_assembling[electrolyser_1],

        localised_description = {"entity-description.angels-electrolyser"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = 0,
        drain = 360 .. kW,
        energy_usage = (2880 - 360) .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy,
        allowed_effects = {speed, consumption},
        allowed_module_categories = {speed, efficiency}
    },
    {
        name = advanced_electrolyser_4,
        subgroup = is_buildings_advanced_electrolyser,
        icons = TIMSABA.numeral_tier({icon = error_png, icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = copper_tungsten_pipe, amount = 32},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 16},
            {type = item, name = advanced_electrolyser_3, amount = 1}
        },

        base_prototype = data_assembling[electrolyser_1],

        localised_description = {"entity-description.angels-electrolyser"},
        module_slots = 4,
        crafting_speed = 4,
        pollution = 0,
        drain = 480 .. kW,
        energy_usage = (3840 - 480) .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy,
        allowed_effects = {speed, consumption},
        allowed_module_categories = {speed, efficiency}
    }
})

local advanced_electrolyser_fluid_boxes =
{
    {
        production_type = input,
        pipe_picture = angelsmods.petrochem.electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        volume = 120,
        pipe_connections = {{flow_direction = input, position = {-1, -2}, direction = defines.direction.north}}
    },
    {
        production_type = input,
        pipe_picture = angelsmods.petrochem.electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        volume = 120,
        pipe_connections = {{flow_direction = input, position = {1, -2}, direction = defines.direction.north}}
    },
    {
        production_type = output,
        pipe_picture = angelsmods.petrochem.electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        volume = 960,
        pipe_connections = {{flow_direction = output, position = {-2, 2}, direction = defines.direction.south}}
    },
    {
        production_type = output,
        pipe_picture = angelsmods.petrochem.electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        volume = 960,
        pipe_connections = {{flow_direction = output, position = {0, 2}, direction = defines.direction.south}}
    },
    {
        production_type = output,
        pipe_picture = angelsmods.petrochem.electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        volume = 960,
        pipe_connections = {{flow_direction = output, position = {2, 2}, direction = defines.direction.south}}
    }
}

data_assembling[advanced_electrolyser_1].crafting_categories = {advanced_electrolysis}
data_assembling[advanced_electrolyser_1].next_upgrade = advanced_electrolyser_2
data_assembling[advanced_electrolyser_1].graphics_set = {animation = {layers = {advanced_electrolyser_layers}}}
data_assembling[advanced_electrolyser_1].fluid_boxes = advanced_electrolyser_fluid_boxes

data_assembling[advanced_electrolyser_2].crafting_categories = {advanced_electrolysis}
data_assembling[advanced_electrolyser_2].next_upgrade = advanced_electrolyser_3
data_assembling[advanced_electrolyser_2].graphics_set = {animation = {layers = {advanced_electrolyser_layers}}}
data_assembling[advanced_electrolyser_2].fluid_boxes = advanced_electrolyser_fluid_boxes

data_assembling[advanced_electrolyser_3].crafting_categories = {advanced_electrolysis}
data_assembling[advanced_electrolyser_3].next_upgrade = advanced_electrolyser_4
data_assembling[advanced_electrolyser_3].graphics_set = {animation = {layers = {advanced_electrolyser_layers}}}
data_assembling[advanced_electrolyser_3].fluid_boxes = advanced_electrolyser_fluid_boxes

data_assembling[advanced_electrolyser_4].crafting_categories = {advanced_electrolysis}
data_assembling[advanced_electrolyser_4].next_upgrade = nil
data_assembling[advanced_electrolyser_4].graphics_set = {animation = {layers = {advanced_electrolyser_layers}}}
data_assembling[advanced_electrolyser_4].fluid_boxes = advanced_electrolyser_fluid_boxes

-- INDUSTRIAL ELECTROLYSER
local industrial_electrolyser_layers = {filename = entity_error_png, width = 512, height = 512, frame_count = 1, shift = util.by_pixel(0, 0), scale = 0.5625}

industrial_electrolyser_1 = "industrial-electrolyser-1"
industrial_electrolyser_2 = "industrial-electrolyser-2"
industrial_electrolyser_3 = "industrial-electrolyser-3"
industrial_electrolyser_4 = "industrial-electrolyser-4"
TIMSABA.functions.create_buildings
({
    {
        name = industrial_electrolyser_1,
        subgroup = is_buildings_industrial_electrolyser,
        icons = TIMSABA.numeral_tier({icon = error_png, icon_size = 64}, 1, angelsmods.refining.number_tint),
        order = a,

        ingredients =
        {
            {type = item, name = electronic_circuit, amount = 16},
            {type = item, name = bronze_pipe, amount = 128},
            {type = item, name = clay_brick, amount = 64},
            {type = item, name = bronze_plate_bob, amount = 64}
        },

        base_prototype = data_assembling[electrolyser_1],

        localised_description = {"entity-description.angels-electrolyser"},
        module_slots = 1,
        crafting_speed = 1 * 4,
        pollution = 0,
        drain = (120 * 4) .. kW,
        energy_usage = ((960 * 4) - (120 * 4)) .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy,
        allowed_effects = {speed, consumption},
        allowed_module_categories = {speed, efficiency}
    },
    {
        name = industrial_electrolyser_2,
        subgroup = is_buildings_industrial_electrolyser,
        icons = TIMSABA.numeral_tier({icon = error_png, icon_size = 64}, 2, angelsmods.refining.number_tint),
        order = b,

        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 16},
            {type = item, name = brass_pipe, amount = 128},
            {type = item, name = concrete_brick, amount = 64},
            {type = item, name = brass_plate_bob, amount = 64},
            {type = item, name = industrial_electrolyser_1, amount = 1}
        },

        base_prototype = data_assembling[electrolyser_1],

        localised_description = {"entity-description.angels-electrolyser"},
        module_slots = 2,
        crafting_speed = 2 * 4,
        pollution = 0,
        drain = (240 * 4) .. kW,
        energy_usage = ((1920 * 4) - (240 * 4)) .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy,
        allowed_effects = {speed, consumption},
        allowed_module_categories = {speed, efficiency}
    },
    {
        name = industrial_electrolyser_3,
        subgroup = is_buildings_industrial_electrolyser,
        icons = TIMSABA.numeral_tier({icon = error_png, icon_size = 64}, 3, angelsmods.refining.number_tint),
        order = c,

        ingredients =
        {
            {type = item, name = processing_unit, amount = 16},
            {type = item, name = titanium_pipe, amount = 128},
            {type = item, name = reinforced_concrete_brick, amount = 64},
            {type = item, name = titanium_plate_bob, amount = 64},
            {type = item, name = industrial_electrolyser_2, amount = 1}
        },

        base_prototype = data_assembling[electrolyser_1],

        localised_description = {"entity-description.angels-electrolyser"},
        module_slots = 3,
        crafting_speed = 3 * 4,
        pollution = 0,
        drain = (360 * 4) .. kW,
        energy_usage = ((2880 * 4) - (360 * 4)) .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy,
        allowed_effects = {speed, consumption},
        allowed_module_categories = {speed, efficiency}
    },
    {
        name = industrial_electrolyser_4,
        subgroup = is_buildings_industrial_electrolyser,
        icons = TIMSABA.numeral_tier({icon = error_png, icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 16},
            {type = item, name = copper_tungsten_pipe, amount = 128},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 64},
            {type = item, name = copper_tungsten_plate_bob, amount = 64},
            {type = item, name = industrial_electrolyser_3, amount = 1}
        },

        base_prototype = data_assembling[electrolyser_1],

        localised_description = {"entity-description.angels-electrolyser"},
        module_slots = 4,
        crafting_speed = 4 * 4,
        pollution = 0,
        drain = (480 * 4) .. kW,
        energy_usage = ((3840 * 4) - (480 * 4)) .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy,
        allowed_effects = {speed, consumption},
        allowed_module_categories = {speed, efficiency}
    }
})

local industrial_electrolyser_collision_box = {{-4.4, -4.4}, {4.4, 4.4}}
local industrial_electrolyser_selection_box = {{-4.5, -4.5}, {4.5, 4.5}}
local industrial_electrolyser_fluid_boxes =
{
    {
        production_type = input,
        pipe_covers = pipecoverspictures(),
        volume = 120,
        pipe_connections = {{flow_direction = input, position = {-2, 4}, direction = defines.direction.south}},
    },
    {
        production_type = input,
        pipe_covers = pipecoverspictures(),
        volume = 120,
        pipe_connections = {{flow_direction = input, position = {0, 4}, direction = defines.direction.south}},
    },
    {
        production_type = input,
        pipe_covers = pipecoverspictures(),
        volume = 120,
        pipe_connections = {{flow_direction = input, position = {2, 4}, direction = defines.direction.south}},
    },
    {
        production_type = output,
        pipe_covers = pipecoverspictures(),
        volume = 960,
        pipe_connections = {{flow_direction = output, position = {-4, -4}, direction = defines.direction.north}},
    },
    {
        production_type = output,
        pipe_covers = pipecoverspictures(),
        volume = 960,
        pipe_connections = {{flow_direction = output, position = {-2, -4}, direction = defines.direction.north}},
    },
    {
        production_type = output,
        pipe_covers = pipecoverspictures(),
        volume = 960,
        pipe_connections = {{flow_direction = output, position = {0, -4}, direction = defines.direction.north}},
    },
    {
        production_type = output,
        pipe_covers = pipecoverspictures(),
        volume = 960,
        pipe_connections = {{flow_direction = output, position = {2, -4}, direction = defines.direction.north}},
    },
    {
        production_type = output,
        pipe_covers = pipecoverspictures(),
        volume = 960,
        pipe_connections = {{flow_direction = output, position = {4, -4}, direction = defines.direction.north}},
    }
}

data_assembling[industrial_electrolyser_1].crafting_categories = {industrial_electrolysis}
data_assembling[industrial_electrolyser_1].next_upgrade = industrial_electrolyser_2
data_assembling[industrial_electrolyser_1].collision_box = industrial_electrolyser_collision_box
data_assembling[industrial_electrolyser_1].selection_box = industrial_electrolyser_selection_box
data_assembling[industrial_electrolyser_1].graphics_set = {animation = {layers = {industrial_electrolyser_layers}}}
data_assembling[industrial_electrolyser_1].fluid_boxes = industrial_electrolyser_fluid_boxes

data_assembling[industrial_electrolyser_2].crafting_categories = {industrial_electrolysis}
data_assembling[industrial_electrolyser_2].next_upgrade = industrial_electrolyser_3
data_assembling[industrial_electrolyser_2].collision_box = industrial_electrolyser_collision_box
data_assembling[industrial_electrolyser_2].selection_box = industrial_electrolyser_selection_box
data_assembling[industrial_electrolyser_2].graphics_set = {animation = {layers = {industrial_electrolyser_layers}}}
data_assembling[industrial_electrolyser_2].fluid_boxes = industrial_electrolyser_fluid_boxes

data_assembling[industrial_electrolyser_3].crafting_categories = {industrial_electrolysis}
data_assembling[industrial_electrolyser_3].next_upgrade = industrial_electrolyser_4
data_assembling[industrial_electrolyser_3].collision_box = industrial_electrolyser_collision_box
data_assembling[industrial_electrolyser_3].selection_box = industrial_electrolyser_selection_box
data_assembling[industrial_electrolyser_3].graphics_set = {animation = {layers = {industrial_electrolyser_layers}}}
data_assembling[industrial_electrolyser_3].fluid_boxes = industrial_electrolyser_fluid_boxes

data_assembling[industrial_electrolyser_4].crafting_categories = {industrial_electrolysis}
data_assembling[industrial_electrolyser_4].next_upgrade = nil
data_assembling[industrial_electrolyser_4].collision_box = industrial_electrolyser_collision_box
data_assembling[industrial_electrolyser_4].selection_box = industrial_electrolyser_selection_box
data_assembling[industrial_electrolyser_4].graphics_set = {animation = {layers = {industrial_electrolyser_layers}}}
data_assembling[industrial_electrolyser_4].fluid_boxes = industrial_electrolyser_fluid_boxes