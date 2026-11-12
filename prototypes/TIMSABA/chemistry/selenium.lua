local graphics_selenium = "__TIMSABA__/graphics/icons/angels/petrochem/selenium/"

-- GROUPS
is_selenium = "is-selenium"
TIMSABA.functions.create_subgroups(ig_petrochem_refining, {{name = is_selenium, order = m}})

-- ITEM
selenium = "selenium"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Se"} or nil,
        name = selenium,
        subgroup = is_selenium,
        icon = graphics_selenium .. selenium .. ".png",
        order = a
    }
})