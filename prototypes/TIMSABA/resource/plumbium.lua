local graphics_plumbium = "__TIMSABA__/graphics/icons/angels/resource/plumbium/"

-- Plumbium / Pb + Fe + Ni + Zn + Co + W

-- ITEM
crushed_plumbium = "plumbium-crushed"
powder_plumbium = "plumbium-powder"
dust_plumbium = "plumbium-dust"
crystal_plumbium = "plumbium-crystal"
TIMSABA.functions.create_items
({
    {
        name = crushed_plumbium,
        subgroup = is_lead_item,
        icon = graphics_plumbium .. crushed_plumbium .. ".png",
        icon_size = 32,
        order = a
    },
    {
        name = powder_plumbium,
        subgroup = is_lead_item,
        icon = graphics_plumbium .. powder_plumbium .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = dust_plumbium,
        subgroup = is_lead_item,
        icon = graphics_plumbium .. dust_plumbium .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = crystal_plumbium,
        subgroup = is_lead_item,
        icon = graphics_plumbium .. crystal_plumbium .. ".png",
        icon_size = 32,
        order = d
    }
})

-- FLUID
sludge_plumbium = "plumbium-sludge"
slurry_plumbium = "plumbium-slurry"
concentrate_plumbium = "plumbium-concentrate"
concentrate_anodized_plumbium = "plumbium-anodized-concentrate"
TIMSABA.functions.create_fluids
({
    {
        name = sludge_plumbium,
        subgroup = is_lead_fluid,
        icon = graphics_plumbium .. sludge_plumbium .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("PbSdSd"),
        flow_color = TIMSABA.functions.fluid_color("PbSdSd")
    },
    {
        name = slurry_plumbium,
        subgroup = is_lead_fluid,
        icon = graphics_plumbium .. slurry_plumbium .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("PbPbSl"),
        flow_color = TIMSABA.functions.fluid_color("PbPbSl")
    },
    {
        name = concentrate_plumbium,
        subgroup = is_lead_fluid,
        icon = graphics_plumbium .. concentrate_plumbium .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("PbPbPb"),
        flow_color = TIMSABA.functions.fluid_color("PbPbPb")
    },
    {
        name = concentrate_anodized_plumbium,
        subgroup = is_lead_fluid,
        icon = graphics_plumbium .. concentrate_anodized_plumbium .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("PbPbSd"),
        flow_color = TIMSABA.functions.fluid_color("PbPbSd")
    }
})
TIMSABA.barreling.add_simple_fluid(sludge_plumbium)
TIMSABA.barreling.add_simple_fluid(slurry_plumbium)
TIMSABA.barreling.add_simple_fluid(concentrate_plumbium)
TIMSABA.barreling.add_simple_fluid(concentrate_anodized_plumbium)

