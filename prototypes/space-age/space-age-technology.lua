tech_advanced_asteroid_processing = "advanced-asteroid-processing"
tech_full_asteroid_processing = "full-asteroid-processing"
tech_full_asteroid_productivity = "full-asteroid-productivity"
tech_advanced_full_asteroid_processing = "advanced-full-asteroid-processing"
tech_advanced_full_asteroid_productivity = "advanced-full-asteroid-productivity"
data:extend
({
    {
        type = technology,
        name = tech_full_asteroid_processing,
        icon = data_technology[tech_advanced_asteroid_processing].icon,
        icon_size = 256,
        prerequisites = {},
        effects =
        {
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_1},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_2},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_3},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_4},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_5},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_6},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_7},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_8},
            {type = unlock_recipe, recipe = full_oxide_asteroid_crushing_1},
            {type = unlock_recipe, recipe = thruster_fuel_3},
            {type = unlock_recipe, recipe = thruster_oxidizer_3}
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 120
        }
    },
    {
        localised_name = {"technology-name.full-asteroid-productivity"},
        type = technology,
        name = tech_full_asteroid_productivity,
        icon = "__space-age__/graphics/technology/asteroid-productivity.png",
        icon_size = 256,
        prerequisites = {tech_full_asteroid_processing},
        effects =
        {
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_1, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_2, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_3, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_4, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_5, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_6, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_7, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_8, change = 0.1},
            {type = change_recipe_productivity, recipe = full_oxide_asteroid_crushing_1, change = 0.1},
        },
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 60
        },
        max_level = 30,
        upgrade = true
    },
    {
        type = technology,
        name = tech_advanced_full_asteroid_processing,
        icon = data_technology[tech_advanced_asteroid_processing].icon,
        icon_size = 256,
        prerequisites = {cryogenic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_1},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_2},
            --{type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_3}, -- Lignumis
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_4},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_5},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_6},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_7},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_8},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_9},
            --{type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_10}, -- Moshine
            --{type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_11}, -- Moshine
            {type = unlock_recipe, recipe = advanced_full_oxide_asteroid_crushing_1},
            {type = unlock_recipe, recipe = advanced_full_oxide_asteroid_crushing_2},
            {type = unlock_recipe, recipe = fluoroketone_liquid},
            {type = unlock_recipe, recipe = oxygen_fluoride_gas_2},
            {type = unlock_recipe, recipe = magnesium_boride},
            {type = unlock_recipe, recipe = diborane_gas},
            {type = unlock_recipe, recipe = pentaborane_liquid},
            {type = unlock_recipe, recipe = thruster_fuel_4},
            {type = unlock_recipe, recipe = thruster_oxidizer_4}
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 120
        }
    },
    {
        localised_name = {"technology-name.advanced-full-asteroid-productivity"},
        type = technology,
        name = tech_advanced_full_asteroid_productivity,
        icon = "__space-age__/graphics/technology/asteroid-productivity.png",
        icon_size = 256,
        prerequisites = {tech_advanced_full_asteroid_processing},
        effects =
        {
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_1, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_2, change = 0.1},
            --{type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_3, change = 0.1}, -- Lignumis
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_4, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_5, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_6, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_7, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_8, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_9, change = 0.1},
            --{type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_10, change = 0.1}, -- Moshine
            --{type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_11, change = 0.1}, -- Moshine
            --{type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_12, change = 0.1}, -- Aegis Bellicos
            {type = change_recipe_productivity, recipe = advanced_full_oxide_asteroid_crushing_1, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_oxide_asteroid_crushing_2, change = 0.1},
        },
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 60
        },
        max_level = 30,
        upgrade = true
    }
})

require("prototypes.space-age.vulcanus.vulcanus-technology")
require("prototypes.space-age.gleba.gleba-technology")
require("prototypes.space-age.fulgora.fulgora-technology")
require("prototypes.space-age.aquilo.aquilo-technology")