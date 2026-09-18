planet_discovery_fulgora = "planet-discovery-fulgora"
tech_recycling = "recycling"

-- BRANNERITE
local graphics_brannerite_tech = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/brannerite-processing.png"
tech_brannerite_processing_1 = "brannerite-processing-1"
tech_brannerite_processing_2 = "brannerite-processing-2"
tech_brannerite_processing_3 = "brannerite-processing-3"
tech_brannerite_processing_4 = "brannerite-processing-4"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_brannerite_processing_1},
        localised_description = {"technology-description.angels-ore-crushing"},
        type = technology,
        name = tech_brannerite_processing_1,
        icon = graphics_brannerite_tech,
        icon_size = 256,
        prerequisites = {tech_recycling, tech_advanced_ore_refining_5},
        effects =
        {
            {type = unlock_recipe, recipe = brannerite_ore .. _sorting_stone},
            {type = unlock_recipe, recipe = brannerite_crushed},
            {type = unlock_recipe, recipe = brannerite_crushed_sorting}
        },
        research_trigger =
        {
            type = craft_item,
            item = brannerite_ore,
            count = 256
        }
    },
    {
        localised_name = {"technology-name." .. tech_brannerite_processing_2},
        localised_description = {"technology-description.angels-ore-floatation"},
        type = technology,
        name = tech_brannerite_processing_2,
        icon = graphics_brannerite_tech,
        icon_size = 256,
        prerequisites = {electromagnetic_science_pack, tech_brannerite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = brannerite_chunks},
            {type = unlock_recipe, recipe = brannerite_chunks_sorting}
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
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_brannerite_processing_3},
        localised_description = {"technology-description.angels-ore-leaching"},
        type = technology,
        name = tech_brannerite_processing_3,
        icon = graphics_brannerite_tech,
        icon_size = 256,
        prerequisites = {cryogenic_science_pack, tech_brannerite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = brannerite_crystals},
            {type = unlock_recipe, recipe = brannerite_crystals_sorting}
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
        localised_name = {"technology-name." .. tech_brannerite_processing_4},
        localised_description = {"technology-description.angels-ore-refining"},
        type = technology,
        name = tech_brannerite_processing_4,
        icon = graphics_brannerite_tech,
        icon_size = 256,
        prerequisites = {promethium_science_pack, tech_brannerite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = brannerite_purified},
            {type = unlock_recipe, recipe = brannerite_purified_sorting}
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

-- RHENIITE
local graphics_rheniite_tech = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/rheniite-processing.png"
tech_rheniite_processing_1 = "rheniite-processing-1"
tech_rheniite_processing_2 = "rheniite-processing-2"
tech_rheniite_processing_3 = "rheniite-processing-3"
tech_rheniite_processing_4 = "rheniite-processing-4"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_rheniite_processing_1},
        localised_description = {"technology-description.angels-ore-crushing"},
        type = technology,
        name = tech_rheniite_processing_1,
        icon = graphics_rheniite_tech,
        icon_size = 256,
        prerequisites = {tech_recycling, tech_advanced_ore_refining_5},
        effects =
        {
            {type = unlock_recipe, recipe = rheniite_ore .. _sorting_stone},
            {type = unlock_recipe, recipe = rheniite_crushed},
            {type = unlock_recipe, recipe = rheniite_crushed_sorting}
        },
        research_trigger =
        {
            type = craft_item,
            item = rheniite_ore,
            count = 256
        }
    },
    {
        localised_name = {"technology-name." .. tech_rheniite_processing_2},
        localised_description = {"technology-description.angels-ore-floatation"},
        type = technology,
        name = tech_rheniite_processing_2,
        icon = graphics_rheniite_tech,
        icon_size = 256,
        prerequisites = {electromagnetic_science_pack, tech_rheniite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = rheniite_chunks},
            {type = unlock_recipe, recipe = rheniite_chunks_sorting}
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
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_rheniite_processing_3},
        localised_description = {"technology-description.angels-ore-leaching"},
        type = technology,
        name = tech_rheniite_processing_3,
        icon = graphics_rheniite_tech,
        icon_size = 256,
        prerequisites = {cryogenic_science_pack, tech_rheniite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = rheniite_crystals},
            {type = unlock_recipe, recipe = rheniite_crystals_sorting}
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
        localised_name = {"technology-name." .. tech_rheniite_processing_4},
        localised_description = {"technology-description.angels-ore-refining"},
        type = technology,
        name = tech_rheniite_processing_4,
        icon = graphics_rheniite_tech,
        icon_size = 256,
        prerequisites = {promethium_science_pack, tech_rheniite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = rheniite_purified},
            {type = unlock_recipe, recipe = rheniite_purified_sorting}
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

