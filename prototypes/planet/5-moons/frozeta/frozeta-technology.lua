if mods[secretas_frozeta_mods] then
    -- GALLITE
    local graphics_gallite_tech = "__TIMSABA__/graphics/icons/frozeta/technology/gallite-processing.png"
    tech_gallite_processing_1 = "gallite-processing-1"
    tech_gallite_processing_2 = "gallite-processing-2"
    tech_gallite_processing_3 = "gallite-processing-3"
    tech_gallite_processing_4 = "gallite-processing-4"
    data:extend
    ({
        {
            localised_name = {"technology-name." .. tech_gallite_processing_1},
            localised_description = {"technology-description.angels-ore-crushing"},
            type = technology,
            name = tech_gallite_processing_1,
            icon = tech_error_png,--graphics_gallite_tech,
            icon_size = 256,
            prerequisites = {},
            effects =
            {
                {type = unlock_recipe, recipe = gallite_ore .. _sorting_stone},
                {type = unlock_recipe, recipe = gallite_crushed},
                {type = unlock_recipe, recipe = gallite_crushed_sorting}
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
            localised_name = {"technology-name." .. tech_gallite_processing_2},
            localised_description = {"technology-description.angels-ore-floatation"},
            type = technology,
            name = tech_gallite_processing_2,
            icon = tech_error_png,--graphics_gallite_tech,
            icon_size = 256,
            prerequisites = {tech_gallite_processing_1, cryogenic_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = gallite_chunks},
                {type = unlock_recipe, recipe = gallite_chunks_sorting}
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
            localised_name = {"technology-name." .. tech_gallite_processing_3},
            localised_description = {"technology-description.angels-ore-leaching"},
            type = technology,
            name = tech_gallite_processing_3,
            icon = tech_error_png,--graphics_gallite_tech,
            icon_size = 256,
            prerequisites = {tech_gallite_processing_2, promethium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = gallite_crystals},
                {type = unlock_recipe, recipe = gallite_crystals_sorting}
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
            localised_name = {"technology-name." .. tech_gallite_processing_4},
            localised_description = {"technology-description.angels-ore-refining"},
            type = technology,
            name = tech_gallite_processing_4,
            icon = tech_error_png,--graphics_gallite_tech,
            icon_size = 256,
            prerequisites = {tech_gallite_processing_3},
            effects =
            {
                {type = unlock_recipe, recipe = gallite_purified},
                {type = unlock_recipe, recipe = gallite_purified_sorting}
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

    local tech_gold_processing = "gold-processing"
    data:extend
    ({
        {
            type = technology,
            name = tech_gold_processing,
            icon = "__reskins-library__/graphics/icons/shared/items/gold-plate.png",
            icon_size = 64,
            prerequisites = {golden_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = gold_powder_frozeta},
                {type = unlock_recipe, recipe = gold_plate_mods}
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