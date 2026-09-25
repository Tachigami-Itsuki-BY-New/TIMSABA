-- ANGELS RESOURCE REFINING
-- POWELLITE
local graphics_powellite_tech = "__TIMSABA__/graphics/icons/angels/resource/powellite-ore/technology/powellite-processing.png"
tech_powellite_processing_1 = "powellite-processing-1"
tech_powellite_processing_2 = "powellite-processing-2"
tech_powellite_processing_3 = "powellite-processing-3"
tech_powellite_processing_4 = "powellite-processing-4"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_powellite_processing_1},
        localised_description = {"technology-description.angels-ore-crushing"},
        type = technology,
        name = tech_powellite_processing_1,
        icon = graphics_powellite_tech,
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_4},
        effects =
        {
            {type = unlock_recipe, recipe = powellite_ore .. _sorting},
            {type = unlock_recipe, recipe = powellite_crushed},
            {type = unlock_recipe, recipe = powellite_crushed_sorting}
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
                {utility_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_powellite_processing_2},
        localised_description = {"technology-description.angels-ore-floatation"},
        type = technology,
        name = tech_powellite_processing_2,
        icon = graphics_powellite_tech,
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_5, tech_powellite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = powellite_chunks},
            {type = unlock_recipe, recipe = powellite_chunks_sorting}
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
        localised_name = {"technology-name." .. tech_powellite_processing_3},
        localised_description = {"technology-description.angels-ore-leaching"},
        type = technology,
        name = tech_powellite_processing_3,
        icon = graphics_powellite_tech,
        icon_size = 256,
        prerequisites = {metallurgic_science_pack, agricultural_science_pack, electromagnetic_science_pack, tech_powellite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = powellite_crystals},
            {type = unlock_recipe, recipe = powellite_crystals_sorting}
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
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_powellite_processing_4},
        localised_description = {"technology-description.angels-ore-refining"},
        type = technology,
        name = tech_powellite_processing_4,
        icon = graphics_powellite_tech,
        icon_size = 256,
        prerequisites = {cryogenic_science_pack, tech_powellite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = powellite_purified},
            {type = unlock_recipe, recipe = powellite_purified_sorting}
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

-- MOLYBDENITE
local graphics_molybdenite_tech = "__TIMSABA__/graphics/icons/angels/resource/molybdenite-ore/technology/molybdenite-processing.png"
tech_molybdenite_processing_1 = "molybdenite-processing-1"
tech_molybdenite_processing_2 = "molybdenite-processing-2"
tech_molybdenite_processing_3 = "molybdenite-processing-3"
tech_molybdenite_processing_4 = "molybdenite-processing-4"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_molybdenite_processing_1},
        localised_description = {"technology-description.angels-ore-crushing"},
        type = technology,
        name = tech_molybdenite_processing_1,
        icon = graphics_molybdenite_tech,
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_4},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenite_ore .. _sorting},
            {type = unlock_recipe, recipe = molybdenite_crushed},
            {type = unlock_recipe, recipe = molybdenite_crushed_sorting}
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
                {utility_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_molybdenite_processing_2},
        localised_description = {"technology-description.angels-ore-floatation"},
        type = technology,
        name = tech_molybdenite_processing_2,
        icon = graphics_molybdenite_tech,
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_5, tech_molybdenite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenite_chunks},
            {type = unlock_recipe, recipe = molybdenite_chunks_sorting}
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
        localised_name = {"technology-name." .. tech_molybdenite_processing_3},
        localised_description = {"technology-description.angels-ore-leaching"},
        type = technology,
        name = tech_molybdenite_processing_3,
        icon = graphics_molybdenite_tech,
        icon_size = 256,
        prerequisites = {metallurgic_science_pack, agricultural_science_pack, electromagnetic_science_pack, tech_molybdenite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenite_crystals},
            {type = unlock_recipe, recipe = molybdenite_crystals_sorting}
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
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_molybdenite_processing_4},
        localised_description = {"technology-description.angels-ore-refining"},
        type = technology,
        name = tech_molybdenite_processing_4,
        icon = graphics_molybdenite_tech,
        icon_size = 256,
        prerequisites = {cryogenic_science_pack, tech_molybdenite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenite_purified},
            {type = unlock_recipe, recipe = molybdenite_purified_sorting}
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

