if mods[secretas_frozeta_mods] then
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