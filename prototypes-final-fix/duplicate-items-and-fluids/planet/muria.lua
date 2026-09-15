if mods[muria_mods] then
    local hydrogen_chloride = "hydrogen-chloride"
    local lead = "lead"
    local lead_plate = "lead-plate"
    local lead_molten = "molten-lead"
    local lead_pellets = "lead-pellets"
    local replace_prototypes =
    {
        [hydrogen_chloride] = hydrogen_chloride_angels,
        [lead] = lead_ore_bob,
        [lead_plate] = lead_plate_bob,
        [lead_molten] = lead_molten_angels,
        [lead_pellets] = shotgun_pellets
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    local delete_proto = {lead, lead_plate}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

    local delete_proto = {hydrogen_chloride}
    TIMSABA.functions.delete_duplicated_fluids(delete_proto)
    data_recipe[hydrogen_chloride] = nil

    local delete_prototypes =
	{
        lead_molten,
		lead_pellets,
        "casting-lead",
        "casting-lead-pellets",
        "hydrogen-chloride-oxidation",
        "water-electrolysis",
        "corroded-flask",
        "corroded-flask-recovery",
        "hydronium-destruction" .. _productivity,
        "holmium-chloride",
        "holmium-lichen-colony",
        "scrubber",
        "murian-air-scrubbing",
        "nauvitian-air-scrubbing",
        "gleban-air-scrubbing",
        "vulcanusian-air-scrubbing",
        "fulgoran-air-scrubbing",
        "aquiloan-air-scrubbing",
        "paracelsian-air-scrubbing",
        "air-scrubbing",
        "hydrogen-chloride-lead-battery",
        "oxygenated-iron-bacteria-cultivation",
        "oxygenated-copper-bacteria-cultivation",
        "oxygenated-bacteria-cultivation",
        "acidthrower-turret",
        "lead-logistic-robot",
        "lead-construction-robot",
        "lead-robots",
        "chlorine-traces-from-ice",
        "sulfur-chlorine-salt-redox",
        "advanced-acid-processing",
        "casting-pickled-iron",
        "casting-pickled-copper",
        "casting-pickled-steel",
        "casting-pickled-" .. iron_gear_wheel,
        "casting-pickled-" .. iron_rod,
        "casting-pickled-" .. copper_cable,
        "pickled-casting"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

    local acidworking_science_pack_activation = "acidworking-science-pack-activation"
    local replacements =
	{
		[acidworking_science_pack_activation] = acidworking_science_pack
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
    data_recipe[acidworking_science_pack_activation] = nil

    for name, tower in pairs(data_agricultural_tower) do
        if tower.accepted_seeds then
            for i = #tower.accepted_seeds, 1, -1 do
                if tower.accepted_seeds[i] == "holmium-chloride" then
                    table.remove(tower.accepted_seeds, i)
                end
            end
        end
    end
end