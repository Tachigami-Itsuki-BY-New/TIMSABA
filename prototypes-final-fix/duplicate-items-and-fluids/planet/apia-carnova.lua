if mods[apia_carnova_mods] then
    local phosphorus = "phosphorus"
    local replace_prototypes =
    {
        [phosphorus] = white_phosphorus,
        [glycerine] = glycerol_angels
    }
    if data_fluid[orthophosphoric_acid] then
        replace_prototypes[phosphoric_acid] = orthophosphoric_acid
    end
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    local delete_item = {phosphorus}
	TIMSABA.functions.delete_duplicated_items(delete_item)

    local delete_fluid = {glycerine}
    if data_fluid[orthophosphoric_acid] then
        table.insert(delete_fluid, phosphoric_acid)
    end
    TIMSABA.functions.delete_duplicated_fluids(delete_fluid)

    local delete_prototypes =
	{
        "bone-meal-smelting",
        "processing-unit-from-phosphoric-acid",
        "flamethrower-ammo-from-phosphorus",
        "battery-from-phosphoric-acid",
        "artillery-shell-with-phosphorus",
        "phosphorus-shell",
        "bio-solar-panel",
        "bioreactor",
        "flamethrower-capsule",
        "flamethrower-robot"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

    data_combat_robot["flamethrower"] = nil
end