-- ANGELS METALLURGY SMELTING and CASTING
-- MAGNESIUM
local graphics_magnesium_smelting_tech = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/technology/smelting-magnesium-tech.png"
tech_magnesium_smelting_1 = "magnesium-smelting-1"
tech_magnesium_smelting_2 = "magnesium-smelting-2"
tech_magnesium_smelting_3 = "magnesium-smelting-3"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_magnesium_smelting_1},
        localised_description = {"technology-description." .. tech_magnesium_smelting_1},
        type = technology,
        name = tech_magnesium_smelting_1,
        icon = graphics_magnesium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_metallurgy_1, tech_coal_processing_1, tech_ore_advanced_crushing},
        effects =
        {
            {type = unlock_recipe, recipe = magnesium_oxide},
            {type = unlock_recipe, recipe = magnesium_gas},
            {type = unlock_recipe, recipe = magnesium_ingot},
            {type = unlock_recipe, recipe = magnesium_molten}
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {automation_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_magnesium_smelting_2},
        localised_description = {"technology-description." .. tech_magnesium_smelting_2},
        type = technology,
        name = tech_magnesium_smelting_2,
        icon = graphics_magnesium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_magnesium_smelting_1, tech_ore_processing_1, tech_powder_metallurgy_2},
        effects =
        {
            {type = unlock_recipe, recipe = magnesium_processed},
            {type = unlock_recipe, recipe = magnesium_oxide_2},
            {type = unlock_recipe, recipe = magnesium_powder}
        },
        unit =
        {
            count = 150,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_magnesium_smelting_3},
        localised_description = {"technology-description." .. tech_magnesium_smelting_3},
        type = technology,
        name = tech_magnesium_smelting_3,
        icon = graphics_magnesium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_magnesium_smelting_2, tech_sulfur_processing, tech_ore_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = magnesium_pellet},
            {type = unlock_recipe, recipe = magnesium_chloride},
            {type = unlock_recipe, recipe = magnesium_chloride_gas},
            {type = unlock_recipe, recipe = magnesium_gas_from_magnesium_chloride_gas}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1}
            },
            time = 30
        }
    }
})

local graphics_uranium_smelting_tech = "__TIMSABA__/graphics/icons/angels/metallurgy/uranium/technology/smelting-uranium-tech.png"
tech_uranium_smelting_1 = "uranium-smelting-1"
tech_uranium_smelting_2 = "uranium-smelting-2"
tech_uranium_smelting_3 = "uranium-smelting-3"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_uranium_smelting_1},
        localised_description = {"technology-description." .. tech_uranium_smelting_1},
        type = technology,
        name = tech_uranium_smelting_1,
        icon = graphics_uranium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_ore_leaching, tech_metallurgy_3, centrifuge_1},
        effects =
        {
            {type = unlock_recipe, recipe = uranium_oxide_IV},
            {type = unlock_recipe, recipe = uranium_fluoride_IV},
            {type = unlock_recipe, recipe = uranium_fluoride_VI_gas},
            {type = unlock_recipe, recipe = uranium_processing},
            {type = unlock_recipe, recipe = uranium_238_molten},
            {type = unlock_recipe, recipe = uranium_238_plate}
        },
        research_trigger =
        {
            type = craft_item,
            item = uranium_ore,
            count = 256
        }
    },
    {
        localised_name = {"technology-name." .. tech_uranium_smelting_2},
        localised_description = {"technology-description." .. tech_uranium_smelting_2},
        type = technology,
        name = tech_uranium_smelting_2,
        icon = graphics_uranium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_uranium_smelting_1, tech_ore_processing_3, tech_powder_metallurgy_4},
        effects =
        {
            {type = unlock_recipe, recipe = uranium_processed},
            {type = unlock_recipe, recipe = uranyl_sulfate_solution},
            {type = unlock_recipe, recipe = ammonium_diuranate},
            {type = unlock_recipe, recipe = uranium_oxide_VI},
            {type = unlock_recipe, recipe = uranium_fluoride_VI_gas_2},
            {type = unlock_recipe, recipe = calcium_sulfate_from_ammonium_sulfate_solution}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_uranium_smelting_3},
        localised_description = {"technology-description." .. tech_uranium_smelting_3},
        type = technology,
        name = tech_uranium_smelting_3,
        icon = graphics_uranium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_uranium_smelting_2, tech_ore_processing_4},
        effects =
        {
            {type = unlock_recipe, recipe = uranium_pellet},
            {type = unlock_recipe, recipe = uranium_fluoride_VI_gas_3}
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
                {utility_science_pack, 1}
            },
            time = 30
        }
    }
})

