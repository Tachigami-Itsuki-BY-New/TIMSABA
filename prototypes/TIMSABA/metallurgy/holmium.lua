local graphics_holmium = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium/"

-- GROUPS
local is_holmium = "is-holmium"
local is_holmium_chemistry = "is-holmium-chemistry"
local is_holmium_casting = "is-holmium-casting"
TIMSABA.functions.create_subgroups(ig_fulgora,
{
    {name = is_holmium,           order = e},
    {name = is_holmium_chemistry, order = e_a},
    {name = is_holmium_casting,   order = e_b}
})

-- ITEM
holmium_processed = "holmium-processed"
holmium_pellet = "holmium-pellet"
holmium_ingot = "holmium-ingot"
holmium_powder = "holmium-powder"
holmium_fluoride_III = "holmium-fluoride-III"
holmium_cathode = "holmium-cathode"
holmium_oxide_III = "holmium-oxide-III"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_processed,
        subgroup = is_holmium,
        icon = graphics_holmium .. holmium_processed .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_pellet,
        subgroup = is_holmium,
        icon = graphics_holmium .. holmium_pellet .. ".png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_ingot,
        subgroup = is_holmium,
        icon = graphics_holmium .. holmium_ingot .. ".png",
        pictures =
        {
            {filename = graphics_holmium .. holmium_ingot .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_holmium .. holmium_ingot .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_holmium .. holmium_ingot .. "-3.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_holmium .. holmium_ingot .. "-4.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_holmium .. holmium_ingot .. "-5.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_holmium .. holmium_ingot .. "-6.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_holmium .. holmium_ingot .. "-7.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_holmium .. holmium_ingot .. "-8.png", width = 64, height = 64, scale = 0.5}
        },
        order = d
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_powder,
        subgroup = is_holmium,
        icon = graphics_holmium .. holmium_powder .. ".png",
        order = e
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "HoF[font=default-tiny-bold]3[/font]"} or nil,
        name = holmium_fluoride_III,
        subgroup = is_holmium_chemistry,
        icon = graphics_holmium .. holmium_fluoride_III .. ".png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        name = holmium_oxide_III,
        subgroup = is_holmium_chemistry,
        icon = graphics_holmium .. holmium_oxide_III .. ".png",
        order = d
    }
})
data_item[holmium_powder].hidden = true
data_item[holmium_powder].hidden_in_factoriopedia = true

-- FLUID
holmium_chloride_III_solution = "holmium-chloride-III-solution"
holmium_nitrate_III_solution = "holmium-nitrate-III-solution"
holmium_molten = "holmium-molten"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "HoCl[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = holmium_chloride_III_solution,
        subgroup = is_holmium_chemistry,
        icon = graphics_holmium .. holmium_chloride_III_solution .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("HoCl3Wp"),
        flow_color = TIMSABA.functions.flow_color("HoCl3Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho(NO[font=default-tiny-bold]3[/font])[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = holmium_nitrate_III_solution,
        subgroup = is_holmium_chemistry,
        icon = graphics_holmium .. holmium_nitrate_III_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("HoN2O6Wp"),
        flow_color = TIMSABA.functions.flow_color("HoN2O6Wp")
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_molten,
        subgroup = is_holmium_casting,
        icon = graphics_holmium .. holmium_molten .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("HoHoHo"),
        flow_color = TIMSABA.functions.flow_color("HoHoHo")
    }
})
TIMSABA.barreling.add_dangerous_fluid(holmium_chloride_III_solution)
TIMSABA.barreling.add_dangerous_fluid(holmium_nitrate_III_solution)

