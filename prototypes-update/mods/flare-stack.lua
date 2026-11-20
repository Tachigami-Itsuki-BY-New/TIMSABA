if mods[flare_stack_mods] then
    if settings.startup["flare-stack-disable-incinerators"].value == false then
        local is_flare_stack = "is-flare-stack"
        TIMSABA.functions.create_subgroups(ig_production, {{name = is_flare_stack, order = z}})

        local incinerator = "incinerator"
        data_item[incinerator].subgroup = is_flare_stack
        data_item[incinerator].order = a
        data_item[incinerator].stack_size = 32
        data_item[incinerator].weight = 31250
        data_recipe[incinerator].subgroup = is_flare_stack
        data_recipe[incinerator].order = a
        data_recipe[incinerator].ingredients =
        {
            {type = item, name = iron_gear_wheel, amount = 4},
            {type = item, name = iron_pipe, amount = 4},
            {type = item, name = basic_circuit_board, amount = 2},
            {type = item, name = stone_furnace, amount = 1}
        }
        data_furnace[incinerator].subgroup = is_flare_stack
        data_furnace[incinerator].order = a
        data_furnace[incinerator].energy_usage = 480 .. kW
        data_furnace[incinerator].energy_source.fuel_categories = {base_fuel}
        data_furnace[incinerator].energy_source.emissions_per_minute.pollution = 16

        local electric_incinerator = "electric-incinerator"
        data_item[electric_incinerator].subgroup = is_flare_stack
        data_item[electric_incinerator].order = b
        data_item[electric_incinerator].stack_size = 32
        data_item[electric_incinerator].weight = 31250
        data_recipe[electric_incinerator].subgroup = is_flare_stack
        data_recipe[electric_incinerator].order = b
        data_recipe[electric_incinerator].ingredients =
        {
            {type = item, name = steel_gear_wheel, amount = 4},
            {type = item, name = steel_pipe, amount = 4},
            {type = item, name = electronic_circuit, amount = 2},
            {type = item, name = steel_furnace, amount = 1},
            {type = item, name = incinerator, amount = 1}
        }
        data_furnace[electric_incinerator].subgroup = is_flare_stack
        data_furnace[electric_incinerator].order = b
        data_furnace[electric_incinerator].energy_usage = (240 - drain) .. kW
        data_furnace[electric_incinerator].energy_source.drain = drain .. kW
        data_furnace[electric_incinerator].energy_source.emissions_per_minute.pollution = 16

        bobmods.lib.recipe.update_recycling_recipe({incinerator, electric_incinerator})
    end
end