-- THORIUM
local graphics_thorium_smelting_tech = "__TIMSABA__/graphics/icons/angels/metallurgy/thorium/technology/smelting-thorium-tech.png"
tech_thorium_smelting_1 = "thorium-smelting-1"
tech_thorium_smelting_2 = "thorium-smelting-2"
tech_thorium_smelting_3 = "thorium-smelting-3"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_thorium_smelting_1},
        localised_description = {"technology-description." .. tech_thorium_smelting_1},
        type = technology,
        name = tech_thorium_smelting_1,
        icon = graphics_thorium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_powder_metallurgy_4, tech_ore_refining},
        effects =
        {
            {type = unlock_recipe, recipe = thorium_oxide_IV},
            {type = unlock_recipe, recipe = thorium_232_bob}
        },
        research_trigger =
        {
            type = craft_item,
            item = thorium_ore_bob,
            count = 256
        }
    },
    {
        localised_name = {"technology-name." .. tech_thorium_smelting_2},
        localised_description = {"technology-description." .. tech_thorium_smelting_2},
        type = technology,
        name = tech_thorium_smelting_2,
        icon = graphics_thorium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_thorium_smelting_1, tech_ore_processing_4},
        effects =
        {
            {type = unlock_recipe, recipe = thorium_processed},
            {type = unlock_recipe, recipe = thorium_nitrate_IV_solution},
            {type = unlock_recipe, recipe = thorium_hydroxide_IV},
            {type = unlock_recipe, recipe = thorium_oxide_IV_2},
            {type = unlock_recipe, recipe = ammonium_nitrate_alt},
            {type = unlock_recipe, recipe = gaseous_nitric_acid},
            {type = unlock_recipe, recipe = gaseous_nitric_acid_cooling}
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
                {utility_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_thorium_smelting_3},
        localised_description = {"technology-description." .. tech_thorium_smelting_3},
        type = technology,
        name = tech_thorium_smelting_3,
        icon = graphics_thorium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_thorium_smelting_2, tech_ore_processing_5},
        effects =
        {
            {type = unlock_recipe, recipe = thorium_pellet},
            {type = unlock_recipe, recipe = thorium_fluoride_IV}
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
    }
})