-- RECIPE
crushed_plumbium_processing = "plumbium-crushed-processing"
powder_plumbium_processing = "plumbium-powder-processing"
dust_plumbium_processing = "plumbium-dust-processing"
crystal_plumbium_processing = "plumbium-crystal-processing"
TIMSABA.functions.create_recipes
({
    -- ITEM
    {
        name = crushed_plumbium,
        categories = {angels_ore_refining_T1},
        subgroup = is_lead_item,
        icons = THREE_I(crushed_rubyte, crushed_senaite, crushed_plumbium),
        order = a,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = crushed_rubyte, amount = 2},
            {type = item, name = crushed_senaite, amount = 2}
        },
        results = {{type = item, name = crushed_plumbium, amount = 4}},
        main_product = crushed_plumbium
    },
    {
        name = powder_plumbium,
        categories = {angels_powderizing_1},
        subgroup = is_lead_item,
        icons = TWO_I(crushed_plumbium, powder_plumbium),
        order = b,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = crushed_plumbium, amount = 4},
            {type = item, name = milling_drum_lubricated, amount = 1}
        },
        results =
        {
            {type = item, name = powder_plumbium, amount = 4},
            {type = item, name = milling_drum, amount = 1}
        },
        main_product = powder_plumbium
    },
    {
        name = dust_plumbium,
        categories = {angels_ore_refining_T2},
        subgroup = is_lead_item,
        icons = TWO_D_I(sludge_plumbium, sodium_angels, dust_plumbium, water_red_waste),
        order = c,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = sodium_angels, amount = 4},
            {type = fluid, name = sludge_plumbium, amount = 60}
        },
        results =
        {
            {type = item, name = dust_plumbium, amount = 4},
            {type = fluid, name = water_red_waste, amount = 30}
        },
        main_product = dust_plumbium
    },
    {
        name = crystal_plumbium,
        categories = {angels_crystallizing_3},
        subgroup = is_lead_item,
        icons = TWO_I(concentrate_anodized_plumbium, crystal_plumbium),
        order = d,
        energy_required = 2,
        ingredients = {{type = fluid, name = concentrate_anodized_plumbium, amount = 60}},
        results = {{type = item, name = crystal_plumbium, amount = 4}},
        main_product = crystal_plumbium
    },
    -- SORTING
    {
        name = crushed_plumbium_processing,
        categories = {angels_ore_sorting_1},
        subgroup = is_lead_item,
        icons = RECYCLING_I(recycling_png, crushed_plumbium),
        order = d_a,
        allow_productivity = true,
        energy_required = 1, -- Plumbium crushed (Sorting) / Pb + Fe
        ingredients = {{type = item, name = crushed_plumbium, amount = 4}},
        results =
        {
            {type = item, name = lead_ore_bob, amount = 2},
            {type = item, name = iron_ore, amount = 2}
        },
        main_product = lead_ore_bob
    },
    {
        name = powder_plumbium_processing,
        categories = {angels_ore_sorting_2},
        subgroup = is_lead_item,
        icons = RECYCLING_I(recycling_png, powder_plumbium),
        order = d_b,
        allow_productivity = true,
        energy_required = 2, -- Plumbium powder (Sorting) / Pb + Fe + Ni + Zn
        ingredients = {{type = item, name = powder_plumbium, amount = 8}},
        results =
        {
            {type = item, name = lead_ore_bob, amount = 4},
            {type = item, name = iron_ore, amount = 2},
            {type = item, name = nickel_ore_bob, amount = 1},
            {type = item, name = zinc_ore_bob, amount = 1}
        },
        main_product = lead_ore_bob
    },
    {
        name = dust_plumbium_processing,
        categories = {angels_ore_sorting_3},
        subgroup = is_lead_item,
        icons = RECYCLING_I(recycling_png, dust_plumbium),
        order = d_c,
        allow_productivity = true,
        energy_required = 2, -- Plumbium dust (Sorting) / Pb + Fe + Ni + Zn + Co
        ingredients = {{type = item, name = dust_plumbium, amount = 8}},
        results =
        {
            {type = item, name = lead_ore_bob, amount = 4},
            {type = item, name = iron_ore, amount = 2},
            {type = item, name = nickel_ore_bob, amount = 1},
            {type = item, name = zinc_ore_bob, amount = 1},
            {type = item, name = cobalt_ore_bob, amount = 1}
        },
        main_product = lead_ore_bob
    },
    {
        name = crystal_plumbium_processing,
        categories = {angels_ore_sorting_4},
        subgroup = is_lead_item,
        icons = RECYCLING_I(recycling_png, crystal_plumbium),
        order = d_d,
        allow_productivity = true,
        energy_required = 2, -- Plumbium crystal (Sorting) / Pb + Fe + Ni + Zn + Co + W
        ingredients = {{type = item, name = crystal_plumbium, amount = 8}},
        results =
        {
            {type = item, name = lead_ore_bob, amount = 4},
            {type = item, name = iron_ore, amount = 2},
            {type = item, name = nickel_ore_bob, amount = 1},
            {type = item, name = zinc_ore_bob, amount = 1},
            {type = item, name = cobalt_ore_bob, amount = 1},
            {type = item, name = tungsten_ore_bob, amount = 1}
        },
        main_product = lead_ore_bob
    },
    -- FLUID
    {
        name = sludge_plumbium,
        categories = {chemistry},
        subgroup = is_lead_fluid,
        icons = THREE_D_I(powder_plumbium, water_thermal_angels, hydrochloric_acid_angels, sludge_plumbium),
        order = a,
        ingredients =
        {
            {type = item, name = powder_plumbium, amount = 4},
            {type = fluid, name = water_thermal_angels, amount = 30},
            {type = fluid, name = hydrochloric_acid_angels, amount = 30}
        },
        results = {{type = fluid, name = sludge_plumbium, amount = 60}},
        main_product = sludge_plumbium
    },
    {
        name = slurry_plumbium,
        categories = {angels_ore_refining_T3B},
        subgroup = is_lead_fluid,
        icons = THREE_I(dust_plumbium, hydrochloric_acid_angels, slurry_plumbium),
        order = b,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = dust_plumbium, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 60}
        },
        results = {{type = fluid, name = slurry_plumbium, amount = 60}},
        main_product = slurry_plumbium
    },
    {
        name = concentrate_plumbium,
        categories = {angels_filtering_3},
        subgroup = is_lead_fluid,
        icons = TWO_D_I(slurry_plumbium, water_purified_angels, concentrate_plumbium, water_green_waste),
        order = c,
        energy_required = 2,
        ingredients =
        {
            {type = fluid, name = slurry_plumbium, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60},
            {type = item, name = filter_ceramic, amount = 1}
        },
        results =
        {
            {type = fluid, name = concentrate_plumbium, amount = 60},
            {type = fluid, name = water_green_waste, amount = 30},
            {type = item, name = filter_ceramic_used, amount = 1}
        },
        main_product = concentrate_plumbium
    },
    {
        name = concentrate_anodized_plumbium,
        categories = {angels_ore_refining_T3_5},
        subgroup = is_lead_fluid,
        icons = THREE_D_I(concentrate_plumbium, nil, water_purified_angels, concentrate_anodized_plumbium, slag_angels, water_green_waste),
        order = d,
        energy_required = 2,
        ingredients =
        {
            {type = fluid, name = concentrate_plumbium, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = concentrate_anodized_plumbium, amount = 60},
            {type = fluid, name = water_green_waste, amount = 30},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = concentrate_anodized_plumbium
    }
})