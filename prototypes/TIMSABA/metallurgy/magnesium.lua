local graphics_magnesium = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/"

-- GROUPS
is_magnesium = "is-magnesium"
is_magnesium_chemistry = "is-magnesium-chemistry"
TIMSABA.functions.create_subgroups(ig_smelting,
{
    {name = is_magnesium,           order = f},
    {name = is_magnesium_chemistry, order = f_a}
})
local is_magnesium_casting = "is-magnesium-casting"
TIMSABA.functions.create_subgroups(ig_casting, {{name = is_magnesium_casting, order = f}})

-- ITEM
magnesium_ore = "magnesium-ore"
magnesium_processed = "magnesium-processed"
magnesium_pellet = "magnesium-pellet"
magnesium_ingot = "magnesium-ingot"
magnesium_powder = "magnesium-powder"
magnesium_oxide = "magnesium-oxide"
magnesium_hydroxide = "magnesium-hydroxide"
magnesium_sulfate = "magnesium-sulfate"
magnesium_chloride = "magnesium-chloride"
magnesium_fluoride = "magnesium-fluoride"
magnesium_silicide = "magnesium-silicide"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        name = magnesium_ore,
        subgroup = is_magnesium,
        icon = graphics_magnesium .. magnesium_ore .. ".png",
        pictures =
        {
            {filename = graphics_magnesium .. magnesium_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_magnesium .. magnesium_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_magnesium .. magnesium_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        name = magnesium_processed,
        subgroup = is_magnesium,
        icon = graphics_magnesium .. magnesium_processed .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        name = magnesium_pellet,
        subgroup = is_magnesium,
        icon = graphics_magnesium .. magnesium_pellet .. ".png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        name = magnesium_ingot,
        subgroup = is_magnesium,
        icon = graphics_magnesium .. magnesium_ingot .. ".png",
        pictures =
        {
            {filename = graphics_magnesium .. magnesium_ingot .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_magnesium .. magnesium_ingot .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_magnesium .. magnesium_ingot .. "-3.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_magnesium .. magnesium_ingot .. "-4.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_magnesium .. magnesium_ingot .. "-5.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_magnesium .. magnesium_ingot .. "-6.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_magnesium .. magnesium_ingot .. "-7.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_magnesium .. magnesium_ingot .. "-8.png", width = 64, height = 64, scale = 0.5}
        },
        order = d
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        name = magnesium_powder,
        subgroup = is_magnesium,
        icon = graphics_magnesium .. magnesium_powder .. ".png",
        order = e
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "MgO"} or nil,
        name = magnesium_oxide,
        subgroup = is_magnesium_chemistry,
        icon = graphics_magnesium .. magnesium_oxide .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg(OH)[font=default-tiny-bold]2[/font]"} or nil,
        name = magnesium_hydroxide,
        subgroup = is_magnesium_chemistry,
        icon = graphics_magnesium .. magnesium_hydroxide .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "MgSO[font=default-tiny-bold]4[/font]"} or nil,
        name = magnesium_sulfate,
        subgroup = is_magnesium_chemistry,
        icon = graphics_magnesium .. magnesium_sulfate .. ".png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "MgCl[font=default-tiny-bold]2[/font]"} or nil,
        name = magnesium_chloride,
        subgroup = is_magnesium_chemistry,
        icon = graphics_magnesium .. magnesium_chloride .. ".png",
        order = d
    },
    {
        localised_description = show_formula and {chemical_formula, "MgF[font=default-tiny-bold]2[/font]"} or nil,
        name = magnesium_fluoride,
        subgroup = is_magnesium_chemistry,
        icon = graphics_magnesium .. magnesium_fluoride .. ".png",
        order = f
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg[font=default-tiny-bold]2[/font]Si"} or nil,
        name = magnesium_silicide,
        subgroup = is_magnesium_chemistry,
        icon = graphics_magnesium .. magnesium_silicide .. ".png",
        order = z
    }
})

-- FLUID
magnesium_chloride_solution = "magnesium-chloride-solution"
magnesium_molten = "magnesium-molten"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "MgCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = magnesium_chloride_solution,
        subgroup = is_magnesium_chemistry,
        icon = graphics_magnesium .. magnesium_chloride_solution .. ".png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("MgCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("MgCl2Wp")
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        name = magnesium_molten,
        subgroup = is_magnesium_casting,
        icon = graphics_magnesium .. magnesium_molten .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("MgMgMg"),
        flow_color = TIMSABA.functions.flow_color("MgMgMg")
    }
})
TIMSABA.barreling.add_dangerous_fluid(magnesium_chloride_solution)

