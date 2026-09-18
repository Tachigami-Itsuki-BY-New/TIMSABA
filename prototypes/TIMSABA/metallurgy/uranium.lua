local graphics_uranium = "__TIMSABA__/graphics/icons/angels/metallurgy/uranium/"
local graphics_uranium_enrichment = "__TIMSABA__/graphics/icons/angels/metallurgy/uranium/enrichment/"

-- GROUPS
is_uranium = "is-uranium"
local is_uranium_chemistry = "is-uranium-chemistry"
TIMSABA.functions.create_subgroups(ig_smelting,
{
    {name = is_uranium,           order = o},
    {name = is_uranium_chemistry, order = o_a}
})
local is_uranium_casting = "is-uranium-casting"
TIMSABA.functions.create_subgroups(ig_casting, {{name = is_uranium_casting, order = o}})

-- ITEM
uranium_processed = "uranium-processed"
uranium_pellet = "uranium-pellet"
uranium_oxide_IV = "uranium-oxide-IV"
uranium_fluoride_IV = "uranium-fluoride-IV"
ammonium_diuranate = "ammonium-diuranate"
uranium_oxide_VI = "uranium-oxide-VI"
uranium_238_plate = "uranium-238-plate"
uranium_fluoride_IV_238 = "uranium-fluoride-IV-238"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "U"} or nil,
        name = uranium_processed,
        subgroup = is_uranium,
        icon = graphics_uranium .. uranium_processed .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "U"} or nil,
        name = uranium_pellet,
        subgroup = is_uranium,
        icon = graphics_uranium .. uranium_pellet .. ".png",
        order = c
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "UO[font=default-tiny-bold]2[/font]"} or nil,
        name = uranium_oxide_IV,
        subgroup = is_uranium_chemistry,
        icon = graphics_uranium .. uranium_oxide_IV .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "UF[font=default-tiny-bold]4[/font]"} or nil,
        name = uranium_fluoride_IV,
        subgroup = is_uranium_chemistry,
        icon = graphics_uranium .. uranium_fluoride_IV .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]U[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]7[/font]"} or nil,
        name = ammonium_diuranate,
        subgroup = is_uranium_chemistry,
        icon = graphics_uranium .. ammonium_diuranate .. ".png",
        order = e
    },
    {
        localised_description = show_formula and {chemical_formula, "UO[font=default-tiny-bold]3[/font]"} or nil,
        name = uranium_oxide_VI,
        subgroup = is_uranium_chemistry,
        icon = graphics_uranium .. uranium_oxide_VI .. ".png",
        order = f
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "U-238"} or nil,
        name = uranium_238_plate,
        subgroup = is_uranium_casting,
        icon = graphics_uranium .. uranium_238_plate .. ".png",
        order = b
    },
    -- INTERMEDIATE PRODUCTS
    {
        localised_description = show_formula and {chemical_formula, "UF[font=default-tiny-bold]4[/font]-238"} or nil,
        name = uranium_fluoride_IV_238,
        subgroup = is_uranium_235_recipe,
        icon = graphics_uranium_enrichment .. uranium_fluoride_IV_238 .. ".png",
        order = i
    }
})

-- FLUID
uranium_fluoride_VI_gas = "uranium-fluoride-VI-gas"
uranyl_sulfate_solution = "uranyl-sulfate-solution"
uranium_238_molten = "uranium-238-molten"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "UF[font=default-tiny-bold]6[/font]"} or nil,
        name = uranium_fluoride_VI_gas,
        subgroup = is_uranium_chemistry,
        icon = graphics_uranium .. uranium_fluoride_VI_gas .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("UF6"),
        flow_color = TIMSABA.functions.flow_color("UF6")
    },
    {
        localised_description = show_formula and {chemical_formula, "UO[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = uranyl_sulfate_solution,
        subgroup = is_uranium_chemistry,
        icon = graphics_uranium .. uranyl_sulfate_solution .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("UO2SO4Wp"),
        flow_color = TIMSABA.functions.flow_color("UO2SO4Wp")
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "U-238"} or nil,
        name = uranium_238_molten,
        subgroup = is_uranium_casting,
        icon = graphics_uranium .. uranium_238_molten .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("UUU"),
        flow_color = TIMSABA.functions.flow_color("UUU")
    }
})
TIMSABA.barreling.add_gas(uranium_fluoride_VI_gas)
TIMSABA.barreling.add_dangerous_fluid(uranyl_sulfate_solution)