-- MOLYBDENUM
local graphics_molybdenum_smelting_tech = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/technology/smelting-molybdenum-technology.png"
tech_molybdenum_smelting_1 = "timsaba-molybdenum-smelting-1"
tech_molybdenum_smelting_2 = "timsaba-molybdenum-smelting-2"
tech_molybdenum_smelting_3 = "timsaba-molybdenum-smelting-3"
tech_molybdenum_processing = "timsaba-molybdenum-processing"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_molybdenum_smelting_1},
        localised_description = {"technology-description." .. tech_molybdenum_smelting_1},
        type = technology,
        name = tech_molybdenum_smelting_1,
        icon = graphics_molybdenum_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_powellite_processing_1, tech_molybdenite_processing_1, tech_powder_metallurgy_5},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenum_oxide_VI},
            {type = unlock_recipe, recipe = molybdenum_powder},
            {type = unlock_recipe, recipe = molybdenum_plate}
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
                {utility_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_molybdenum_smelting_2},
        type = technology,
        name = tech_molybdenum_smelting_2,
        icon = graphics_molybdenum_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_powellite_processing_2, tech_molybdenum_smelting_1, tech_molybdenite_processing_2, tech_ore_processing_5},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenum_processed},
            {type = unlock_recipe, recipe = potassium_molybdate},
            {type = unlock_recipe, recipe = molybdenum_chloride_III_solution},
            {type = unlock_recipe, recipe = molybdic_acid},
            {type = unlock_recipe, recipe = molybdenum_oxide_VI_2}
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
        localised_name = {"technology-name." .. tech_molybdenum_smelting_3},
        type = technology,
        name = tech_molybdenum_smelting_3,
        icon = graphics_molybdenum_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_powellite_processing_3, tech_molybdenum_smelting_2, tech_molybdenite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenum_pellet},
            {type = unlock_recipe, recipe = molybdenum_fluoride_IV},
            {type = unlock_recipe, recipe = molybdenum_powder_2}
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
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_molybdenum_processing,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/" .. molybdenum_plate .. ".png",
        --icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/technology/" .. tech_molybdenum_processing .. ".png",
        icon_size = 64,
        --icon_size = 256,
        prerequisites = {tech_molybdenum_smelting_1},
        effects = {{type = unlock_recipe, recipe = molybdenum_gear_wheel}},
        research_trigger =
        {
            type = craft_item,
            item = molybdenum_plate,
            count = 256
        }
    }
})

-- RHENIUM
local graphics_rhenium_tech = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/technology/smelting-rhenium-technology.png"
tech_rhenium_smelting_1 = "rhenium-smelting-1"
tech_rhenium_smelting_2 = "rhenium-smelting-2"
tech_rhenium_smelting_3 = "rhenium-smelting-3"
tech_rhenium_processing = "rhenium-processing"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_rhenium_smelting_1},
        localised_description = {"technology-description." .. tech_rhenium_smelting_1},
        type = technology,
        name = tech_rhenium_smelting_1,
        icon = graphics_rhenium_tech,
        icon_size = 256,
        prerequisites = {tech_molybdenite_processing_1, tech_powder_metallurgy_5},
        effects =
        {
            {type = unlock_recipe, recipe = rhenium_oxide_VI},
            {type = unlock_recipe, recipe = rhenium_powder},
            {type = unlock_recipe, recipe = rhenium_plate}
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
                {utility_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_rhenium_smelting_2},
        type = technology,
        name = tech_rhenium_smelting_2,
        icon = graphics_rhenium_tech,
        icon_size = 256,
        prerequisites = {tech_rhenium_smelting_1, tech_molybdenite_processing_2, tech_ore_processing_5},
        effects =
        {
            {type = unlock_recipe, recipe = rhenium_processed},
            {type = unlock_recipe, recipe = rhenium_chloride_V},
            {type = unlock_recipe, recipe = rhenium_oxide_IV},
            {type = unlock_recipe, recipe = rhenium_oxide_VI_2},
            {type = unlock_recipe, recipe = potassium_perrhenate},
            {type = unlock_recipe, recipe = rhenium_powder_2}
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
        localised_name = {"technology-name." .. tech_rhenium_smelting_3},
        type = technology,
        name = tech_rhenium_smelting_3,
        icon = graphics_rhenium_tech,
        icon_size = 256,
        prerequisites = {tech_rhenium_smelting_2, tech_molybdenite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = rhenium_pellet},
            {type = unlock_recipe, recipe = rhenium_acid},
            {type = unlock_recipe, recipe = ammonium_perrhenate},
            {type = unlock_recipe, recipe = rhenium_powder_3}
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
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_rhenium_processing,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/" .. rhenium_plate .. ".png",
        --icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/technology/rhenium-processing.png",
        icon_size = 64,
        --icon_size = 256,
        prerequisites = {tech_rhenium_smelting_1},
        effects =
        {
            {type = unlock_recipe, recipe = rhenium_bearing_ball},
            {type = unlock_recipe, recipe = rhenium_bearing}
        },
        research_trigger =
        {
            type = craft_item,
            item = rhenium_plate,
            count = 256
        }
    }
})

