if mods[corrundum_mods] then
    -- CORRUNDUM AIR
    corrundum_air_separation = "corrundum-air-separation"
    corrundum_air_separation_2 = "corrundum-air-separation-2"
    TIMSABA.functions.create_recipes
    ({
        {
            name = corrundum_air,
            categories = {angels_petrochem_air_filtering},
            subgroup = is_corrundum_air,
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = corrundum_air, amount = 240}},
            main_product = corrundum_air,
            surface_conditions = {{property = pressure, min = 6000, max = 6000}}
        },
        {
            name = corrundum_air_separation,
            categories = {angels_advanced_chemistry},
            subgroup = is_corrundum_air,
            icons = FOUR_R_I(corrundum_air, nitrogen_angels, oxygen_angels, carbon_dioxide_angels),
            order = a_a,
            energy_required = 2,
            ingredients = {{type = fluid, name = corrundum_air, amount = 120}},
            results =
            {
                {type = fluid, name = nitrogen_angels, amount = 60},
                {type = fluid, name = oxygen_angels, amount = 30},
                {type = fluid, name = carbon_dioxide_angels, amount = 30}
            },
            main_product = nitrogen_angels
        },
        {
            name = corrundum_air_separation_2,
            categories = {angels_advanced_chemistry},
            subgroup = is_corrundum_air,
            icons = FOUR_R_I(corrundum_air, condensates_angels, hydrogen_sulfide_angels, sulfur_dioxide_angels),
            order = a_a,
            energy_required = 2,
            ingredients = {{type = fluid, name = corrundum_air, amount = 120}},
            results =
            {
                {type = fluid, name = condensates_angels, amount = 60},
                {type = fluid, name = hydrogen_sulfide_angels, amount = 30},
                {type = fluid, name = sulfur_dioxide_angels, amount = 30}
            },
            main_product = condensates_angels
        }
    })

    -- PLATINUM
    platinum_powder_corrundum = "platinum-powder-corrundum"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"item-name." .. platinum_powder},
            name = platinum_powder_corrundum,
            categories = {powderizing_4},
            subgroup = is_corrundum_platinum,
            icons = TWO_I(platinum_ore_angels, platinum_powder),
            order = a,
            ingredients = {{type = item, name = platinum_ore_angels, amount = 1}},
            results = {{type = item, name = platinum_powder, amount = 1}},
            main_product = platinum_powder,
            surface_conditions = {{property = pressure, min = 6000, max = 6000}}
        }
    })

    -- SLAG PROCESSING
    corrundum_slag_processing = "corrundum-slag-processing"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.angels-slag_processing_2", {"item-name." .. chalcopyrite_ore}, {"item-name.sperrylite-ore"}},
            name = corrundum_slag_processing,
            categories = {crystallizing_4},
            subgroup = slag_processing_1,
            icons = THREE_R_I(sludge_mineral, chalcopyrite_ore, sperrylite_ore),
            order = c .. "-" .. data_planet[planet_corrundum].order,
            allow_productivity = true,
            energy_required = 8,
            ingredients = {{type = fluid, name = sludge_mineral, amount = 120}},
            results =
            {
                {type = item, name = chalcopyrite_ore, amount = 1, independent_probability = 0.5},
                {type = item, name = sperrylite_ore, amount = 1, independent_probability = 0.5}
            },
            surface_conditions = {{property = pressure, min = 6000, max = 6000}}
        }
    })
end