-- RECIPE
magnesium_ingot_2 = "magnesium-ingot-2"
magnesium_oxide_2 = magnesium_oxide .. "-2"
magnesium_hydroxide_2 = magnesium_hydroxide .. "-2"
magnesium_hydroxide_3 = magnesium_hydroxide .. "-3"
TIMSABA.functions.create_recipes
({
    -- SMELTING
    {
        name = magnesium_processed,
        categories = {angels_processed_pressing_1},
        subgroup = is_magnesium,
        icons = TWO_I(magnesium_ore, magnesium_processed),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = magnesium_ore, amount = 4}},
        results = {{type = item, name = magnesium_processed, amount = 4}},
        main_product = magnesium_processed
    },
    {
        name = magnesium_pellet,
        categories = {angels_pellet_pressing_1},
        subgroup = is_magnesium,
        icons = TWO_I(magnesium_processed, magnesium_pellet),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = magnesium_processed, amount = 4}},
        results = {{type = item, name = magnesium_pellet, amount = 4}},
        main_product = magnesium_pellet
    },
    {
        name = magnesium_ingot,
        categories = {angels_chemical_smelting_1},
        subgroup = is_magnesium,
        icons = TWO_I(magnesium_oxide, magnesium_ingot),
        order = d,
        energy_required = 8, -- MgO(s) + C(s) --> Mg(s) + CO(g)
        ingredients =
        {
            {type = item, name = magnesium_oxide, amount = 16},
            {type = item, name = coke_angels, amount = 16}
        },
        results =
        {
            {type = item, name = magnesium_ingot, amount = 16},
            {type = fluid, name = carbon_monoxide_angels, amount = 120} -- 240
        },
        main_product = magnesium_ingot
    },
    {
        name = magnesium_ingot_2,
        categories = {angels_chemical_smelting_4},
        subgroup = is_magnesium,
        icons = THREE_D_I(magnesium_fluoride, silicon_powder, steam, magnesium_ingot, silicon_oxide_IV, hydrogen_fluoride_angels),
        order = d_a,
        energy_required = 8, -- 2MgF₂(s) + Si(s) + 2H₂O(g) --> 2Mg(s) + SiO₂(s) + 4HF(g)
        ingredients =
        {
            {type = item, name = magnesium_fluoride, amount = 16},
            {type = item, name = silicon_powder, amount = 8},
            {type = fluid, name = steam, amount = 240}
        },
        results =
        {
            {type = item, name = magnesium_ingot, amount = 16},
            {type = item, name = silicon_oxide_IV, amount = 4}, -- 8
            {type = fluid, name = hydrogen_fluoride_angels, amount = 240} -- 480
        },
        main_product = magnesium_ingot
    },
    {
        name = magnesium_powder,
        categories = {angels_powderizing_1},
        subgroup = is_magnesium,
        icons = TWO_I(magnesium_ingot, magnesium_powder),
        order = e,
        energy_required = 0.5, -- Mg --> Mg
        ingredients = {{type = item, name = magnesium_ingot, amount = 1}},
        results = {{type = item, name = magnesium_powder, amount = 1}},
        main_product = magnesium_powder
    },
    -- CHEMISTRY
    {
        name = magnesium_oxide,
        categories = {angels_blast_smelting_1},
        subgroup = is_magnesium_chemistry,
        icons = THREE_I(magnesium_ore, oxygen_angels, magnesium_oxide),
        order = a,
        energy_required = 8, -- 2Mg(s) + O₂(g) --> 2MgO(s)
        ingredients =
        {
            {type = item, name = magnesium_ore, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 120}
        },
        results = {{type = item, name = magnesium_oxide, amount = 16}},
        main_product = magnesium_oxide
    },
    {
        localised_name = {"item-name." .. magnesium_oxide},
        name = magnesium_oxide_2,
        categories = {angels_chemical_smelting_1},
        subgroup = is_magnesium_chemistry,
        icons = THREE_D_I(magnesium_sulfate, nil, carbon_angels, magnesium_oxide, sulfur_dioxide_angels, carbon_dioxide_angels),
        order = a_a,
        energy_required = 8, -- 2MgSO₄(s) + C(s) --> 2MgO(s) + 2SO₂(g) + CO₂(g)
        ingredients =
        {
            {type = item, name = magnesium_sulfate, amount = 16},
            {type = item, name = carbon_angels, amount = 8}
        },
        results =
        {
            {type = item, name = magnesium_oxide, amount = 16},
            {type = fluid, name = sulfur_dioxide_angels, amount = 120}, -- 240
            {type = fluid, name = carbon_dioxide_angels, amount = 60} -- 120
        },
        main_product = magnesium_oxide
    },
    {
        name = magnesium_hydroxide,
        categories = {angels_chemical_smelting_1},
        subgroup = is_magnesium_chemistry,
        icons = TWO_D_I(magnesium_processed, steam, magnesium_hydroxide, hydrogen_angels),
        order = b,
        energy_required = 8, -- Mg(s) + 2H₂O(g) --> Mg(OH)₂(s) + H₂(g)
        ingredients =
        {
            {type = item, name = magnesium_processed, amount = 16},
            {type = fluid, name = steam, amount = 480}
        },
        results =
        {
            {type = item, name = magnesium_hydroxide, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 240
        },
        main_product = magnesium_hydroxide
    },
    {
        localised_name = {"item-name." .. magnesium_hydroxide},
        name = magnesium_hydroxide_2,
        categories = {angels_chemical_smelting_2},
        subgroup = is_magnesium_chemistry,
        icons = TWO_D_I(magnesium_chloride, sodium_hydroxide_solution_angels, magnesium_hydroxide, sodium_chloride_solution),
        order = b_a,
        energy_required = 8, -- MgCl₂(s) + 2NaOH(aq) --> Mg(OH)₂(s) + 2NaCl(aq)
        ingredients =
        {
            {type = item, name = magnesium_chloride, amount = 16},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 480}
        },
        results =
        {
            {type = item, name = magnesium_hydroxide, amount = 16},
            {type = fluid, name = sodium_chloride_solution, amount = 240} -- 480
        },
        main_product = magnesium_hydroxide
    },
    {
        localised_name = {"item-name." .. magnesium_hydroxide},
        name = magnesium_hydroxide_3,
        categories = {angels_chemical_smelting_1},
        subgroup = is_magnesium_chemistry,
        icons = THREE_D_I(magnesium_chloride_solution, sodium_hydroxide_angels, water_purified_angels, magnesium_hydroxide, nil, sodium_chloride_solution),
        order = b_b,
        energy_required = 8, -- MgCl₂(aq) + 2NaOH(s) + H₂O(l) --> Mg(OH)₂(s) + 2NaCl(aq)
        ingredients =
        {
            {type = fluid, name = magnesium_chloride_solution, amount = 240},
            {type = item, name = sodium_hydroxide_angels, amount = 32},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = item, name = magnesium_hydroxide, amount = 16},
            {type = fluid, name = sodium_chloride_solution, amount = 240} -- 480
        },
        main_product = magnesium_hydroxide
    },
    {
        name = magnesium_sulfate,
        categories = {angels_chemical_smelting_1},
        subgroup = is_magnesium_chemistry,
        icons = TWO_D_I(magnesium_hydroxide, sulfur_trioxide_gas, magnesium_sulfate, sulfuric_acid_angels),
        order = c,
        energy_required = 8, -- Mg(OH)₂ + 2SO₃(g) --> MgSO₄(s) + H₂SO₄(l)
        ingredients =
        {
            {type = item, name = magnesium_hydroxide, amount = 16},
            {type = fluid, name = sulfur_trioxide_gas, amount = 480}
        },
        results =
        {
            {type = item, name = magnesium_sulfate, amount = 16},
            {type = fluid, name = sulfuric_acid_angels, amount = 120} -- 240
        },
        main_product = magnesium_sulfate
    },
    {
        name = magnesium_chloride,
        categories = {angels_chemical_smelting_2},
        subgroup = is_magnesium_chemistry,
        icons = THREE_I(magnesium_pellet, chlorine_angels, magnesium_chloride),
        order = d,
        energy_required = 8, -- Mg(s) + Cl₂(g) --> MgCl₂(s)
        ingredients =
        {
            {type = item, name = magnesium_pellet, amount = 8},
            {type = fluid, name = chlorine_angels, amount = 240}
        },
        results = {{type = item, name = magnesium_chloride, amount = 16}},
        main_product = magnesium_chloride
    },
    {
        name = magnesium_silicide,
        categories = {angels_blast_smelting_4},
        subgroup = is_magnesium_chemistry,
        icons = THREE_I(magnesium_powder, silicon_powder, magnesium_silicide),
        order = z,
        energy_required = 8, -- 2Mg(s) + Si(s) --> Mg₂Si(s)
        ingredients =
        {
            {type = item, name = magnesium_powder, amount = 32},
            {type = item, name = silicon_powder, amount = 16}
        },
        results = {{type = item, name = magnesium_silicide, amount = 16}},
        main_product = magnesium_silicide
    },
    -- CASTING
    {
        name = magnesium_molten,
        categories = {angels_induction_smelting_1},
        subgroup = is_magnesium_casting,
        icons = TWO_I(magnesium_ingot, magnesium_molten),
        order = a,
        energy_required = 8, -- Mg --> Mg(molten)
        ingredients = {{type = item, name = magnesium_ingot, amount = 16}},
        results = {{type = fluid, name = magnesium_molten, amount = 240}},
        main_product = magnesium_molten
    }
})

data_recipe[magnesium_molten].hidden = true
data_recipe[magnesium_molten].hidden_in_factoriopedia = true