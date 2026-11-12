local function create_tech(name, count)
    data:extend
    ({
        {
            localised_description = {"technology-description.angels-advanced-ore-refining"},
            type = technology,
            name = name,
            icon = "__TIMSABA__/graphics/icons/technology/synthesis/" .. name .. ".png",
            icon_size = 256,
            prerequisites = {},
            effects = {},
            unit =
            {
                count = count,
                ingredients =
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
                },
                time = 30
            }
        }
    })
end

create_tech(tech_advanced_ore_refining_7, 450)
data_technology[tech_advanced_ore_refining_7].prerequisites =
{
    tech_advanced_ore_refining_6,
    tech_powellite_processing_3, tech_molybdenite_processing_3,
    tech_wolframite_processing_2, tech_samarskite_processing_2,
    tech_brannerite_processing_2, tech_rheniite_processing_2
}
if mods[moshine_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_7].prerequisites, tech_monazite_processing_1)
    table.insert(data_technology[tech_advanced_ore_refining_7].prerequisites, tech_aeschynite_processing_1)
    table.insert(data_technology[tech_advanced_ore_refining_7].effects, {type = unlock_recipe, recipe = neodymium_crushed_recipe})
end
if mods[shchierbin_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_7].prerequisites, vanadium_science_pack)
    --table.insert(data_technology[tech_advanced_ore_refining_7].effects, {type = unlock_recipe, recipe = vanadium_crushed_recipe})
end
table.insert(data_technology[tech_advanced_ore_refining_7].effects, {type = unlock_recipe, recipe = calcium_chunks_recipe})
table.insert(data_technology[tech_advanced_ore_refining_7].effects, {type = unlock_recipe, recipe = rhenium_chunks_recipe})
table.insert(data_technology[tech_advanced_ore_refining_7].effects, {type = unlock_recipe, recipe = niobium_chunks_recipe})
table.insert(data_technology[tech_advanced_ore_refining_7].effects, {type = unlock_recipe, recipe = holmium_chunks_recipe})
table.insert(data_technology[tech_advanced_ore_refining_7].effects, {type = unlock_recipe, recipe = molybdenum_crystals_recipe})
if mods[lignumis_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_7].prerequisites, tech_wodginite_processing_3)
    --table.insert(data_technology[tech_advanced_ore_refining_7].effects, {type = unlock_recipe, recipe = tantalum_crystals_recipe})
end

create_tech(tech_advanced_ore_refining_8, 600)
data_technology[tech_advanced_ore_refining_8].prerequisites =
{
    tech_advanced_ore_refining_7,
    tech_powellite_processing_4, tech_molybdenite_processing_4,
    tech_wolframite_processing_3, tech_samarskite_processing_3,
    tech_brannerite_processing_3, tech_rheniite_processing_3
}
table.insert(data_technology[tech_advanced_ore_refining_8].prerequisites, cryogenic_science_pack)
if mods[paracelsin_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_8].prerequisites, galvanization_science_pack)
    table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = antimony_crushed_recipe})
    table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = germanium_crushed_recipe})
end
if mods[corrundum_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_8].prerequisites, electrochemical_science_pack)
    --table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = arsenic_crushed_recipe})
end
if mods[secretas_frozeta_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_8].prerequisites, golden_science_pack)
    table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = gallium_crushed_recipe})
end
if mods[moshine_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_8].prerequisites, tech_monazite_processing_2)
    table.insert(data_technology[tech_advanced_ore_refining_8].prerequisites, tech_aeschynite_processing_2)
    table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = neodymium_chunks_recipe})
end
if mods[shchierbin_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_8].prerequisites, tech_vanadinite_processing_2)
    --table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = vanadium_chunks_recipe})
end
table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = calcium_crystals_recipe})
table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = rhenium_crystals_recipe})
table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = niobium_crystals_recipe})
table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = holmium_crystals_recipe})
table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = molybdenum_purified_recipe})
if mods[lignumis_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_8].prerequisites, tech_wodginite_processing_4)
    --table.insert(data_technology[tech_advanced_ore_refining_8].effects, {type = unlock_recipe, recipe = tantalum_purified_recipe})
end
table.insert(data_technology[tech_advanced_ore_refining_8].unit.ingredients, {cryogenic_science_pack, 1})

create_tech(tech_advanced_ore_refining_9, 750)
data_technology[tech_advanced_ore_refining_9].prerequisites =
{
    tech_advanced_ore_refining_8,
    tech_wolframite_processing_4, tech_samarskite_processing_4,
    tech_brannerite_processing_4, tech_rheniite_processing_4
}
table.insert(data_technology[tech_advanced_ore_refining_9].prerequisites, tech_antimonite_processing_2)
table.insert(data_technology[tech_advanced_ore_refining_9].prerequisites, tech_germanite_processing_2)
if mods[paracelsin_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_9].prerequisites, tech_tetrahedrite_processing_2)
    table.insert(data_technology[tech_advanced_ore_refining_9].effects, {type = unlock_recipe, recipe = antimony_chunks_recipe})
    table.insert(data_technology[tech_advanced_ore_refining_9].prerequisites, tech_sphalerite_processing_2)
    table.insert(data_technology[tech_advanced_ore_refining_9].effects, {type = unlock_recipe, recipe = germanium_chunks_recipe})
