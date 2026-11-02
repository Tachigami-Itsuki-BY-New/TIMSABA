-- SPACE
table.insert(data_technology[rocket_silo].prerequisites, tech_molybdenum_processing)
table.insert(data_technology[rocket_silo].prerequisites, tech_rhenium_processing)
table.insert(data_technology[rocket_silo].prerequisites, tech_molybdenum_rhenium_processing)
table.insert(data_technology[rocket_silo].prerequisites, tech_robots_4)
if mods[rocket_silo_construction_mods] then
    data_technology[rocket_silo].effects =
    {
        {type = unlock_recipe, recipe = aluminium_lithium_molten},
        {type = unlock_recipe, recipe = aluminium_lithium_plate_2},
        {type = unlock_recipe, recipe = excavation_site},
        {type = unlock_recipe, recipe = rocket_part_nauvis},
        {type = unlock_recipe, recipe = space_platform_foundation},
        {type = unlock_recipe, recipe = space_platform_starter_pack},
        {type = unlock_recipe, recipe = cargo_landing_pad}
    }
else
    data_technology[rocket_silo].effects =
    {
        {type = unlock_recipe, recipe = aluminium_lithium_molten},
        {type = unlock_recipe, recipe = aluminium_lithium_plate_2},
        {type = unlock_recipe, recipe = rocket_silo},
        {type = unlock_recipe, recipe = rocket_part_nauvis},
        {type = unlock_recipe, recipe = space_platform_foundation},
        {type = unlock_recipe, recipe = space_platform_starter_pack},
        {type = unlock_recipe, recipe = cargo_landing_pad}
    }
end
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
    data_technology[rocket_silo].research_trigger.item = logistic_robot_5
end

table.insert(data_technology[space_science_pack].effects, {type = unlock_recipe, recipe = nauvis_slag_processing})

table.insert(data_technology[landing_pad_unloading_bay].unit.ingredients, {production_science_pack, 1})
table.insert(data_technology[landing_pad_unloading_bay].unit.ingredients, {utility_science_pack, 1})

tech_space_platform_thruster = "space-platform-thruster"
if not mods[muluna_mods] then
    table.insert(data_technology[tech_space_platform_thruster].effects, {type = unlock_recipe, recipe = hydrogen_liquid})
    table.insert(data_technology[tech_space_platform_thruster].effects, {type = unlock_recipe, recipe = oxygen_liquid})
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
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_5},
        {type = unlock_recipe, recipe = nitrogen_oxide_separation},
        {type = unlock_recipe, recipe = chlorine_oxide_separation},
        {type = unlock_recipe, recipe = sodium_hydroxide_space},
        {type = unlock_recipe, recipe = sodium_peroxide},
        {type = unlock_recipe, recipe = sodium_cyanide_solution_3},
        {type = unlock_recipe, recipe = lithium_space},
        {type = unlock_recipe, recipe = electric_blast_furnace_1},
        {type = unlock_recipe, recipe = electric_blast_furnace_2},
        {type = unlock_recipe, recipe = electric_blast_furnace_3},
        {type = unlock_recipe, recipe = electric_blast_furnace_4}
    }
end

data_technology[tech_advanced_asteroid_processing].effects =
{
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_1},
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_2},
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_3},
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_4},
    {type = unlock_recipe, recipe = advanced_carbonic_asteroid_crushing_1},
    {type = unlock_recipe, recipe = advanced_carbonic_asteroid_crushing_2},
    {type = unlock_recipe, recipe = advanced_oxide_asteroid_crushing_1},
    {type = unlock_recipe, recipe = advanced_thruster_fuel},
    {type = unlock_recipe, recipe = advanced_thruster_oxidizer},
    {type = unlock_recipe, recipe = lime_space}
}
data_technology[tech_advanced_asteroid_processing].prerequisites = {metallurgic_science_pack, agricultural_science_pack, electromagnetic_science_pack}
data_technology[tech_advanced_asteroid_processing].unit.ingredients =
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

if mods[arig_mods] then
    table.insert(data_technology[tech_full_asteroid_processing].prerequisites, "planetaris-compression-science")
end

if mods[hyarion_mods] then
    table.insert(data_technology[tech_full_asteroid_processing].prerequisites, refraction_science_pack)
end

if mods[tellus_mods] then
    table.insert(data_technology[tech_full_asteroid_processing].prerequisites, pathological_science_pack)
end

if mods[castra_mods] then
    table.insert(data_technology[tech_full_asteroid_processing].prerequisites, battlefield_science_pack)
end

if mods[shchierbin_mods] then
    table.insert(data_technology[tech_full_asteroid_processing].prerequisites, vanadium_science_pack)
end

if mods[muria_mods] then
    table.insert(data_technology[tech_full_asteroid_processing].prerequisites, acidworking_science_pack)
end

if mods[apia_carnova_mods] then
    table.insert(data_technology[tech_full_asteroid_processing].prerequisites, apicultural_science_pack)
end

if not mods[moshine_mods] and not mods[arig_mods] and not mods[hyarion_mods] and not mods[tellus_mods] and not mods[castra_mods] and not mods[shchierbin_mods] and not mods[muria_mods] and not mods[apia_carnova_mods] then
    table.insert(data_technology[tech_full_asteroid_processing].prerequisites, tech_advanced_asteroid_processing)
end

if mods[paracelsin_mods] then
    table.insert(data_technology[tech_advanced_full_asteroid_processing].prerequisites, galvanization_science_pack)
end

if mods[corrundum_mods] then
    table.insert(data_technology[tech_advanced_full_asteroid_processing].prerequisites, electrochemical_science_pack)
end

if mods[secretas_frozeta_mods] then
    table.insert(data_technology[tech_advanced_full_asteroid_processing].prerequisites, golden_science_pack)
end

if mods[maraxsis_mods] then
    table.insert(data_technology[tech_advanced_full_asteroid_processing].prerequisites, hydraulic_science_pack)
end

tech_asteroid_productivity = "asteroid-productivity"
data_technology[tech_asteroid_productivity].unit.ingredients =
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
if mods[asteroid_belt_mods] then
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