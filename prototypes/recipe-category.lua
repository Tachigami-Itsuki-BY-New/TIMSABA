local recipe_category = "recipe-category"
local function create_recipe_category(name)
    data:extend({{type = recipe_category, name = name}})
end
-- PRODUCTION
centrifuging_4 = "centrifuging-4"
create_recipe_category(centrifuging_4)

-- ANGELS RESOURCE REFINING
ore_sorting_6 = "ore-sorting-6"
create_recipe_category(ore_sorting_6)
powderizing_4 = "powderizing-4"
create_recipe_category(powderizing_4)
crystallizing_4 = "crystallizing-4"
create_recipe_category(crystallizing_4)

-- ANGELS METTALURGY CASTING
sintering_6 = "sintering-6"
create_recipe_category(sintering_6)

-- ANGELS WATER TREATMENT
extract_ground = "extract-ground"
create_recipe_category(extract_ground)

-- ANGELS PETROCHEM REFINING
advanced_electrolysis = "advanced-electrolysis"
create_recipe_category(advanced_electrolysis)
industrial_electrolysis = "industrial-electrolysis"
create_recipe_category(industrial_electrolysis)

-- SPACE AGE
jellynut_farming = "jellynut-farming"
create_recipe_category(jellynut_farming)
yumako_farming = "yumako-farming"
create_recipe_category(yumako_farming)

-- MODS
if mods[muluna_mods] then
    advanced_wood_processing = "advanced-wood-processing"
    create_recipe_category(advanced_wood_processing)
end