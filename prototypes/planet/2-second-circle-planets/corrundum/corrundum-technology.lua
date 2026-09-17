if mods[corrundum_mods] then
    planet_discovery_corrundum = "planet-discovery-corrundum"

    local graphics_chalcopyrite_tech = "__TIMSABA__/graphics/icons/corrundum/technology/chalcopyrite-processing.png"
    tech_chalcopyrite_processing_1 = "chalcopyrite-processing-1"
    local tech_chalcopyrite_processing_2 = "chalcopyrite-processing-2"
    tech_chalcopyrite_processing_3 = "chalcopyrite-processing-3"
    tech_chalcopyrite_processing_4 = "chalcopyrite-processing-4"
    data:extend
    ({
        {
            localised_name = {"technology-name." .. tech_chalcopyrite_processing_1},
            localised_description = {"technology-description.angels-ore-crushing"},
            type = technology,
            name = tech_chalcopyrite_processing_1,
            icon = graphics_chalcopyrite_tech,
            icon_size = 256,
            prerequisites = {planet_discovery_corrundum},
            effects =
            {
                {type = unlock_recipe, recipe = chalcopyrite_ore .. _sorting_stone},
                {type = unlock_recipe, recipe = chalcopyrite_crushed},
                {type = unlock_recipe, recipe = chalcopyrite_crushed_sorting}
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
            localised_name = {"technology-name." .. tech_chalcopyrite_processing_2},
            localised_description = {"technology-description.angels-ore-floatation"},
            type = technology,
            name = tech_chalcopyrite_processing_2,
            icon = graphics_chalcopyrite_tech,
            icon_size = 256,
            prerequisites = {tech_chalcopyrite_processing_1, electrochemical_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = chalcopyrite_chunks},
                {type = unlock_recipe, recipe = chalcopyrite_chunks_sorting}
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
            localised_name = {"technology-name." .. tech_chalcopyrite_processing_3},
            localised_description = {"technology-description.angels-ore-leaching"},
            type = technology,
            name = tech_chalcopyrite_processing_3,
            icon = graphics_chalcopyrite_tech,
            icon_size = 256,
            prerequisites = {tech_chalcopyrite_processing_2, cryogenic_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = chalcopyrite_crystals},
                {type = unlock_recipe, recipe = chalcopyrite_crystals_sorting}
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
            localised_name = {"technology-name." .. tech_chalcopyrite_processing_4},
            localised_description = {"technology-description.angels-ore-refining"},
            type = technology,
            name = tech_chalcopyrite_processing_4,
            icon = graphics_chalcopyrite_tech,
            icon_size = 256,
            prerequisites = {tech_chalcopyrite_processing_3, promethium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = chalcopyrite_purified},
                {type = unlock_recipe, recipe = chalcopyrite_purified_sorting}
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
end