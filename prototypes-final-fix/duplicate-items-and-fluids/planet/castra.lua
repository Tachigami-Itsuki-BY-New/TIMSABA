if mods[castra_mods] then
    local replace_prototypes =
    {
        [nickel_plate_mods] = nickel_plate_bob
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local lithium_battery = "lithium-battery"
	local delete_prototypes =
	{
		nickel_plate_mods,
		lithium_battery,
		"carbon-fiber-wall",
		"energy-shield-mk3-equipment",
		"hydrogen-sulfide-carbon-extraction",
		"nickel-extraction",
		"battery-nickel",
		"tank-nickel",
		"nickel-sulfide-reduction",
		"millerite-processing",
		"advanced-nickel-processing",
		"reverse-cracking",
		"holmium-catalyzing",
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

	bobmods.lib.recipe.update_recycling_recipe({railgun, railgun_turret})

	local jammed_data_collector_process = "jammed-data-collector-process"
	local replacements =
	{
		[jammed_data_collector_process] = castra_data
	}
	for _, technology in pairs(data_technology or {}) do
		if technology.effects then
			for _, effect in pairs(technology.effects) do
				if effect.type == unlock_recipe then
					local replace = replacements[effect.recipe]
					if replace then
						effect.recipe = replace
					end
				end
			end
		end
	end
	for _, machine in pairs(data_assembling or {}) do
        if machine.fixed_recipe == jammed_data_collector_process then
            machine.fixed_recipe = castra_data
        end
    end
	data_recipe[jammed_data_collector_process] = nil

	for i, prerequisite in ipairs(data_technology[battery_eq_3].prerequisites) do
        if prerequisite == lithium_battery then
            table.remove(data_technology[battery_eq_3].prerequisites, i) break
        end
    end
	for i, prerequisite in ipairs(data_technology[railgun].prerequisites) do
        if prerequisite == lithium_battery then
            table.remove(data_technology[railgun].prerequisites, i) break
        end
    end
	for i, prerequisite in ipairs(data_technology["jammed-data-collector"].prerequisites) do
        if prerequisite == lithium_battery then
            table.remove(data_technology["jammed-data-collector"].prerequisites, i) break
        end
    end
	local tech_cargo_bay_limit_6 = "cargo-bay-limit-6"
	if data_technology[tech_cargo_bay_limit_6] then
		for i, prerequisite in ipairs(data_technology[tech_cargo_bay_limit_6].prerequisites) do
			if prerequisite == lithium_battery then
				table.remove(data_technology[tech_cargo_bay_limit_6].prerequisites, i) break
			end
		end
	end
	for i, prerequisite in ipairs(data_technology[promethium_science_pack].prerequisites) do
        if prerequisite == lithium_battery then
            table.remove(data_technology[promethium_science_pack].prerequisites, i) break
        end
    end
end