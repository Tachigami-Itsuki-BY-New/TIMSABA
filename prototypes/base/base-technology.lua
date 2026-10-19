if mods[bobwarfare] then
    data:extend
    ({
        -- SNIPER TURRET T4
        {
            localised_name = {"technology-name.bob-sniper-turrets-4"},
            type = technology,
            name = tech_sniper_turret_4,
            icon = "__base__/graphics/technology/gun-turret.png",
            icon_size = 256,
            prerequisites = {tech_sniper_turret_3, tech_military_4, tech_copper_tungsten_processing, tech_nitinol_processing},
            effects = {{type = unlock_recipe, recipe = sniper_turret_4},
            },
            unit =
            {
                count = 100,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {military_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1}
                },
                time = 30
            }
        },
        -- ARTILLERY TURRET T4
        {
            localised_name = {"entity-name." .. artillery_turret_4},
            type = technology,
            name = artillery_turret_4,
            icon = "__base__/graphics/technology/artillery.png",
            icon_size = 256,
            prerequisites = {artillery_turret_3, cryogenic_science_pack},
            effects = {{type = unlock_recipe, recipe = artillery_turret_4},
            },
            unit =
            {
                count = 16000,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {military_science_pack, 1},
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