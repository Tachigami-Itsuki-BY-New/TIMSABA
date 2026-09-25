data_item_subgroup[is_processing_crafting].order = a

data_recipe["angels-ore1-crushed-hand"].icons = THREE_R_I(ore_saphirite, crushed_saphirite, stone_crushed_angels)

data_recipe["angels-ore3-crushed-hand"].icons = THREE_R_I(ore_stiratite, crushed_stiratite, stone_crushed_angels)

data_item[stone].localised_description = show_formula and {chemical_formula, "(Na,K.Ca)[font=default-tiny-bold]1-2[/font](Fe,Al,Mg)[font=default-tiny-bold]2-3[/font][SiO[font=default-tiny-bold]4[/font]][font=default-tiny-bold]2[/font]"} or nil
data_item[stone].subgroup = is_processing_crafting
data_item[stone].order = d

data_item[landfill].subgroup = is_processing_crafting
data_item[landfill].order = g
data_recipe[landfill].subgroup = is_processing_crafting
data_recipe[landfill].icons = THREE_I(stone, stone_crushed_angels, landfill)
data_recipe[landfill].order = g
data_recipe[landfill].energy_required = 1
data_recipe[landfill].ingredients =
{
    {type = item, name = stone, amount = 16},
    {type = item, name = stone_crushed_angels, amount = 32}
}

solid_mud_landfill = "angels-solid-mud-landfill"
data_recipe[solid_mud_landfill].subgroup = is_processing_crafting
data_recipe[solid_mud_landfill].icons = THREE_I(mud_angels, stone_crushed_angels, landfill)
data_recipe[solid_mud_landfill].order = g_a
data_recipe[solid_mud_landfill].energy_required = 1
data_recipe[solid_mud_landfill].ingredients =
{
    {type = item, name = mud_angels, amount = 32},
    {type = item, name = stone_crushed_angels, amount = 32}
}

data_item[ore_saphirite].localised_description = {"item-description.saphirite-ore"}
data_item[ore_saphirite].order = a
data_resource[ore_saphirite].localised_description = {"entity-description.saphirite-ore"}
data_resource[ore_saphirite].order = a

data_item[ore_jivolite].localised_description = {"item-description.jivolite-ore"}
data_item[ore_jivolite].order = b
data_resource[ore_jivolite].localised_description = {"entity-description.jivolite-ore"}
data_resource[ore_jivolite].minable.mining_time = 1
data_resource[ore_jivolite].order = b

data_item[ore_stiratite].localised_description = {"item-description.stiratite-ore"}
data_item[ore_stiratite].order = c
data_resource[ore_stiratite].localised_description = {"entity-description.stiratite-ore"}
data_resource[ore_stiratite].minable.mining_time = 1
data_resource[ore_stiratite].order = c

data_item[ore_crotinnium].localised_description = {"item-description.crotinnium-ore"}
data_item[ore_crotinnium].order = d
data_resource[ore_crotinnium].localised_description = {"entity-description.crotinnium-ore"}
data_resource[ore_crotinnium].minable.mining_time = 1
data_resource[ore_crotinnium].order = d

data_item[ore_rubyte].localised_description = {"item-description.rubyte-ore"}
data_item[ore_rubyte].order = e
data_resource[ore_rubyte].localised_description = {"entity-description.rubyte-ore"}
data_resource[ore_rubyte].minable.mining_time = 1
data_resource[ore_rubyte].order = e

data_item[ore_bobmonium].localised_description = {"item-description.bobmonium-ore"}
data_item[ore_bobmonium].order = f
data_resource[ore_bobmonium].localised_description = {"entity-description.bobmonium-ore"}
data_resource[ore_bobmonium].minable.mining_time = 1
data_resource[ore_bobmonium].order = f

data_item_subgroup["angels-ores"].order = b

data_item[crushed_saphirite].localised_description = {"item-description.saphirite-crushed"}
data_recipe[crushed_saphirite].icons = THREE_R_I(ore_saphirite, crushed_saphirite, stone_crushed_angels)
data_recipe[crushed_saphirite].energy_required = 2

data_item[crushed_jivolite].localised_description = {"item-description.jivolite-crushed"}
data_recipe[crushed_jivolite].icons = THREE_R_I(ore_jivolite, crushed_jivolite, stone_crushed_angels)
data_recipe[crushed_jivolite].energy_required = 2

data_item[crushed_stiratite].localised_description = {"item-description.stiratite-crushed"}
data_recipe[crushed_stiratite].icons = THREE_R_I(ore_stiratite, crushed_stiratite, stone_crushed_angels)
data_recipe[crushed_stiratite].energy_required = 2

data_item[crushed_crotinnium].localised_description = {"item-description.crotinnium-crushed"}
data_recipe[crushed_crotinnium].icons = THREE_R_I(ore_crotinnium, crushed_crotinnium, stone_crushed_angels)
data_recipe[crushed_crotinnium].energy_required = 2

data_item[crushed_rubyte].localised_description = {"item-description.rubyte-crushed"}
data_recipe[crushed_rubyte].icons = THREE_R_I(ore_rubyte, crushed_rubyte, stone_crushed_angels)
data_recipe[crushed_rubyte].energy_required = 2

data_item[crushed_bobmonium].localised_description = {"item-description.bobmonium-crushed"}

data_recipe[crushed_bobmonium].icons = THREE_R_I(ore_bobmonium, crushed_bobmonium, stone_crushed_angels)
data_recipe[crushed_bobmonium].energy_required = 2

data_item[chunk_saphirite].localised_description = {"item-description.saphirite-chunk"}
data_recipe[chunk_saphirite].icons = THREE_D_I(crushed_saphirite, nil, water_purified_angels, chunk_saphirite, geode_blue, water_yellow_waste)
data_recipe[chunk_saphirite].ingredients[1].amount = 4
data_recipe[chunk_saphirite].ingredients[2].amount = 60
data_recipe[chunk_saphirite].results[1].amount = 4
data_recipe[chunk_saphirite].results[2].amount = 60

data_item[chunk_jivolite].localised_description = {"item-description.jivolite-chunk"}
data_recipe[chunk_jivolite].icons = THREE_D_I(crushed_jivolite, nil, water_purified_angels, chunk_jivolite, geode_purple, water_greenyellow_waste)
data_recipe[chunk_jivolite].ingredients[1].amount = 4
data_recipe[chunk_jivolite].ingredients[2].amount = 60
data_recipe[chunk_jivolite].results[1].amount = 4
data_recipe[chunk_jivolite].results[3].amount = 60

data_item[chunk_stiratite].localised_description = {"item-description.stiratite-chunk"}
data_recipe[chunk_stiratite].icons = THREE_D_I(crushed_stiratite, nil, water_purified_angels, chunk_stiratite, geode_yellow, water_yellow_waste)
data_recipe[chunk_stiratite].ingredients[1].amount = 4
data_recipe[chunk_stiratite].ingredients[2].amount = 60
data_recipe[chunk_stiratite].results[1].amount = 4
data_recipe[chunk_stiratite].results[2].amount = 60

data_item[chunk_crotinnium].localised_description = {"item-description.crotinnium-chunk"}
data_recipe[chunk_crotinnium].icons = THREE_D_I(crushed_crotinnium, nil, water_purified_angels, chunk_crotinnium, geode_lightgreen, water_green_waste)
data_recipe[chunk_crotinnium].ingredients[1].amount = 4
data_recipe[chunk_crotinnium].ingredients[2].amount = 60
data_recipe[chunk_crotinnium].results[1].amount = 4
data_recipe[chunk_crotinnium].results[3].amount = 60

data_item[chunk_rubyte].localised_description = {"item-description.rubyte-chunk"}
data_recipe[chunk_rubyte].icons = THREE_D_I(crushed_rubyte, nil, water_purified_angels, chunk_rubyte, geode_cyan, water_red_waste)
data_recipe[chunk_rubyte].ingredients[1].amount = 4
data_recipe[chunk_rubyte].ingredients[2].amount = 60
data_recipe[chunk_rubyte].results[1].amount = 4
data_recipe[chunk_rubyte].results[3].amount = 60

data_item[chunk_bobmonium].localised_description = {"item-description.bobmonium-chunk"}
data_recipe[chunk_bobmonium].icons = THREE_D_I(crushed_bobmonium, nil, water_purified_angels, chunk_bobmonium, geode_red, water_yellow_waste)
data_recipe[chunk_bobmonium].ingredients[1].amount = 4
data_recipe[chunk_bobmonium].ingredients[2].amount = 60
data_recipe[chunk_bobmonium].results[1].amount = 4
data_recipe[chunk_bobmonium].results[2].amount = 60

data_item[crystal_saphirite].localised_description = {"item-description.saphirite-crystal"}
data_recipe[crystal_saphirite].icons = THREE_I(chunk_saphirite, sulfuric_acid_angels, crystal_saphirite)
data_recipe[crystal_saphirite].ingredients[1].amount = 4
data_recipe[crystal_saphirite].ingredients[2].amount = 15
data_recipe[crystal_saphirite].results[1].amount = 4

data_item[crystal_jivolite].localised_description = {"item-description.jivolite-crystal"}
data_recipe[crystal_jivolite].icons = THREE_I(chunk_jivolite, hydrofluoric_acid_angels, crystal_jivolite)
data_recipe[crystal_jivolite].ingredients[1].amount = 4
data_recipe[crystal_jivolite].ingredients[2].amount = 15
data_recipe[crystal_jivolite].results[1].amount = 4

