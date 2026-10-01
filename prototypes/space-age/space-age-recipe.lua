-- ROCKET PART
rocket_part_nauvis = "rocket-part-nauvis"
TIMSABA.functions.create_recipes
({
    {
        localised_name = {"item-name." .. rocket_part},
        name = rocket_part_nauvis,
        categories = {"rocket-building"},
        subgroup = "space-interactors",
        icons = R_P_I(rocket_part, planet_nauvis),
        order = c .. "-" .. data_planet[planet_nauvis].order,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = item, name = low_density_structure, amount = 1},
            {type = item, name = heat_shielding_tile, amount = 8},
            {type = item, name = advanced_processing_unit, amount = 1},
            {type = item, name = molybdenum_rhenium_pipe, amount = 16},
            {type = item, name = rocket_fuel, amount = 1}
        },
        results = {{type = item, name = rocket_part, amount = 1}},
        main_product = rocket_part,
        surface_conditions = {{property = pressure, min = 1000, max = 1000}}
    }
})

-- METALLIC
metallic_asteroid_crushing_2 = "timsaba-metallic-asteroid-crushing-2" -- Copper ore
metallic_asteroid_crushing_3 = "metallic-asteroid-crushing-3" -- Lead ore
metallic_asteroid_crushing_4 = "metallic-asteroid-crushing-4" -- Tin ore
metallic_asteroid_crushing_5 = "metallic-asteroid-crushing-5" -- Manganese ore
metallic_asteroid_crushing_6 = "metallic-asteroid-crushing-6" -- Magnesium ore
advanced_metallic_asteroid_crushing_2 = "advanced-metallic-asteroid-crushing-2" -- Aluminium ore
advanced_metallic_asteroid_crushing_3 = "advanced-metallic-asteroid-crushing-3" -- Zinc ore
advanced_metallic_asteroid_crushing_4 = "advanced-metallic-asteroid-crushing-4" -- Silver ore
full_metallic_asteroid_crushing_1 = "full-metallic-asteroid-crushing-1" -- Titanium ore
full_metallic_asteroid_crushing_2 = "full-metallic-asteroid-crushing-2" -- Gold ore
full_metallic_asteroid_crushing_3 = "full-metallic-asteroid-crushing-3" -- Cobalt ore
full_metallic_asteroid_crushing_4 = "full-metallic-asteroid-crushing-4" -- Uranium ore
full_metallic_asteroid_crushing_5 = "full-metallic-asteroid-crushing-5" -- Thorium ore
full_metallic_asteroid_crushing_6 = "full-metallic-asteroid-crushing-6" -- Tungsten ore
full_metallic_asteroid_crushing_7 = "full-metallic-asteroid-crushing-7" -- Tungsten ore
full_metallic_asteroid_crushing_8 = "full-metallic-asteroid-crushing-8" -- Platinum ore
advanced_full_metallic_asteroid_crushing_1 = "advanced-full-metallic-asteroid-crushing-1" -- Molybdenum ore
advanced_full_metallic_asteroid_crushing_2 = "advanced-full-metallic-asteroid-crushing-2" -- Rhenium ore
advanced_full_metallic_asteroid_crushing_3 = "advanced-full-metallic-asteroid-crushing-3" -- Niobium ore
advanced_full_metallic_asteroid_crushing_4 = "advanced-full-metallic-asteroid-crushing-4" -- Holmium ore
advanced_full_metallic_asteroid_crushing_5 = "advanced-full-metallic-asteroid-crushing-5" -- Antimony ore
advanced_full_metallic_asteroid_crushing_6 = "advanced-full-metallic-asteroid-crushing-6" -- Germanium ore
advanced_full_metallic_asteroid_crushing_7 = "advanced-full-metallic-asteroid-crushing-7" -- Gallium ore
advanced_full_metallic_asteroid_crushing_8 = "advanced-full-metallic-asteroid-crushing-8" -- Vanadium ore
local function metallic_asteroid_crushing(name, order, result)
    TIMSABA.functions.create_recipes
    ({
        {
            name = name,
            categories = {crushing},
            subgroup = is_space_environment_1,
            icons = TWO_I(metallic_asteroid_chunk, result),
            order = order,
            allow_productivity = true,
            ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
            results = {{type = item, name = result, amount = 8}},
            main_product = result
        }
    })
