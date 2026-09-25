-- SPACE
table.insert(data_technology[rocket_silo].prerequisites, tech_molybdenum_processing)
table.insert(data_technology[rocket_silo].prerequisites, tech_rhenium_processing)
table.insert(data_technology[rocket_silo].prerequisites, tech_molybdenum_rhenium_processing)
table.insert(data_technology[rocket_silo].prerequisites, tech_robots_4)
if not mods[muluna_mods] then
    data_technology[rocket_silo].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1}
    }
else
    data_technology[rocket_silo].research_trigger.item = "bob-logistic-robot-5"
end

table.insert(data_technology[space_science_pack].effects, {type = unlock_recipe, recipe = slag_processing_5})

tech_space_platform_thruster = "space-platform-thruster"
if not mods[muluna_mods] then
    data_technology[tech_space_platform_thruster].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
end

metallic_asteroid_crushing_1 = "metallic-asteroid-crushing"
carbonic_asteroid_crushing_1 = "carbonic-asteroid-crushing"
oxide_asteroid_crushing_1 = "oxide-asteroid-crushing"
hydrogen_chloride_separation = "angels-gas-hydrogen-chloride-separation"
if not mods[muluna_mods] then
    data_technology[space_platform].effects =
    {
        {type = unlock_recipe, recipe = cargo_bay},
        {type = unlock_recipe, recipe = asteroid_collector},
        {type = unlock_recipe, recipe = crusher},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_1},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_2},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_3},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_4},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_5},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_6},
        {type = unlock_recipe, recipe = carbonic_asteroid_crushing_1},
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_1},
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_2},
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_3},
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_4},
        {type = unlock_recipe, recipe = nitrogen_oxide_separation},
        {type = unlock_recipe, recipe = chlorine_oxide_separation},
        {type = unlock_recipe, recipe = sodium_hydroxide_space},
        {type = unlock_recipe, recipe = hydrogen_chloride_separation},
        {type = unlock_recipe, recipe = nitrogen_monoxide_space},
        {type = unlock_recipe, recipe = hydrazine_space},
        {type = unlock_recipe, recipe = dinitrogen_tetroxide_space}
    }
end

advanced_metallic_asteroid_crushing_1 = "advanced-metallic-asteroid-crushing"
advanced_carbonic_asteroid_crushing_1 = "advanced-carbonic-asteroid-crushing"
advanced_oxide_asteroid_crushing_1 = "advanced-oxide-asteroid-crushing"
data_technology[tech_advanced_asteroid_processing].effects =
{
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_1},
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_2},
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_3},
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_4},
    {type = unlock_recipe, recipe = advanced_carbonic_asteroid_crushing_1},
    {type = unlock_recipe, recipe = advanced_carbonic_asteroid_crushing_2},
    {type = unlock_recipe, recipe = advanced_oxide_asteroid_crushing_1},
    {type = unlock_recipe, recipe = advanced_oxide_asteroid_crushing_2},
    {type = unlock_recipe, recipe = lime_space},
    --{type = unlock_recipe, recipe = sodium_hydroxide_space}
}
data_technology[tech_advanced_asteroid_processing].prerequisites = {electromagnetic_science_pack, agricultural_science_pack, metallurgic_science_pack}
data_technology[tech_advanced_asteroid_processing].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {electromagnetic_science_pack, 1},
    {agricultural_science_pack, 1},
    {metallurgic_science_pack, 1}
}

tech_asteroid_productivity = "asteroid-productivity"
data_technology[tech_asteroid_productivity].effects =
{
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_2, change = 0.1},
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_3, change = 0.1},
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_4, change = 0.1},
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_5, change = 0.1},
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_6, change = 0.1},
    {type = change_recipe_productivity, recipe = carbonic_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = oxide_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = oxide_asteroid_crushing_2, change = 0.1},
    {type = change_recipe_productivity, recipe = oxide_asteroid_crushing_3, change = 0.1},
    {type = change_recipe_productivity, recipe = oxide_asteroid_crushing_4, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_2, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_3, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_4, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_carbonic_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_carbonic_asteroid_crushing_2, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_oxide_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_oxide_asteroid_crushing_2, change = 0.1}
}
data_technology[tech_asteroid_productivity].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {electromagnetic_science_pack, 1},
    {agricultural_science_pack, 1},
    {metallurgic_science_pack, 1}
}

if mods["CargoBayLimitResearch"] then
    data_technology["cargo-bay-limit-1"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
    data_technology["cargo-bay-limit-2"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
    data_technology["cargo-bay-limit-3"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
end

data_technology["asteroid-reprocessing"].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {metallurgic_science_pack, 1}
}

-- QUALITY
if mods[quality_mods] then
    tech_epic_quality = "epic-quality"
    if settings.startup[setting_early_quality].value then
        data_technology[tech_epic_quality].prerequisites = {tech_recycling}
        data_technology[tech_epic_quality].unit.ingredients =
        {
            {automation_science_pack, 1},
            {logistic_science_pack, 1},
            {chemical_science_pack, 1},
            {production_science_pack, 1},
            {utility_science_pack, 1},
            {space_science_pack, 1}
        }
    else
        if data_module[quality_module_6] then
            data_technology[tech_epic_quality].prerequisites = {quality_module_6}
        else
            data_technology[tech_epic_quality].prerequisites = {quality_module_3}
        end
        data_technology[tech_epic_quality].unit.ingredients =
        {
            {automation_science_pack, 1},
            {logistic_science_pack, 1},
            {chemical_science_pack, 1},
            {production_science_pack, 1},
            {utility_science_pack, 1},
            {space_science_pack, 1},
            {electromagnetic_science_pack, 1}
        }
    end

    tech_legendary_quality = "legendary-quality"
    if settings.startup[setting_early_quality].value then
        data_technology[tech_legendary_quality].prerequisites = {metallurgic_science_pack, agricultural_science_pack, electromagnetic_science_pack}
        data_technology[tech_legendary_quality].unit.ingredients =
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
        }
    else
        if data_module[quality_module_7] then
            data_technology[tech_legendary_quality].prerequisites = {quality_module_7}
        end
        data_technology[tech_legendary_quality].unit.ingredients =
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
        }
    end
end

-- MODS
if mods["AsteroidBelt"] then
    local space_discovery_asteroid_belt = "space-discovery-asteroid-belt"
    table.insert(data_technology[space_discovery_asteroid_belt].prerequisites, tech_advanced_ore_refining_6)
    table.insert(data_technology[space_discovery_asteroid_belt].prerequisites, tech_water_treatment_6)
    data_technology[space_discovery_asteroid_belt].unit.ingredients =
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
    }
end