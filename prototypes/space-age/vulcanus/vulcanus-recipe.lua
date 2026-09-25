-- VULCANUS AIR
vulcanus_air_separation = "vulcanus-air-separation"
TIMSABA.functions.create_recipes
({
    {
        name = vulcanus_air,
        categories = {angels_petrochem_air_filtering},
        subgroup = is_vulcanus_air,
        order = a,
        energy_required = 8,
        ingredients = {},
        results = {{type = fluid, name = vulcanus_air, amount = 240}},
        main_product = vulcanus_air,
        surface_conditions = {{property = pressure, min = 4000, max = 4000}}
    },
    {
        name = vulcanus_air_separation,
        categories = {angels_advanced_chemistry},
        subgroup = is_vulcanus_air,
        icons = FOUR_R_I(vulcanus_air, nitrogen_angels, carbon_dioxide_angels, hydrogen_sulfide_angels),
        order = a_a,
        energy_required = 2,
        ingredients = {{type = fluid, name = vulcanus_air, amount = 120}},
        results =
        {
            {type = fluid, name = nitrogen_angels, amount = 60},
            {type = fluid, name = carbon_dioxide_angels, amount = 30},
            {type = fluid, name = hydrogen_sulfide_angels, amount = 30}
        },
        main_product = nitrogen_angels
    }
})

-- TUNGSTEN
tungsten_powder_vulcanus = "tungsten-powder-vulcanus"
TIMSABA.functions.create_recipes
({
    {
        name = tungsten_plate_bob,
        categories = {smelting},
        subgroup = is_tungsten_casting,
        icons = TWO_I(wolframite_crushed, tungsten_plate_bob),
        order = a,
        allow_quality = true,
        energy_required = 8,
        ingredients = {{type = item, name = wolframite_crushed, amount = 4}},
        results = {{type = item, name = tungsten_plate_bob, amount = 1}},
        main_product = tungsten_plate_bob
    },
    {
        localised_name = {"item-name." .. tungsten_powder},
        name = tungsten_powder_vulcanus,
        categories = {powderizing_4},
        subgroup = is_vulcanus_tungsten,
        icons = TWO_I(tungsten_ore_bob, tungsten_powder),
        order = a,
        ingredients = {{type = item, name = tungsten_ore_bob, amount = 1}},
        results = {{type = item, name = tungsten_powder, amount = 1}},
        main_product = tungsten_powder,
        surface_conditions = {{property = pressure, min = 4000, max = 4000}}
    }
})

if settings.startup[setting_game_difficulty].value == easy then
    data_recipe[tungsten_plate_bob].ingredients[1].amount = 4
    data_recipe[tungsten_plate_bob].results[1].amount = 2
elseif settings.startup[setting_game_difficulty].value == normal then
    data_recipe[tungsten_plate_bob].ingredients[1].amount = 4
    data_recipe[tungsten_plate_bob].results[1].amount = 1
elseif settings.startup[setting_game_difficulty].value == hard then
    data_recipe[tungsten_plate_bob].ingredients[1].amount = 8
    data_recipe[tungsten_plate_bob].results[1].amount = 1
end

-- LAVA
TIMSABA.functions.create_recipes
({
    {
        name = lava,
        categories = {metallurgy},
        subgroup = is_lava,
        icons = TWO_I(stone, lava),
        order = a,
        allow_productivity = true,
        energy_required = 32,
        ingredients = {{type = item, name = stone, amount = 64}},
        results = {{type = fluid, name = lava, amount = 480}},
        main_product = lava,
        surface_conditions = {{property = pressure, min = 4000, max = 4000}}
    }
})
saphirite_from_lava = "saphirite-from-lava"
jivolite_from_lava = "jivolite-from-lava"
stiratite_from_lava = "stiratite-from-lava"
crotinnium_from_lava = "crotinnium-from-lava"
rubyte_from_lava = "rubyte-from-lava"
bobmonium_from_lava = "bobmonium-from-lava"
senaite_from_lava = "senaite-from-lava"
franckeite_from_lava = "franckeite-from-lava"
local function create_recipe_from_lava(name, order, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.ore-from-lava", {"item-name." .. result}},
            name = name,
            categories = {metallurgy},
            subgroup = is_lava,
            icons = TWO_D_I(lava, calcite, result, stone),
            order = order,
            allow_productivity = true,
            energy_required = 16,
            ingredients =
            {
                {type = fluid, name = lava, amount = 480},
                {type = item, name = calcite, amount = 4}
            },
            results =
            {
                {type = item, name = result, amount = 16},
                {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
            },
            main_product = result,
            surface_conditions = {{property = pressure, min = 4000, max = 4000}}
        }
    })