end
metallic_asteroid_crushing(metallic_asteroid_crushing_2,               e_b, copper_ore)
metallic_asteroid_crushing(metallic_asteroid_crushing_3,               e_c, lead_ore_bob)
metallic_asteroid_crushing(metallic_asteroid_crushing_4,               e_d, tin_ore_bob)
metallic_asteroid_crushing(metallic_asteroid_crushing_5,               e_e, manganese_ore_angels)
metallic_asteroid_crushing(metallic_asteroid_crushing_6,               e_f, magnesium_ore)
metallic_asteroid_crushing(advanced_metallic_asteroid_crushing_2,      f_b, aluminium_ore_bob)
metallic_asteroid_crushing(advanced_metallic_asteroid_crushing_3,      f_c, zinc_ore_bob)
metallic_asteroid_crushing(advanced_metallic_asteroid_crushing_4,      f_d, silver_ore_bob)
metallic_asteroid_crushing(full_metallic_asteroid_crushing_1,          g_a, titanium_ore_bob)
metallic_asteroid_crushing(full_metallic_asteroid_crushing_2,          g_b, gold_ore_bob)
metallic_asteroid_crushing(full_metallic_asteroid_crushing_3,          g_c, cobalt_ore_bob)
metallic_asteroid_crushing(full_metallic_asteroid_crushing_4,          g_d, uranium_ore)
metallic_asteroid_crushing(full_metallic_asteroid_crushing_5,          g_e, thorium_ore_bob)
metallic_asteroid_crushing(full_metallic_asteroid_crushing_6,          g_f, chromium_ore_angels)
metallic_asteroid_crushing(full_metallic_asteroid_crushing_7,          g_g, tungsten_ore_bob)
metallic_asteroid_crushing(full_metallic_asteroid_crushing_8,          g_h, platinum_ore_angels)
metallic_asteroid_crushing(advanced_full_metallic_asteroid_crushing_1, h_a, molybdenum_ore)
metallic_asteroid_crushing(advanced_full_metallic_asteroid_crushing_2, h_b, rhenium_ore)
metallic_asteroid_crushing(advanced_full_metallic_asteroid_crushing_3, h_c, niobium_ore)
metallic_asteroid_crushing(advanced_full_metallic_asteroid_crushing_4, h_d, holmium_ore)
metallic_asteroid_crushing(advanced_full_metallic_asteroid_crushing_5, h_e, vanadium_ore)
metallic_asteroid_crushing(advanced_full_metallic_asteroid_crushing_6, h_f, antimony_ore)
metallic_asteroid_crushing(advanced_full_metallic_asteroid_crushing_7, h_g, germanium_ore)
metallic_asteroid_crushing(advanced_full_metallic_asteroid_crushing_8, h_h, gallium_ore)

-- CARBONIC
advanced_carbonic_asteroid_crushing_2 = "advanced-carbonic-asteroid-crushing-2"
TIMSABA.functions.create_recipes
({
    {
        name = advanced_carbonic_asteroid_crushing_2,
        categories = {crushing},
        subgroup = is_space_environment_2,
        icons = TWO_I(carbonic_asteroid_chunk, calcite),
        order = f_b,
        allow_productivity = true,
        allow_quality = true,
        ingredients = {{type = item, name = carbonic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = calcite, amount = 8}},
        main_product = calcite
    }
})

-- OXIDE
oxide_asteroid_crushing_2 = "timsaba-oxide-asteroid-crushing-2"
oxide_asteroid_crushing_3 = "oxide-asteroid-crushing-3"
oxide_asteroid_crushing_4 = "oxide-asteroid-crushing-4"
advanced_oxide_asteroid_crushing_2 = "advanced-oxide-asteroid-crushing-2"
full_oxide_asteroid_crushing_1 = "full-oxide-asteroid-crushing-1"
full_oxide_asteroid_crushing_2 = "full-oxide-asteroid-crushing-2"
local function oxide_asteroid_crushing(name, categories, order, type_results, result, amount)
    TIMSABA.functions.create_recipes
    ({
        {
            name = name,
            categories = categories,
            subgroup = is_space_environment_3,
            icons = TWO_I(oxide_asteroid_chunk, result),
            order = order,
            allow_productivity = true,
            ingredients = {{type = item, name = oxide_asteroid_chunk, amount = 1}},
            results = {{type = type_results, name = result, amount = amount}},
            main_product = result
        }
    })