-- MOLYBDENUM-RHENIUM
tech_molybdenum_rhenium_processing = "molybdenum-rhenium-processing"
data:extend
({
    {
        type = technology,
        name = tech_molybdenum_rhenium_processing,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/" .. molybdenum_rhenium_plate .. ".png",
        --icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/technology/molybdenum-rhenium-processing.png",
        icon_size = 64,
        --icon_size = 256,
        prerequisites = {tech_molybdenum_smelting_1, tech_rhenium_smelting_1, tech_powder_metallurgy_5},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenum_rhenium_powder_mixture},
            {type = unlock_recipe, recipe = molybdenum_rhenium_plate},
            {type = unlock_recipe, recipe = molybdenum_rhenium_pipe},
            {type = unlock_recipe, recipe = molybdenum_rhenium_pipe_to_ground}
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
                {utility_science_pack, 1}
            },
            time = 30
        }
    }
})

-- ANGELS PETROCHEM REFINING
tech_potassium_processing = "potassium-processing"
tech_boron_processing = "boron-processing"
tech_phosphorus_processing = "phosphorus-processing"
data:extend
({
    -- POTASSIUM
    {
        type = technology,
        name = tech_potassium_processing,
        icons = TIMSABA.functions.create_gas_tech_icon("KKK"),
        prerequisites = {tech_water_treatment_4},
        effects =
        {
            {type = unlock_recipe, recipe = carnallite_reprocessing},
            {type = unlock_recipe, recipe = potassium_chloride_solution},
            {type = unlock_recipe, recipe = potassium_chloride_solution_2},
            {type = unlock_recipe, recipe = potassium_hydroxide},
            {type = unlock_recipe, recipe = potassium_hydroxide_solution},
            {type = unlock_recipe, recipe = potassium_hypochlorite_solution},
            {type = unlock_recipe, recipe = potassium_chlorate},
            {type = unlock_recipe, recipe = potassium_chlorate_solution},
            {type = unlock_recipe, recipe = potassium_permanganate}
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    -- BORON
    {
        type = technology,
        name = tech_boron_processing,
        icons = TIMSABA.functions.create_gas_tech_icon("BBB"),
        prerequisites = {tech_advanced_ore_refining_2},
        effects =
        {
            {type = unlock_recipe, recipe = boric_acid_solution},
            {type = unlock_recipe, recipe = boric_acid_from_diborane_gas},
            {type = unlock_recipe, recipe = boric_acid_from_hydrochloric_acid}
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1}
            },
            time = 30
        }
    },
    -- PHOSPHORUS
    {
        type = technology,
        name = tech_phosphorus_processing,
        icons = TIMSABA.functions.create_gas_tech_icon("PPP"),
        prerequisites = {tech_advanced_ore_refining_3, tech_metallurgy_4},
        effects =
        {
            {type = unlock_recipe, recipe = white_phosphorus_gas},
            {type = unlock_recipe, recipe = white_phosphorus},
            {type = unlock_recipe, recipe = phosphorus_chloride_III_liquid},
            {type = unlock_recipe, recipe = phosphorus_chloride_V},
            {type = unlock_recipe, recipe = phosphorus_fluoride_V_gas},
            {type = unlock_recipe, recipe = metasilicic_acid},
            {type = unlock_recipe, recipe = silicon_oxide_IV_from_metasilicic_acid}
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    }
})

if settings.startup[setting_flow_control_new].value then
    table.insert(data_technology[tech_molybdenum_rhenium_processing].effects, {type = unlock_recipe, recipe = molybdenum_rhenium_pipe .. _straight})
    table.insert(data_technology[tech_molybdenum_rhenium_processing].effects, {type = unlock_recipe, recipe = molybdenum_rhenium_pipe .. _elbow})
    table.insert(data_technology[tech_molybdenum_rhenium_processing].effects, {type = unlock_recipe, recipe = molybdenum_rhenium_pipe .. _junction})
end