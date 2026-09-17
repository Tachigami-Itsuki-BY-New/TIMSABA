if mods[paracelsin_mods] then
    planet_discovery_paracelsin = "planet-discovery-paracelsin"

    -- SPHALERITE
    local graphics_sphalerite_tech = "__TIMSABA__/graphics/icons/paracelsin/technology/sphalerite-processing.png"
    tech_sphalerite_processing_1 = "sphalerite-processing-1"
    tech_sphalerite_processing_2 = "sphalerite-processing-2"
    tech_sphalerite_processing_3 = "sphalerite-processing-3"
    tech_sphalerite_processing_4 = "sphalerite-processing-4"
    data:extend
    ({
        {
            localised_name = {"technology-name." .. tech_sphalerite_processing_1},
            localised_description = {"technology-description.angels-ore-crushing"},
            type = technology,
            name = tech_sphalerite_processing_1,
            icon = graphics_sphalerite_tech,
            icon_size = 256,
            prerequisites = {planet_discovery_paracelsin},
            effects =
            {
                {type = unlock_recipe, recipe = sphalerite_ore .. _sorting_stone},
                {type = unlock_recipe, recipe = sphalerite_crushed},
                {type = unlock_recipe, recipe = sphalerite_crushed_sorting}
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
            localised_name = {"technology-name." .. tech_sphalerite_processing_2},
            localised_description = {"technology-description.angels-ore-floatation"},
            type = technology,
            name = tech_sphalerite_processing_2,
            icon = graphics_sphalerite_tech,
            icon_size = 256,
            prerequisites = {tech_sphalerite_processing_1, galvanization_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = sphalerite_chunks},
                {type = unlock_recipe, recipe = sphalerite_chunks_sorting}
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
            localised_name = {"technology-name." .. tech_sphalerite_processing_3},
            localised_description = {"technology-description.angels-ore-leaching"},
            type = technology,
            name = tech_sphalerite_processing_3,
            icon = graphics_sphalerite_tech,
            icon_size = 256,
            prerequisites = {tech_sphalerite_processing_2, promethium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = sphalerite_crystals},
                {type = unlock_recipe, recipe = sphalerite_crystals_sorting}
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
            localised_name = {"technology-name." .. tech_sphalerite_processing_4},
            localised_description = {"technology-description.angels-ore-refining"},
            type = technology,
            name = tech_sphalerite_processing_4,
            icon = graphics_sphalerite_tech,
            icon_size = 256,
            prerequisites = {tech_sphalerite_processing_3},
            effects =
            {
                {type = unlock_recipe, recipe = sphalerite_purified},
                {type = unlock_recipe, recipe = sphalerite_purified_sorting}
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

    -- TETRAHEDRITE
    local graphics_tetrahedrite_tech = "__TIMSABA__/graphics/icons/paracelsin/technology/tetrahedrite-processing.png"
    tech_tetrahedrite_processing_1 = "tetrahedrite-processing-1"
    tech_tetrahedrite_processing_2 = "tetrahedrite-processing-2"
    tech_tetrahedrite_processing_3 = "tetrahedrite-processing-3"
    tech_tetrahedrite_processing_4 = "tetrahedrite-processing-4"
    data:extend
    ({
        {
            localised_name = {"technology-name." .. tech_tetrahedrite_processing_1},
            localised_description = {"technology-description.angels-ore-crushing"},
            type = technology,
            name = tech_tetrahedrite_processing_1,
            icon = graphics_tetrahedrite_tech,
            icon_size = 256,
            prerequisites = {planet_discovery_paracelsin},
            effects =
            {
                {type = unlock_recipe, recipe = tetrahedrite_ore .. _sorting_stone},
                {type = unlock_recipe, recipe = tetrahedrite_crushed},
                {type = unlock_recipe, recipe = tetrahedrite_crushed_sorting}
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
            localised_name = {"technology-name." .. tech_tetrahedrite_processing_2},
            localised_description = {"technology-description.angels-ore-floatation"},
            type = technology,
            name = tech_tetrahedrite_processing_2,
            icon = graphics_tetrahedrite_tech,
            icon_size = 256,
            prerequisites = {tech_tetrahedrite_processing_1, galvanization_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = tetrahedrite_chunks},
                {type = unlock_recipe, recipe = tetrahedrite_chunks_sorting}
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
            localised_name = {"technology-name." .. tech_tetrahedrite_processing_3},
            localised_description = {"technology-description.angels-ore-leaching"},
            type = technology,
            name = tech_tetrahedrite_processing_3,
            icon = graphics_tetrahedrite_tech,
            icon_size = 256,
            prerequisites = {tech_tetrahedrite_processing_2, promethium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = tetrahedrite_crystals},
                {type = unlock_recipe, recipe = tetrahedrite_crystals_sorting}
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
            localised_name = {"technology-name." .. tech_tetrahedrite_processing_4},
            localised_description = {"technology-description.angels-ore-refining"},
            type = technology,
            name = tech_tetrahedrite_processing_4,
            icon = graphics_tetrahedrite_tech,
            icon_size = 256,
            prerequisites = {tech_tetrahedrite_processing_3},
            effects =
            {
                {type = unlock_recipe, recipe = tetrahedrite_purified},
                {type = unlock_recipe, recipe = tetrahedrite_purified_sorting}
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
    tech_zinc_processing = "zinc-processing"
    data:extend
    ({
        {
            type = technology,
            name = tech_zinc_processing,
            icon = "__reskins-angels__/graphics/icons/smelting/plates/angels-plate-zinc.png",
            icon_size = 64,
            prerequisites = {galvanization_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = zinc_powder_paracelsin},
                {type = unlock_recipe, recipe = zinc_plate_mods}
            },
            unit =
            {
                count = 4000,
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
        }
    })
end