end
create_recipe_from_lava(saphirite_from_lava,  a_a, ore_saphirite)
create_recipe_from_lava(jivolite_from_lava,   a_b, ore_jivolite)
create_recipe_from_lava(stiratite_from_lava,  a_c, ore_stiratite)
create_recipe_from_lava(crotinnium_from_lava, a_d, ore_crotinnium)
create_recipe_from_lava(rubyte_from_lava,     a_e, ore_rubyte)
create_recipe_from_lava(bobmonium_from_lava,  a_f, ore_bobmonium)
create_recipe_from_lava(senaite_from_lava,    a_g, ore_senaite)
create_recipe_from_lava(franckeite_from_lava, a_h, ore_franckeite)

-- MOLTEN
molten_steel = "molten-steel"
molten_tin = "molten-tin"
molten_lead = "timsaba-molten-lead"
molten_manganese = "molten-manganese"
molten_magnesium = "molten-magnesium"
molten_nickel = "molten-nickel"
molten_aluminium = "molten-aluminium"
molten_zinc = "molten-zinc"
molten_silver = "molten-silver"
molten_titanium = "molten-titanium"
molten_gold = "molten-gold"
molten_cobalt = "molten-cobalt"
molten_chromium = "molten-chromium"
molten_platinum = "molten-platinum"
molten_glass = "molten-glass"
molten_solder = "molten-solder"
molten_bronze = "molten-bronze"
molten_brass = "molten-brass"
molten_invar = "molten-invar"
molten_cobalt_steel = "molten-cobalt-steel"
molten_nitinol = "molten-nitinol"
molten_holmium = "molten-holmium"
local function create_recipe_molten_metal(name, order, ingredient, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"fluid-name." .. result},
            name = name,
            categories = {metallurgy},
            subgroup = is_vulcanus_molten,
            icons = TWO_I(ingredient, result),
            order = order,
            allow_productivity = true,
            energy_required = 8,
            ingredients = {{type = item, name = ingredient, amount = 16}},
            results = {{type = fluid, name = result, amount = 240}},
            main_product = result
        }
    })
end
create_recipe_molten_metal(molten_steel,     b,     steel_ingot, steel_molten_angels)
create_recipe_molten_metal(molten_lead,      d,      lead_ingot, lead_molten_angels)
create_recipe_molten_metal(molten_tin,       e,       tin_ingot, tin_molten_angels)
create_recipe_molten_metal(molten_manganese, f, manganese_ingot, manganese_molten_angels)
create_recipe_molten_metal(molten_magnesium, g, magnesium_ingot, magnesium_molten)
create_recipe_molten_metal(molten_nickel,    i,    nickel_ingot, nickel_molten_angels)
create_recipe_molten_metal(molten_aluminium, j, aluminium_ingot, aluminium_molten_angels)
create_recipe_molten_metal(molten_zinc,      k,      zinc_ingot, zinc_molten_angels)
create_recipe_molten_metal(molten_silver,    l,    silver_ingot, silver_molten_angels)
create_recipe_molten_metal(molten_titanium,  m,  titanium_ingot, titanium_molten_angels)
create_recipe_molten_metal(molten_gold,      n,      gold_ingot, gold_molten_angels)
create_recipe_molten_metal(molten_cobalt,    o,    cobalt_ingot, cobalt_molten_angels)
-- uranium p
-- thorium q
create_recipe_molten_metal(molten_chromium,  r,  chromium_ingot, chromium_molten_angels)
create_recipe_molten_metal(molten_platinum,  s,  platinum_ingot, platinum_molten_angels)
create_recipe_molten_metal(molten_glass,     t,   glass_mixture, glass_molten_angels)
create_recipe_molten_metal(molten_holmium,   y,   holmium_ingot, holmium_molten)

data_recipe[molten_chromium].hidden = true
data_recipe[molten_chromium].hidden_in_factoriopedia = true