-- RECIPE
holmium_fluoride_III_2 = holmium_fluoride_III .. "-2"
holmium_fluoride_III_3 = holmium_fluoride_III .. "-3"
TIMSABA.functions.create_recipes
({
    {
        name = holmium_processed,
        categories = {angels_processed_pressing_4},
        subgroup = is_holmium,
        icons = TWO_I(holmium_ore, holmium_processed),
        order = b,
        ingredients = {{type = item, name = holmium_ore, amount = 4}},
        results = {{type = item, name = holmium_processed, amount = 4}},
        main_product = holmium_processed
    },
    {
        name = holmium_pellet,
        categories = {angels_pellet_pressing_4},
        subgroup = is_holmium,
        icons = TWO_I(holmium_processed, holmium_pellet),
        order = c,
        ingredients = {{type = item, name = holmium_processed, amount = 2}},
        results = {{type = item, name = holmium_pellet, amount = 2}},
        main_product = holmium_pellet
    },
    {
        name = holmium_ingot,
        categories = {angels_blast_smelting_4},
        subgroup = is_holmium,
        icons = TWO_D_I(holmium_fluoride_III, calcium, holmium_ingot, fluorite_angels),
        order = d,
        energy_required = 8, -- 2HoF₃(s) + 3Ca(s) --> 2Ho(s) + 3CaF₂(s)
        ingredients =
        {
            {type = item, name = holmium_fluoride_III, amount = 16},
            {type = item, name = calcium, amount = 24}
        },
        results =
        {
            {type = item, name = holmium_ingot, amount = 16},
            {type = item, name = fluorite_angels, amount = 16} -- 24
        },
        main_product = holmium_ingot
    },
    {
        name = holmium_powder,
        categories = {powderizing_4},
        subgroup = is_holmium,
        icons = TWO_I(holmium_ingot, holmium_powder),
        order = e,
        energy_required = 0.5,
        ingredients = {{type = item, name = holmium_ingot, amount = 1}},
        results = {{type = item, name = holmium_powder, amount = 1}},
        main_product = holmium_powder
    },
    -- CHEMISTRY
    {
        name = holmium_chloride_III_solution,
        categories = {angels_chemical_smelting_4},
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_ore, hydrogen_chloride_angels, water_purified_angels, holmium_chloride_III_solution, nil, hydrogen_angels),
        order = a,
        energy_required = 8, -- 2Ho(s) + 6HCl(g) + 2H₂O(l) --> 2HoCl₃(aq) + 3H₂(g)
        ingredients =
        {
            {type = item, name = holmium_ore, amount = 32},
            {type = fluid, name = hydrogen_chloride_angels, amount = 720},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = holmium_chloride_III_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 240} -- 360
        },
        main_product = holmium_chloride_III_solution
    },
    {
        name = holmium_fluoride_III,
        categories = {angels_chemical_smelting_4},
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_chloride_III_solution, nil, hydrofluoric_acid_angels, holmium_fluoride_III, hydrochloric_acid_angels, water_purified_angels),
        order = b,
        energy_required = 8, -- HoCl₃(aq) + 3HF(aq) --> HoF₃(s) + 3HCl(aq) + H₂O(l)
        ingredients =
        {
            {type = fluid, name = holmium_chloride_III_solution, amount = 240},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 720}
        },
        results =
        {
            {type = item, name = holmium_fluoride_III, amount = 16},
            {type = fluid, name = hydrochloric_acid_angels, amount = 480}, -- 720
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = holmium_fluoride_III
    },
    {
        name = holmium_fluoride_III_2,
        categories = {angels_chemical_smelting_4},
        subgroup = is_holmium_chemistry,
        icons = TWO_D_I(holmium_oxide_III, hydrogen_fluoride_angels, holmium_fluoride_III, water_purified_angels),
        order = b_a,
        energy_required = 8, -- Ho₂O₃(s) + 6HF(g) --> 2HoF₃(s) + 3H₂O(l)
        ingredients =
        {
            {type = item, name = holmium_oxide_III, amount = 8},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 720}
        },
        results =
        {
            {type = item, name = holmium_fluoride_III, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 240} -- 360
        },
        main_product = holmium_fluoride_III
    },
    {
        name = holmium_fluoride_III_3,
        categories = {angels_chemical_smelting_4},
        subgroup = is_holmium_chemistry,
        icons = THREE_I(holmium_pellet, fluorine, holmium_fluoride_III),
        order = b_b,
        energy_required = 8, -- 2Ho(s) + 3F₂(g) --> 2HoF₃(s)
        ingredients =
        {
            {type = item, name = holmium_pellet, amount = 8},
            {type = fluid, name = fluorine, amount = 360}
        },
        results = {{type = item, name = holmium_fluoride_III, amount = 16}},
        main_product = holmium_fluoride_III
    },
    {
        name = holmium_nitrate_III_solution,
        categories = {angels_chemical_smelting_4},
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_processed, dinitrogen_tetroxide_angels, water_purified_angels, holmium_nitrate_III_solution, nil, nitrogen_monoxide_angels),
        order = c,
        energy_required = 8, -- Ho(s) + 3N₂O₄(g) + H₂O(l) --> Ho(NO₃)₃(aq) + 3NO(g)
        ingredients =
        {
            {type = item, name = holmium_processed, amount = 16},
            {type = fluid, name = dinitrogen_tetroxide_angels, amount = 720},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = holmium_nitrate_III_solution, amount = 240},
            {type = fluid, name = nitrogen_monoxide_angels, amount = 480} -- 720
        },
        main_product = holmium_nitrate_III_solution
    },
    {
        name = holmium_oxide_III,
        categories = {angels_advanced_chemistry},
        subgroup = is_holmium_chemistry,
        icons = FOUR_D_I(holmium_nitrate_III_solution, nil, nil, nil, holmium_oxide_III, nitrogen_dioxide_angels, oxygen_angels, steam),
        order = d,
        energy_required = 8, -- 4Ho(NO₃)₃(aq) --> 2Ho₂O₃(s) + 12NO₂(g) + 3O₂(g) + 4H₂O(g)
        ingredients = {{type = fluid, name = holmium_nitrate_III_solution, amount = 240}},
        results =
        {
            {type = item, name = holmium_oxide_III, amount = 8},
            {type = fluid, name = nitrogen_dioxide_angels, amount = 480}, -- 720
            {type = fluid, name = oxygen_angels, amount = 120}, -- 180
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = holmium_oxide_III
    },
    -- CASTING
    {
        name = holmium_molten,
        categories = {angels_induction_smelting_4},
        subgroup = is_holmium_casting,
        icons = TWO_I(holmium_ingot, holmium_molten),
        order = a,
        energy_required = 8,
        ingredients = {{type = item, name = holmium_ingot, amount = 16}},
        results = {{type = fluid, name = holmium_molten, amount = 240}},
        main_product = holmium_molten
    }
})
data_recipe[holmium_powder].hidden = true
data_recipe[holmium_powder].hidden_in_factoriopedia = true