data_item[crystal_stiratite].localised_description = {"item-description.stiratite-crystal"}
data_recipe[crystal_stiratite].icons = THREE_I(chunk_stiratite, sulfuric_acid_angels, crystal_stiratite)
data_recipe[crystal_stiratite].ingredients[1].amount = 4
data_recipe[crystal_stiratite].ingredients[2].amount = 15
data_recipe[crystal_stiratite].results[1].amount = 4

data_item[crystal_crotinnium].localised_description = {"item-description.crotinnium-crystal"}
data_recipe[crystal_crotinnium].icons = THREE_I(chunk_crotinnium, hydrochloric_acid_angels, crystal_crotinnium)
data_recipe[crystal_crotinnium].ingredients[1].amount = 4
data_recipe[crystal_crotinnium].ingredients[2].amount = 15
data_recipe[crystal_crotinnium].results[1].amount = 4

data_item[crystal_rubyte].localised_description = {"item-description.rubyte-crystal"}
data_recipe[crystal_rubyte].icons = THREE_I(chunk_rubyte, nitric_acid_angels, crystal_rubyte)
data_recipe[crystal_rubyte].ingredients[1].amount = 4
data_recipe[crystal_rubyte].ingredients[2].amount = 15
data_recipe[crystal_rubyte].results[1].amount = 4

data_item[crystal_bobmonium].localised_description = {"item-description.bobmonium-crystal"}
data_recipe[crystal_bobmonium].icons = THREE_I(chunk_bobmonium, sulfuric_acid_angels, crystal_bobmonium)
data_recipe[crystal_bobmonium].ingredients[1].amount = 4
data_recipe[crystal_bobmonium].ingredients[2].amount = 15
data_recipe[crystal_bobmonium].results[1].amount = 4

data_item[purified_saphirite].localised_description = {"item-description.saphirite-purified"}
data_recipe[purified_saphirite].icons = TWO_I(crystal_saphirite, purified_saphirite)

data_item[purified_jivolite].localised_description = {"item-description.jivolite-purified"}
data_recipe[purified_jivolite].icons = TWO_I(crystal_jivolite, purified_jivolite)

data_item[purified_stiratite].localised_description = {"item-description.stiratite-purified"}
data_recipe[purified_stiratite].icons = TWO_I(crystal_stiratite, purified_stiratite)

data_item[purified_crotinnium].localised_description = {"item-description.crotinnium-purified"}
data_recipe[purified_crotinnium].icons = TWO_I(crystal_crotinnium, purified_crotinnium)

data_item[purified_rubyte].localised_description = {"item-description.rubyte-purified"}
data_recipe[purified_rubyte].icons = TWO_I(crystal_rubyte, purified_rubyte)

data_item[purified_bobmonium].localised_description = {"item-description.bobmonium-purified"}
data_recipe[purified_bobmonium].icons = TWO_I(crystal_bobmonium, purified_bobmonium)

data_item_subgroup["angels-ore-sorting-t1"].order = c_a

data_item_subgroup["angels-ore-sorting-t2"].order = c_b