advanced_molten_iron = "advanced-molten-iron"
advanced_molten_steel = "advanced-molten-steel"
advanced_molten_aluminium = "advanced-molten-aluminium"
advanced_molten_titanium = "advanced-molten-titanium"
local function create_recipe_advanced_molten_metal(name, order, ingredient, result)
    TIMSABA.functions.create_recipes
    ({
        {
            name = name,
            categories = {metallurgy},
            subgroup = is_vulcanus_molten,
            icons = AR_FOUR_I(ingredient, manganese_molten_angels, magnesium_molten, result),
            order = order,
            allow_productivity = true,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = ingredient, amount = 16},
                {type = fluid, name = manganese_molten_angels, amount = 120},
                {type = fluid, name = magnesium_molten, amount = 120}
            },
            results = {{type = fluid, name = result, amount = 480}},
            main_product = result
        }
    })
end
create_recipe_advanced_molten_metal(advanced_molten_iron,      a_a, iron_ingot,      iron_molten_angels)
create_recipe_advanced_molten_metal(advanced_molten_steel,     b_a, steel_ingot,     steel_molten_angels)
create_recipe_advanced_molten_metal(advanced_molten_aluminium, j_a, aluminium_ingot, aluminium_molten_angels)
create_recipe_advanced_molten_metal(advanced_molten_titanium,  m_a, titanium_ingot,  titanium_molten_angels)

local function create_recipe_molten_alloy(name, order, ingredient_1, ingredient_2, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"fluid-name." .. result},
            name = name,
            categories = {metallurgy},
            subgroup = is_vulcanus_molten,
            icons = THREE_I(ingredient_1, ingredient_2, result),
            order = order,
            allow_productivity = true,
            energy_required = 8,
            ingredients =
            {
                {type = fluid, name = ingredient_1, amount = 240},
                {type = fluid, name = ingredient_2, amount = 240}
            },
            results = {{type = fluid, name = result, amount = 240}},
            main_product = result
        }
    })
end
create_recipe_molten_alloy(molten_solder,       u,   lead_molten_angels,   tin_molten_angels,      solder_molten_angels)
create_recipe_molten_alloy(molten_bronze,       u_a, copper_molten_angels, tin_molten_angels,      bronze_molten_angels)
create_recipe_molten_alloy(molten_brass,        u_b, copper_molten_angels, zinc_molten_angels,     brass_molten_angels)
create_recipe_molten_alloy(molten_invar,        u_c, iron_molten_angels,   nickel_molten_angels,   invar_molten_angels)
create_recipe_molten_alloy(molten_cobalt_steel, u_d, cobalt_molten_angels, steel_molten_angels,    cobalt_steel_molten_angels)
create_recipe_molten_alloy(molten_nitinol,      u_e, nickel_molten_angels, titanium_molten_angels, nitinol_molten_angels)

-- PLATE
casting_lead = "timsaba-casting-lead"
casting_tin = "casting-tin"
casting_nickel = "casting-nickel"
casting_aluminium = "casting-aluminium"
casting_zinc = "casting-zinc"
casting_silver = "casting-silver"
casting_titanium = "casting-titanium"
casting_gold = "casting-gold"
casting_platinum = "casting-platinum"
casting_glass = "casting-glass"
casting_solder = "casting-solder"
casting_bronze = "casting-bronze"
casting_brass = "casting-brass"
casting_invar = "casting-invar"
casting_cobalt_steel = "casting-cobalt-steel"
casting_nitinol = "casting-nitinol"
casting_holmium = "casting-holmium"
local function create_recipe_casting_metal(name, order, ingredient, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.casting-recipe", {"item-name." .. result}},
            name = name,
            categories = {metallurgy},
            subgroup = is_vulcanus_plate,
            icons = TWO_I(ingredient, result),
            order = order,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 4,
            ingredients = {{type = fluid, name = ingredient, amount = 60}},
            results = {{type = item, name = result, amount = 4}},
            main_product = result
        }
    })
