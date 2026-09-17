local graphics_stannium = "__TIMSABA__/graphics/icons/angels/resource/stannium/"

-- Stannium / Sn + Cu + Al + Ag + U + Th

-- ITEM
crushed_stannium = "stannium-crushed"
powder_stannium = "stannium-powder"
dust_stannium = "stannium-dust"
crystal_stannium = "stannium-crystal"
TIMSABA.functions.create_items
({
    {
        name = crushed_stannium,
        subgroup = is_tin_item,
        icon = graphics_stannium .. crushed_stannium .. ".png",
        icon_size = 32,
        order = a
    },
    {
        name = powder_stannium,
        subgroup = is_tin_item,
        icon = graphics_stannium .. powder_stannium .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = dust_stannium,
        subgroup = is_tin_item,
        icon = graphics_stannium .. dust_stannium .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = crystal_stannium,
        subgroup = is_tin_item,
        icon = graphics_stannium .. crystal_stannium .. ".png",
        icon_size = 32,
        order = d
    }
})

-- FLUID
sludge_stannium = "stannium-sludge"
slurry_stannium = "stannium-slurry"
concentrate_stannium = "stannium-concentrate"
concentrate_anodized_stannium = "stannium-anodized-concentrate"
TIMSABA.functions.create_fluids
({
    {
        name = sludge_stannium,
        subgroup = is_tin_fluid,
        icon = graphics_stannium .. sludge_stannium .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("SnSdSd"),
        flow_color = TIMSABA.functions.fluid_color("SnSdSd")
    },
    {
        name = slurry_stannium,
        subgroup = is_tin_fluid,
        icon = graphics_stannium .. slurry_stannium .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("SnSnSl"),
        flow_color = TIMSABA.functions.fluid_color("SnSnSl")
    },
    {
        name = concentrate_stannium,
        subgroup = is_tin_fluid,
        icon = graphics_stannium .. concentrate_stannium .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("SnSnSn"),
        flow_color = TIMSABA.functions.fluid_color("SnSnSn")
    },
    {
        name = concentrate_anodized_stannium,
        subgroup = is_tin_fluid,
        icon = graphics_stannium .. concentrate_anodized_stannium .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("SnSnSd"),
        flow_color = TIMSABA.functions.fluid_color("SnSnSd")
    }
})
TIMSABA.barreling.add_simple_fluid(sludge_stannium)
TIMSABA.barreling.add_simple_fluid(slurry_stannium)
TIMSABA.barreling.add_simple_fluid(concentrate_stannium)
TIMSABA.barreling.add_simple_fluid(concentrate_anodized_stannium)