data_recipe[crushed_saphirite_processing].icons = RECYCLING_I(recycling_png, crushed_saphirite)
data_recipe[crushed_saphirite_processing].results =
{
    {type = item, name = iron_ore, amount = 2},
    {type = item, name = copper_ore, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[crushed_jivolite_processing].icons = RECYCLING_I(recycling_png, crushed_jivolite)
data_recipe[crushed_jivolite_processing].results =
{
    {type = item, name = iron_ore, amount = 2},
    {type = item, name = copper_ore, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[crushed_stiratite_processing].icons = RECYCLING_I(recycling_png, crushed_stiratite)
data_recipe[crushed_stiratite_processing].results =
{
    {type = item, name = copper_ore, amount = 2},
    {type = item, name = iron_ore, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[crushed_crotinnium_processing].icons = RECYCLING_I(recycling_png, crushed_crotinnium)
data_recipe[crushed_crotinnium_processing].results =
{
    {type = item, name = copper_ore, amount = 2},
    {type = item, name = iron_ore, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[crushed_rubyte_processing].icons = RECYCLING_I(recycling_png, crushed_rubyte)
data_recipe[crushed_rubyte_processing].results =
{
    {type = item, name = lead_ore_bob, amount = 2},
    {type = item, name = manganese_ore_angels, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[crushed_bobmonium_processing].icons = RECYCLING_I(recycling_png, crushed_bobmonium)
data_recipe[crushed_bobmonium_processing].results =
{
    {type = item, name = tin_ore_bob, amount = 2},
    {type = item, name = magnesium_ore, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[chunk_saphirite_processing].icons = RECYCLING_I(recycling_png, chunk_saphirite)
data_recipe[chunk_saphirite_processing].energy_required = 2
data_recipe[chunk_saphirite_processing].ingredients[1].amount = 8
data_recipe[chunk_saphirite_processing].results =
{
    {type = item, name = iron_ore, amount = 4},
    {type = item, name = copper_ore, amount = 2},
    {type = item, name = silicon_ore_bob, amount = 1},
    {type = item, name = nickel_ore_bob, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[chunk_jivolite_processing].icons = RECYCLING_I(recycling_png, chunk_jivolite)
data_recipe[chunk_jivolite_processing].energy_required = 2
data_recipe[chunk_jivolite_processing].ingredients[1].amount = 8
data_recipe[chunk_jivolite_processing].results =
{
    {type = item, name = iron_ore, amount = 4},
    {type = item, name = copper_ore, amount = 2},
    {type = item, name = nickel_ore_bob, amount = 1},
    {type = item, name = zinc_ore_bob, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[chunk_stiratite_processing].icons = RECYCLING_I(recycling_png, chunk_stiratite)
data_recipe[chunk_stiratite_processing].energy_required = 2
data_recipe[chunk_stiratite_processing].ingredients[1].amount = 8
data_recipe[chunk_stiratite_processing].results =
{
    {type = item, name = copper_ore, amount = 4},
    {type = item, name = iron_ore, amount = 2},
    {type = item, name = silicon_ore_bob, amount = 1},
    {type = item, name = aluminium_ore_bob, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[chunk_crotinnium_processing].icons = RECYCLING_I(recycling_png, chunk_crotinnium)
data_recipe[chunk_crotinnium_processing].energy_required = 2
data_recipe[chunk_crotinnium_processing].ingredients[1].amount = 8
data_recipe[chunk_crotinnium_processing].results =
{
    {type = item, name = copper_ore, amount = 4},
    {type = item, name = iron_ore, amount = 2},
    {type = item, name = aluminium_ore_bob, amount = 1},
    {type = item, name = silver_ore_bob, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[chunk_rubyte_processing].icons = RECYCLING_I(recycling_png, chunk_rubyte)
data_recipe[chunk_rubyte_processing].energy_required = 2
data_recipe[chunk_rubyte_processing].ingredients[1].amount = 8
data_recipe[chunk_rubyte_processing].results =
{
    {type = item, name = lead_ore_bob, amount = 4},
    {type = item, name = manganese_ore_angels, amount = 2},
    {type = item, name = calcium, amount = 1},
    {type = item, name = zinc_ore_bob, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[chunk_bobmonium_processing].icons = RECYCLING_I(recycling_png, chunk_bobmonium)
data_recipe[chunk_bobmonium_processing].energy_required = 2
data_recipe[chunk_bobmonium_processing].ingredients[1].amount = 8
data_recipe[chunk_bobmonium_processing].results =
{
    {type = item, name = tin_ore_bob, amount = 4},
    {type = item, name = magnesium_ore, amount = 2},
    {type = item, name = calcium, amount = 1},
    {type = item, name = silver_ore_bob, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_item_subgroup["angels-ore-sorting-t3"].order = c_c

data_recipe[crystal_saphirite_processing].icons = RECYCLING_I(recycling_png, crystal_saphirite)
data_recipe[crystal_saphirite_processing].results =
{
    {type = item, name = iron_ore, amount = 4},
    {type = item, name = copper_ore, amount = 2},
    {type = item, name = silicon_ore_bob, amount = 1},
    {type = item, name = nickel_ore_bob, amount = 1},
    {type = item, name = titanium_ore_bob, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[crystal_jivolite_processing].icons = RECYCLING_I(recycling_png, crystal_jivolite)
data_recipe[crystal_jivolite_processing].results =
{
    {type = item, name = iron_ore, amount = 4},
    {type = item, name = copper_ore, amount = 2},
    {type = item, name = nickel_ore_bob, amount = 1},
    {type = item, name = zinc_ore_bob, amount = 1},
    {type = item, name = cobalt_ore_bob, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[crystal_stiratite_processing].icons = RECYCLING_I(recycling_png, crystal_stiratite)
data_recipe[crystal_stiratite_processing].results =
{
    {type = item, name = copper_ore, amount = 4},
    {type = item, name = iron_ore, amount = 2},
    {type = item, name = silicon_ore_bob, amount = 1},
    {type = item, name = aluminium_ore_bob, amount = 1},
    {type = item, name = gold_ore_bob, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[crystal_crotinnium_processing].icons = RECYCLING_I(recycling_png, crystal_crotinnium)
data_recipe[crystal_crotinnium_processing].results =
{
    {type = item, name = copper_ore, amount = 4},
    {type = item, name = iron_ore, amount = 2},
    {type = item, name = aluminium_ore_bob, amount = 1},
    {type = item, name = silver_ore_bob, amount = 1},
    {type = item, name = uranium_ore, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[crystal_rubyte_processing].icons = RECYCLING_I(recycling_png, crystal_rubyte)
data_recipe[crystal_rubyte_processing].results =
{
    {type = item, name = lead_ore_bob, amount = 4},
    {type = item, name = manganese_ore_angels, amount = 2},
    {type = item, name = calcium, amount = 1},
    {type = item, name = zinc_ore_bob, amount = 1},
    {type = item, name = cobalt_ore_bob, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_recipe[crystal_bobmonium_processing].icons = RECYCLING_I(recycling_png, crystal_bobmonium)
data_recipe[crystal_bobmonium_processing].results =
{
    {type = item, name = tin_ore_bob, amount = 4},
    {type = item, name = magnesium_ore, amount = 2},
    {type = item, name = calcium, amount = 1},
    {type = item, name = silver_ore_bob, amount = 1},
    {type = item, name = uranium_ore, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}

data_item_subgroup["angels-ore-sorting-t4"].order = c_d

data_recipe[purified_saphirite_processing].icons = RECYCLING_I(recycling_png, purified_saphirite)
data_recipe[purified_saphirite_processing].energy_required = 2
data_recipe[purified_saphirite_processing].ingredients[1].amount = 8
data_recipe[purified_saphirite_processing].results =
{
    {type = item, name = iron_ore, amount = 4},
    {type = item, name = copper_ore, amount = 2},
    {type = item, name = silicon_ore_bob, amount = 1},
    {type = item, name = nickel_ore_bob, amount = 1},
    {type = item, name = titanium_ore_bob, amount = 1},
    {type = item, name = chromium_ore_angels, amount = 1}
}

data_recipe[purified_jivolite_processing].icons = RECYCLING_I(recycling_png, purified_jivolite)
data_recipe[purified_jivolite_processing].energy_required = 2
data_recipe[purified_jivolite_processing].ingredients[1].amount = 8
data_recipe[purified_jivolite_processing].results =
{
    {type = item, name = iron_ore, amount = 4},
    {type = item, name = copper_ore, amount = 2},
    {type = item, name = nickel_ore_bob, amount = 1},
    {type = item, name = zinc_ore_bob, amount = 1},
    {type = item, name = cobalt_ore_bob, amount = 1},
    {type = item, name = tungsten_ore_bob, amount = 1}
}

data_recipe[purified_stiratite_processing].icons = RECYCLING_I(recycling_png, purified_stiratite)
data_recipe[purified_stiratite_processing].energy_required = 2
data_recipe[purified_stiratite_processing].ingredients[1].amount = 8
data_recipe[purified_stiratite_processing].results =
{
    {type = item, name = copper_ore, amount = 4},
    {type = item, name = iron_ore, amount = 2},
    {type = item, name = silicon_ore_bob, amount = 1},
    {type = item, name = aluminium_ore_bob, amount = 1},
    {type = item, name = gold_ore_bob, amount = 1},
    {type = item, name = platinum_ore_angels, amount = 1}
}

data_recipe[purified_crotinnium_processing].icons = RECYCLING_I(recycling_png, purified_crotinnium)
data_recipe[purified_crotinnium_processing].energy_required = 2
data_recipe[purified_crotinnium_processing].ingredients[1].amount = 8
data_recipe[purified_crotinnium_processing].results =
{
    {type = item, name = copper_ore, amount = 4},
    {type = item, name = iron_ore, amount = 2},
    {type = item, name = aluminium_ore_bob, amount = 1},
    {type = item, name = silver_ore_bob, amount = 1},
    {type = item, name = uranium_ore, amount = 1},
    {type = item, name = thorium_ore_bob, amount = 1}
}

data_recipe[purified_rubyte_processing].icons = RECYCLING_I(recycling_png, purified_rubyte)
data_recipe[purified_rubyte_processing].energy_required = 2
data_recipe[purified_rubyte_processing].ingredients[1].amount = 8
data_recipe[purified_rubyte_processing].results =
{
    {type = item, name = lead_ore_bob, amount = 4},
    {type = item, name = manganese_ore_angels, amount = 2},
    {type = item, name = calcium, amount = 1},
    {type = item, name = zinc_ore_bob, amount = 1},
    {type = item, name = cobalt_ore_bob, amount = 1},
    {type = item, name = tungsten_ore_bob, amount = 1}
}

data_recipe[purified_bobmonium_processing].icons = RECYCLING_I(recycling_png, purified_bobmonium)
data_recipe[purified_bobmonium_processing].energy_required = 2
data_recipe[purified_bobmonium_processing].ingredients[1].amount = 8
data_recipe[purified_bobmonium_processing].results =
{
    {type = item, name = tin_ore_bob, amount = 4},
    {type = item, name = magnesium_ore, amount = 2},
    {type = item, name = calcium, amount = 1},
    {type = item, name = silver_ore_bob, amount = 1},
    {type = item, name = uranium_ore, amount = 1},
    {type = item, name = thorium_ore_bob, amount = 1}
}

data_item_subgroup[is_ore_sorting_advanced_1].order = c_e

data_item[mineral_catalyst].subgroup = is_ore_sorting_advanced_1
data_item[mineral_catalyst].order = a
data_recipe[mineral_catalyst].subgroup = is_ore_sorting_advanced_1
data_recipe[mineral_catalyst].icons = TWO_I(sludge_mineral, mineral_catalyst)
data_recipe[mineral_catalyst].order = a
data_recipe[mineral_catalyst].ingredients[1].amount = 30

local iron_ore_recipe = "angels-ore-crushed-mix1-processing"
data_recipe[iron_ore_recipe].icons = AR_FOUR_I(mineral_catalyst, crushed_saphirite, crushed_jivolite, iron_ore)
data_recipe[iron_ore_recipe].order = a_a
data_recipe[iron_ore_recipe].energy_required = 2

local copper_ore_recipe = "angels-ore-crushed-mix2-processing"
data_recipe[copper_ore_recipe].icons = AR_FOUR_I(mineral_catalyst, crushed_stiratite, crushed_crotinnium, copper_ore)
data_recipe[copper_ore_recipe].order = a_b
data_recipe[copper_ore_recipe].energy_required = 2

local lead_ore_recipe = "angels-ore-crushed-mix3-processing"
data_recipe[lead_ore_recipe].icons = AR_FOUR_I(mineral_catalyst, crushed_rubyte, crushed_senaite, lead_ore_bob)
data_recipe[lead_ore_recipe].order = a_c
data_recipe[lead_ore_recipe].energy_required = 2
data_recipe[lead_ore_recipe].ingredients =
{
    {type = item, name = mineral_catalyst, amount = 1},
    {type = item, name = crushed_rubyte, amount = 2},
    {type = item, name = crushed_senaite, amount = 2}
}

local tin_ore_recipe = "angels-ore-crushed-mix4-processing"
data_recipe[tin_ore_recipe].icons = AR_FOUR_I(mineral_catalyst, crushed_bobmonium, crushed_franckeite, tin_ore_bob)
data_recipe[tin_ore_recipe].order = a_d
data_recipe[tin_ore_recipe].energy_required = 2
data_recipe[tin_ore_recipe].ingredients =
{
    {type = item, name = mineral_catalyst, amount = 1},
    {type = item, name = crushed_bobmonium, amount = 2},
    {type = item, name = crushed_franckeite, amount = 2}
}

data_item[crystal_catalyst].subgroup = is_ore_sorting_advanced_2
data_item[crystal_catalyst].order = a
data_recipe[crystal_catalyst].subgroup = is_ore_sorting_advanced_2
data_recipe[crystal_catalyst].icons = TWO_I(seedling_crystal, crystal_catalyst)
data_recipe[crystal_catalyst].order = a
data_recipe[crystal_catalyst].ingredients[1].amount = 30

local silicon_ore_recipe = "angels-ore-chunk-mix1-processing"
data_recipe[silicon_ore_recipe].localised_name = {"item-name." .. silicon_ore_bob}
data_recipe[silicon_ore_recipe].subgroup = is_ore_sorting_advanced_2
data_recipe[silicon_ore_recipe].icons = AR_FOUR_I(crystal_catalyst, chunk_saphirite, chunk_stiratite, silicon_ore_bob)
data_recipe[silicon_ore_recipe].order = a_a
data_recipe[silicon_ore_recipe].energy_required = 2
data_recipe[silicon_ore_recipe].ingredients =
{
    {type = item, name = crystal_catalyst, amount = 1},
    {type = item, name = chunk_saphirite, amount = 2},
    {type = item, name = chunk_stiratite, amount = 2}
}

local nickel_ore_recipe = "angels-ore-chunk-mix2-processing"
data_recipe[nickel_ore_recipe].subgroup = is_ore_sorting_advanced_2
data_recipe[nickel_ore_recipe].icons = AR_FOUR_I(crystal_catalyst, chunk_jivolite, chunk_senaite, nickel_ore_bob)
data_recipe[nickel_ore_recipe].order = a_b
data_recipe[nickel_ore_recipe].energy_required = 2
data_recipe[nickel_ore_recipe].ingredients =
{
    {type = item, name = crystal_catalyst, amount = 1},
    {type = item, name = chunk_jivolite, amount = 2},
    {type = item, name = chunk_senaite, amount = 2}
}

local aluminium_ore_recipe = "angels-ore-chunk-mix3-processing"
data_recipe[aluminium_ore_recipe].localised_name = {"item-name." .. aluminium_ore_bob}
data_recipe[aluminium_ore_recipe].subgroup = is_ore_sorting_advanced_2
data_recipe[aluminium_ore_recipe].icons = AR_FOUR_I(crystal_catalyst, chunk_crotinnium, chunk_franckeite, aluminium_ore_bob)
data_recipe[aluminium_ore_recipe].order = a_c
data_recipe[aluminium_ore_recipe].energy_required = 2
data_recipe[aluminium_ore_recipe].ingredients =
{
    {type = item, name = crystal_catalyst, amount = 1},
    {type = item, name = chunk_crotinnium, amount = 2},
    {type = item, name = chunk_franckeite, amount = 2}
}

local zinc_ore_recipe = "angels-ore-chunk-mix4-processing"
data_recipe[zinc_ore_recipe].subgroup = is_ore_sorting_advanced_2
data_recipe[zinc_ore_recipe].icons = AR_FOUR_I(crystal_catalyst, chunk_jivolite, chunk_rubyte, zinc_ore_bob)
data_recipe[zinc_ore_recipe].order = a_d
data_recipe[zinc_ore_recipe].energy_required = 2
data_recipe[zinc_ore_recipe].ingredients =
{
    {type = item, name = crystal_catalyst, amount = 1},
    {type = item, name = chunk_jivolite, amount = 2},
    {type = item, name = chunk_rubyte, amount = 2}
}

local silver_ore_recipe = "angels-ore-chunk-mix5-processing"
data_recipe[silver_ore_recipe].subgroup = is_ore_sorting_advanced_2
data_recipe[silver_ore_recipe].icons = AR_FOUR_I(crystal_catalyst, chunk_crotinnium, chunk_bobmonium, silver_ore_bob)
data_recipe[silver_ore_recipe].order = a_e
data_recipe[silver_ore_recipe].energy_required = 2
data_recipe[silver_ore_recipe].ingredients =
{
    {type = item, name = crystal_catalyst, amount = 1},
    {type = item, name = chunk_crotinnium, amount = 2},
    {type = item, name = chunk_bobmonium, amount = 2}
}

data_item[hybride_catalyst].subgroup = is_ore_sorting_advanced_3
data_item[hybride_catalyst].order = a
data_recipe[hybride_catalyst].subgroup = is_ore_sorting_advanced_3
data_recipe[hybride_catalyst].icons = THREE_I(mineral_catalyst, crystal_catalyst, hybride_catalyst)
data_recipe[hybride_catalyst].order = a

data_recipe[titanium_ore_recipe].localised_name = {"item-name." .. titanium_ore_bob}
data_recipe[titanium_ore_recipe].subgroup = is_ore_sorting_advanced_3
data_recipe[titanium_ore_recipe].icons = AR_FOUR_I(hybride_catalyst, crystal_saphirite, crystal_senaite, titanium_ore_bob)
data_recipe[titanium_ore_recipe].order = a_a
data_recipe[titanium_ore_recipe].energy_required = 2
data_recipe[titanium_ore_recipe].ingredients =
{
    {type = item, name = hybride_catalyst, amount = 1},
    {type = item, name = crystal_saphirite, amount = 2},
    {type = item, name = crystal_senaite, amount = 2}
}
data_recipe[titanium_ore_recipe].results[1].amount = 4

data_recipe[gold_ore_recipe].subgroup = is_ore_sorting_advanced_3
data_recipe[gold_ore_recipe].icons = AR_FOUR_I(hybride_catalyst, crystal_stiratite, crystal_franckeite, gold_ore_bob)
data_recipe[gold_ore_recipe].order = a_b
data_recipe[gold_ore_recipe].energy_required = 2
data_recipe[gold_ore_recipe].ingredients =
{
    {type = item, name = hybride_catalyst, amount = 1},
    {type = item, name = crystal_stiratite, amount = 2},
    {type = item, name = crystal_franckeite, amount = 2}
}
data_recipe[gold_ore_recipe].results[1].amount = 4

data_recipe[cobalt_ore_recipe].localised_name = {"item-name." .. cobalt_ore_bob}
data_recipe[cobalt_ore_recipe].subgroup = is_ore_sorting_advanced_3
data_recipe[cobalt_ore_recipe].icons = AR_FOUR_I(hybride_catalyst, crystal_jivolite, crystal_rubyte, cobalt_ore_bob)
data_recipe[cobalt_ore_recipe].order = a_c
data_recipe[cobalt_ore_recipe].energy_required = 2
data_recipe[cobalt_ore_recipe].ingredients =
{
    {type = item, name = hybride_catalyst, amount = 1},
    {type = item, name = crystal_jivolite, amount = 2},
    {type = item, name = crystal_rubyte, amount = 2}
}
data_recipe[cobalt_ore_recipe].results[1].amount = 4

--data_recipe["angels-ore-crystal-mix4-processing"].icons = AR_FOUR_I(hybride_catalyst, , , , )
--data_recipe["angels-ore-crystal-mix4-processing"].order = e

data_recipe[uranium_ore_recipe].subgroup = is_ore_sorting_advanced_3
data_recipe[uranium_ore_recipe].icons = AR_FOUR_I(hybride_catalyst, crystal_crotinnium, crystal_bobmonium, uranium_ore)
data_recipe[uranium_ore_recipe].order = a_d
data_recipe[uranium_ore_recipe].energy_required = 2
data_recipe[uranium_ore_recipe].ingredients =
{
    {type = item, name = hybride_catalyst, amount = 1},
    {type = item, name = crystal_crotinnium, amount = 2},
    {type = item, name = crystal_bobmonium, amount = 2}
}
data_recipe[uranium_ore_recipe].results = {{type = item, name = uranium_ore, amount = 4}}

data_recipe[thorium_ore_recipe].subgroup = is_ore_sorting_advanced_3
data_recipe[thorium_ore_recipe].icons = AR_FOUR_I(hybride_catalyst, purified_crotinnium, purified_bobmonium, thorium_ore_bob)
data_recipe[thorium_ore_recipe].order = a_f
data_recipe[thorium_ore_recipe].energy_required = 2
data_recipe[thorium_ore_recipe].ingredients =
{
    {type = item, name = hybride_catalyst, amount = 1},
    {type = item, name = purified_crotinnium, amount = 2},
    {type = item, name = purified_bobmonium, amount = 2}
}
data_recipe[thorium_ore_recipe].results = {{type = item, name = thorium_ore_bob, amount = 4}}

data_recipe[tungsten_ore_recipe].subgroup = is_ore_sorting_advanced_3
data_recipe[tungsten_ore_recipe].icons = AR_FOUR_I(hybride_catalyst, purified_jivolite, purified_rubyte, tungsten_ore_bob)
data_recipe[tungsten_ore_recipe].order = a_h
data_recipe[tungsten_ore_recipe].energy_required = 2
data_recipe[tungsten_ore_recipe].ingredients =
{
    {type = item, name = hybride_catalyst, amount = 1},
    {type = item, name = purified_jivolite, amount = 2},
    {type = item, name = purified_rubyte, amount = 2}
}
data_recipe[tungsten_ore_recipe].results = {{type = item, name = tungsten_ore_bob, amount = 4}}

data_recipe[platinum_ore_recipe].subgroup = is_ore_sorting_advanced_3
data_recipe[platinum_ore_recipe].icons = AR_FOUR_I(hybride_catalyst, purified_stiratite, purified_franckeite, platinum_ore_angels)
data_recipe[platinum_ore_recipe].order = a_i
data_recipe[platinum_ore_recipe].energy_required = 2
data_recipe[platinum_ore_recipe].ingredients =
{
    {type = item, name = hybride_catalyst, amount = 1},
    {type = item, name = purified_stiratite, amount = 2},
    {type = item, name = purified_franckeite, amount = 2}
}
data_recipe[platinum_ore_recipe].results[1].amount = 4

data_item_subgroup["angels-geode-processing-1"].order = d

data_item_subgroup["angels-geode-processing-2"].order = d_a

data_recipe["angels-geode-blue-processing"].icons = THREE_R_I(geode_blue, crystal_dust, stone_crushed_angels)

local geode_purple_processing = "angels-geode-purple-processing"
data_recipe[geode_purple_processing].icons = THREE_R_I(geode_purple, crystal_dust, stone_crushed_angels)
data_recipe[geode_purple_processing].results[2].amount = 4

data_recipe["angels-geode-yellow-processing"].icons = THREE_R_I(geode_yellow, crystal_dust, stone_crushed_angels)

local geode_lightgreen_processing = "angels-geode-lightgreen-processing"
data_recipe[geode_lightgreen_processing].icons = THREE_R_I(geode_lightgreen, crystal_dust, stone_crushed_angels)
data_recipe[geode_lightgreen_processing].results[1].amount = 4

local geode_cyan_processing = "angels-geode-cyan-processing"
data_recipe[geode_cyan_processing].icons = THREE_R_I(geode_cyan, crystal_dust, stone_crushed_angels)
data_recipe[geode_cyan_processing].results[1].amount = 4

data_recipe["angels-geode-red-processing"].icons = THREE_R_I(geode_red, crystal_dust, stone_crushed_angels)

local is_geode_processing_1 = "angels-geode-processing-1"
data_item[slag_angels].subgroup = is_geode_processing_1
data_item[slag_angels].order = h

data_item[stone_crushed_angels].localised_description = show_formula and {chemical_formula, "(Na,K.Ca)[font=default-tiny-bold]1-2[/font](Fe,Al,Mg)[font=default-tiny-bold]2-3[/font][SiO[font=default-tiny-bold]4[/font]][font=default-tiny-bold]2[/font]"} or nil
data_item[stone_crushed_angels].subgroup = is_geode_processing_1
data_item[stone_crushed_angels].order = i
data_recipe[stone_crushed_angels].subgroup = is_geode_processing_1
data_recipe[stone_crushed_angels].icons = TWO_I(stone, stone_crushed_angels)
data_recipe[stone_crushed_angels].order = i
data_recipe[stone_crushed_angels].ingredients[1].name = stone

local geode_blue_liquify = "angels-geode-blue-liquify"
data_recipe[geode_blue_liquify].icons = THREE_I(geode_blue, sulfuric_acid_angels, slurry_crystal)
data_recipe[geode_blue_liquify].energy_required = 4
data_recipe[geode_blue_liquify].ingredients[1].amount = 4
data_recipe[geode_blue_liquify].results[1].amount = 30

local geode_purple_liquify = "angels-geode-purple-liquify"
data_recipe[geode_purple_liquify].icons = THREE_I(geode_purple, sulfuric_acid_angels, slurry_crystal)
data_recipe[geode_purple_liquify].energy_required = 4
data_recipe[geode_purple_liquify].ingredients[1].amount = 4
data_recipe[geode_purple_liquify].results[1].amount = 30

local geode_yellow_liquify = "angels-geode-yellow-liquify"
data_recipe[geode_yellow_liquify].icons = THREE_I(geode_yellow, sulfuric_acid_angels, slurry_crystal)
data_recipe[geode_yellow_liquify].energy_required = 4
data_recipe[geode_yellow_liquify].ingredients[1].amount = 4
data_recipe[geode_yellow_liquify].results[1].amount = 60

local geode_lightgreen_liquify = "angels-geode-lightgreen-liquify"
data_recipe[geode_lightgreen_liquify].icons = THREE_I(geode_lightgreen, sulfuric_acid_angels, slurry_crystal)
data_recipe[geode_lightgreen_liquify].energy_required = 4
data_recipe[geode_lightgreen_liquify].ingredients[1].amount = 4
data_recipe[geode_lightgreen_liquify].results[1].amount = 60

local geode_cyan_liquify = "angels-geode-cyan-liquify"
data_recipe[geode_cyan_liquify].icons = THREE_I(geode_cyan, sulfuric_acid_angels, slurry_crystal)
data_recipe[geode_cyan_liquify].energy_required = 4
data_recipe[geode_cyan_liquify].ingredients[1].amount = 4
data_recipe[geode_cyan_liquify].results[1].amount = 60

local geode_red_liquify = "angels-geode-red-liquify"
data_recipe[geode_red_liquify].icons = THREE_I(geode_red, sulfuric_acid_angels, slurry_crystal)
data_recipe[geode_red_liquify].energy_required = 4
data_recipe[geode_red_liquify].ingredients[1].amount = 4
data_recipe[geode_red_liquify].results[1].amount = 30

local crystal_dust_liquify = "angels-crystal-dust-liquify"
data_recipe[crystal_dust_liquify].localised_name = {"recipe-name.angels-crystal-dust-liquify"}
data_recipe[crystal_dust_liquify].icons = THREE_I(crystal_dust, sulfuric_acid_angels, slurry_crystal)
data_recipe[crystal_dust_liquify].energy_required = 4
data_recipe[crystal_dust_liquify].ingredients[1].amount = 8
data_recipe[crystal_dust_liquify].results[1].amount = 60

data_recipe[slag_processing_dissolution].icons = THREE_I(slag_angels, sulfuric_acid_angels, slurry_slag)
data_recipe[slag_processing_dissolution].energy_required = 4
data_recipe[slag_processing_dissolution].ingredients[1].amount = 4
data_recipe[slag_processing_dissolution].results[1].amount = 60

data_recipe[stone_crushed_dissolution].icons = THREE_I(stone_crushed_angels, sulfuric_acid_angels, slurry_slag)
data_recipe[stone_crushed_dissolution].energy_required = 4
data_recipe[stone_crushed_dissolution].ingredients[1].amount = 16
data_recipe[stone_crushed_dissolution].results[1].amount = 60

local is_slag_processing_1 = "angels-slag-processing-1"

data_recipe[slag_processing_filtering_1].subgroup = is_slag_processing_1
data_recipe[slag_processing_filtering_1].icons = TWO_I(slurry_slag, sludge_mineral, number_1)
data_recipe[slag_processing_filtering_1].order = a
data_recipe[slag_processing_filtering_1].ingredients =
{
    {type = fluid, name = slurry_slag, amount = 60},
    {type = fluid, name = water_purified_angels, amount = 60},
    {type = item, name = filter_coal, amount = 1}
}
data_recipe[slag_processing_filtering_1].results =
{
    {type = fluid, name = sludge_mineral, amount = 60},
    {type = fluid, name = water_yellow_waste, amount = 30}, -- 60
    {type = item, name = filter_frame, amount = 1}
}

local slag_processing_filtering_2 = "angels-slag-processing-filtering-2"
data_recipe[slag_processing_filtering_2].subgroup = is_slag_processing_1
data_recipe[slag_processing_filtering_2].icons = TWO_I(slurry_slag, sludge_mineral, number_2)
data_recipe[slag_processing_filtering_2].order = b
data_recipe[slag_processing_filtering_2].ingredients =
{
    {type = fluid, name = slurry_slag, amount = 30},
    {type = fluid, name = water_purified_angels, amount = 30},
    {type = item, name = filter_ceramic, amount = 1}
}
data_recipe[slag_processing_filtering_2].results =
{
    {type = fluid, name = sludge_mineral, amount = 30},
    {type = fluid, name = water_yellow_waste, amount = 15}, -- 30
    {type = item, name = filter_ceramic_used, amount = 1}
}

local crystal_slurry_filtering_conversion_1 = "angels-crystal-slurry-filtering-conversion-1"
data_recipe[crystal_slurry_filtering_conversion_1].subgroup = is_slag_processing_1
data_recipe[crystal_slurry_filtering_conversion_1].icons = TWO_I(slurry_crystal, sludge_mineral, number_1)
data_recipe[crystal_slurry_filtering_conversion_1].order = c
data_recipe[crystal_slurry_filtering_conversion_1].energy_required = 4
data_recipe[crystal_slurry_filtering_conversion_1].ingredients =
{
    {type = fluid, name = slurry_crystal, amount = 60},
    {type = fluid, name = water_mineralized_angels, amount = 120},
    {type = item, name = filter_coal, amount = 1}
}
data_recipe[crystal_slurry_filtering_conversion_1].results =
{
    {type = fluid, name = sludge_mineral, amount = 60},
    {type = fluid, name = water_yellow_waste, amount = 30}, -- 60
    {type = item, name = filter_frame, amount = 1}
}

local crystal_slurry_filtering_conversion_2 = "angels-crystal-slurry-filtering-conversion-2"
data_recipe[crystal_slurry_filtering_conversion_2].subgroup = is_slag_processing_1
data_recipe[crystal_slurry_filtering_conversion_2].icons = TWO_I(slurry_crystal, sludge_mineral, number_2)
data_recipe[crystal_slurry_filtering_conversion_2].order = d
data_recipe[crystal_slurry_filtering_conversion_2].energy_required = 2
data_recipe[crystal_slurry_filtering_conversion_2].ingredients =
{
    {type = fluid, name = slurry_crystal, amount = 30},
    {type = fluid, name = water_mineralized_angels, amount = 60},
    {type = item, name = filter_ceramic, amount = 1}
}
data_recipe[crystal_slurry_filtering_conversion_2].results =
{
    {type = fluid, name = sludge_mineral, amount = 30},
    {type = fluid, name = water_yellow_waste, amount = 15}, -- 30
    {type = item, name = filter_ceramic_used, amount = 1}
}

data_recipe[slag_processing_1].localised_name = {"recipe-name.angels-slag_processing_2", {"item-name." .. ore_saphirite}, {"item-name." .. ore_jivolite}}
data_recipe[slag_processing_1].icons = THREE_R_I(sludge_mineral, ore_saphirite, ore_jivolite)
data_recipe[slag_processing_1].order = e
data_recipe[slag_processing_1].ingredients[1].amount = 120
data_recipe[slag_processing_1].results =
{
    {type = item, name = ore_saphirite, amount = 1, independent_probability = 0.5},
    {type = item, name = ore_jivolite, amount = 1, independent_probability = 0.5}
}

data_recipe[slag_processing_2].localised_name = {"recipe-name.angels-slag_processing_2", {"item-name." .. ore_stiratite}, {"item-name." .. ore_crotinnium}}
data_recipe[slag_processing_2].icons = THREE_R_I(sludge_mineral, ore_stiratite, ore_crotinnium)
data_recipe[slag_processing_2].order = f
data_recipe[slag_processing_2].ingredients[1].amount = 120
data_recipe[slag_processing_2].results =
{
    {type = item, name = ore_stiratite, amount = 1, independent_probability = 0.5},
    {type = item, name = ore_crotinnium, amount = 1, independent_probability = 0.5}
}

data_recipe[slag_processing_3].localised_name = {"recipe-name.angels-slag_processing_2", {"item-name." .. ore_rubyte}, {"item-name." .. ore_senaite}}
data_recipe[slag_processing_3].icons = THREE_R_I(sludge_mineral, ore_rubyte, ore_senaite)
data_recipe[slag_processing_3].order = g
data_recipe[slag_processing_3].ingredients[1].amount = 120
data_recipe[slag_processing_3].results =
{
    {type = item, name = ore_rubyte, amount = 1, independent_probability = 0.5},
    {type = item, name = ore_senaite, amount = 1, independent_probability = 0.5}
}

local is_geode_crystallization = "angels-geode-crystallization"
local crystal_slurry_filtering_1 = "angels-crystal-slurry-filtering-1"
data_recipe[crystal_slurry_filtering_1].subgroup = is_geode_crystallization
data_recipe[crystal_slurry_filtering_1].icons = TWO_I(slurry_crystal, seedling_crystal, number_1)
data_recipe[crystal_slurry_filtering_1].order = a
data_recipe[crystal_slurry_filtering_1].energy_required = 4
data_recipe[crystal_slurry_filtering_1].ingredients =
{
    {type = fluid, name = slurry_crystal, amount = 60},
    {type = fluid, name = water_purified_angels, amount = 60},
    {type = item, name = filter_coal, amount = 1}
}
data_recipe[crystal_slurry_filtering_1].results =
{
    {type = fluid, name = seedling_crystal, amount = 60},
    {type = fluid, name = water_yellow_waste, amount = 30}, -- 60
    {type = item, name = filter_frame, amount = 1}
}

local crystal_slurry_filtering_2 = "angels-crystal-slurry-filtering-2"
data_recipe[crystal_slurry_filtering_2].subgroup = is_geode_crystallization
data_recipe[crystal_slurry_filtering_2].icons = TWO_I(slurry_crystal, seedling_crystal, number_2)
data_recipe[crystal_slurry_filtering_2].order = b
data_recipe[crystal_slurry_filtering_2].energy_required = 2
data_recipe[crystal_slurry_filtering_2].ingredients =
{
    {type = fluid, name = slurry_crystal, amount = 30},
    {type = fluid, name = water_purified_angels, amount = 30},
    {type = item, name = filter_ceramic, amount = 1}
}
data_recipe[crystal_slurry_filtering_2].results =
{
    {type = fluid, name = seedling_crystal, amount = 30},
    {type = fluid, name = water_yellow_waste, amount = 15}, -- 30
    {type = item, name = filter_ceramic_used, amount = 1}
}

local ruby_crystallization = "angels-ore7-crystallization-3"
data_recipe[ruby_crystallization].icons = TWO_I(seedling_crystal, ruby_bob)
data_recipe[ruby_crystallization].order = c
data_recipe[ruby_crystallization].ingredients[1].amount = 60

local sapphire_crystallization = "angels-ore7-crystallization-1"
data_recipe[sapphire_crystallization].icons = TWO_I(seedling_crystal, sapphire_bob)
data_recipe[sapphire_crystallization].order = d
data_recipe[sapphire_crystallization].ingredients[1].amount = 60

local emerald_crystallization = "angels-ore7-crystallization-4"
data_recipe[emerald_crystallization].icons = TWO_I(seedling_crystal, emerald_bob)
data_recipe[emerald_crystallization].order = e
data_recipe[emerald_crystallization].ingredients[1].amount = 60

local amethyst_crystallization = "angels-ore7-crystallization-5"
data_recipe[amethyst_crystallization].icons = TWO_I(seedling_crystal, amethyst_bob)
data_recipe[amethyst_crystallization].order = f
data_recipe[amethyst_crystallization].ingredients[1].amount = 60

local topaz_crystallization = "angels-ore7-crystallization-2"
data_recipe[topaz_crystallization].icons = TWO_I(seedling_crystal, topaz_bob)
data_recipe[topaz_crystallization].order = g
data_recipe[topaz_crystallization].ingredients[1].amount = 60

local diamond_crystallization = "angels-ore7-crystallization-6"
data_recipe[diamond_crystallization].icons = TWO_I(seedling_crystal, diamond_bob)
data_recipe[diamond_crystallization].order = h
data_recipe[diamond_crystallization].ingredients[1].amount = 60

local is_catalysts_filters = "angels-catalysts-filters"
data_item[filter_frame].subgroup = is_catalysts_filters
data_item[filter_frame].order = a
data_recipe[filter_frame].subgroup = is_catalysts_filters
data_recipe[filter_frame].icons = THREE_I(iron_plate, steel_plate, filter_frame)
data_recipe[filter_frame].order = a

data_item[filter_coal].subgroup = is_catalysts_filters
data_item[filter_coal].order = b
data_recipe[filter_coal].subgroup = is_catalysts_filters
data_recipe[filter_coal].icons = BUILDING_R_I(filter_coal, coal)
data_recipe[filter_coal].order = b
data_recipe[filter_coal].ingredients[2].amount = 4
data_recipe[filter_coal].results[1].amount = 4

data_item[filter_ceramic].subgroup = is_catalysts_filters
data_item[filter_ceramic].order = c
data_item[filter_ceramic].weight = 5000
data_recipe[filter_ceramic].subgroup = is_catalysts_filters
data_recipe[filter_ceramic].icons = BUILDING_R_I(filter_ceramic, silicon_nitride_bob)
data_recipe[filter_ceramic].order = c
data_recipe[filter_ceramic].ingredients =
{
    {type = item, name = filter_frame, amount = 1},
    {type = item, name = silicon_nitride_bob, amount = 1}
}

local filter_ceramic_refurbish = "angels-filter-ceramic-refurbish"
data_recipe[filter_ceramic_refurbish].subgroup = is_catalysts_filters
data_recipe[filter_ceramic_refurbish].icons = BUILDING_R_I(filter_ceramic, water_purified_angels)
data_recipe[filter_ceramic_refurbish].order = c_a
data_recipe[filter_ceramic_refurbish].energy_required = 1
data_recipe[filter_ceramic_refurbish].ingredients[2].amount = 60
data_recipe[filter_ceramic_refurbish].results =
{
    {type = item, name = filter_ceramic, amount = 1},
    {type = fluid, name = water, amount = 60}
}

local filter_ceramic_used = "angels-filter-ceramic-used"
data_item[filter_ceramic_used].subgroup = is_catalysts_filters
data_item[filter_ceramic_used].order = d

data_item[filter_lime].subgroup = is_catalysts_filters
data_item[filter_lime].order = e
data_recipe[filter_lime].subgroup = is_catalysts_filters
data_recipe[filter_lime].icons = BUILDING_R_I(filter_lime, lime_angels)
data_recipe[filter_lime].order = e

local sulfur_air_scrubbing = "angels-sulfur-air-scrubbing"
data_recipe[sulfur_air_scrubbing].subgroup = is_catalysts_filters
data_recipe[sulfur_air_scrubbing].icons = TWO_I(water, water_yellow_waste)
data_recipe[sulfur_air_scrubbing].order = e_a
data_recipe[sulfur_air_scrubbing].energy_required = 4
data_recipe[sulfur_air_scrubbing].ingredients[2].amount = 30
data_recipe[sulfur_air_scrubbing].results[2].amount = 30

data_item[filter_lime_used].subgroup = is_catalysts_filters
data_item[filter_lime_used].order = f

local filter_lime_used_cleaning = "angels-filter-lime-used-cleaning"
data_recipe[filter_lime_used_cleaning].subgroup = is_catalysts_filters
data_recipe[filter_lime_used_cleaning].icons = TWO_I(compressed_air, acid_angels)
data_recipe[filter_lime_used_cleaning].order = f_a
data_recipe[filter_lime_used_cleaning].ingredients =
{
    {type = item, name = filter_lime_used, amount = 1},
    {type = fluid, name = compressed_air, amount = 30}
}
data_recipe[filter_lime_used_cleaning].results[1].amount = 30

-- IRON ITEM
data_item[crushed_ferrium].localised_description = {"item-description.ferrium-crushed"}
data_item[crushed_ferrium].subgroup = is_iron_item
data_item[crushed_ferrium].order = a
data_recipe[crushed_ferrium].subgroup = is_iron_item
data_recipe[crushed_ferrium].icons = THREE_I(crushed_saphirite, crushed_jivolite, crushed_ferrium)
data_recipe[crushed_ferrium].order = a
data_recipe[crushed_ferrium].energy_required = 2
data_recipe[crushed_ferrium].ingredients =
{
    {type = item, name = crushed_saphirite, amount = 2},
    {type = item, name = crushed_jivolite, amount = 2}
}
data_recipe[crushed_ferrium].results[1].amount = 4

data_item[powder_ferrium].localised_description = {"item-description.ferrium-powder"}
data_item[powder_ferrium].subgroup = is_iron_item
data_item[powder_ferrium].order = b
data_recipe[powder_ferrium].subgroup = is_iron_item
data_recipe[powder_ferrium].order = b
data_recipe[powder_ferrium].icons = TWO_I(crushed_ferrium, powder_ferrium)
data_recipe[powder_ferrium].ingredients[1].amount = 4
data_recipe[powder_ferrium].results[1].amount = 4

data_item[dust_ferrium].localised_description = {"item-description.ferrium-dust"}
data_item[dust_ferrium].subgroup = is_iron_item
data_item[dust_ferrium].order = c
data_recipe[dust_ferrium].subgroup = is_iron_item
data_recipe[dust_ferrium].order = c
data_recipe[dust_ferrium].icons = TWO_D_I(sludge_ferrium, sodium_angels, dust_ferrium, water_yellow_waste)
data_recipe[dust_ferrium].energy_required = 2
data_recipe[dust_ferrium].ingredients =
{
    {type = item, name = sodium_angels, amount = 4},
    {type = fluid, name = sludge_ferrium, amount = 60}
}
data_recipe[dust_ferrium].results =
{
    {type = item, name = dust_ferrium, amount = 4},
    {type = fluid, name = water_yellow_waste, amount = 30}
}

data_item[crystal_ferrium].localised_description = {"item-description.ferrium-crystal"}
data_item[crystal_ferrium].subgroup = is_iron_item
data_item[crystal_ferrium].order = d
data_recipe[crystal_ferrium].subgroup = is_iron_item
data_recipe[crystal_ferrium].icons = TWO_I(concentrate_anodized_ferrium, crystal_ferrium)
data_recipe[crystal_ferrium].order = d
data_recipe[crystal_ferrium].results[1].amount = 4

data_recipe[crushed_ferrium_processing].subgroup = is_iron_item
data_recipe[crushed_ferrium_processing].icons = RECYCLING_I(recycling_png, crushed_ferrium)
data_recipe[crushed_ferrium_processing].order = d_a
data_recipe[crushed_ferrium_processing].results =
{
    {type = item, name = iron_ore, amount = 2},
    {type = item, name = lead_ore_bob, amount = 2}
}

data_recipe[powder_ferrium_processing].subgroup = is_iron_item
data_recipe[powder_ferrium_processing].icons = RECYCLING_I(recycling_png, powder_ferrium)
data_recipe[powder_ferrium_processing].order = d_b
data_recipe[powder_ferrium_processing].energy_required = 2
data_recipe[powder_ferrium_processing].ingredients[1].amount = 8
data_recipe[powder_ferrium_processing].results =
{
    {type = item, name = iron_ore, amount = 4},
    {type = item, name = lead_ore_bob, amount = 2},
    {type = item, name = nickel_ore_bob, amount = 1},
    {type = item, name = zinc_ore_bob, amount = 1}
}

data_recipe[dust_ferrium_processing].subgroup = is_iron_item
data_recipe[dust_ferrium_processing].icons = RECYCLING_I(recycling_png, dust_ferrium)
data_recipe[dust_ferrium_processing].order = d_c
data_recipe[dust_ferrium_processing].energy_required = 2
data_recipe[dust_ferrium_processing].results =
{
    {type = item, name = iron_ore, amount = 4},
    {type = item, name = lead_ore_bob, amount = 2},
    {type = item, name = nickel_ore_bob, amount = 1},
    {type = item, name = zinc_ore_bob, amount = 1},
    {type = item, name = titanium_ore_bob, amount = 1}
}

data_recipe[crystal_ferrium_processing].subgroup = is_iron_item
data_recipe[crystal_ferrium_processing].icons = RECYCLING_I(recycling_png, crystal_ferrium)
data_recipe[crystal_ferrium_processing].order = d_d
data_recipe[crystal_ferrium_processing].energy_required = 2
data_recipe[crystal_ferrium_processing].ingredients[1].amount = 8
data_recipe[crystal_ferrium_processing].results =
{
    {type = item, name = iron_ore, amount = 4},
    {type = item, name = lead_ore_bob, amount = 2},
    {type = item, name = nickel_ore_bob, amount = 1},
    {type = item, name = zinc_ore_bob, amount = 1},
    {type = item, name = titanium_ore_bob, amount = 1},
    {type = item, name = chromium_ore_angels, amount = 1}
}

-- IRON FLUID
data_fluid[sludge_ferrium].subgroup = is_iron_fluid
data_fluid[sludge_ferrium].order = a
TIMSABA.barreling.add_simple_fluid(sludge_ferrium)
data_recipe[sludge_ferrium].subgroup = is_iron_fluid
data_recipe[sludge_ferrium].icons = THREE_D_I(powder_ferrium, water_thermal_angels, sulfuric_acid_angels, sludge_ferrium)
data_recipe[sludge_ferrium].order = a
data_recipe[sludge_ferrium].ingredients =
{
    {type = item, name = powder_ferrium, amount = 4},
    {type = fluid, name = water_thermal_angels, amount = 30},
    {type = fluid, name = sulfuric_acid_angels, amount = 30}
}
data_recipe[sludge_ferrium].results[1].amount = 60

data_fluid[slurry_ferrium].subgroup = is_iron_fluid
data_fluid[slurry_ferrium].order = b
TIMSABA.barreling.add_simple_fluid(slurry_ferrium)
data_recipe[slurry_ferrium].subgroup = is_iron_fluid
data_recipe[slurry_ferrium].icons = THREE_I(dust_ferrium, sulfuric_acid_angels, slurry_ferrium)
data_recipe[slurry_ferrium].order = b
data_recipe[slurry_ferrium].ingredients =
{
    {type = item, name = dust_ferrium, amount = 4},
    {type = fluid, name = sulfuric_acid_angels, amount = 60}
}
data_recipe[slurry_ferrium].results[1].amount = 60

data_fluid[concentrate_ferrium].subgroup = is_iron_fluid
data_fluid[concentrate_ferrium].order = c
TIMSABA.barreling.add_simple_fluid(concentrate_ferrium)
data_recipe[concentrate_ferrium].subgroup = is_iron_fluid
data_recipe[concentrate_ferrium].icons = TWO_D_I(slurry_ferrium, water_purified_angels, concentrate_ferrium, water_yellow_waste)
data_recipe[concentrate_ferrium].order = c
data_recipe[concentrate_ferrium].ingredients[2].amount = 60
data_recipe[concentrate_ferrium].results[2].amount = 30

data_fluid[concentrate_anodized_ferrium].subgroup = is_iron_fluid
data_fluid[concentrate_anodized_ferrium].order = d
TIMSABA.barreling.add_simple_fluid(concentrate_anodized_ferrium)
data_recipe[concentrate_anodized_ferrium].subgroup = is_iron_fluid
data_recipe[concentrate_anodized_ferrium].icons = THREE_D_I(concentrate_ferrium, nil, water_purified_angels, concentrate_anodized_ferrium, slag_angels, water_yellow_waste)
data_recipe[concentrate_anodized_ferrium].order = d
data_recipe[concentrate_anodized_ferrium].ingredients[2].name = water_purified_angels
data_recipe[concentrate_anodized_ferrium].ingredients[2].amount = 60
data_recipe[concentrate_anodized_ferrium].results[2].amount = 30

data_fluid[iron_chloride_III_solution_angels].localised_name = {"fluid-name.iron-chloride-III-solution"}
data_fluid[iron_chloride_III_solution_angels].localised_description = show_formula and {chemical_formula, "FeCl[font=default-tiny-bold]3(aq)[/font]"} or nil
data_fluid[iron_chloride_III_solution_angels].subgroup = is_iron_fluid
data_fluid[iron_chloride_III_solution_angels].order = e
TIMSABA.barreling.add_dangerous_fluid(iron_chloride_III_solution_angels)
data_recipe[iron_chloride_III_solution_angels].localised_name = {"fluid-name.iron-chloride-III-solution"}
data_recipe[iron_chloride_III_solution_angels].categories = {chemistry}
data_recipe[iron_chloride_III_solution_angels].subgroup = is_iron_fluid
data_recipe[iron_chloride_III_solution_angels].icons = TWO_D_I(iron_ore, hydrochloric_acid_angels, iron_chloride_III_solution_angels, hydrogen_angels)
data_recipe[iron_chloride_III_solution_angels].order = e
-- 2Fe + 6HCl --> 2FeCl₃ + 3H₂
data_recipe[iron_chloride_III_solution_angels].ingredients =
{
    {type = item, name = iron_ore, amount = 4},
    {type = fluid, name = hydrochloric_acid_angels, amount = 90}
}
data_recipe[iron_chloride_III_solution_angels].results =
{
    {type = fluid, name = iron_chloride_III_solution_angels, amount = 30},
    {type = fluid, name = hydrogen_angels, amount = 30} -- 45
}
data_recipe[iron_chloride_III_solution_angels].main_product = iron_chloride_III_solution_angels

-- COPPER ITEM
data_item[crushed_cuprium].localised_description = {"item-description.cuprium-crushed"}
data_item[crushed_cuprium].subgroup = is_copper_item
data_item[crushed_cuprium].order = a
data_recipe[crushed_cuprium].subgroup = is_copper_item
data_recipe[crushed_cuprium].icons = THREE_I(crushed_stiratite, crushed_crotinnium, crushed_cuprium)
data_recipe[crushed_cuprium].order = a
data_recipe[crushed_cuprium].energy_required = 2
data_recipe[crushed_cuprium].ingredients =
{
    {type = item, name = crushed_stiratite, amount = 2},
    {type = item, name = crushed_crotinnium, amount = 2}
}
data_recipe[crushed_cuprium].results[1].amount = 4

data_item[powder_cuprium].localised_description = {"item-description.cuprium-powder"}
data_item[powder_cuprium].subgroup = is_copper_item
data_item[powder_cuprium].order = b
data_recipe[powder_cuprium].subgroup = is_copper_item
data_recipe[powder_cuprium].order = b
data_recipe[powder_cuprium].icons = TWO_I(crushed_cuprium, powder_cuprium)
data_recipe[powder_cuprium].ingredients[1].amount = 4
data_recipe[powder_cuprium].results[1].amount = 4

data_item[dust_cuprium].localised_description = {"item-description.cuprium-dust"}
data_item[dust_cuprium].subgroup = is_copper_item
data_item[dust_cuprium].order = c
data_recipe[dust_cuprium].subgroup = is_copper_item
data_recipe[dust_cuprium].order = c
data_recipe[dust_cuprium].icons = TWO_D_I(sludge_cuprium, sodium_angels, dust_cuprium, water_greenyellow_waste)
data_recipe[dust_cuprium].energy_required = 2
data_recipe[dust_cuprium].ingredients =
{
    {type = item, name = sodium_angels, amount = 4},
    {type = fluid, name = sludge_cuprium, amount = 60}
}
data_recipe[dust_cuprium].results =
{
    {type = item, name = dust_cuprium, amount = 4},
    {type = fluid, name = water_greenyellow_waste, amount = 30}
}

data_item[crystal_cuprium].localised_description = {"item-description.cuprium-crystal"}
data_item[crystal_cuprium].subgroup = is_copper_item
data_item[crystal_cuprium].order = d
data_recipe[crystal_cuprium].subgroup = is_copper_item
data_recipe[crystal_cuprium].icons = TWO_I(concentrate_anodized_cuprium, crystal_cuprium)
data_recipe[crystal_cuprium].order = d
data_recipe[crystal_cuprium].results[1].amount = 4

data_recipe[crushed_cuprium_processing].subgroup = is_copper_item
data_recipe[crushed_cuprium_processing].icons = RECYCLING_I(recycling_png, crushed_cuprium)
data_recipe[crushed_cuprium_processing].order = d_a
data_recipe[crushed_cuprium_processing].results =
{
    {type = item, name = copper_ore, amount = 2},
    {type = item, name = tin_ore_bob, amount = 2}
}

data_recipe[powder_cuprium_processing].subgroup = is_copper_item
data_recipe[powder_cuprium_processing].icons = RECYCLING_I(recycling_png, powder_cuprium)
data_recipe[powder_cuprium_processing].order = d_b
data_recipe[powder_cuprium_processing].energy_required = 2
data_recipe[powder_cuprium_processing].ingredients[1].amount = 8
data_recipe[powder_cuprium_processing].results =
{
    {type = item, name = copper_ore, amount = 4},
    {type = item, name = tin_ore_bob, amount = 2},
    {type = item, name = aluminium_ore_bob, amount = 1},
    {type = item, name = silver_ore_bob, amount = 1}
}

data_recipe[dust_cuprium_processing].subgroup = is_copper_item
data_recipe[dust_cuprium_processing].icons = RECYCLING_I(recycling_png, dust_cuprium)
data_recipe[dust_cuprium_processing].order = d_c
data_recipe[dust_cuprium_processing].energy_required = 2
data_recipe[dust_cuprium_processing].results =
{
    {type = item, name = copper_ore, amount = 4},
    {type = item, name = tin_ore_bob, amount = 2},
    {type = item, name = aluminium_ore_bob, amount = 1},
    {type = item, name = silver_ore_bob, amount = 1},
    {type = item, name = gold_ore_bob, amount = 1}
}

data_recipe[crystal_cuprium_processing].subgroup = is_copper_item
data_recipe[crystal_cuprium_processing].icons = RECYCLING_I(recycling_png, crystal_cuprium)
data_recipe[crystal_cuprium_processing].order = d_d
data_recipe[crystal_cuprium_processing].energy_required = 2
data_recipe[crystal_cuprium_processing].ingredients[1].amount = 8
data_recipe[crystal_cuprium_processing].results =
{
    {type = item, name = copper_ore, amount = 4},
    {type = item, name = tin_ore_bob, amount = 2},
    {type = item, name = aluminium_ore_bob, amount = 1},
    {type = item, name = silver_ore_bob, amount = 1},
    {type = item, name = gold_ore_bob, amount = 1},
    {type = item, name = platinum_ore_angels, amount = 1}
}

-- COPPER FLUID
data_fluid[sludge_cuprium].subgroup = is_copper_fluid
data_fluid[sludge_cuprium].order = a
TIMSABA.barreling.add_simple_fluid(sludge_cuprium)
data_recipe[sludge_cuprium].subgroup = is_copper_fluid
data_recipe[sludge_cuprium].icons = THREE_D_I(powder_cuprium, water_thermal_angels, hydrofluoric_acid_angels, sludge_cuprium)
data_recipe[sludge_cuprium].order = a
data_recipe[sludge_cuprium].ingredients =
{
    {type = item, name = powder_cuprium, amount = 4},
    {type = fluid, name = water_thermal_angels, amount = 30},
    {type = fluid, name = hydrofluoric_acid_angels, amount = 30}
}
data_recipe[sludge_cuprium].results[1].amount = 60

data_fluid[slurry_cuprium].subgroup = is_copper_fluid
data_fluid[slurry_cuprium].order = b
TIMSABA.barreling.add_simple_fluid(slurry_cuprium)
data_recipe[slurry_cuprium].subgroup = is_copper_fluid
data_recipe[slurry_cuprium].icons = THREE_I(dust_cuprium, hydrofluoric_acid_angels, slurry_cuprium)
data_recipe[slurry_cuprium].order = b
data_recipe[slurry_cuprium].ingredients =
{
    {type = item, name = dust_cuprium, amount = 4},
    {type = fluid, name = hydrofluoric_acid_angels, amount = 60}
}
data_recipe[slurry_cuprium].results[1].amount = 60

data_fluid[concentrate_cuprium].subgroup = is_copper_fluid
data_fluid[concentrate_cuprium].order = c
TIMSABA.barreling.add_simple_fluid(concentrate_cuprium)
data_recipe[concentrate_cuprium].subgroup = is_copper_fluid
data_recipe[concentrate_cuprium].icons = TWO_D_I(slurry_cuprium, water_purified_angels, concentrate_cuprium, water_greenyellow_waste)
data_recipe[concentrate_cuprium].order = c
data_recipe[concentrate_cuprium].ingredients[2].amount = 60
data_recipe[concentrate_cuprium].results[2].name = water_greenyellow_waste
data_recipe[concentrate_cuprium].results[2].amount = 30

data_fluid[concentrate_anodized_cuprium].subgroup = is_copper_fluid
data_fluid[concentrate_anodized_cuprium].order = d
TIMSABA.barreling.add_simple_fluid(concentrate_anodized_cuprium)
data_recipe[concentrate_anodized_cuprium].subgroup = is_copper_fluid
data_recipe[concentrate_anodized_cuprium].icons = THREE_D_I(concentrate_cuprium, nil, water_purified_angels, concentrate_anodized_cuprium, slag_angels, water_greenyellow_waste)
data_recipe[concentrate_anodized_cuprium].order = d
data_recipe[concentrate_anodized_cuprium].ingredients[2].name = water_purified_angels
data_recipe[concentrate_anodized_cuprium].ingredients[2].amount = 60
data_recipe[concentrate_anodized_cuprium].results[2].name = water_greenyellow_waste
data_recipe[concentrate_anodized_cuprium].results[2].amount = 30

data_fluid[copper_chloride_II_solution_angels].localised_name = {"fluid-name.copper-chloride-II-solution"}
data_fluid[copper_chloride_II_solution_angels].localised_description = show_formula and {chemical_formula, "CuCl[font=default-tiny-bold]2(aq)[/font]"} or nil
data_fluid[copper_chloride_II_solution_angels].subgroup = is_copper_fluid
data_fluid[copper_chloride_II_solution_angels].order = e
TIMSABA.barreling.add_dangerous_fluid(copper_chloride_II_solution_angels)
data_recipe[copper_chloride_II_solution_angels].localised_name = {"fluid-name.copper-chloride-II-solution"}
data_recipe[copper_chloride_II_solution_angels].categories = {chemistry}
data_recipe[copper_chloride_II_solution_angels].subgroup = is_copper_fluid
data_recipe[copper_chloride_II_solution_angels].icons = TWO_D_I(copper_ore, hydrochloric_acid_angels, copper_chloride_II_solution_angels, hydrogen_angels)
data_recipe[copper_chloride_II_solution_angels].order = e
-- Cu + 2HCl --> CuCl₂ + H₂
data_recipe[copper_chloride_II_solution_angels].ingredients =
{
    {type = item, name = copper_ore, amount = 4},
    {type = fluid, name = hydrochloric_acid_angels, amount = 60}
}
data_recipe[copper_chloride_II_solution_angels].results =
{
    {type = fluid, name = copper_chloride_II_solution_angels, amount = 30},
    {type = fluid, name = hydrogen_angels, amount = 15} -- 39
}
data_recipe[copper_chloride_II_solution_angels].main_product = copper_chloride_II_solution_angels

data_item_subgroup["angels-ore-sorting-fluid"].order = y

TIMSABA.barreling.add_simple_fluid(slurry_slag)

TIMSABA.barreling.add_simple_fluid(sludge_mineral)

TIMSABA.barreling.add_simple_fluid(slurry_crystal)

TIMSABA.barreling.add_simple_fluid(seedling_crystal)

-- BUILDING
data_recipe[milling_drum].icons = TWO_I(steel_plate, milling_drum)

data_recipe[milling_drum_lubricated].icons = BUILDING_R_I(milling_drum, lubricant)
data_recipe[milling_drum_lubricated].ingredients[2].amount = 15

bobmods.lib.recipe.update_recycling_recipe({filter_coal, filter_ceramic})