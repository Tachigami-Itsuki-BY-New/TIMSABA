if mods[maraxsis_mods] then
    local replace_prototypes =
    {
        [salt_mods] = salt_angels,
		[limestone_mods] = limestone_angels,
		[glass_panes_maraxsis] = glass_bob,
		[sand_mods] = sand_angels,
        [water_saline_maraxsis] = water_saline_angels
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto = {limestone_mods}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

	local delete_prototypes =
	{
		glass_panes_maraxsis,
		water_saline_maraxsis,
		"maraxsis-liquid-atmosphere",
		"maraxsis-liquid-atmosphere-decompression",
		"maraxsis-limestone-processing",
		"maraxsis-petroleum-gas-cracking",
		"maraxsis-holmium-recrystalization",
		"maraxsis-stone-centrifuging",
		"maraxsis-conduit",
		"maraxsis-effect-transmission-2",
		"sp-spidertron-automation",
		"maraxsis-fish-oil",
		"maraxsis-bio-oil",
		"maraxsis-omega-3",
		"maraxsis-vitamin-infused-agricultural-science",
		"maraxsis-vitamin-infused-hydraulic-science",
		"maraxsis-omega_3",
		"maraxsis-vitamin-infused-promethium-science-1",
		"maraxsis-promethium-quality-1",
		"maraxsis-vitamin-infused-promethium-science-2",
		"maraxsis-promethium-quality-2",
		"maraxsis-vitamin-infused-promethium-science-3",
		"maraxsis-promethium-quality-3",
		"maraxsis-vitamin-infused-promethium-science-4",
		"maraxsis-promethium-quality-4",
		"maraxsis-" .. limestone_mods .. "-crushing",
		"maraxsis-" .. tech_legendary_quality,
		"maraxsis-shrinkflation"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

	for i, prerequisite in ipairs(data_technology["ducts"].prerequisites) do
        if prerequisite == "sp-spidertron-automation" then
            table.remove(data_technology["ducts"].prerequisites, i) break
        end
    end
	if mods[lignumis_mods] then
		for i, prerequisite in ipairs(data_technology[quality_assembler].prerequisites) do
			if prerequisite == "maraxsis-legendary-quality" then
				table.remove(data_technology[quality_assembler].prerequisites, i) break
			end
		end
	end
	for name, _ in pairs(data_recipe) do
		if name:find("^maraxsis%-fluid%-void%-") then
			data_recipe[name] = nil
		end
	end
end