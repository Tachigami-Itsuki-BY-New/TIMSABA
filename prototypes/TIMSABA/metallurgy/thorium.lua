local graphics_thorium = "__TIMSABA__/graphics/icons/angels/metallurgy/thorium/"

-- GROUPS
is_thorium = "is-thorium"
local is_thorium_chemistry = "is-thorium-chemistry"
TIMSABA.functions.create_subgroups(ig_smelting,
{
    {name = is_thorium,           order = p},
    {name = is_thorium_chemistry, order = p_a}
})
local is_thorium_casting = "is-thorium-casting"
TIMSABA.functions.create_subgroups(ig_casting, {{name = is_thorium_casting, order = p}})

-- ITEM
thorium_processed = "thorium-processed"
thorium_pellet = "thorium-pellet"
thorium_oxide_IV = "thorium-oxide-IV"
thorium_hydroxide_IV = "thorium-hydroxide-IV"
thorium_fluoride_IV = "thorium-fluoride-IV"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "U"} or nil,
        name = thorium_processed,
        subgroup = is_thorium,
        icon = graphics_thorium .. thorium_processed .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "U"} or nil,
        name = thorium_pellet,
        subgroup = is_thorium,
        icon = graphics_thorium .. thorium_pellet .. ".png",
        order = c
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "ThO[font=default-tiny-bold]2[/font]"} or nil,
        name = thorium_oxide_IV,
        subgroup = is_thorium_chemistry,
        icon = graphics_thorium .. thorium_oxide_IV .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Th(OH)[font=default-tiny-bold]4[/font]"} or nil,
        name = thorium_hydroxide_IV,
        subgroup = is_thorium_chemistry,
        icon = graphics_thorium .. thorium_hydroxide_IV .. ".png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "ThF[font=default-tiny-bold]4[/font]"} or nil,
        name = thorium_fluoride_IV,
        subgroup = is_thorium_chemistry,
        icon = graphics_thorium .. thorium_fluoride_IV .. ".png",
        order = d
    }
})

