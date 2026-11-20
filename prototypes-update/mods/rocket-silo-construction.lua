if mods[rocket_silo_construction_mods] then
    data_item[excavation_site].localised_name = {"entity-name." .. excavation_site}
    data_item[excavation_site].localised_description = {"entity-description." .. excavation_site}
    data_item[excavation_site].order = i
    data_item[excavation_site].weight = 1000000000
    data_recipe[excavation_site].localised_name = data_item[excavation_site].localised_name
    data_recipe[excavation_site].localised_description = data_item[excavation_site].localised_description
    data_recipe[excavation_site].order = i
    data_recipe[excavation_site].energy_required = 128
    data_recipe[excavation_site].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 128},
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = copper_tungsten_pipe, amount = 64},
        {type = item, name = reinforced_concrete, amount = 256},
        {type = item, name = tungsten_plate_bob, amount = 256},
        {type = item, name = tungsten_carbide_bob, amount = 128},
        {type = item, name = copper_tungsten_plate_bob, amount = 512}
    }

    bobmods.lib.recipe.update_recycling_recipe({excavation_site})
end