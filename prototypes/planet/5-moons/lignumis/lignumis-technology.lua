if mods[lignumis_mods] then
    -- WODGINITE
    local graphics_wodginite_tech = "__TIMSABA__/graphics/icons/lignumis/technology/wodginite-processing.png"
    tech_wodginite_processing_1 = "wodginite-processing-1"
    tech_wodginite_processing_2 = "wodginite-processing-2"
    tech_wodginite_processing_3 = "wodginite-processing-3"
    tech_wodginite_processing_4 = "wodginite-processing-4"
    data:extend
    ({
        {
            localised_name = {"technology-name." .. tech_wodginite_processing_1},
            localised_description = {"technology-description.angels-ore-crushing"},
            type = technology,
            name = tech_wodginite_processing_1,
            icon = graphics_wodginite_tech,
            icon_size = 256,
            prerequisites = {space_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = wodginite_ore .. _sorting},
                {type = unlock_recipe, recipe = wodginite_crushed},
                {type = unlock_recipe, recipe = wodginite_crushed_sorting}
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
            localised_name = {"technology-name." .. tech_wodginite_processing_2},
            localised_description = {"technology-description.angels-ore-floatation"},
            type = technology,
            name = tech_wodginite_processing_2,
            icon = graphics_wodginite_tech,
            icon_size = 256,
            prerequisites = {tech_wodginite_processing_1, metallurgic_science_pack, agricultural_science_pack, electromagnetic_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = wodginite_chunks},
                {type = unlock_recipe, recipe = wodginite_chunks_sorting}
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
            localised_name = {"technology-name." .. tech_wodginite_processing_3},
            localised_description = {"technology-description.angels-ore-leaching"},
            type = technology,
            name = tech_wodginite_processing_3,
            icon = graphics_wodginite_tech,
            icon_size = 256,
            prerequisites = {tech_wodginite_processing_2, cryogenic_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = wodginite_crystals},
                {type = unlock_recipe, recipe = wodginite_crystals_sorting}
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
            localised_name = {"technology-name." .. tech_wodginite_processing_4},
            localised_description = {"technology-description.angels-ore-refining"},
            type = technology,
            name = tech_wodginite_processing_4,
            icon = graphics_wodginite_tech,
            icon_size = 256,
            prerequisites = {tech_wodginite_processing_3, promethium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = wodginite_purified},
                {type = unlock_recipe, recipe = wodginite_purified_sorting}
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

    -- TANTALUM
    local graphics_tantalum_smelting_tech = "__TIMSABA__/graphics/icons/lignumis/tantalum/technology/casting-tantalum-technology.png"
    tech_tantalum_smelting_1 = "tantalum-smelting-1"
    tech_tantalum_smelting_2 = "tantalum-smelting-2"
    tech_tantalum_smelting_3 = "tantalum-smelting-3"
    tech_tantalum_tungsten_processing = "tantalum-tungsten-processing"
    tech_tantalum_molybdenum_rhenium_processing = "tantalum-molybdenum-rhenium-processing"
    tech_tantalum_niobium_processing = "tantalum-niobium-processing"
    data:extend
    ({
        -- VANADIUM
        {
            localised_name = {"technology-name." .. tech_tantalum_smelting_1},
            localised_description = {"technology-description." .. tech_tantalum_smelting_1},
            type = technology,
            name = tech_tantalum_smelting_1,
            icon = graphics_tantalum_smelting_tech,
            icon_size = 256,
            prerequisites = {tech_wodginite_processing_1},
            effects =
            {
                {type = unlock_recipe, recipe = hexafluorotantalic_acid_solution},
                {type = unlock_recipe, recipe = tantalum_hydroxide_V},
                {type = unlock_recipe, recipe = tantalum_oxide_V},
                {type = unlock_recipe, recipe = tantalum_powder}
            },
            research_trigger =
            {
                type = craft_item,
                item = tantalum_ore,
                count = 256
            }
        },
        {
            localised_name = {"technology-name." .. tech_tantalum_smelting_2},
            localised_description = {"technology-description." .. tech_tantalum_smelting_2},
            type = technology,
            name = tech_tantalum_smelting_2,
            icon = graphics_tantalum_smelting_tech,
            icon_size = 256,
            prerequisites = {tech_wodginite_processing_2, tech_tantalum_smelting_1},
            effects =
            {
                {type = unlock_recipe, recipe = tantalum_processed},
                {type = unlock_recipe, recipe = potassium_heptafluorotantalate},
                {type = unlock_recipe, recipe = tantalum_powder_2},
                {type = unlock_recipe, recipe = potassium_sulfate_solution},
                {type = unlock_recipe, recipe = sodium_sulfate_solution_2}
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
            localised_name = {"technology-name." .. tech_tantalum_smelting_3},
            localised_description = {"technology-description." .. tech_tantalum_smelting_3},
            type = technology,
            name = tech_tantalum_smelting_3,
            icon = graphics_tantalum_smelting_tech,
            icon_size = 256,
            prerequisites = {tech_wodginite_processing_3, tech_tantalum_smelting_2},
            effects =
            {
                {type = unlock_recipe, recipe = tantalum_pellet},
                {type = unlock_recipe, recipe = tantalum_chloride_V_gas},
                {type = unlock_recipe, recipe = sodium_tantalate},
                {type = unlock_recipe, recipe = tantalum_powder_3},
                {type = unlock_recipe, recipe = calcium_hydride}
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
        -- Ta-W
        {
            type = technology,
            name = tech_tantalum_tungsten_processing,
            icon = "__TIMSABA__/graphics/icons/lignumis/tantalum/tantalum-tungsten-plate.png",
            --icon = "__TIMSABA__/graphics/icons/lignumis/tantalum/technology/tantalum-tungsten-processing.png",
            icon_size = 64,
            --icon_size = 256,
            prerequisites = {tech_tantalum_smelting_1, tech_tungsten_smelting_3},
            effects =
            {
                {type = unlock_recipe, recipe = tantalum_tungsten_powder_mixture},
                {type = unlock_recipe, recipe = tantalum_tungsten_plate},
                {type = unlock_recipe, recipe = tantalum_tungsten_gear_wheel}
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
        -- Ta-Mo-Re
        {
            type = technology,
            name = tech_tantalum_molybdenum_rhenium_processing,
            icon = "__TIMSABA__/graphics/icons/lignumis/tantalum/tantalum-molybdenum-rhenium-plate.png",
            --icon = "__TIMSABA__/graphics/icons/lignumis/tantalum/technology/tantalum-molybdenum-rhenium-processing.png",
            icon_size = 64,
            --icon_size = 256,
            prerequisites = {tech_tantalum_smelting_1, tech_molybdenum_smelting_2, tech_rhenium_smelting_2},
            effects =
            {
                {type = unlock_recipe, recipe = tantalum_molybdenum_rhenium_powder_mixture},
                {type = unlock_recipe, recipe = tantalum_molybdenum_rhenium_plate}
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
        -- Ta-Nb
        {
            type = technology,
            name = tech_tantalum_niobium_processing,
            icon = "__TIMSABA__/graphics/icons/lignumis/tantalum/tantalum-niobium-plate.png",
            --icon = "__TIMSABA__/graphics/icons/lignumis/tantalum/technology/tantalum-niobium-processing.png",
            icon_size = 64,
            --icon_size = 256,
            prerequisites = {tech_tantalum_smelting_1, tech_niobium_smelting_1},
            effects =
            {
                {type = unlock_recipe, recipe = tantalum_niobium_powder_mixture},
                {type = unlock_recipe, recipe = tantalum_niobium_plate}
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

    table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_tantalum_tungsten_processing)
    table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_tantalum_molybdenum_rhenium_processing)
    table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_tantalum_niobium_processing)
end