-- HOLMIUM
local graphics_holmium_smelting_tech = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/smelting-holmium-tech.png"
tech_holmium_smelting_1 = "holmium-smelting-1"
tech_holmium_smelting_2 = "holmium-smelting-2"
tech_holmium_smelting_3 = "holmium-smelting-3"
tech_holmium_processing = "holmium-processing"
local graphics_fulgora_tech = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_holmium_smelting_1},
        localised_description = {"technology-description." .. tech_holmium_smelting_1},
        type = technology,
        name = tech_holmium_smelting_1,
        icon = graphics_holmium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_brannerite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = calcium_chloride_solution_from_lime},
            {type = unlock_recipe, recipe = calcium},
            {type = unlock_recipe, recipe = holmium_chloride_III_solution},
            {type = unlock_recipe, recipe = holmium_fluoride_III},
            {type = unlock_recipe, recipe = holmium_cathode},
            {type = unlock_recipe, recipe = holmium_ingot},
            {type = unlock_recipe, recipe = holmium_powder},
            {type = unlock_recipe, recipe = holmium_molten},
            {type = unlock_recipe, recipe = holmium_plate}
        },
        research_trigger =
        {
            type = craft_item,
            item = holmium_ore,
            count = 256
        }
    },
    {
        localised_name = {"technology-name." .. tech_holmium_smelting_2},
        localised_description = {"technology-description." .. tech_holmium_smelting_2},
        type = technology,
        name = tech_holmium_smelting_2,
        icon = graphics_holmium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_holmium_smelting_1, electromagnetic_science_pack, tech_brannerite_processing_2, tech_samarskite_processing_2, tech_holmium_processing},
        effects =
        {
            {type = unlock_recipe, recipe = holmium_processed},
            {type = unlock_recipe, recipe = holmium_nitrate_III_solution},
            {type = unlock_recipe, recipe = holmium_oxide_III},
            {type = unlock_recipe, recipe = holmium_fluoride_III_2}
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
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_holmium_smelting_3},
        localised_description = {"technology-description." .. tech_holmium_smelting_3},
        type = technology,
        name = tech_holmium_smelting_3,
        icon = graphics_holmium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_holmium_smelting_2, cryogenic_science_pack, tech_vulcanus_metallurgic, tech_brannerite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = holmium_fluoride_III_3}
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

-- OTHERS
tech_advanced_processing_unit = "advanced-processing-unit"
data:extend
({
    -- PRODUCTIVITY
    {
        type = technology,
        name = electronic_circuit .. _productivity,
        icon = graphics_fulgora_tech .. electronic_circuit .. _productivity .. ".png",
        icon_size = 256,
        prerequisites = {electromagnetic_science_pack},
        effects = {{type = change_recipe_productivity, recipe = electronic_circuit, change = 0.1}},
        unit =
        {
            count_formula = "1.5^L*1000",
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {electromagnetic_science_pack, 1}
            },
            time = 60
        },
        max_level = 30,
        upgrade = true
    },
    {
        type = technology,
        name = advanced_circuit .. _productivity,
        icon = graphics_fulgora_tech .. advanced_circuit .. _productivity .. ".png",
        icon_size = 256,
        prerequisites = {electromagnetic_science_pack},
        effects = {{type = change_recipe_productivity, recipe = advanced_circuit, change = 0.1}},
        unit =
        {
            count_formula = "1.5^L*1000",
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {electromagnetic_science_pack, 1}
            },
            time = 60
        },
        max_level = 30,
        upgrade = true
    },
    {
        type = technology,
        name = tech_advanced_processing_unit .. _productivity,
        icon = graphics_fulgora_tech .. tech_advanced_processing_unit .. _productivity .. ".png",
        icon_size = 256,
        prerequisites = {electromagnetic_science_pack},
        effects = {{type = change_recipe_productivity, recipe = advanced_processing_unit, change = 0.1}},
        unit =
        {
            count_formula = "1.5^L*1000",
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {electromagnetic_science_pack, 1}
            },
            time = 60
        },
        max_level = 30,
        upgrade = true
    }
})

table.insert(data_technology[tech_niobium_smelting_2].prerequisites, tech_rheniite_processing_2)