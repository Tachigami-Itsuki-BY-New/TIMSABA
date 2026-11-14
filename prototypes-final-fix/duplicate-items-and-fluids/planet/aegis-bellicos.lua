if mods[aegis_bellicos_mods] then
    local beryllium_oxide_mods = "beryllium-oxyde"
    local beryllium_gear = "beryllium-gear"
    local copper_beryllium_plate = "copper-beryllium-plate"
    local replace_prototypes =
    {
        [beryllium_plate_hyarion] = beryllium_plate,
        [beryllium_oxide_mods] = beryllium_oxide,
        [beryllium_gear] = beryllium_bronze_gear_wheel,
        [copper_beryllium_plate] = beryllium_bronze_plate
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    local delete_proto = {beryllium_plate_hyarion}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

    local delete_prototypes =
	{
        beryllium_oxide_mods,
        beryllium_gear,
        copper_beryllium_plate,
        "beryllium-processing",
        "long-lightweight-inserter",
        "lightweight-inserter",
		"lightweight-inserters",
		"beryllium-solar-panel",
		"space-beryllium-underground-pipe",
        "high-velocity-magazine",
        "high-velocity-" .. rocket,
        "high-velocity-" .. cannon_shell,
		"lightweight-arsenal",
        "high-velocity-piercing-magazine",
        "high-velocity-piercing-" .. rocket,
        "high-velocity-piercing-" .. cannon_shell,
        "tungsten-lightweight-arsenal",
        "advanced-metallic_dense-asteroid-crushing",
        "H-bomb",
        "the-solution",
        "tritium-fusion-cell",
        "depleted-tritium-fusion-cell",
        "depleted-tritium-fusion-cell-reprocessing",
        "tritium-fusion-fuel",
        "low-grade-fusion-reactor",
        "ice-vaporisation",
        "high-temp-steam-turbine",
        "low-grade-fusion",
        "tritium-thruster-fuel",
        "steam-thruster-TT",
        "low-grade-fusion-thrust",
        "helium-thruster-fuel",
        "steam-thruster-TH",
        "high-grade-fusion-thrust",
        "advanced-thruster-fuel" .. _productivity,
        "nuclear-isotope-extraction" .. _productivity,
        "tritium-venting",
        "helium-by-lithium",
        "helium-venting",
        "metallic_dense-asteroid-reprocessing",
        "oxyde_rad-asteroid-reprocessing"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)
end