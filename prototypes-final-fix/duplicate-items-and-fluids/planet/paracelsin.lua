if mods[paracelsin_mods] then
	local cryovolcanic_mixture = "cryovolcanic-mixture"
	local fluorite_mods = "fluorite"
	local hydrogen_fluoride_mods = "hydrogen-fluoride"
	local uranium_hexafluoride_mods = "uranium-hexafluoride"
    local replace_prototypes =
    {
		[zinc_mods] = zinc_ore_bob,
        [zinc_plate_mods] = zinc_plate_bob,
        [nitric_acid_mods] = nitric_acid_angels,
		[cryovolcanic_mixture] = nitrogen_angels,
		[fluorite_mods] = fluorite_angels,
		[hydrogen_fluoride_mods] = hydrogen_fluoride_angels,
		[uranium_hexafluoride_mods] = uranium_fluoride_VI_gas
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto = {zinc_mods, zinc_plate_mods}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

	local delete_prototypes =
	{
		"macerator",
		"accumulator-v2",
		"solar-matrix",
		"macerating",
		nitric_acid_mods,
		sphalerite_ore .. "-processing",
		sphalerite_ore .. "-melting",
		tetrahedrite_ore .. "-processing",
		tetrahedrite_ore .. "-melting",
		zinc_mods,
		zinc_mods .. "-concentrate",
		"dirty-" .. zinc_mods .. "-solution",
		zinc_mods .. "-leaching",
		zinc_mods .. "-solution",
		zinc_mods .. "-purification",
		zinc_mods .. "-refining",
		"lubricant-from-nitric-acid",
		"paracelsin-processing-units-from-nitric-acid",
		"batteries-from-nitric-acid",
		"advanced-repair-device",
		"vaterite-processing-productivity",
		"burner-pumpjack",
		"concrete-from-calcium-sulfate",
		cryovolcanic_mixture,
		cryovolcanic_mixture .. "-separation",
		"advanced-" .. cryovolcanic_mixture .. "-separation",
		fluorite_mods,
		fluorite_mods .. "-processing",
		hydrogen_fluoride_mods,
		hydrogen_fluoride_mods .. "-electrolysis",
		lubricant .. "-from-fluorine",
		solid_fuel .. "-from-hydrogen",
		uranium_hexafluoride_mods,
		"uranium-fluorination",
		uranium_hexafluoride_mods .. "-centrifuging",
		"fluorinated-uranium-processing",
		petroleum_gas .. "-alkylation",
		"aqua-regia",
		"zinc-and-lead-refining",
		"crystalline-asteroid-reprocessing",
		"return-inserter"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

	local casting_galvanized_steel_plate = "casting-galvanized-steel-plate"
	local replacements =
	{
		[casting_galvanized_steel_plate] = galvanized_steel_plate
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
	data_recipe[casting_galvanized_steel_plate] = nil

	for recipe_name, _ in pairs(data_recipe) do
		if string.find(recipe_name, "-macerating", 1, true) then
			data_recipe[recipe_name] = nil
		end
	end

	data_corpse["accumulatorv2-remnants"] = nil
	data_corpse["solar-matrix-remnants"] = nil

	for i, prerequisite in ipairs(data_technology[planet_discovery_paracelsin].prerequisites) do
        if prerequisite == "coal-liquefaction" then
            table.remove(data_technology[planet_discovery_paracelsin].prerequisites, i) break
        end
    end
	for i, prerequisite in ipairs(data_technology[planet_discovery_paracelsin].prerequisites) do
		if prerequisite == tech_asteroid_reprocessing then
			table.remove(data_technology[planet_discovery_paracelsin].prerequisites, i) break
		end
	end
	for i, effects in ipairs(data_technology[space_platform].effects) do
		if effects.type == unlock_recipe and effects.recipe == calcinic_asteroid_crushing_1 then
			table.remove(data_technology[space_platform].effects, i) break
		end
	end
end