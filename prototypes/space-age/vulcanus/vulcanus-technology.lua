planet_discovery_vulcanus = "planet-discovery-vulcanus"

-- WOLFRAMITE
local graphics_wolframite_tech = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/wolframite-processing.png"
tech_wolframite_processing_1 = "wolframite-processing-1"
tech_wolframite_processing_2 = "wolframite-processing-2"
tech_wolframite_processing_3 = "wolframite-processing-3"
tech_wolframite_processing_4 = "wolframite-processing-4"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_wolframite_processing_1},
        localised_description = {"technology-description.angels-ore-crushing"},
        type = technology,
        name = tech_wolframite_processing_1,
        icon = graphics_wolframite_tech,
        icon_size = 256,
        prerequisites = {planet_discovery_vulcanus, tech_advanced_ore_refining_5},
        effects =
        {
            {type = unlock_recipe, recipe = wolframite_ore .. _sorting_stone},
            {type = unlock_recipe, recipe = wolframite_crushed},
            {type = unlock_recipe, recipe = wolframite_crushed_sorting},
            {type = unlock_recipe, recipe = tungsten_plate_bob}
        },
        research_trigger =
        {
            type = mine_entity,
            entities = {"big-volcanic-rock", "huge-volcanic-rock"}
        }
    },
    {
        localised_name = {"technology-name." .. tech_wolframite_processing_2},
        localised_description = {"technology-description.angels-ore-floatation"},
        type = technology,
        name = tech_wolframite_processing_2,
        icon = graphics_wolframite_tech,
        icon_size = 256,
        prerequisites = {metallurgic_science_pack, tech_wolframite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = wolframite_chunks},
            {type = unlock_recipe, recipe = wolframite_chunks_sorting}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_wolframite_processing_3},
        localised_description = {"technology-description.angels-ore-leaching"},
        type = technology,
        name = tech_wolframite_processing_3,
        icon = graphics_wolframite_tech,
        icon_size = 256,
        prerequisites = {cryogenic_science_pack, tech_wolframite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = wolframite_crystals},
            {type = unlock_recipe, recipe = wolframite_crystals_sorting}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_wolframite_processing_4},
        localised_description = {"technology-description.angels-ore-refining"},
        type = technology,
        name = tech_wolframite_processing_4,
        icon = graphics_wolframite_tech,
        icon_size = 256,
        prerequisites = {promethium_science_pack, tech_wolframite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = wolframite_purified},
            {type = unlock_recipe, recipe = wolframite_purified_sorting}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    }
})

-- SAMARSKITE
local graphics_samarskite_tech = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/samarskite-processing.png"
tech_samarskite_processing_1 = "samarskite-processing-1"
tech_samarskite_processing_2 = "samarskite-processing-2"
tech_samarskite_processing_3 = "samarskite-processing-3"
tech_samarskite_processing_4 = "samarskite-processing-4"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_samarskite_processing_1},
        localised_description = {"technology-description.angels-ore-crushing"},
        type = technology,
        name = tech_samarskite_processing_1,
        icon = tech_error_png,--graphics_samarskite_tech,
        icon_size = 256,
        prerequisites = {planet_discovery_vulcanus, tech_advanced_ore_refining_5},
        effects =
        {
            {type = unlock_recipe, recipe = samarskite_ore .. _sorting_stone},
            {type = unlock_recipe, recipe = samarskite_crushed},
            {type = unlock_recipe, recipe = samarskite_crushed_sorting}
        },
        research_trigger =
        {
            type = mine_entity,
            entities = {"big-volcanic-rock", "huge-volcanic-rock"}
        }
    },
    {
        localised_name = {"technology-name." .. tech_samarskite_processing_2},
        localised_description = {"technology-description.angels-ore-floatation"},
        type = technology,
        name = tech_samarskite_processing_2,
        icon = tech_error_png,--graphics_samarskite_tech,
        icon_size = 256,
        prerequisites = {metallurgic_science_pack, tech_samarskite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = samarskite_chunks},
            {type = unlock_recipe, recipe = samarskite_chunks_sorting}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_samarskite_processing_3},
        localised_description = {"technology-description.angels-ore-leaching"},
        type = technology,
        name = tech_samarskite_processing_3,
        icon = tech_error_png,--graphics_samarskite_tech,
        icon_size = 256,
        prerequisites = {cryogenic_science_pack, tech_samarskite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = samarskite_crystals},
            {type = unlock_recipe, recipe = samarskite_crystals_sorting}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_samarskite_processing_4},
        localised_description = {"technology-description.angels-ore-refining"},
        type = technology,
        name = tech_samarskite_processing_4,
        icon = tech_error_png,--graphics_samarskite_tech,
        icon_size = 256,
        prerequisites = {promethium_science_pack, tech_samarskite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = samarskite_purified},
            {type = unlock_recipe, recipe = samarskite_purified_sorting}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    }
})

