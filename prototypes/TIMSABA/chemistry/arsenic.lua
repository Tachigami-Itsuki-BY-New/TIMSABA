local graphics_arsenic = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/"

-- GROUPS
local is_arsenic = "is-arsenic"
TIMSABA.functions.create_subgroups(ig_aquilo, {{name = is_arsenic, order = i}})

-- ITEM
arsenic = "arsenic"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "As"} or nil,
        name = arsenic,
        subgroup = is_arsenic,
        icon = graphics_arsenic .. arsenic .. ".png",
        order = a
    }
})