-- RECIPE
uranium_fluoride_VI_gas_2 = "uranium-fluoride-VI-gas-2"
uranium_fluoride_VI_gas_3 = "uranium-fluoride-VI-gas-3"
TIMSABA.functions.create_recipes
({
    -- SMELTING
    {
        name = uranium_processed,
        categories = {angels_processed_pressing_3},
        subgroup = is_uranium,
        icons = TWO_I(uranium_ore, uranium_processed),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = uranium_ore, amount = 4}},
        results = {{type = item, name = uranium_processed, amount = 4}},
        main_product = uranium_processed
    },
    {
        name = uranium_pellet,
        categories = {angels_pellet_pressing_3},
        subgroup = is_uranium,
        icons = TWO_I(uranium_processed, uranium_pellet),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = uranium_processed, amount = 4}},
        results = {{type = item, name = uranium_pellet, amount = 4}},
        main_product = uranium_pellet
    },
    -- CHEMISTRY
    {
        name = uranium_oxide_IV,
        categories = {angels_blast_smelting_3},
        subgroup = is_uranium_chemistry,
        icons = THREE_I(uranium_ore, oxygen_angels, uranium_oxide_IV),
        order = a,
        energy_required = 8, -- U(ore) + O₂(g) --> UO₂(s)
        ingredients =
        {
            {type = item, name = uranium_ore, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 240}
        },
        results = {{type = item, name = uranium_oxide_IV, amount = 16}},
        main_product = uranium_oxide_IV
    },
    {
        name = uranium_fluoride_IV,
        categories = {angels_chemical_smelting_2},
        subgroup = is_uranium_chemistry,
        icons = TWO_D_I(uranium_oxide_IV, hydrogen_fluoride_angels, uranium_fluoride_IV, steam),
        order = b,
        energy_required = 8, -- UO₂(s) + 4HF(g) --> UF₄(s) + 2H₂O(g)
        ingredients =
        {
            {type = item, name = uranium_oxide_IV, amount = 16},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 960}
        },
        results =
        {
            {type = item, name = uranium_fluoride_IV, amount = 16},
            {type = fluid, name = steam, amount = 240} -- 480
        },
        main_product = uranium_fluoride_IV
    },
    {
        name = uranium_fluoride_VI_gas,
        categories = {angels_chemical_smelting_2},
        subgroup = is_uranium_chemistry,
        icons = TWO_D_I(uranium_fluoride_IV, hydrogen_fluoride_angels, uranium_fluoride_VI_gas, hydrogen_angels),
        order = c,
        energy_required = 8, -- UF₄(s) + 2HF(g) --> UF₆(g)(234/235/238) + H₂(g)
        ingredients =
        {
            {type = item, name = uranium_fluoride_IV, amount = 16},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 480}
        },
        results =
        {
            {type = fluid, name = uranium_fluoride_VI_gas, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 240
        },
        main_product = uranium_fluoride_VI_gas
    },
    {
        localised_name = {"fluid-name." .. uranium_fluoride_VI_gas},
        name = uranium_fluoride_VI_gas_2,
        categories = {angels_chemical_smelting_3},
        subgroup = is_uranium_chemistry,
        icons = TWO_D_I(uranium_oxide_VI, hydrogen_fluoride_angels, uranium_fluoride_VI_gas, water_purified_angels),
        order = c_a,
        -- UO₃(s) + 6HF(g) --> UF₆(g)(234/235/238) + 3H₂O(l)
        ingredients =
        {
            {type = item, name = uranium_oxide_VI, amount = 8},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 720}
        },
        results =
        {
            {type = fluid, name = uranium_fluoride_VI_gas, amount = 120},
            {type = fluid, name = water_purified_angels, amount = 120} -- 360
        },
        main_product = uranium_fluoride_VI_gas
    },
    {
        localised_name = {"fluid-name." .. uranium_fluoride_VI_gas},
        name = uranium_fluoride_VI_gas_3,
        categories = {angels_chemical_smelting_4},
        subgroup = is_uranium_chemistry,
        icons = THREE_I(uranium_pellet, fluorine, uranium_fluoride_VI_gas),
        order = c_b,
        energy_required = 8, -- U(pellet) + 3F₂(g) --> UF₆(g)(234/235/238)
        ingredients =
        {
            {type = item, name = uranium_pellet, amount = 8},
            {type = fluid, name = fluorine, amount = 720}
        },
        results = {{type = fluid, name = uranium_fluoride_VI_gas, amount = 240}},
        main_product = uranium_fluoride_VI_gas
    },
    {
        name = uranyl_sulfate_solution,
        categories = {angels_chemical_smelting_3},
        subgroup = is_uranium_chemistry,
        icons = THREE_D_I(uranium_processed, oxygen_angels, sulfuric_acid_angels, uranyl_sulfate_solution),
        order = d,
        energy_required = 8, -- 2U(processed) + 3O₂(g) + 2H₂SO₄(l) --> 2UO₂SO₄(aq)
        ingredients =
        {
            {type = item, name = uranium_processed, amount = 16},
            {type = fluid, name = oxygen_angels, amount = 360},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results = {{type = fluid, name = uranyl_sulfate_solution, amount = 240}},
        main_product = uranyl_sulfate_solution
    },
    {
        name = ammonium_diuranate,
        categories = {angels_advanced_chemistry},
        subgroup = is_uranium_chemistry,
        icons = THREE_D_I(uranyl_sulfate_solution, ammonia_angels, water_purified_angels, ammonium_diuranate, nil, ammonium_sulfate_solution),
        order = e,
        energy_required = 8, -- 2UO₂SO₄(aq) + 6NH₃(g) + 3H₂O(l) --> (NH₄)₂U₂O₇(s) + 2(NH₄)₂SO₄(aq)
        ingredients =
        {
            {type = fluid, name = uranyl_sulfate_solution, amount = 240},
            {type = fluid, name = ammonia_angels, amount = 720},
            {type = fluid, name = water_purified_angels, amount = 360}
        },
        results =
        {
            {type = item, name = ammonium_diuranate, amount = 8},
            {type = fluid, name = ammonium_sulfate_solution, amount = 120} -- 240
        },
        main_product = ammonium_diuranate
    },
    {
        name = uranium_oxide_VI,
        categories = {angels_chemical_smelting_3},
        subgroup = is_uranium_chemistry,
        icons = THREE_D_I(ammonium_diuranate, nil, nil, uranium_oxide_VI, ammonia_angels, steam),
        order = f,
        energy_required = 8, -- (NH₄)₂U₂O₇(s) --> 2UO₃(s) + 2NH₃(g) + H₂O(g)
        ingredients = {{type = item, name = ammonium_diuranate, amount = 8}},
        results =
        {
            {type = item, name = uranium_oxide_VI, amount = 16},
            {type = fluid, name = ammonia_angels, amount = 120}, -- 240
            {type = fluid, name = steam, amount = 60} -- 120
        },
        main_product = uranium_oxide_VI
    },
    -- CASTING
    {
        name = uranium_238_molten,
        categories = {angels_induction_smelting_3},
        subgroup = is_uranium_casting,
        icons = TWO_I(uranium_238, uranium_238_molten),
        order = a,
        energy_required = 8, -- U-238 --> U-238(molten)
        ingredients = {{type = item, name = uranium_238, amount = 16}},
        results = {{type = fluid, name = uranium_238_molten, amount = 240}},
        main_product = uranium_238_molten
    },
    {
        name = uranium_238_plate,
        categories = {angels_casting_3},
        subgroup = is_uranium_casting,
        icons = TWO_I(uranium_238_molten, uranium_238_plate),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 4, -- U-238(molten) --> U-238(plate)
        ingredients = {{type = fluid, name = uranium_238_molten, amount = 60}},
        results = {{type = item, name = uranium_238_plate, amount = 4}},
        main_product = uranium_238_plate
    }
})

