if mods[moshine_mods] then
    local replace_prototypes =
    {
		[neodymium_mods] = neodymium_ore,
        [sand_mods] = sand_angels,
        [glass_mods] = glass_bob,
        [silicon_carbide_mods] = silicon_carbide_bob
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto = {neodymium_mods, glass_mods}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

	local delete_prototypes =
	{
		"concrete-from-molten-iron-and-sand",
		"petroleum-from-sand-sulfur-steam-carbon",
		"moshine-concrete-from-molten-iron-and-sand",
		"moshine-petroleum-from-sand-sulfur-steam-carbon",
		"snouz_better_substation",
		"snouz_better_substation_tech",
		"long-stack-inserter"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

	local replacements =
	{
		[cosmic_data_outsignal_creation] = cosmic_data_outsignal,
		[cosmic_data_creation] = cosmic_data
	}
	if mods[panglia_mods] then
		replacements[timewarp_data_making] = timewarp_data
	end
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
        if machine.fixed_recipe == cosmic_data_creation then
            machine.fixed_recipe = cosmic_data
        end
		if mods[panglia_mods] and machine.fixed_recipe == timewarp_data_making then
            machine.fixed_recipe = timewarp_data
        end
    end
	data_recipe[cosmic_data_outsignal_creation] = nil
	data_recipe[cosmic_data_creation] = nil
	if mods[panglia_mods] then data_recipe[timewarp_data_making] = nil end
end