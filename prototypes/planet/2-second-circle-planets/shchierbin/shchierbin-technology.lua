if mods[shchierbin_mods] then
    planet_discovery_shchierbin = "planet-discovery-shchierbin"
    tech_calcium_processing = "calcium-processing"

    -- VANADINITE
    local graphics_vanadinite_tech = "__TIMSABA__/graphics/icons/shchierbin/technology/vanadinite-processing.png"
    tech_vanadinite_processing_1 = "vanadinite-processing-1"
    tech_vanadinite_processing_2 = "vanadinite-processing-2"
    tech_vanadinite_processing_3 = "vanadinite-processing-3"
    tech_vanadinite_processing_4 = "vanadinite-processing-4"
    data:extend
    ({
        {
            localised_name = {"technology-name." .. tech_vanadinite_processing_1},
            localised_description = {"technology-description.angels-ore-crushing"},
            type = technology,
            name = tech_vanadinite_processing_1,
            icon = graphics_vanadinite_tech,
            icon_size = 256,
            prerequisites = {planet_discovery_shchierbin},
            effects =
            {
                {type = unlock_recipe, recipe = vanadinite_ore .. _sorting},
                {type = unlock_recipe, recipe = vanadinite_crushed},
                {type = unlock_recipe, recipe = vanadinite_crushed_sorting}
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
            localised_name = {"technology-name." .. tech_vanadinite_processing_2},
            localised_description = {"technology-description.angels-ore-floatation"},
            type = technology,
            name = tech_vanadinite_processing_2,
            icon = graphics_vanadinite_tech,
            icon_size = 256,
            prerequisites = {tech_vanadinite_processing_1, vanadium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = vanadinite_chunks},
                {type = unlock_recipe, recipe = vanadinite_chunks_sorting}
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
            localised_name = {"technology-name." .. tech_vanadinite_processing_3},
            localised_description = {"technology-description.angels-ore-leaching"},
            type = technology,
            name = tech_vanadinite_processing_3,
            icon = graphics_vanadinite_tech,
            icon_size = 256,
            prerequisites = {tech_vanadinite_processing_2, cryogenic_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = vanadinite_crystals},
                {type = unlock_recipe, recipe = vanadinite_crystals_sorting}
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
            localised_name = {"technology-name." .. tech_vanadinite_processing_4},
            localised_description = {"technology-description.angels-ore-refining"},
            type = technology,
            name = tech_vanadinite_processing_4,
            icon = graphics_vanadinite_tech,
            icon_size = 256,
            prerequisites = {tech_vanadinite_processing_3, promethium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = vanadinite_purified},
                {type = unlock_recipe, recipe = vanadinite_purified_sorting}
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

    local graphics_vanadium_smelting_tech = "__TIMSABA__/graphics/icons/shchierbin/vanadium/technology/smelting-vanadium-tech.png"
    tech_vanadium_smelting_1 = "vanadium-smelting-1"
    tech_vanadium_smelting_2 = "vanadium-smelting-2"
    tech_vanadium_smelting_3 = "vanadium-smelting-3"
    tech_titanium_aluminium_vanadium_processing = "titanium-aluminium-vanadium-processing"
    data:extend
    ({
        -- VANADIUM
        {
            localised_name = {"technology-name." .. tech_vanadium_smelting_1},
            localised_description = {"technology-description." .. tech_vanadium_smelting_1},
            type = technology,
            name = tech_vanadium_smelting_1,
            icon = graphics_vanadium_smelting_tech,
            icon_size = 256,
            prerequisites = {tech_vanadinite_processing_1, tech_calcium_processing},
            effects =
            {
                {type = unlock_recipe, recipe = vanadium_oxide_V},
                {type = unlock_recipe, recipe = vanadium_ingot},
                {type = unlock_recipe, recipe = vanadium_molten},
                {type = unlock_recipe, recipe = vanadium_plate},
                {type = unlock_recipe, recipe = vanadium_powder}
            },
            research_trigger =
            {
                type = craft_item,
                item = vanadium_ore,
                count = 256
            }
        },
        {
            localised_name = {"technology-name." .. tech_vanadium_smelting_2},
            localised_description = {"technology-description." .. tech_vanadium_smelting_2},
            type = technology,
            name = tech_vanadium_smelting_2,
            icon = graphics_vanadium_smelting_tech,
            icon_size = 256,
            prerequisites = {tech_vanadinite_processing_2, tech_vanadium_smelting_1, vanadium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = vanadium_processed},
                {type = unlock_recipe, recipe = dioxovanadium_nitrate_V},
                {type = unlock_recipe, recipe = vanadium_oxide_V_2}
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
                    {agricultural_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name." .. tech_vanadium_smelting_3},
            localised_description = {"technology-description." .. tech_vanadium_smelting_3},
            type = technology,
            name = tech_vanadium_smelting_3,
            icon = graphics_vanadium_smelting_tech,
            icon_size = 256,
            prerequisites = {tech_vanadinite_processing_3, tech_vanadium_smelting_2, cryogenic_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = vanadium_pellet},
                {type = unlock_recipe, recipe = vanadium_sulfate_IV_solution},
                {type = unlock_recipe, recipe = ammonium_metavanadate},
                {type = unlock_recipe, recipe = vanadium_oxide_V_3}
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
        -- Ti-Al-V
        {
            type = technology,
            name = tech_titanium_aluminium_vanadium_processing,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/titanium-aluminium-vanadium-plate.png",
            --icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/technology/titanium-aluminium-vanadium-processing.png",
            icon_size = 64,
            --icon_size = 256,
            prerequisites = {tech_vanadium_smelting_1, vanadium_science_pack, tech_vulcanus_metallurgic},
            effects =
            {
                {type = unlock_recipe, recipe = titanium_aluminium_vanadium_molten},
                {type = unlock_recipe, recipe = titanium_aluminium_vanadium_plate}
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
                    {agricultural_science_pack, 1}
                },
                time = 30
            }
        }
    })
end