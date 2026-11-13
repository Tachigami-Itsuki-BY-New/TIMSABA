if mods[corrundum_mods] then
	local iron_sulfate_solution = "iron-sulfate-solution"
	local copper_sulfate_solution = "copper-sulfate-solution"
    local replace_prototypes =
    {
		[sulfur_ore_mods] = sulfur,
		[petroleum_gas] = methane_angels,
        [calcium_sulfate_mods] = calcium_sulfate_angels,
		[platinum_plate_mods] = platinum_plate,
		[iron_sulfate_solution] = iron_sulfate_II_solution,
		[copper_sulfate_solution] = copper_sulfate_II_solution
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto =
	{
		sulfur_ore_mods,
		calcium_sulfate_mods,
		platinum_plate_mods
	}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

	local delete_prototypes =
	{
		platinum_plate_mods .. "-production-alt",
		iron_sulfate_solution,
		copper_sulfate_solution,
		"mixed-sulfate-solution",
		"chalcopyrite-refining",
		"reactive-displacement",
		"force-reduction-iron",
		"iron-recrystalization",
		"iron-recrystalization-alt",
		"iron-stick-recrystalization",
		"force-reduction-copper",
		"copper-recrystalization",
		"copper-recrystalization-alt",
		"super-saturated-displacement",
		"destructive-dilute-acid-neutralization",
		"pressurized-acid-neutralization",
		"pressurized-acid-neutralization-alt",
		"hot-water-to-steam",
		sulfuric_acid .. "-dilute",
		sulfuric_acid .. "-dilution",
		sulfuric_acid .. "-concentration",
		sulfuric_acid .. "-concentration-alt",
		"dilute-acid-neutralization",
		"calcium-sulfate-production-alt",
		"calcium-sulfate-recovery",
		"stone-production",
		"thruster-fuel-oxidizer-to-steam",
		"carbon-dioxide-to-carbon",
		pipe .. _productivity .. _infinite,
		steam_turbine_1 .. _productivity .. _infinite,
		sulfuric_acid .. _productivity .. _infinite,
		"recrystalization",
		"petrol-dehydrogenation-and-combustion-maraxsis",
		"sulfate-processing-2"
	}
	if mods[maraxsis_mods] then
		table.insert(delete_prototypes, "petrol-dehydrogenation-and-combustion")
	end
	TIMSABA.functions.delete_prototypes(delete_prototypes)

	for i, prerequisite in ipairs(data_technology["dry-ice"].prerequisites) do
        if prerequisite == "sulfate-processing-2" then
            table.remove(data_technology["dry-ice"].prerequisites, i) break
        end
    end
	for i, prerequisite in ipairs(data_technology[platinum_thruster].prerequisites) do
        if prerequisite == "sulfate-processing-2" then
            table.remove(data_technology[platinum_thruster].prerequisites, i) break
        end
    end
	for i, prerequisite in ipairs(data_technology["sulfur-poison-capsule"].prerequisites) do
        if prerequisite == "sulfate-processing-2" then
            table.remove(data_technology["sulfur-poison-capsule"].prerequisites, i) break
        end
    end
	for i, prerequisite in ipairs(data_technology["blue-rocket"].prerequisites) do
        if prerequisite == "sulfate-processing-2" then
            table.remove(data_technology["blue-rocket"].prerequisites, i) break
        end
    end

	local hidden_and_hidden_in_factoriopedia =
	{
		"chalcopyrite-processing",
		"kinetic-reactive-displacement",
		"space-steam-production",
		"controlled-petrol-combustion"
	}
	for _, name in ipairs(hidden_and_hidden_in_factoriopedia) do
		if data_recipe[name] then
			data_recipe[name].enabled = false
			data_recipe[name].ingredients = {{type = item, name = stone, amount = 1}}
			data_recipe[name].results = {{type = item, name = stone, amount = 1}}
			data_recipe[name].main_product = stone
			data_recipe[name].hidden = true
			data_recipe[name].hidden_in_factoriopedia = true
		end
		if data_technology[name] then
			data_technology[name].prerequisites = {}
			data_technology[name].effects = {}
			data_technology[name].hidden = true
			data_technology[name].hidden_in_factoriopedia = true
		end
	end
end