end
create_recipe_casting_metal(casting_lead,         d,         lead_molten_angels, lead_plate_bob)
create_recipe_casting_metal(casting_tin,          e,          tin_molten_angels, tin_plate_bob)
create_recipe_casting_metal(casting_nickel,       i,       nickel_molten_angels, nickel_plate_bob)
create_recipe_casting_metal(casting_aluminium,    j,    aluminium_molten_angels, aluminium_plate_bob)
create_recipe_casting_metal(casting_zinc,         k,         zinc_molten_angels, zinc_plate_bob)
create_recipe_casting_metal(casting_silver,       l,       silver_molten_angels, silver_plate_bob)
create_recipe_casting_metal(casting_titanium,     m,     titanium_molten_angels, titanium_plate_bob)
create_recipe_casting_metal(casting_gold,         n,         gold_molten_angels, gold_plate_bob)
create_recipe_casting_metal(casting_platinum,     q,     platinum_molten_angels, platinum_plate)
create_recipe_casting_metal(casting_glass,        r,        glass_molten_angels, glass_bob)
create_recipe_casting_metal(casting_solder,       s,       solder_molten_angels, solder)
create_recipe_casting_metal(casting_bronze,       t,       bronze_molten_angels, bronze_plate_bob)
create_recipe_casting_metal(casting_brass,        u,        brass_molten_angels, brass_plate_bob)
create_recipe_casting_metal(casting_invar,        v,        invar_molten_angels, invar_plate_bob)
create_recipe_casting_metal(casting_cobalt_steel, w, cobalt_steel_molten_angels, cobalt_steel_plate_bob)
create_recipe_casting_metal(casting_nitinol,      x,      nitinol_molten_angels, nitinol_plate_bob)
create_recipe_casting_metal(casting_holmium,      y,             holmium_molten, holmium_plate)

-- INTERMEDIATE
casting_steel_rod = "casting-steel-rod"
casting_titanium_rod = "casting-titanium-rod"
local function create_recipe_casting_rod(name, order, ingredient, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.casting-recipe", {"item-name." .. result}},
            name = name,
            categories = {metallurgy},
            subgroup = is_vulcanus_rod,
            icons = TWO_I(ingredient, result),
            order = order,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients = {{type = fluid, name = ingredient, amount = 30}},
            results = {{type = item, name = result, amount = 4}},
            main_product = result
        }
    })
end
create_recipe_casting_rod(casting_steel_rod,    b,    steel_molten_angels, steel_rod)
create_recipe_casting_rod(casting_titanium_rod, c, titanium_molten_angels, titanium_rod)

casting_steel_gear_wheel = "casting-steel-gear-wheel"
casting_brass_gear_wheel = "casting-brass-gear-wheel"
casting_cobalt_steel_gear_wheel = "casting-cobalt-steel-gear-wheel"
casting_titanium_gear_wheel = "casting-titanium-gear-wheel"
casting_nitinol_gear_wheel = "casting-nitinol-gear-wheel"
local function create_recipe_casting_gear_wheel(name, order, ingredient, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.casting-recipe", {"item-name." .. result}},
            name = name,
            categories = {metallurgy},
            subgroup = is_vulcanus_gear_wheel,
            icons = TWO_I(ingredient, result),
            order = order,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients = {{type = fluid, name = ingredient, amount = 15}},
            results = {{type = item, name = result, amount = 1}},
            main_product = result
        }
    })
end
create_recipe_casting_gear_wheel(casting_steel_gear_wheel,        b,        steel_molten_angels, steel_gear_wheel)
create_recipe_casting_gear_wheel(casting_brass_gear_wheel,        c,        brass_molten_angels, brass_gear_wheel)
create_recipe_casting_gear_wheel(casting_cobalt_steel_gear_wheel, d, cobalt_steel_molten_angels, cobalt_steel_gear_wheel)
create_recipe_casting_gear_wheel(casting_titanium_gear_wheel,     e,     titanium_molten_angels, titanium_gear_wheel)
create_recipe_casting_gear_wheel(casting_nitinol_gear_wheel,      f,      nitinol_molten_angels, nitinol_gear_wheel)

casting_iron_bearing_ball = "casting-iron-bearing-ball"
casting_steel_bearing_ball = "casting-steel-bearing-ball"
casting_brass_bearing_ball = "casting-brass-bearing-ball"
casting_cobalt_steel_bearing_ball = "casting-cobalt-steel-bearing-ball"
casting_titanium_bearing_ball = "casting-titanium-bearing-ball"
casting_nitinol_bearing_ball = "casting-nitinol-bearing-ball"
local function create_recipe_casting_bearing_ball(name, order, ingredient, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.casting-recipe", {"item-name." .. result}},
            name = name,
            categories = {metallurgy},
            subgroup = is_vulcanus_bearing_ball,
            icons = TWO_I(ingredient, result),
            order = order,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients = {{type = fluid, name = ingredient, amount = 15}},
            results = {{type = item, name = result, amount = 8}},
            main_product = result
        }
    })
