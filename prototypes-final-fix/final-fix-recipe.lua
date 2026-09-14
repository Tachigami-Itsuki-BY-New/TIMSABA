for _, recipe in pairs(data_recipe) do
    recipe.always_show_made_in = true
end

local function get_item_subgroup(name)
    local types = {"item", "fluid", "tool", "ammo", "armor", "gun", "capsule", "module", "item-with-entity-data"}

    for _, type_name in ipairs(types) do
        if data.raw[type_name] and data.raw[type_name][name] then
        return data.raw[type_name][name].subgroup
        end
    end
    return nil
end

for recipe_name, recipe in pairs(data_recipe) do
    local subgroup = get_item_subgroup(recipe_name)

    if subgroup then
        recipe.subgroup = subgroup
    end
end

for recipe_name, recipe in pairs(data_recipe) do
    if recipe.category or recipe.additional_categories then
        if not recipe.categories then
            recipe.categories = {}
        end

        local function add_to_categories(new_category)
            local exists = false
            for _, existing_category in ipairs(recipe.categories) do
                if existing_category == new_category then
                    exists = true
                    break
                end
            end
            if not exists then
                table.insert(recipe.categories, new_category)
            end
        end

        if recipe.category then
            add_to_categories(recipe.category)
            recipe.category = nil
        end

        if recipe.additional_categories then
            for _, add_category in ipairs(recipe.additional_categories) do
                if type(add_category) == "string" then
                    add_to_categories(add_category)
                end
            end
            recipe.additional_categories = nil
        end
    end
end