-- NIOBIUM
local graphics_niobium_smelting_tech = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/casting-niobium-technology.png"
tech_niobium_smelting_1 = "niobium-smelting-1"
tech_niobium_smelting_2 = "niobium-smelting-2"
tech_niobium_smelting_3 = "niobium-smelting-3"
local graphics_vulcanus_tech = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/"
tech_niobium_titanium_processing = "niobium-titanium-processing"
tech_niobium_iron_processing = "niobium-iron-processing"
tech_niobium_tungsten_molybdenum_processing = "niobium-tungsten-molybdenum-processing"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_niobium_smelting_1},
        localised_description = {"technology-description." .. tech_niobium_smelting_1},
        type = technology,
        name = tech_niobium_smelting_1,
        icon = graphics_niobium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_wolframite_processing_1, tech_samarskite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_oxide_V},
            {type = unlock_recipe, recipe = niobium_powder}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_niobium_smelting_2},
        localised_description = {"technology-description." .. tech_niobium_smelting_2},
        type = technology,
        name = tech_niobium_smelting_2,
        icon = graphics_niobium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_niobium_smelting_1, metallurgic_science_pack, tech_wolframite_processing_2, tech_samarskite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_processed},
            {type = unlock_recipe, recipe = potassium_niobate},
            {type = unlock_recipe, recipe = niobium_oxide_V_2}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_niobium_smelting_3},
        localised_description = {"technology-description." .. tech_niobium_smelting_3},
        type = technology,
        name = tech_niobium_smelting_3,
        icon = graphics_niobium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_niobium_smelting_2, cryogenic_science_pack, tech_wolframite_processing_3, tech_samarskite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_pellet},
            {type = unlock_recipe, recipe = heptafluoroniobic_acid},
            {type = unlock_recipe, recipe = niobium_hydroxide_V},
            {type = unlock_recipe, recipe = niobium_oxide_V_3},
            {type = unlock_recipe, recipe = fluorite_angels}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_niobium_titanium_processing,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium/" .. niobium_titanium_plate .. ".png",
        --icon = graphics_vulcanus_tech .. tech_niobium_titanium_processing .. ".png",
        icon_size = 64,
        --icon_size = 256,
        prerequisites = {tech_niobium_smelting_1, metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_titanium_molten},
            {type = unlock_recipe, recipe = niobium_titanium_plate},
            {type = unlock_recipe, recipe = niobium_titanium_cable}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_niobium_iron_processing,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium/" .. niobium_iron_plate .. ".png",
        --icon = graphics_vulcanus_tech .. tech_niobium_iron_processing .. ".png",
        icon_size = 64,
        --icon_size = 256,
        prerequisites = {tech_niobium_smelting_1, metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_iron_molten},
            {type = unlock_recipe, recipe = niobium_iron_plate},
            {type = unlock_recipe, recipe = niobium_iron_bearing_ball},
            {type = unlock_recipe, recipe = niobium_iron_bearing}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_niobium_tungsten_molybdenum_processing,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium/" .. niobium_tungsten_molybdenum_plate .. ".png",
        --icon = graphics_vulcanus_tech .. tech_niobium_tungsten_molybdenum_processing .. ".png",
        icon_size = 64,
        --icon_size = 256,
        prerequisites = {tech_niobium_smelting_1, metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_tungsten_molybdenum_powder_mixture},
            {type = unlock_recipe, recipe = niobium_tungsten_molybdenum_plate},
            {type = unlock_recipe, recipe = niobium_tungsten_molybdenum_gear_wheel}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    }
})

-- OTHERS
tech_vulcanus_metallurgic = "vulcanus-metallurgic"
data:extend
({
    {
        type = technology,
        name = tech_vulcanus_metallurgic,
        icon = graphics_vulcanus_tech .. tech_vulcanus_metallurgic .. ".png",
        icon_size = 256,
        prerequisites = {metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = advanced_molten_iron},
            {type = unlock_recipe, recipe = advanced_molten_steel},
            {type = unlock_recipe, recipe = advanced_molten_aluminium},
            {type = unlock_recipe, recipe = advanced_molten_titanium}
        },
        unit =
        {
            count = 3000,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1}
            },
            time = 60
        }
    }
})

table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_niobium_titanium_processing)
table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_niobium_iron_processing)
table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_niobium_tungsten_molybdenum_processing)

table.insert(data_technology[tech_bio_refugium_biter_6].prerequisites, tech_niobium_iron_processing)
table.insert(data_technology[tech_bio_refugium_biter_6].prerequisites, tech_niobium_tungsten_molybdenum_processing)