end
if mods[corrundum_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_9].prerequisites, tech_sperrylite_processing_2)
    --table.insert(data_technology[tech_advanced_ore_refining_9].effects, {type = unlock_recipe, recipe = arsenic_chunks_recipe})
end
if mods[secretas_frozeta_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_9].prerequisites, tech_gallite_processing_2)
    table.insert(data_technology[tech_advanced_ore_refining_9].effects, {type = unlock_recipe, recipe = gallium_chunks_recipe})
end
if mods[moshine_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_9].prerequisites, tech_monazite_processing_3)
    table.insert(data_technology[tech_advanced_ore_refining_9].prerequisites, tech_aeschynite_processing_3)
    table.insert(data_technology[tech_advanced_ore_refining_9].effects, {type = unlock_recipe, recipe = neodymium_crystals_recipe})
end
if mods[shchierbin_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_9].prerequisites, tech_vanadinite_processing_3)
    --table.insert(data_technology[tech_advanced_ore_refining_9].effects, {type = unlock_recipe, recipe = vanadium_crystals_recipe})
end
table.insert(data_technology[tech_advanced_ore_refining_9].effects, {type = unlock_recipe, recipe = calcium_purified_recipe})
table.insert(data_technology[tech_advanced_ore_refining_9].effects, {type = unlock_recipe, recipe = rhenium_purified_recipe})
table.insert(data_technology[tech_advanced_ore_refining_9].effects, {type = unlock_recipe, recipe = niobium_purified_recipe})
table.insert(data_technology[tech_advanced_ore_refining_9].effects, {type = unlock_recipe, recipe = holmium_purified_recipe})
table.insert(data_technology[tech_advanced_ore_refining_9].unit.ingredients, {cryogenic_science_pack, 1})

create_tech(tech_advanced_ore_refining_10, 900)
data_technology[tech_advanced_ore_refining_10].prerequisites = {tech_advanced_ore_refining_9}
table.insert(data_technology[tech_advanced_ore_refining_10].prerequisites, tech_antimonite_processing_3)
table.insert(data_technology[tech_advanced_ore_refining_10].prerequisites, tech_germanite_processing_3)
if mods[paracelsin_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_10].prerequisites, tech_tetrahedrite_processing_3)
    table.insert(data_technology[tech_advanced_ore_refining_10].effects, {type = unlock_recipe, recipe = antimony_crystals_recipe})
    table.insert(data_technology[tech_advanced_ore_refining_10].prerequisites, tech_sphalerite_processing_3)
    table.insert(data_technology[tech_advanced_ore_refining_10].effects, {type = unlock_recipe, recipe = germanium_crystals_recipe})
end
if mods[corrundum_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_10].prerequisites, tech_sperrylite_processing_3)
    --table.insert(data_technology[tech_advanced_ore_refining_10].effects, {type = unlock_recipe, recipe = arsenic_crystals_recipe})
end
if mods[secretas_frozeta_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_10].prerequisites, tech_gallite_processing_3)
    table.insert(data_technology[tech_advanced_ore_refining_10].effects, {type = unlock_recipe, recipe = gallium_crystals_recipe})
end
if mods[moshine_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_10].prerequisites, tech_monazite_processing_4)
    table.insert(data_technology[tech_advanced_ore_refining_10].prerequisites, tech_aeschynite_processing_4)
    table.insert(data_technology[tech_advanced_ore_refining_10].effects, {type = unlock_recipe, recipe = neodymium_purified_recipe})
end
if mods[shchierbin_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_10].prerequisites, tech_vanadinite_processing_4)
    --table.insert(data_technology[tech_advanced_ore_refining_10].effects, {type = unlock_recipe, recipe = vanadium_purified_recipe})
end
table.insert(data_technology[tech_advanced_ore_refining_10].unit.ingredients, {cryogenic_science_pack, 1})

create_tech(tech_advanced_ore_refining_11, 1050)
data_technology[tech_advanced_ore_refining_11].prerequisites = {tech_advanced_ore_refining_10}
table.insert(data_technology[tech_advanced_ore_refining_11].prerequisites, tech_antimonite_processing_4)
table.insert(data_technology[tech_advanced_ore_refining_11].prerequisites, tech_germanite_processing_4)
if mods[paracelsin_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_11].prerequisites, tech_tetrahedrite_processing_4)
    table.insert(data_technology[tech_advanced_ore_refining_11].effects, {type = unlock_recipe, recipe = antimony_purified_recipe})
    table.insert(data_technology[tech_advanced_ore_refining_11].prerequisites, tech_sphalerite_processing_4)
    table.insert(data_technology[tech_advanced_ore_refining_11].effects, {type = unlock_recipe, recipe = germanium_purified_recipe})
end
if mods[corrundum_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_11].prerequisites, tech_sperrylite_processing_4)
    --table.insert(data_technology[tech_advanced_ore_refining_11].effects, {type = unlock_recipe, recipe = arsenic_purified_recipe})
end
if mods[secretas_frozeta_mods] then
    table.insert(data_technology[tech_advanced_ore_refining_11].prerequisites, tech_gallite_processing_4)
    table.insert(data_technology[tech_advanced_ore_refining_11].effects, {type = unlock_recipe, recipe = gallium_purified_recipe})
end
table.insert(data_technology[tech_advanced_ore_refining_11].unit.ingredients, {cryogenic_science_pack, 1})