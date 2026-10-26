-- TIN ITEM
tin_insulated_cable = "tin-insulated-cable"
TIMSABA.functions.create_items
({
    {
        name = tin_insulated_cable,
        subgroup = is_tin_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tin/" .. tin_insulated_cable .. ".png",
        order = f
    }
})

-- SILVER ITEM
silver_insulated_cable = "silver-insulated-cable"
TIMSABA.functions.create_items
({
    {
        name = silver_insulated_cable,
        subgroup = is_silver_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silver/" .. silver_insulated_cable .. ".png",
        order = f
    }
})

-- TITANIUM ITEM
titanium_rod = "titanium-rod"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Ti"} or nil,
        name = titanium_rod,
        subgroup = is_titanium_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/titanium/titanium-rod.png",
        order = d
    }
})

-- GOLD ITEM
gold_insulated_cable = "gold-insulated-cable"
TIMSABA.functions.create_items
({
    {
        name = gold_insulated_cable,
        subgroup = is_gold_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/gold/" .. gold_insulated_cable .. ".png",
        order = f
    }
})

-- PLATINUM ITEM
platinum_insulated_cable = "platinum-insulated-cable"
TIMSABA.functions.create_items
({
    {
        name = platinum_insulated_cable,
        subgroup = is_platinum_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/platinum/" .. platinum_insulated_cable .. ".png",
        order = f
    }
})

local graphics_stone = "__TIMSABA__/graphics/icons/angels/metallurgy/stone/"
-- STONE FLUID
refined_concrete_liquid = "refined-liquid-concrete"
TIMSABA.functions.create_fluids
({
    {
        name = refined_concrete_liquid,
        subgroup = is_stone_casting,
        icon = graphics_stone .. refined_concrete_liquid .. ".png",
        order = f,
        base_color = data_fluid[concrete_liquid].base_color,
        flow_color = data_fluid[concrete_liquid].flow_color
    }
})

-- BRICKS ITEM
reinforced_titanium_concrete_brick = "reinforced-titanium-concrete-brick"
carbon_concrete_brick = "carbon-concrete-brick"
reinforced_graphene_concrete_brick = "reinforced-graphene-concrete-brick"
TIMSABA.functions.create_items
({
    {
        name = reinforced_titanium_concrete_brick,
        subgroup = is_bricks_casting,
        icon = graphics_stone .. reinforced_titanium_concrete_brick .. ".png",
        icon_size = 32,
        order = f
    },
    {
        name = carbon_concrete_brick,
        subgroup = is_bricks_casting,
        icon = graphics_stone .. carbon_concrete_brick .. ".png",
        icon_size = 32,
        order = g
    },
    {
        name = reinforced_graphene_concrete_brick,
        subgroup = is_bricks_casting,
        icon = graphics_stone .. reinforced_graphene_concrete_brick .. ".png",
        icon_size = 32,
        order = h
    }
})

local graphics_alloys = "__TIMSABA__/graphics/icons/angels/metallurgy/alloys/"

-- ALLOYS ITEM
aluminium_lithium_plate = "aluminium-lithium-plate"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "AlLi"} or nil,
        name = aluminium_lithium_plate,
        subgroup = is_alloys_casting_7,
        icon = graphics_alloys .. aluminium_lithium_plate .. ".png",
        order = b
    }
})

-- ALLOYS FLUID
aluminium_lithium_molten = "aluminium-lithium-molten"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "AlLi"} or nil,
        name = aluminium_lithium_molten,
        subgroup = is_alloys_casting_7,
        icon = graphics_alloys .. aluminium_lithium_molten .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("AlLi"),
        flow_color = TIMSABA.functions.flow_color("AlLi")
    }
})