end
oxide_asteroid_crushing(oxide_asteroid_crushing_2,          {chemistry}, e_b, fluid,          nitrogen_oxide, 120)
oxide_asteroid_crushing(oxide_asteroid_crushing_3,          {chemistry}, e_c, fluid,      chlorine_oxide_gas, 120)
oxide_asteroid_crushing(oxide_asteroid_crushing_4,           {crushing}, e_d,  item,            sodium_oxide, 8)
oxide_asteroid_crushing(advanced_oxide_asteroid_crushing_2, {chemistry}, f_b, fluid, nitrogen_dioxide_angels, 120)
oxide_asteroid_crushing(full_oxide_asteroid_crushing_1,      {crushing}, g_a,  item,           lithium_oxide, 8)
oxide_asteroid_crushing(full_oxide_asteroid_crushing_2,     {chemistry}, g_b, fluid,     oxygen_fluoride_gas, 120)

-- SPACE PROCESSING
nitrogen_oxide_separation = "nitrogen-oxide-gas-separation"
chlorine_oxide_separation = "chlorine-oxide-gas-separation"
nitrogen_monoxide_space = "nitrogen-monoxide-gas-space"
hydrazine_space = "hydrazine-liquid-space"
dinitrogen_tetroxide_space = "dinitrogen-tetroxide-gas-space"
oxygen_fluoride_space = "oxygen-fluoride-gas-space"
fluoroketone_liquid = "fluoroketone-liquid"
TIMSABA.functions.create_recipes
({
    {
        name = nitrogen_oxide_separation,
        categories = {chemistry},
        subgroup = is_space_processing,
        icons = THREE_R_I(nitrogen_oxide, nitrogen_angels, oxygen_angels),
        order = b,
        energy_required = 2, -- 2N₂O --> 2N₂ + O₂
        ingredients =
        {
            {type = fluid, name = nitrogen_oxide, amount = 60},
        },
        results =
        {
            {type = fluid, name = nitrogen_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 30}
        },
        main_product = nitrogen_angels
    },
    {
        name = chlorine_oxide_separation,
        categories = {chemistry},
        subgroup = is_space_processing,
        icons = THREE_R_I(chlorine_oxide_gas, chlorine_angels, oxygen_angels),
        order = c,
        energy_required = 2, -- 2Cl₂O --> 2Cl₂ + O₂
        ingredients = {{type = fluid, name = chlorine_oxide_gas, amount = 60}},
        results =
        {
            {type = fluid, name = chlorine_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 30}
        },
        main_product = chlorine_angels
    },
    {
        name = nitrogen_monoxide_space,
        categories = {chemistry},
        subgroup = is_space_processing,
        icons = BUILDING_R_I(nitrogen_monoxide_angels, space_platform),
        order = e,
        energy_required = 2, -- 4NH₃ + 5O₂ -cat-> 4NO + 6H₂O
        ingredients =
        {
            {type = fluid, name = ammonia_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 75},
            {type = item, name = catalyst_red, amount = 1}
        },
        results =
        {
            {type = fluid, name = nitrogen_monoxide_angels, amount = 15}, -- 60
            {type = fluid, name = steam, amount = 30}, -- 90
            {type = item, name = catalyst_red, amount = 1, independent_probability = 0.9},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.1}
        },
        main_product = nitrogen_monoxide_angels,
        surface_conditions = {{property = gravity, min = 0, max = 0}}
    },
    {
        name = hydrazine_space,
        categories = {chemistry},
        subgroup = is_space_processing,
        icons = BUILDING_R_I(hydrazine_angels, space_platform),
        order = f,
        -- NH₂Cl + NH₃ -cat-> N₂H₄ + HCl
        ingredients =
        {
            {type = fluid, name = monochloramine_angels, amount = 60},
            {type = fluid, name = ammonia_angels, amount = 60},
            {type = item, name = catalyst_red, amount = 1}
        },
        results =
        {
            {type = fluid, name = hydrazine_angels, amount = 30}, -- 60
            {type = fluid, name = hydrogen_chloride_angels, amount = 30}, -- 60
            {type = item, name = catalyst_red, amount = 1, independent_probability = 0.9},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.1}
        },
        main_product = hydrazine_angels,
        surface_conditions = {{property = gravity, min = 0, max = 0}}
    },
    {
        name = dinitrogen_tetroxide_space,
        categories = {chemistry},
        subgroup = is_space_processing,
        icons = BUILDING_R_I(nitrogen_dioxide_angels, space_platform),
        order = g,
        energy_required = 2, -- 2NO₂ -cat-> N₂O₄
        ingredients =
        {
            {type = fluid, name = nitrogen_dioxide_angels, amount = 60},
            {type = item, name = catalyst_red, amount = 1}
        },
        results =
        {
            {type = fluid, name = dinitrogen_tetroxide_angels, amount = 15}, -- 30
            {type = item, name = catalyst_red, amount = 1, independent_probability = 0.9},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.1}
        },
        main_product = dinitrogen_tetroxide_angels,
        surface_conditions = {{property = gravity, min = 0, max = 0}}
    },
    {
        name = oxygen_fluoride_space,
        categories = {cryogenics},
        subgroup = is_space_processing,
        icons = BUILDING_R_I(oxygen_fluoride_gas, space_platform),
        order = h,
        -- 2F₂ + O₂ --> OF₂
        ingredients =
        {
            {type = fluid, name = fluorine, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 60}
        },
        results = {{type = fluid, name = oxygen_fluoride_gas, amount = 60}},
        main_product = oxygen_fluoride_gas,
        surface_conditions = {{property = pressure, min = 0, max = 0}}
    },
    {
        name = fluoroketone_liquid,
        categories = {cryogenics},
        subgroup = is_space_processing,
        icons = BUILDING_R_I(fluoroketone_hot, space_platform),
        order = i,
        energy_required = 8, -- 2C₃F₆ + OF₂ --> C₆F₁₂O + F₂
        ingredients =
        {
            {type = fluid, name = hexafluoropropylene_gas, amount = 120},
            {type = fluid, name = oxygen_fluoride_gas, amount = 60}
        },
        results =
        {
            {type = fluid, name = fluoroketone_hot, amount = 60},
            {type = fluid, name = fluorine, amount = 30} -- 60
        },
        main_product = fluoroketone_hot,
        surface_conditions = {{property = pressure, min = 0, max = 0}}
    }
})

