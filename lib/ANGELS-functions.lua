ANGELS = ANGELS or {}

ANGELS.functions = ANGELS.functions or {}

function ANGELS.functions.create_crushed(crushed, subgroup, order, ore)
    TIMSABA.functions.create_recipes
    ({
        {
            name = crushed,
            categories = {angels_ore_refining_T1},
            subgroup = subgroup,
            icons = THREE_R_I(ore, crushed, stone_crushed_angels),
            order = order,
            energy_required = 4,
            ingredients = {{type = item, name = ore, amount = 4}},
            results =
            {
                {type = item, name = crushed, amount = 4},
                {type = item, name = stone_crushed_angels, amount = 2}
            },
            main_product = crushed
        }
    })
end

function ANGELS.functions.create_chunk(chunk, subgroup, order, crushed, result_item, result_fluid)
    TIMSABA.functions.create_recipes
    ({
        {
            name = chunk,
            categories = {angels_ore_refining_T2},
            subgroup = subgroup,
            icons = THREE_D_I(crushed, nil, water_purified_angels, chunk, result_item, result_fluid),
            order = order,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = crushed, amount = 16},
                {type = fluid, name = water_purified_angels, amount = 240}
            },
            results =
            {
                {type = item, name = chunk, amount = 16},
                {type = item, name = result_item, amount = 4, independent_probability = 0.5},
                {type = fluid, name = result_fluid, amount = 240}
            },
            main_product = chunk
        }
    })
end

function ANGELS.functions.create_crystal(crystal, subgroup, order, chunk, acid)
    TIMSABA.functions.create_recipes
    ({
        {
            name = crystal,
            categories = {angels_ore_refining_T3},
            subgroup = subgroup,
            icons = THREE_I(chunk, acid, crystal),
            order = order,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = chunk, amount = 16},
                {type = fluid, name = acid, amount = 60}
            },
            results = {{type = item, name = crystal, amount = 16}},
            main_product = crystal
        }
    })
end

function ANGELS.functions.create_purified(purified, subgroup, order, crystal)
    TIMSABA.functions.create_recipes
    ({
        {
            name = purified,
            categories = {angels_ore_refining_T4},
            subgroup = subgroup,
            icons = THREE_D_I(crystal, powdered_chlorine_bleach, powdered_oxygen_bleach, purified),
            order = order,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = crystal, amount = 16},
                {type = item, name = powdered_chlorine_bleach, amount = 4},
                {type = item, name = powdered_oxygen_bleach, amount = 4}
            },
            results = {{type = item, name = purified, amount = 16}},
            main_product = purified
        }
    })
end

function ANGELS.functions.create_ore_processing(ore, subgroup, order, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.sorting-recipe", {"item-name." .. ore}},
            name = ore .. _sorting,
            categories = {angels_ore_sorting_5},
            subgroup = subgroup,
            icons = RECYCLING_I(recycling_png, ore),
            order = order,
            allow_productivity = true,
            energy_required = 8,
            ingredients = {{type = item, name = ore, amount = 16}},
            results = {{type = item, name = result, amount = 4}},
            hide_from_signal_gui = false
        }
    })
end

function ANGELS.functions.create_crushed_processing(crushed, subgroup, order, ore_1, ore_2, ore_3)
    TIMSABA.functions.create_recipes
    ({
        {
            name = crushed .. _sorting,
            categories = {angels_ore_sorting_1},
            subgroup = subgroup,
            icons = RECYCLING_I(recycling_png, crushed),
            order = order,
            allow_productivity = true,
            energy_required = 8,
            ingredients = {{type = item, name = crushed, amount = 32}},
            results =
            {
                {type = item, name = ore_1, amount = 16},
                {type = item, name = ore_2, amount = 8},
                {type = item, name = ore_3, amount = 8}
            },
            hide_from_signal_gui = false
        }
    })
end

function ANGELS.functions.create_chunk_processing(chunk, subgroup, order, ore_1, ore_2, ore_3, ore_4, ore_5)
    TIMSABA.functions.create_recipes
    ({
        {
            name = chunk .. _sorting,
            categories = {angels_ore_sorting_2},
            subgroup = subgroup,
            icons = RECYCLING_I(recycling_png, chunk),
            order = order,
            allow_productivity = true,
            energy_required = 8,
            ingredients = {{type = item, name = chunk, amount = 32}},
            results =
            {
                {type = item, name = ore_1, amount = 16},
                {type = item, name = ore_2, amount = 8},
                {type = item, name = ore_3, amount = 4},
                {type = item, name = ore_4, amount = 4},
                {type = item, name = ore_5, amount = 4}
            },
            hide_from_signal_gui = false
        }
    })
end

function ANGELS.functions.create_crystal_processing(crystal, subgroup, order, ore_1, ore_2, ore_3, ore_4, ore_5, ore_6)
    TIMSABA.functions.create_recipes
    ({
        {
            name = crystal .. _sorting,
            categories = {angels_ore_sorting_3},
            subgroup = subgroup,
            icons = RECYCLING_I(recycling_png, crystal),
            order = order,
            allow_productivity = true,
            energy_required = 8,
            ingredients = {{type = item, name = crystal, amount = 32}},
            results =
            {
                {type = item, name = ore_1, amount = 16},
                {type = item, name = ore_2, amount = 8},
                {type = item, name = ore_3, amount = 4},
                {type = item, name = ore_4, amount = 4},
                {type = item, name = ore_5, amount = 4},
                {type = item, name = ore_6, amount = 4, independent_probability = 0.5}
            },
            hide_from_signal_gui = false
        }
    })
end

function ANGELS.functions.create_purified_processing(purified, subgroup, order, ore_1, ore_2, ore_3, ore_4, ore_5, ore_6)
    TIMSABA.functions.create_recipes
    ({
        {
            name = purified .. _sorting,
            categories = {angels_ore_sorting_4},
            subgroup = subgroup,
            icons = RECYCLING_I(recycling_png, purified),
            order = order,
            allow_productivity = true,
            energy_required = 8,
            ingredients = {{type = item, name = purified, amount = 32}},
            results =
            {
                {type = item, name = ore_1, amount = 16},
                {type = item, name = ore_2, amount = 8},
                {type = item, name = ore_3, amount = 4},
                {type = item, name = ore_4, amount = 4},
                {type = item, name = ore_5, amount = 4},
                {type = item, name = ore_6, amount = 4}
            },
            hide_from_signal_gui = false
        }
    })
end