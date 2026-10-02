if mods[hyarion_mods] then
    hyarion_air_separation = "hyarion-air-separation"
    TIMSABA.functions.create_recipes
    ({
        {
            name = hyarion_air,
            categories = {angels_petrochem_air_filtering},
            subgroup = is_hyarion_air,
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = hyarion_air, amount = 240}},
            main_product = hyarion_air,
            surface_conditions = {{property = pressure, min = 8000, max = 8000}}
        },
        {
            name = hyarion_air_separation,
            categories = {angels_advanced_chemistry},
            subgroup = is_hyarion_air,
            icons = FOUR_R_I(hyarion_air, nitrogen_angels, methane_angels, silane_gas),
            order = a_a,
            energy_required = 2,
            ingredients = {{type = fluid, name = hyarion_air, amount = 120}},
            results =
            {
                {type = fluid, name = nitrogen_angels, amount = 60},
                {type = fluid, name = methane_angels, amount = 30},
                {type = fluid, name = silane_gas, amount = 30}
            },
            main_product = nitrogen_angels
        }
    })

    -- REMALTING OF METAL ORE
    remelting_of_metal_ore_3 = "remelting-of-metal-ore-lead"
    remelting_of_metal_ore_4 = "remelting-of-metal-ore-tin"
    remelting_of_metal_ore_5 = "remelting-of-metal-ore-manganese"
    remelting_of_metal_ore_6 = "remelting-of-metal-ore-magnesium"
    remelting_of_metal_ore_7 = "remelting-of-metal-ore-nicekl"
    remelting_of_metal_ore_8 = "remelting-of-metal-ore-aluminium"
    remelting_of_metal_ore_9 = "remelting-of-metal-ore-zinc"
    remelting_of_metal_ore_10 = "remelting-of-metal-ore-silver"
    remelting_of_metal_ore_11 = "remelting-of-metal-ore-titanium"
    remelting_of_metal_ore_12 = "remelting-of-metal-ore-gold"
    remelting_of_metal_ore_13 = "remelting-of-metal-ore-cobalt"
    remelting_of_metal_ore_14 = "remelting-of-metal-ore-uranium"
    remelting_of_metal_ore_15 = "remelting-of-metal-ore-thorium"
    remelting_of_metal_ore_16 = "remelting-of-metal-ore-chromium"
    remelting_of_metal_ore_17 = "remelting-of-metal-ore-tungsten"
    remelting_of_metal_ore_18 = "remelting-of-metal-ore-platinum"
    local function remelting_of_metal_ore_recipe(parameters)
        TIMSABA.functions.create_recipes
        ({
            {
                localised_name = {"recipe-name.remelting-of-metal-ore", {"item-name." .. parameters.local_name}},
                name = parameters.name,
                categories = {metallurgy},
                subgroup = is_hyarion_recipe_ore,
                icons = THREE_I(metallic_ore, lava, parameters.ore),
                order = parameters.order,
                energy_required = 8,
                ingredients =
                {
                    {type = item, name = metallic_ore, amount = 4},
                    {type = fluid, name = lava, amount = 60}
                },
                results = {{type = item, name = parameters.ore, amount = 8}},
                main_product = parameters.ore
            }
        })
    end
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_3,  order = a_c, ore = lead_ore_bob,         local_name = "angels-lead-ore"})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_4,  order = a_d, ore = tin_ore_bob,          local_name = "angels-tin-ore"})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_5,  order = a_e, ore = manganese_ore_angels, local_name = manganese_ore_angels})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_6,  order = a_f, ore = magnesium_ore,        local_name = magnesium_ore})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_7,  order = a_g, ore = nickel_ore_bob,       local_name = "angels-nickel-ore"})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_8,  order = a_h, ore = aluminium_ore_bob,    local_name = "angels-bauxite-ore"})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_9,  order = a_i, ore = zinc_ore_bob,         local_name = "angels-zinc-ore"})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_10, order = a_j, ore = silver_ore_bob,       local_name = "angels-silver-ore"})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_11, order = a_k, ore = titanium_ore_bob,     local_name = "angels-rutile-ore"})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_12, order = a_l, ore = gold_ore_bob,         local_name = "angels-gold-ore"})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_13, order = a_m, ore = cobalt_ore_bob,       local_name = "angels-cobalt-ore"})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_14, order = a_n, ore = uranium_ore,          local_name = uranium_ore})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_15, order = a_o, ore = thorium_ore_bob,      local_name = thorium_ore_bob})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_16, order = a_p, ore = chromium_ore_angels,  local_name = "chromium-ore"})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_17, order = a_q, ore = tungsten_ore_bob,     local_name = tungsten_ore_bob})
    remelting_of_metal_ore_recipe({name = remelting_of_metal_ore_18, order = a_r, ore = platinum_ore_angels,  local_name = platinum_ore_angels})

    planetaris_polished_amethyst = "planetaris-polished-amethyst"
    planetaris_polished_topaz = "planetaris-polished-topaz"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"item-name." .. polished_amethyst_bob},
            name = planetaris_polished_amethyst,
            categories = {hyarion_polishing},
            subgroup = is_hyarion_recipe_polished,
            icons = THREE_I(amethyst_bob, polishing_compound_hyarion, polished_amethyst_bob),
            order = f,
            ingredients =
            {
                {type = item, name = amethyst_bob, amount = 1},
                {type = fluid, name = polishing_compound_hyarion, amount = 15}
            },
            results = {{type = item, name = polished_amethyst_bob, amount = 1}},
            main_product = polished_amethyst_bob
        },
        {
            localised_name = {"item-name." .. polished_topaz_bob},
            name = planetaris_polished_topaz,
            categories = {hyarion_polishing},
            subgroup = is_hyarion_recipe_polished,
            icons = THREE_I(topaz_bob, polishing_compound_hyarion, polished_topaz_bob),
            order = g,
            ingredients =
            {
                {type = item, name = topaz_bob, amount = 1},
                {type = fluid, name = polishing_compound_hyarion, amount = 15}
            },
            results = {{type = item, name = polished_topaz_bob, amount = 1}},
            main_product = polished_topaz_bob
        },
        -- SELENIUM
        {
            name = selenium_powder,
            categories = {powderizing_4},
            subgroup = is_selenium,
            icons = TWO_I(selenium, selenium_powder),
            order = b,
            energy_required = 0.5,
            ingredients = {{type = item, name = selenium, amount = 1}},
            results = {{type = item, name = selenium_powder, amount = 1}},
            main_product = selenium_powder
        },
        -- SPACE
        {
            name = bismuth_oxyselenide,
            categories = {chemistry},
            subgroup = is_space_environment_8,
            icons = THREE_D_I(raw_bismuth, selenium_powder, oxygen_angels, bismuth_oxyselenide),
            order = h,
            -- 2Bi + Se + O₂ --> Bi₂O₂Se
            ingredients =
            {
                {type = item, name = polished_bismuth, amount = 4},
                {type = item, name = selenium_powder, amount = 2},
                {type = fluid, name = oxygen_angels, amount = 30}
            },
            results = {{type = item, name = bismuth_oxyselenide, amount = 2}},
            main_product = bismuth_oxyselenide
        }
    })
end