-- URANIUM ENRICHMENT
local uranium_fluoride_VI_235_gas_ = "uranium-fluoride-VI-235-gas-"
uranium_fluoride_VI_235_gas_20pc = "uranium-fluoride-VI-235-gas-20pc"
uranium_fluoride_VI_235_gas_35pc = "uranium-fluoride-VI-235-gas-35pc"
uranium_fluoride_VI_235_gas_45pc = "uranium-fluoride-VI-235-gas-45pc"
uranium_fluoride_VI_235_gas_55pc = "uranium-fluoride-VI-235-gas-55pc"
uranium_fluoride_VI_235_gas_65pc = "uranium-fluoride-VI-235-gas-65pc"
uranium_fluoride_VI_235_gas_70pc = "uranium-fluoride-VI-235-gas-70pc"
uranium_fluoride_VI_235_gas_75pc = "uranium-fluoride-VI-235-gas-75pc"
uranium_fluoride_VI_235_gas_80pc = "uranium-fluoride-VI-235-gas-80pc"
local function create_fluid_uranium_fluoride_VI_235_gas(percent, order)
    TIMSABA.functions.create_fluids
    ({
        {
            localised_description = show_formula and {chemical_formula, "UF[font=default-tiny-bold]6[/font]-235"} or nil,
            name = uranium_fluoride_VI_235_gas_ .. percent .. "pc",
            subgroup = is_uranium_235_recipe,
            icon = graphics_uranium_enrichment .. uranium_fluoride_VI_235_gas_ .. percent .. "pc.png",
            order = order,
            base_color = TIMSABA.functions.fluid_color("UF6"),
            flow_color = TIMSABA.functions.flow_color("UF6")
        }
    })
