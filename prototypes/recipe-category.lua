local recipe_category = "recipe-category"
local function create_recipe_category(name)
    data:extend({{type = recipe_category, name = name}})
end
centrifuging_4 = "centrifuging-4"
ore_sorting_6 = "ore-sorting-6"
powderizing_4 = "powderizing-4"
crystallizing_4 = "crystallizing-4"
sintering_6 = "sintering-6"
extract_ground = "extract-ground"
create_recipe_category(centrifuging_4)
create_recipe_category(ore_sorting_6)
create_recipe_category(powderizing_4)
create_recipe_category(crystallizing_4)
create_recipe_category(sintering_6)
create_recipe_category(extract_ground)

if mods[muluna_mods] and not mods[lignumis_mods] then
    lumber_mill_recipe_category = "lumber-mill-recipe-category"
    create_recipe_category(lumber_mill_recipe_category)
end