-- SPACE PROCESSING 2
sodium_hydroxide_space = "sodium-hydroxide-space"
lime_space = "lime-space"
lithium_space = "lithium-space"
TIMSABA.functions.create_recipes
({
    {
        name = sodium_hydroxide_space,
        categories = {chemistry},
        subgroup = is_space_processing_2,
        icons = THREE_I(sodium_oxide, water_purified_angels, sodium_hydroxide_angels),
        order = a,
        allow_quality = true,
        -- Na₂O + H₂O --> 2NaOH 
        ingredients =
        {
            {type = item, name = sodium_oxide, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = item, name = sodium_hydroxide_angels, amount = 8}},
        main_product = sodium_hydroxide_angels
    },
    {
        name = lime_space,
        categories = {angels_blast_smelting_4},
        subgroup = is_space_processing_2,
        icons = THREE_R_I(calcite, lime_angels, carbon_dioxide_angels),
        order = b,
        energy_required = 8, -- CaCO₃ --> CaO + CO₂
        ingredients = {{type = item, name = calcite, amount = 16}},
        results =
        {
            {type = item, name = lime_angels, amount = 16},
            {type = fluid, name = carbon_dioxide_angels, amount = 120} -- 240
        },
        main_product = lime_angels
    },
    {
        name = lithium_space,
        categories = {angels_chemical_smelting_4},
        subgroup = is_space_processing_2,
        icons = TWO_D_I(lithium_oxide, silicon_powder, lithium_bob, silicon_oxide_IV),
        order = c,
        allow_quality = true,
        energy_required = 8, -- 2Li₂O + Si -electrolys-> 4Li + SiO₂
        ingredients =
        {
            {type = item, name = lithium_oxide, amount = 16},
            {type = item, name = silicon_powder, amount = 8}
        },
        results =
        {
            {type = item, name = lithium_bob, amount = 32},
            {type = item, name = silicon_oxide_IV, amount = 4} -- 8
        },
        main_product = lithium_bob
    }
})

require("prototypes.space-age.vulcanus.vulcanus-recipe")
require("prototypes.space-age.gleba.gleba-recipe")
require("prototypes.space-age.fulgora.fulgora-recipe")
require("prototypes.space-age.aquilo.aquilo-recipe")