-- RECIPE
crushed_stannium_processing = "stannium-crushed-processing"
powder_stannium_processing = "stannium-powder-processing"
dust_stannium_processing = "stannium-dust-processing"
crystal_stannium_processing = "stannium-crystal-processing"
TIMSABA.functions.create_recipes
({
    -- ITEM
    {
        name = crushed_stannium,
        categories = {angels_ore_refining_T1},
        subgroup = is_tin_item,
        icons = THREE_I(crushed_bobmonium, crushed_franckeite, crushed_stannium),
        order = a,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = crushed_bobmonium, amount = 2},
            {type = item, name = crushed_franckeite, amount = 2}
        },
        results = {{type = item, name = crushed_stannium, amount = 4}},
        main_product = crushed_stannium
    },
    {
        name = powder_stannium,
        categories = {angels_powderizing_1},
        subgroup = is_tin_item,
        icons = TWO_I(crushed_stannium, powder_stannium),
        order = b,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = crushed_stannium, amount = 4},
            {type = item, name = milling_drum_lubricated, amount = 1}
        },
        results =
        {
            {type = item, name = powder_stannium, amount = 4},
            {type = item, name = milling_drum, amount = 1}
        },
        main_product = powder_stannium
    },
    {
        name = dust_stannium,
        categories = {angels_ore_refining_T2},
        subgroup = is_tin_item,
        icons = TWO_D_I(sludge_stannium, sodium_angels, dust_stannium, water_red_waste),
        order = c,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = sodium_angels, amount = 4},
            {type = fluid, name = sludge_stannium, amount = 60}
        },
        results =
        {
            {type = item, name = dust_stannium, amount = 4},
            {type = fluid, name = water_red_waste, amount = 30}
        },
        main_product = dust_stannium
    },
    {
        name = crystal_stannium,
        categories = {angels_crystallizing_3},
        subgroup = is_tin_item,
        icons = TWO_I(concentrate_anodized_stannium, crystal_stannium),
        order = d,
        energy_required = 2,
        ingredients = {{type = fluid, name = concentrate_anodized_stannium, amount = 60}},
        results = {{type = item, name = crystal_stannium, amount = 4}},
        main_product = crystal_stannium
    },
    -- SORTING
    {
        name = crushed_stannium_processing,
        categories = {angels_ore_sorting_1},
        subgroup = is_tin_item,
        icons = RECYCLING_I(recycling_png, crushed_stannium),
        order = d_a,
        allow_productivity = true,
        energy_required = 1, -- Stannium crushed (Sorting) / Sn + Cu
        ingredients = {{type = item, name = crushed_stannium, amount = 4}},
        results =
        {
            {type = item, name = tin_ore_bob, amount = 2},
            {type = item, name = copper_ore, amount = 2}
        },
        main_product = tin_ore_bob
    },
    {
        name = powder_stannium_processing,
        categories = {angels_ore_sorting_2},
        subgroup = is_tin_item,
        icons = RECYCLING_I(recycling_png, powder_stannium),
        order = d_b,
        allow_productivity = true,
        energy_required = 2, -- Stannium powder (Sorting) / Sn + Cu + Al + Ag
        ingredients = {{type = item, name = powder_stannium, amount = 8}},
        results =
        {
            {type = item, name = tin_ore_bob, amount = 4},
            {type = item, name = copper_ore, amount = 2},
            {type = item, name = aluminium_ore_bob, amount = 1},
            {type = item, name = silver_ore_bob, amount = 1}
        },
        main_product = tin_ore_bob
    },
    {
        name = dust_stannium_processing,
        categories = {angels_ore_sorting_3},
        subgroup = is_tin_item,
        icons = RECYCLING_I(recycling_png, dust_stannium),
        order = d_c,
        allow_productivity = true,
        energy_required = 2, -- Stannium dust (Sorting) / Sn + Cu + Al + Ag + U
        ingredients = {{type = item, name = dust_stannium, amount = 8}},
        results =
        {
            {type = item, name = tin_ore_bob, amount = 4},
            {type = item, name = copper_ore, amount = 2},
            {type = item, name = aluminium_ore_bob, amount = 1},
            {type = item, name = silver_ore_bob, amount = 1},
            {type = item, name = uranium_ore, amount = 1}
        },
        main_product = tin_ore_bob
    },
    {
        name = crystal_stannium_processing,
        categories = {angels_ore_sorting_4},
        subgroup = is_tin_item,
        icons = RECYCLING_I(recycling_png, crystal_stannium),
        order = d_d,
        allow_productivity = true,
        energy_required = 2, -- Stannium crystal (Sorting) / Sn + Cu + Al + Ag + U + Th
        ingredients = {{type = item, name = crystal_stannium, amount = 8}},
        results =
        {
            {type = item, name = tin_ore_bob, amount = 4},
            {type = item, name = copper_ore, amount = 2},
            {type = item, name = aluminium_ore_bob, amount = 1},
            {type = item, name = silver_ore_bob, amount = 1},
            {type = item, name = uranium_ore, amount = 1},
            {type = item, name = thorium_ore_bob, amount = 1}
        },
        main_product = tin_ore_bob
    },
    -- FLUID
    {
        name = sludge_stannium,
        categories = {chemistry},
        subgroup = is_tin_fluid,
        icons = THREE_D_I(powder_stannium, water_thermal_angels, nitric_acid_angels, sludge_stannium),
        order = a,
        ingredients =
        {
            {type = item, name = powder_stannium, amount = 4},
            {type = fluid, name = water_thermal_angels, amount = 30},
            {type = fluid, name = nitric_acid_angels, amount = 30}
        },
        results = {{type = fluid, name = sludge_stannium, amount = 60}},
        main_product = sludge_stannium
    },
    {
        name = slurry_stannium,
        categories = {angels_ore_refining_T3B},
        subgroup = is_tin_fluid,
        icons = THREE_I(dust_stannium, nitric_acid_angels, slurry_stannium),
        order = b,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = dust_stannium, amount = 4},
            {type = fluid, name = nitric_acid_angels, amount = 60}
        },
        results = {{type = fluid, name = slurry_stannium, amount = 60}},
        main_product = slurry_stannium
    },
    {
        name = concentrate_stannium,
        categories = {angels_filtering_3},
        subgroup = is_tin_fluid,
        icons = TWO_D_I(slurry_stannium, water_purified_angels, concentrate_stannium, water_red_waste),
        order = c,
        energy_required = 2,
        ingredients =
        {
            {type = fluid, name = slurry_stannium, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60},
            {type = item, name = filter_ceramic, amount = 1}
        },
        results =
        {
            {type = fluid, name = concentrate_stannium, amount = 60},
            {type = fluid, name = water_red_waste, amount = 30},
            {type = item, name = filter_ceramic_used, amount = 1}
        },
        main_product = concentrate_stannium
    },
    {
        name = concentrate_anodized_stannium,
        categories = {angels_ore_refining_T3_5},
        subgroup = is_tin_fluid,
        icons = THREE_D_I(concentrate_stannium, nil, water_purified_angels, concentrate_anodized_stannium, slag_angels, water_red_waste),
        order = d,
        energy_required = 2,
        ingredients =
        {
            {type = fluid, name = concentrate_stannium, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = concentrate_anodized_stannium, amount = 60},
            {type = fluid, name = water_red_waste, amount = 30},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = concentrate_anodized_stannium
    }
})