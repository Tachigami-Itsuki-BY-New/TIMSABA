local function create_synthesis_tech(parameters)
    data:extend
    ({
        {
            type = technology,
            name = parameters.name,
            icon = "__TIMSABA__/graphics/icons/technology/synthesis/" .. parameters.name .. ".png",
            icon_size = 256,
            prerequisites = parameters.prerequisites,
            effects = {{type = unlock_recipe, recipe = parameters.recipe}},
            unit =
            {
                count = 2000,
                ingredients = parameters.ingredients,
                time = 30
            }
        }
    })
end

tech_molybdenum_synthesis = "molybdenum-ore-synthesis"
create_synthesis_tech
({
    name = tech_molybdenum_synthesis,
    prerequisites = {tech_powellite_processing_2, tech_molybdenite_processing_2},
    recipe = molybdenum_ore_recipe,
    ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
})
tech_rhenium_synthesis = "rhenium-ore-synthesis"
create_synthesis_tech
({
    name = tech_rhenium_synthesis,
    prerequisites = {tech_molybdenite_processing_2, tech_rheniite_processing_2},
    recipe = rhenium_ore_recipe,
    ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
})
tech_niobium_synthesis = "niobium-ore-synthesis"
create_synthesis_tech
({
    name = tech_niobium_synthesis,
    prerequisites = {tech_samarskite_processing_2, tech_rheniite_processing_2},
    recipe = niobium_ore_recipe,
    ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
})
tech_holmium_synthesis = "holmium-ore-synthesis"
create_synthesis_tech
({
    name = tech_holmium_synthesis,
    prerequisites = {tech_samarskite_processing_2, tech_brannerite_processing_2},
    recipe = holmium_ore_recipe,
    ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }
})
if mods[paracelsin_mods] then
    tech_antimony_synthesis = "antimony-ore-synthesis"
    create_synthesis_tech
    ({
        name = tech_antimony_synthesis,
        prerequisites = {tech_antimonite_processing_2, tech_tetrahedrite_processing_2},
        recipe = antimony_ore_recipe,
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
        }
    })
    tech_germanium_synthesis = "germanium-ore-synthesis"
    create_synthesis_tech
    ({
        name = tech_germanium_synthesis,
        prerequisites = {tech_germanite_processing_2, tech_sphalerite_processing_2},
        recipe = germanium_ore_recipe,
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
        }
    })
end
if mods[secretas_frozeta_mods] then
    tech_gallium_synthesis = "gallium-ore-synthesis"
    create_synthesis_tech
    ({
        name = tech_gallium_synthesis,
        prerequisites = {tech_germanite_processing_2, tech_gallite_processing_2},
        recipe = gallium_ore_recipe,
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
        }
    })
end
if mods[castra_mods] then
    tech_vanadium_synthesis = "vanadium-ore-synthesis"
    create_synthesis_tech
    ({
        name = tech_vanadium_synthesis,
        prerequisites = {tech_rheniite_processing_4, tech_millerite_processing_4},
        recipe = vanadium_ore_recipe,
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
        }
    })
end
if mods[moshine_mods] then
    tech_neodymium_synthesis = "neodymium-ore-synthesis"
    create_synthesis_tech
    ({
        name = tech_neodymium_synthesis,
        prerequisites = {tech_monazite_processing_2, tech_aeschynite_processing_2},
        recipe = neodymium_ore_recipe,
        ingredients =
        {
            {automation_science_pack, 1},
            {logistic_science_pack, 1},
            {chemical_science_pack, 1},
            {production_science_pack, 1},
            {utility_science_pack, 1},
            {space_science_pack, 1},
            {metallurgic_science_pack, 1},
            {electromagnetic_science_pack, 1}
        }
    })
end
if mods[corrundum_mods] then
    tech_selenium_synthesis = "selenium-synthesis"
    create_synthesis_tech
    ({
        name = tech_selenium_synthesis,
        prerequisites = {tech_molybdenite_processing_4, tech_chalcopyrite_processing_4},
        recipe = selenium_recipe,
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
        }
    })
end
if mods[paracelsin_mods] then
    tech_arsenic_synthesis = "arsenic-synthesis"
    create_synthesis_tech
    ({
        name = tech_arsenic_synthesis,
        prerequisites = {tech_germanite_processing_4, tech_tetrahedrite_processing_4},
        recipe = arsenic_recipe,
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
        }
    })
end
-- cerium ore
-- promethium ore