end
create_recipe_casting_bearing_ball(casting_iron_bearing_ball,         a,         iron_molten_angels, iron_bearing_ball)
create_recipe_casting_bearing_ball(casting_steel_bearing_ball,        b,        steel_molten_angels, steel_bearing_ball)
create_recipe_casting_bearing_ball(casting_brass_bearing_ball,        c,        brass_molten_angels, brass_bearing_ball)
create_recipe_casting_bearing_ball(casting_cobalt_steel_bearing_ball, d, cobalt_steel_molten_angels, cobalt_steel_bearing_ball)
create_recipe_casting_bearing_ball(casting_titanium_bearing_ball,     e,     titanium_molten_angels, titanium_bearing_ball)
create_recipe_casting_bearing_ball(casting_nitinol_bearing_ball,      f,      nitinol_molten_angels, nitinol_bearing_ball)

casting_iron_bearing = "casting-iron-bearing"
casting_steel_bearing = "casting-steel-bearing"
casting_brass_bearing = "casting-brass-bearing"
casting_cobalt_steel_bearing = "casting-cobalt-steel-bearing"
casting_titanium_bearing = "casting-titanium-bearing"
casting_nitinol_bearing = "casting-nitinol-bearing"
local function create_recipe_casting_bearing(name, order, ingredient_1, ingredient_2, result, fluids)
    if fluids then
        TIMSABA.functions.create_recipes
        ({
            {
                localised_name = {"recipe-name.casting-recipe", {"item-name." .. result}},
                name = name,
                categories = {metallurgy},
                subgroup = is_vulcanus_bearing,
                icons = B_F_L(fluids, ingredient_1, ingredient_2, result),
                order = order,
                allow_productivity = true,
                allow_quality = true,
                energy_required = 1,
                ingredients =
                {
                    {type = item, name = ingredient_1, amount = 16},
                    {type = fluid, name = ingredient_2, amount = 30},
                    {type = fluid, name = fluids, amount = 15}
                },
                results = {{type = item, name = result, amount = 2}},
                main_product = result
            }
        })
    else
        TIMSABA.functions.create_recipes
        ({
            {
                localised_name = {"recipe-name.casting-recipe", result},
                name = name,
                categories = {metallurgy},
                subgroup = is_vulcanus_bearing,
                icons = B_F_L(nil, ingredient_1, ingredient_2, result),
                order = order,
                allow_productivity = true,
                allow_quality = true,
                energy_required = 1,
                ingredients =
                {
                    {type = item, name = ingredient_1, amount = 16},
                    {type = fluid, name = ingredient_2, amount = 30}
                },
                results = {{type = item, name = result, amount = 2}},
                main_product = result
            }
        })
    end
end
create_recipe_casting_bearing(casting_iron_bearing,         a,         iron_bearing_ball,         iron_molten_angels,        iron_bearing)
create_recipe_casting_bearing(casting_steel_bearing,        b,        steel_bearing_ball,        steel_molten_angels,        steel_bearing)
create_recipe_casting_bearing(casting_brass_bearing,        c,        brass_bearing_ball,        brass_molten_angels,        brass_bearing, lubricant)
create_recipe_casting_bearing(casting_cobalt_steel_bearing, d, cobalt_steel_bearing_ball, cobalt_steel_molten_angels, cobalt_steel_bearing, lubricant)
create_recipe_casting_bearing(casting_titanium_bearing,     e,     titanium_bearing_ball,     titanium_molten_angels,     titanium_bearing, lubricant)
create_recipe_casting_bearing(casting_nitinol_bearing,      f,      nitinol_bearing_ball,      nitinol_molten_angels,      nitinol_bearing, lubricant)

casting_tin_cable = "casting-tin-cable"
casting_silver_cable = "casting-silver-cable"
casting_gold_cable = "casting-gold-cable"
casting_platinum_cable = "casting-platinum-cable"
local function create_recipe_casting_cable(name, order, ingredient, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.casting-recipe", {"item-name." .. result}},
            name = name,
            categories = {metallurgy},
            subgroup = is_vulcanus_cable,
            icons = THREE_I(copper_molten_angels, ingredient, result),
            order = order,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients =
            {
                {type = fluid, name = copper_molten_angels, amount = 60},
                {type = fluid, name = ingredient, amount = 15}
            },
            results = {{type = item, name = result, amount = 16}},
            main_product = result
        }
    })
end
create_recipe_casting_cable(casting_tin_cable,      b,      tin_molten_angels, tin_cable)
-- aluminium cable
create_recipe_casting_cable(casting_silver_cable,   d,   silver_molten_angels, silver_cable)
create_recipe_casting_cable(casting_gold_cable,     e,     gold_molten_angels, gold_cable)
create_recipe_casting_cable(casting_platinum_cable, f, platinum_molten_angels, platinum_cable)