end
create_fluid_uranium_fluoride_VI_235_gas("20", a)
create_fluid_uranium_fluoride_VI_235_gas("35", b)
create_fluid_uranium_fluoride_VI_235_gas("45", c)
create_fluid_uranium_fluoride_VI_235_gas("55", d)
create_fluid_uranium_fluoride_VI_235_gas("65", e)
create_fluid_uranium_fluoride_VI_235_gas("70", f)
create_fluid_uranium_fluoride_VI_235_gas("75", g)
create_fluid_uranium_fluoride_VI_235_gas("80", h)

TIMSABA.functions.create_recipes
({
    {
        name = uranium_fluoride_VI_235_gas_20pc,
        categories = {angels_centrifuging_3},
        subgroup = is_uranium_235_recipe,
        order = a,
        allow_productivity = true,
        energy_required = 16, -- UF₆(g)(234/235/238) --> UF₆-235(g)(20%)
        ingredients = {{type = fluid, name = uranium_fluoride_VI_gas, amount = 960}},
        results = {{type = fluid, name = uranium_fluoride_VI_235_gas_20pc, amount = 120, independent_probability = 0.448}},
        main_product = uranium_fluoride_VI_235_gas_20pc
    },
    {
        name = uranium_fluoride_VI_235_gas_35pc,
        categories = {angels_centrifuging_3},
        subgroup = is_uranium_235_recipe,
        order = b,
        energy_required = 32, -- 8UF₆-235(g)(20%) --> 4-5UF₆-235(g)(35%) + 3-4UF₄-238(s) + 3-4F₂(g)
        ingredients = {{type = fluid, name = uranium_fluoride_VI_235_gas_20pc, amount = 120}},
        results =
        {
            {type = fluid, name = uranium_fluoride_VI_235_gas_35pc, amount_min = 60, amount_max = 75},
            {type = item, name = uranium_fluoride_IV_238, amount_min = 3, amount_max = 4},
            --{type = fluid, name = fluorine, amount_min = 45, amount_max = 60}
        },
        main_product = uranium_fluoride_VI_235_gas_35pc
    },
    {
        name = uranium_fluoride_VI_235_gas_45pc,
        categories = {angels_centrifuging_3},
        subgroup = is_uranium_235_recipe,
        order = c,
        energy_required = 32, -- 8UF₆-235(g)(35%) --> 6UF₆-235(g)(45%) + 2UF₄-238(s) + 2F₂(g)
        ingredients = {{type = fluid, name = uranium_fluoride_VI_235_gas_35pc, amount = 120}},
        results =
        {
            {type = fluid, name = uranium_fluoride_VI_235_gas_45pc, amount = 90},
            {type = item, name = uranium_fluoride_IV_238, amount = 2},
            --{type = fluid, name = fluorine, amount = 30}
        },
        main_product = uranium_fluoride_VI_235_gas_45pc
    },
    {
        name = uranium_fluoride_VI_235_gas_55pc,
        categories = {angels_centrifuging_3},
        subgroup = is_uranium_235_recipe,
        order = d,
        energy_required = 32, -- 8UF₆-235(g)(45%) --> 6-7UF₆-235(g)(55%) + 1-2UF₄-238(s) + 1-2F₂(g)
        ingredients = {{type = fluid, name = uranium_fluoride_VI_235_gas_45pc, amount = 120}},
        results =
        {
            {type = fluid, name = uranium_fluoride_VI_235_gas_55pc, amount_min = 90, amount_max = 105},
            {type = item, name = uranium_fluoride_IV_238, amount_min = 1, amount_max = 2},
            --{type = fluid, name = fluorine, amount_min = 15, amount_max = 30}
        },
        main_product = uranium_fluoride_VI_235_gas_55pc
    },
    {
        name = uranium_fluoride_VI_235_gas_65pc,
        categories = {angels_centrifuging_3},
        subgroup = is_uranium_235_recipe,
        order = e,
        energy_required = 32, -- 8UF₆-235(g)(55%) --> 6-7UF₆-235(g)(65%) + 1-2UF₄-238(s) + 1-2F₂(g)
        ingredients = {{type = fluid, name = uranium_fluoride_VI_235_gas_55pc, amount = 120}},
        results =
        {
            {type = fluid, name = uranium_fluoride_VI_235_gas_65pc, amount_min = 90, amount_max = 105},
            {type = item, name = uranium_fluoride_IV_238, amount_min = 1, amount_max = 2},
            --{type = fluid, name = fluorine, amount_min = 15, amount_max = 30}
        },
        main_product = uranium_fluoride_VI_235_gas_65pc
    },
    {
        name = uranium_fluoride_VI_235_gas_70pc,
        categories = {angels_centrifuging_3},
        subgroup = is_uranium_235_recipe,
        order = f,
        energy_required = 32, -- 8UF₆-235(g)(65%) --> 7-8UF₆-235(g)(70%) + 0-1UF₄-238(s) + 0-1F₂(g)
        ingredients = {{type = fluid, name = uranium_fluoride_VI_235_gas_65pc, amount = 120}},
        results =
        {
            {type = fluid, name = uranium_fluoride_VI_235_gas_70pc, amount_min = 105, amount_max = 120},
            {type = item, name = uranium_fluoride_IV_238, amount_min = 0, amount_max = 1},
            --{type = fluid, name = fluorine, amount_min = 0, amount_max = 15}
        },
        main_product = uranium_fluoride_VI_235_gas_70pc
    },
    {
        name = uranium_fluoride_VI_235_gas_75pc,
        categories = {angels_centrifuging_3},
        subgroup = is_uranium_235_recipe,
        order = g,
        energy_required = 32, -- 8UF₆-235(g)(70%) --> 7-8UF₆-235(g)(75%) + 0-1UF₄-238(s) + 0-1F₂(g)
        ingredients = {{type = fluid, name = uranium_fluoride_VI_235_gas_70pc, amount = 120}},
        results =
        {
            {type = fluid, name = uranium_fluoride_VI_235_gas_75pc, amount_min = 105, amount_max = 120},
            {type = item, name = uranium_fluoride_IV_238, amount_min = 0, amount_max = 1},
            --{type = fluid, name = fluorine, amount_min = 0, amount_max = 15}
        },
        main_product = uranium_fluoride_VI_235_gas_75pc
    },
    {
        name = uranium_fluoride_VI_235_gas_80pc,
        categories = {angels_centrifuging_3},
        subgroup = is_uranium_235_recipe,
        order = h,
        energy_required = 32, -- 8UF₆-235(g)(75%) --> 7-8UF₆-235(g)(80%) + 0-1UF₄-238(s) + 0-1F₂(g)
        ingredients = {{type = fluid, name = uranium_fluoride_VI_235_gas_75pc, amount = 120}},
        results =
        {
            {type = fluid, name = uranium_fluoride_VI_235_gas_80pc, amount_min = 105, amount_max = 120},
            {type = item, name = uranium_fluoride_IV_238, amount_min = 0, amount_max = 1},
            --{type = fluid, name = fluorine, amount_min = 0, amount_max = 15}
        },
        main_product = uranium_fluoride_VI_235_gas_80pc
    },
    {
        name = uranium_235,
        categories = {angels_centrifuging_3},
        subgroup = is_nuclear_item,
        order = b,
        energy_required = 16, -- 8UF₆-235(g)(80%) --> 8U-235(s) + 24F₂(g)
        ingredients = {{type = fluid, name = uranium_fluoride_VI_235_gas_80pc, amount = 120}},
        results =
        {
            {type = item, name = uranium_235, amount = 8},
            {type = fluid, name = fluorine, amount = 360}
        },
        main_product = uranium_235
    },
    {
        name = uranium_238,
        categories = {angels_centrifuging_3},
        subgroup = is_nuclear_item,
        order = c,
        energy_required = 16, -- 8UF₄-238(s) --> 8U-238(s) + 240F₂(g)
        ingredients = {{type = item, name = uranium_fluoride_IV_238, amount = 8}},
        results =
        {
            {type = item, name = uranium_238, amount = 8},
            {type = fluid, name = fluorine, amount = 240}
        },
        main_product = uranium_238
    }
})