-- FLUID
thorium_nitrate_IV_solution = "thorium-nitrate-IV-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "Th(NO[font=default-tiny-bold]3[/font])[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = thorium_nitrate_IV_solution,
        subgroup = is_thorium_chemistry,
        icon = graphics_thorium .. thorium_nitrate_IV_solution .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("ThN4O12Wp"),
        flow_color = TIMSABA.functions.flow_color("ThN4O12Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(thorium_nitrate_IV_solution)

-- RECIPE
thorium_oxide_IV_2 = "thorium-oxide-IV-2"
thorium_oxide_IV_3 = "thorium-oxide-IV-3"
TIMSABA.functions.create_recipes
({
    -- SMELTING
    {
        name = thorium_processed,
        categories = {angels_processed_pressing_4},
        subgroup = is_thorium,
        icons = TWO_I(thorium_ore_bob, thorium_processed),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = thorium_ore_bob, amount = 4}},
        results = {{type = item, name = thorium_processed, amount = 4}},
        main_product = thorium_processed
    },
    {
        name = thorium_pellet,
        categories = {angels_pellet_pressing_4},
        subgroup = is_thorium,
        icons = TWO_I(thorium_processed, thorium_pellet),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = thorium_processed, amount = 4}},
        results = {{type = item, name = thorium_pellet, amount = 4}},
        main_product = thorium_pellet
    },
    {
        name = thorium_232_bob,
        categories = {angels_blast_smelting_4},
        subgroup = is_thorium,
        icons = TWO_D_I(thorium_oxide_IV, calcium, thorium_232_bob, lime_angels),
        order = d,
        energy_required = 8, -- ThO₂(s) + 2Ca(s) --> Th-232(s) + 2CaO(s)
        ingredients =
        {
            {type = item, name = thorium_oxide_IV, amount = 16},
            {type = item, name = calcium, amount = 32}
        },
        results =
        {
            {type = item, name = thorium_232_bob, amount = 16},
            {type = item, name = lime_angels, amount = 16} -- 32
        },
        main_product = thorium_232_bob
    },
    -- CHEMISTRY
    {
        name = thorium_oxide_IV,
        categories = {angels_blast_smelting_4},
        subgroup = is_thorium_chemistry,
        icons = THREE_I(thorium_ore_bob, oxygen_angels, thorium_oxide_IV),
        order = a,
        energy_required = 8, -- Th(ore) + O₂(g) --> ThO₂(s)
        ingredients =
        {
            {type = item, name = thorium_ore_bob, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 240}
        },
        results = {{type = item, name = thorium_oxide_IV, amount = 16}},
        main_product = thorium_oxide_IV
    },
    {
        localised_name = {"item-name." .. thorium_oxide_IV},
        name = thorium_oxide_IV_2,
        categories = {angels_blast_smelting_4},
        subgroup = is_thorium_chemistry,
        icons = THREE_R_I(thorium_hydroxide_IV, thorium_oxide_IV, steam),
        order = a_a,
        energy_required = 8,-- Th(OH)₄(s) --> ThO₂(s) + 2H₂O(g)
        ingredients = {{type = item, name = thorium_hydroxide_IV, amount = 16}},
        results =
        {
            {type = item, name = thorium_oxide_IV, amount = 16},
            {type = fluid, name = steam, amount = 240} -- 480
        },
        main_product = thorium_oxide_IV
    },
    {
        localised_name = {"item-name." .. thorium_oxide_IV},
        name = thorium_oxide_IV_3,
        categories = {angels_blast_smelting_4},
        subgroup = is_thorium_chemistry,
        icons = TWO_D_I(thorium_fluoride_IV, lime_angels, thorium_oxide_IV, fluorite_angels),
        order = a_b,
        energy_required = 8, -- ThF₄(s) + 2CaO(s) --> ThO₂(s) + 2CaF₂(s)
        ingredients =
        {
            {type = item, name = thorium_fluoride_IV, amount = 16},
            {type = item, name = lime_angels, amount = 32}
        },
        results =
        {
            {type = item, name = thorium_oxide_IV, amount = 240},
            {type = item, name = fluorite_angels, amount = 16} -- 32
        },
        main_product = thorium_oxide_IV
    },
    {
        name = thorium_nitrate_IV_solution,
        categories = {angels_chemical_smelting_4},
        subgroup = is_thorium_chemistry,
        icons = THREE_D_I(thorium_processed, oxygen_angels, nitric_acid_angels, thorium_nitrate_IV_solution, nil, water_purified_angels),
        order = b,
        energy_required = 8, -- Th(processed) + O₂(g) + 4HNO₃(l) --> Th(NO₃)₄(aq) + H₂O(l)
        ingredients =
        {
            {type = item, name = thorium_processed, amount = 16},
            {type = fluid, name = oxygen_angels, amount = 240},
            {type = fluid, name = nitric_acid_angels, amount = 960}
        },
        results =
        {
            {type = fluid, name = thorium_nitrate_IV_solution, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = thorium_nitrate_IV_solution
    },
    {
        name = thorium_hydroxide_IV,
        categories = {angels_advanced_chemistry},
        subgroup = is_thorium_chemistry,
        icons = THREE_D_I(thorium_nitrate_IV_solution, ammonia_angels, water_purified_angels, thorium_hydroxide_IV, nil, ammonium_nitrate_solution),
        order = c,
        -- Th(NO₃)₄(aq) + 4NH₃(g) + 8H₂O(l) --> Th(OH)₄(s) + 4NH₄NO₃(aq)
        ingredients =
        {
            {type = fluid, name = thorium_nitrate_IV_solution, amount = 120},
            {type = fluid, name = ammonia_angels, amount = 480},
            {type = fluid, name = water_purified_angels, amount = 960}
        },
        results =
        {
            {type = item, name = thorium_hydroxide_IV, amount = 8},
            {type = fluid, name = ammonium_nitrate_solution, amount = 480} -- 960
        },
        main_product = thorium_hydroxide_IV
    },
    {
        name = thorium_fluoride_IV,
        categories = {angels_chemical_smelting_4},
        subgroup = is_thorium_chemistry,
        icons = THREE_D_I(thorium_pellet, hydrogen_fluoride_angels, thorium_fluoride_IV, hydrogen_angels),
        order = d,
        energy_required = 8, -- Th(pellet) + 4HF(g) --> ThF₄(s) + 2H₂(g)
        ingredients =
        {
            {type = item, name = thorium_pellet, amount = 8},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 960}
        },
        results =
        {
            {type = item, name = thorium_fluoride_IV, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 240} -- 480
        },
        main_product = thorium_fluoride_IV
    }
})