-- PIPE
casting_copper_pipe = "casting-copper-pipe"
casting_steel_pipe = "casting-steel-pipe"
casting_bronze_pipe = "casting-bronze-pipe"
casting_aluminium_pipe = "casting-aluminium-pipe"
casting_brass_pipe = "casting-brass-pipe"
casting_titanium_pipe = "casting-titanium-pipe"
casting_gold_pipe = "casting-gold-pipe"
casting_nitinol_pipe = "casting-nitinol-pipe"
local function create_recipe_casting_pipes(name, order, ingredient, result)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.casting-recipe", {"entity-name." .. result}},
            name = name,
            categories = {metallurgy},
            subgroup = is_vulcanus_pipe,
            icons = TWO_I(ingredient, result),
            order = order,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients = {{type = fluid, name = ingredient, amount = 15}},
            results = {{type = item, name = result, amount = 1}},
            main_product = result
        }
    })
end
create_recipe_casting_pipes(casting_copper_pipe,   b, copper_molten_angels,   copper_pipe)
create_recipe_casting_pipes(casting_steel_pipe,    c, steel_molten_angels,    steel_pipe)
create_recipe_casting_pipes(casting_bronze_pipe,   d, bronze_molten_angels,   bronze_pipe)
if mods[muluna_mods] then
    create_recipe_casting_pipes(casting_aluminium_pipe, e, aluminium_molten_angels, aluminium_pipe)
end
create_recipe_casting_pipes(casting_brass_pipe,    f, brass_molten_angels,    brass_pipe)
create_recipe_casting_pipes(casting_titanium_pipe, g, titanium_molten_angels, titanium_pipe)
if mods[lignumis_mods] then
    create_recipe_casting_pipes(casting_gold_pipe, h, gold_molten_angels, gold_pipe)
end
create_recipe_casting_pipes(casting_nitinol_pipe,  i, nitinol_molten_angels,  nitinol_pipe)

-- PIPE TO GROUND
casting_copper_pipe_to_ground = "casting-copper-pipe-to-ground"
casting_steel_pipe_to_ground = "casting-steel-pipe-to-ground"
casting_bronze_pipe_to_ground = "casting-bronze-pipe-to-ground"
casting_aluminium_pipe_to_ground = "casting-aluminium-pipe-to-ground"
casting_brass_pipe_to_ground = "casting-brass-pipe-to-ground"
casting_titanium_pipe_to_ground = "casting-titanium-pipe-to-ground"
casting_gold_pipe_to_ground = "casting-gold-pipe-to-ground"
casting_nitinol_pipe_to_ground = "casting-nitinol-pipe-to-ground"
local function create_recipe_casting_pipes(name, order, ingredient, result, tier)
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.casting-recipe", {"entity-name." .. result}},
            name = name,
            categories = {metallurgy},
            subgroup = is_vulcanus_pipe_to_ground,
            icons = TWO_I(ingredient, result),
            order = order,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients = {{type = fluid, name = ingredient, amount = (120 * tier)}},
            results = {{type = item, name = result, amount = 2}},
            main_product = result
        }
    })
end
create_recipe_casting_pipes(casting_copper_pipe_to_ground,   b,   copper_molten_angels,   copper_pipe_to_ground, 1)
create_recipe_casting_pipes(casting_steel_pipe_to_ground,    c,    steel_molten_angels,    steel_pipe_to_ground, 2)
create_recipe_casting_pipes(casting_bronze_pipe_to_ground,   d,   bronze_molten_angels,   bronze_pipe_to_ground, 2)
if mods[muluna_mods] then
    create_recipe_casting_pipes(casting_aluminium_pipe_to_ground, e, aluminium_molten_angels, aluminium_pipe_to_ground, 3)
end
create_recipe_casting_pipes(casting_brass_pipe_to_ground,    f,    brass_molten_angels,    brass_pipe_to_ground, 3)
create_recipe_casting_pipes(casting_titanium_pipe_to_ground, g, titanium_molten_angels, titanium_pipe_to_ground, 4)
if mods[lignumis_mods] then
    create_recipe_casting_pipes(casting_gold_pipe_to_ground, h, gold_molten_angels, gold_pipe_to_ground, 4)
end
create_recipe_casting_pipes(casting_nitinol_pipe_to_ground,  i,  nitinol_molten_angels,  nitinol_pipe_to_ground, 5)

-- SLAG PROCESSING