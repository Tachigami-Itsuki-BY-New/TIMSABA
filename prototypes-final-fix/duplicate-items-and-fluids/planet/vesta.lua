if mods[vesta_mods] then
    local replace_prototypes =
    {
        [hydrogen_vesta] = hydrogen_angels,
        [oxygen_vesta] = oxygen_angels,
        [nitrogen_vesta] = nitrogen_angels,
        [carbon_dioxide_vesta] = carbon_dioxide_angels,
        [carbon_monoxide_vesta] = carbon_monoxide_angels,
        [hydrogen_sulfide_vesta] = hydrogen_sulfide_angels,
        [methane_vesta] = methane_angels,
        [deuterium_mods] = deuterium_angels,
		[tritium_mods] = tritium_gas
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto =
	{
		hydrogen_vesta,
		oxygen_vesta,
		nitrogen_vesta,
		nitrogen_vesta,
		carbon_dioxide_vesta,
		carbon_monoxide_vesta,
		hydrogen_sulfide_vesta,
		methane_vesta,
		deuterium_mods,
		tritium_mods
	}
    TIMSABA.functions.delete_duplicated_fluids(delete_proto)

	data_recipe[lithium_brine] = nil
	data_recipe[yeet_item_ .. supermagnetic_vesta .. _barrel] = nil

	local fusion_construction_robot = "fusion-construction-robot"
	local fusion_logistic_robot = "fusion-logistic-robot"
	local carbon_gas = "carbon-gas"
	local delete_prototypes =
	{
		"ske-h2o",
		"ske-water-electrolysis",
		"ske_co2_filter_oxygen",
		"nutrients-from-co2",
		"steel-from-iron-algea",
		"ske-processors-from-lithium",
		"calcized-iron-plate",
		"calcized-copper-plate",
        "ske_dt_fuel_container",
        "ske_fusion_framework",
        fusion_construction_robot,
        fusion_logistic_robot,
		"ske_dt_fuel",
		"ske_cf_copper_hyd",
		"ske_cf_copper_oxy",
		"ske_cf_iron_hyd",
		"ske_cf_iron_oxy",
		"ske_cf_steel_hyd",
		"ske_cf_steel_oxy",
		"ske_methane_petro",
		"fusion-missile",
		"s1_algea_discovery",
		"s1_iridium",
		"s1_cluster_processing",
		"s2_fusion_robots",
		"s2_intermediate_productivity",
		"heating-conductor",
		carbon_gas
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

	if settings.startup[setting_vesta_legacy_recipes].value then
		local nitrogen_liquid_vesta = "ske_liquid_nitrogen"
		local brine_mods = "ske_brine"
		local replace_prototypes =
		{
			[nitrogen_liquid_vesta] = nitrogen_liquid,
			[brine_mods] = water_thermal_angels,
			[carbon_gas] = carbon_monoxide_angels
		}
		TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

		local delete_prototypes =
		{
			nitrogen_liquid_vesta,
			"ske_algea_steel_extraction",
			"ske_empty_dt_canister",
			"ske_dt_fuel_cell",
			"dt-fuel",
			"ske_heavy_solution",
			"ske_heavy_solution_" .. lubricant,
			"ske_crude_solution",
			"ske_crude_sludge",
			"ske_crude_oil",
			brine_mods,
			brine_mods .. "_vesta",
			"ske_hot_" .. lithium,
			"ske_" .. lithium,
			"ske_heavy_water",
			"ske_hot_heavy_water",
			"hot-" .. hydrogen_sulfide_mods,
			"ske_ammonia_vesta",
			"ske_algea_petrite_extraction",
			"ske_vesta_" .. electrolyte,
			"ske_ammonia_chilled_plate",
			"ske_water_electrolysis",
			"ske_charcoal",
			"ske_algea_rare_holmium_tratment",
			"s1_nutrients_from_co2",
			"s1_brine",
			"s1_t2d2",
			"s1_ammonia_chilled_plate",
			"s1_iridium_plate",
			"ske_heating_conductor",
			"hot-heavy-water-production",
			"hot-lithium-production",
			"s1_sandceramicmesh",
			"s1_vestan_char"
		}
		TIMSABA.functions.delete_prototypes(delete_prototypes)

		data_recipe[sand_mods] = nil
	end
end