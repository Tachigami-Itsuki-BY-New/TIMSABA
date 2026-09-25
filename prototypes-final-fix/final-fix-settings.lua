if settings.startup[setting_no_spoilage].value then
    local types_to_clean = {item, ammo, "gun", capsule, tool, repair_tool, "item-with-entity-data", "selection-tool"}
    for _, type_name in pairs(types_to_clean) do
        if data.raw[type_name] then
            for _, proto in pairs(data.raw[type_name]) do
                if proto.spoil_ticks then
                    proto.spoil_ticks = nil
                    proto.spoil_result = nil
                end
            end
        end
    end

    local function spoil_recipe(parameters)
        TIMSABA.functions.create_recipes
        ({
            {
                name = parameters.ore,
                categories = {"angels-bio-void"},
                subgroup = parameters.subgroup,
                icons = TWO_I(saphirite_bacteria, parameters.ore),
                order = parameters.order,
                enabled = true,
                energy_required = 1,
                ingredients = {{type = item, name = parameters.bacteria, amount = 1}},
                results = {{type = item, name = parameters.ore, amount = 1}},
                main_product = parameters.ore
            }
        })
    end
    spoil_recipe({ore_saphirite,   saphirite_bacteria, a, is_ores})
    spoil_recipe({ore_jivolite,     jivolite_bacteria, b, is_ores})
    spoil_recipe({ore_stiratite,   stiratite_bacteria, c, is_ores})
    spoil_recipe({ore_crotinnium, crotinnium_bacteria, d, is_ores})
    spoil_recipe({ore_rubyte,         rubyte_bacteria, e, is_ores})
    spoil_recipe({ore_bobmonium,   bobmonium_bacteria, f, is_ores})
    spoil_recipe({ore_senaite,       senaite_bacteria, g, is_ores})
    spoil_recipe({ore_franckeite, franckeite_bacteria, h, is_ores})

    spoil_recipe({spoilage, compost_angels, a, is_spoilage})

    if mods[tellus_mods] then
        spoil_recipe({magnesium_ore, magnesium_bacteria, a, is_magnesium})
    end
end

-- BUILDING SPEEDS
local speed_types = {data_mining_drill, data_assembling, data_furnace, data_lab, data_rocket_silo}
for _, type_name in pairs(speed_types) do
    if type_name then
        for _, building in pairs(type_name) do
            if building.mining_speed then
                building.mining_speed = building.mining_speed * 0.9375
            end
            if building.crafting_speed then
                building.crafting_speed = building.crafting_speed * 0.9375
            end
            if building.researching_speed then
                building.researching_speed = building.researching_speed * 0.9375
            end
        end
    end
end

-- FUEL
local function scale_fuel_value(value_str, multiplier)
    local number, unit = string.match(value_str, "([%d%.]+)%s*(%a+)")
    if number and unit then
        local new_number = tonumber(number) / multiplier
        return string.format("%.4f%s", new_number, unit)
    end
    return value_str
end

local fuel_types = {data_item, data_capsule, data_fluid}
for _, type_name in pairs(fuel_types) do
    if type_name then
        for _, item in pairs(type_name) do
            if item.fuel_value then
                item.fuel_value = scale_fuel_value(item.fuel_value, 0.9375)
            end
        end
    end
end

-- FLUIDS IN THE RECIPES
local function scale_fluids(list)
    if not list then return end
    for _, entry in pairs(list) do
        if entry.type == fluid and entry.amount then
            entry.amount = entry.amount / 0.9375
        elseif entry.type == fluid and (entry.amount_min or entry.amount_max) then
            if entry.amount_min then entry.amount_min = entry.amount_min / 0.9375 end
            if entry.amount_max then entry.amount_max = entry.amount_max / 0.9375 end
        end
    end
end

for _, recipe in pairs(data_recipe) do
    scale_fluids(recipe.ingredients)
    scale_fluids(recipe.results)
end

-- FLUIDS IN THE RESOURCE
for _, resource in pairs(data_resource) do
    if resource.minable then
        if resource.minable.results then
            for _, entry in pairs(resource.minable.results) do
                if entry.type == fluid and entry.amount then
                    entry.amount = entry.amount / 0.9375
                elseif entry.type == fluid and (entry.amount_min or entry.amount_max) then
                    if entry.amount_min then entry.amount_min = entry.amount_min / 0.9375 end
                    if entry.amount_max then entry.amount_max = entry.amount_max / 0.9375 end
                end
            end
        end
    end
end