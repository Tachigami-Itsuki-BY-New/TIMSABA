local is_algae_brown = "angels-bio-processing-brown"
-- ANGELS BIOPROCESSING NAUVIS
iodine_gas_2 = "iodine-gas-2"
fertilizer_2 = "fertilizer-2"
TIMSABA.functions.create_recipes
({
    {
        name = iodine_gas,
        categories = {angels_liquifying},
        subgroup = is_algae_brown,
        icons = TWO_I(algae_brown, iodine_gas),
        order = c,
        ingredients = {{type = item, name = algae_brown, amount = 8}},
        results = {{type = fluid, name = iodine_gas, amount = 60}},
        main_product = iodine_gas
    },
    {
        localised_name = {"fluid-name." .. iodine_gas},
        name = iodine_gas_2,
        categories = {chemistry},
        subgroup = is_algae_brown,
        icons = THREE_D_I(sodium_iodide_solution, potassium_permanganate, potassium_hydroxide, iodine_gas, potassium_manganate, sodium_hydroxide_solution_angels),
        order = c_a,
        -- 2NaI(aq) + 2KMnO₄(s) + 2KOH(s) --> I₂(g) + 2K₂MnO₄(s) + 2NaOH(aq)
        ingredients =
        {
            {type = fluid, name = sodium_iodide_solution, amount = 60},
            {type = item, name = potassium_permanganate, amount = 4},
            {type = item, name = potassium_hydroxide, amount = 4}
        },
        results =
        {
            {type = fluid, name = iodine_gas, amount = 30},
            {type = item, name = potassium_manganate, amount = 2}, -- 4
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 30} -- 60
        },
        main_product = iodine_gas
    },
    {
        name = fertilizer_2,
        categories = {chemistry},
        subgroup = "angels-bio-wood",
        icons = THREE_I(compost_angels, potassium_sulfate_solution, fertilizer_angels),
        order = b_a,
        -- Compost + K₂SO₄(aq) --> Fertilizer
        ingredients =
        {
            {type = item, name = compost_angels, amount = 4},
            {type = fluid, name = potassium_sulfate_solution, amount = 60}
        },
        results = {{type = item, name = fertilizer_angels, amount = 2}},
        main_product = fertilizer_angels
    }
})

-- ANGELS BIOPROCESSING VEGETABLES
ethanol_liquid_2 = "ethanol-liquid-2"
ethanol_liquid_3 = "ethanol-liquid-3"
TIMSABA.functions.create_recipes
({
    {
        localised_name = {"fluid-name." .. ethanol_angels},
        type = recipe,
        name = ethanol_liquid_2,
        categories = {chemistry},
        subgroup = "angels-bio-processor-fermentation",
        icons = FOUR_THREE_R_I(lithium_tetraethoxy_aluminate_solution_ether, nil, water_purified_angels, ethanol_angels, lithium_hydroxide, aluminium_hydroxide, diethyl_ether),
        order = d_a,
        -- LiAl(C₂H₅O)₄(ether) + 4H₂O(l) --> 4C₂H₆O(l) + LiOH(s) + Al(OH)₃(s) + (C₂H₅)₂O(l)
        ingredients =
        {
            {type = fluid, name = lithium_tetraethoxy_aluminate_solution_ether, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = ethanol_angels, amount = 240},
            {type = item, name = lithium_hydroxide, amount = 2}, -- 4
            {type = item, name = aluminium_hydroxide, amount = 2}, -- 4
            {type = fluid, name = diethyl_ether, amount = 30} -- 60
        },
        main_product = ethanol_angels
    },
    {
        localised_name = {"fluid-name." .. ethanol_angels},
        type = recipe,
        name = ethanol_liquid_3,
        categories = {chemistry},
        subgroup = "angels-bio-processor-fermentation",
        icons = TWO_D_I(chloroethane_gas, sodium_hydroxide_solution_angels, ethanol_angels, sodium_chloride_solution),
        order = d_b,
        -- C₂H₅Cl(g) + NaOH(aq) --> C₂H₅OH(l) + NaCl(aq)
        ingredients =
        {
            {type = fluid, name = chloroethane_gas, amount = 60},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = ethanol_angels, amount = 60},
            {type = fluid, name = sodium_chloride_solution, amount = 30} -- 60
        },
        main_product = ethanol_angels
    },
    {
        name = cellulose_triacetate,
        categories = {angels_advanced_chemistry},
        subgroup = is_bio_plastic,
        icons = THREE_I(cellulose_fiber_angels, acetic_anhydride, cellulose_triacetate),
        order = a,
        energy_requred = 8, -- (C₆H₁₀O₅)n(s) + C₄H₆O₃(l) -H₂SO₄(l)/C₂H₄O₂(l)-> (C₁₂H₁₆O₈)n(s)
        ingredients =
        {
            {type = item, name = cellulose_fiber_angels, amount = 16},
            {type = fluid, name = acetic_anhydride, amount = 240},
            {type = fluid, name = acetic_acid, amount = 240},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results =
        {
            {type = item, name = cellulose_triacetate, amount = 16},
            {type = fluid, name = acetic_acid, amount = 120}, -- 240
            {type = fluid, name = sulfuric_acid_angels, amount = 120} -- 240
        },
        main_product = cellulose_triacetate
    },
    {
        name = cellulose_diacetate,
        categories = {chemistry},
        subgroup = is_bio_plastic,
        icons = TWO_D_I(cellulose_triacetate, water_purified_angels, cellulose_diacetate, acetic_acid),
        order = b,
        -- (C₁₂H₁₆O₈)n(s) + H₂O(l) --> (C₁₀H₁₄O₇)n(s) + C₂H₄O₂(l)
        ingredients =
        {
            {type = item, name = cellulose_triacetate, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = cellulose_diacetate, amount = 4},
            {type = fluid, name = acetic_acid, amount = 30}, -- 60
        },
        main_product = cellulose_diacetate
    }
})

-- ANGELS BIOPROCESSING ANIMALIS
TIMSABA.functions.create_recipes
({
    {
        localised_name = {"recipe-name.raw-fish"},
        name = factorian_fish,
        categories = {"angels-bio-refugium-fish"},
        subgroup = "angels-bio-fish",
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png", icon_size = 32}, {icon = "__base__/graphics/icons/fish.png", icon_size = 64}},
        order = a,
        allow_productivity = true,
        energy_requred = 64,
        ingredients =
        {
            {type = item, name = factorian_fish, amount = 2, ignored_by_stats = 2},
            {type = fluid, name = nutrient_pulp, amount = 30},
            {type = fluid, name = water_for_fish, amount = 120}
        },
        results =
        {
            {type = item, name = factorian_fish, amount_min = 2, amount_max = 4, ignored_by_productivity = 2, ignored_by_stats = 2},
            {type = fluid, name = polluted_water_for_fish, amount = 120}
        },
        main_product = factorian_fish
    },
    {
        name = polluted_water_for_fish,
        categories = {angels_liquifying},
        subgroup = "angels-bio-fish-breeding",
        icons = THREE_I(raw_meat, water_for_fish, polluted_water_for_fish),
        order = b,
        energy_required = 16,
        ingredients =
        {
            {type = item, name = raw_meat, amount = 32},
            {type = fluid, name = water_for_fish, amount = 120}
        },
        results = {{type = fluid, name = polluted_water_for_fish, amount = 120}},
        main_product = polluted_water_for_fish
    },
    {
        name = crystal_splinter_blue_cut,
        categories = {crafting},
        subgroup = is_crystals_splinter_2,
        icons = THREE_R_I(crystal_splinter, crystal_splinter_blue_cut, crystal_powder),
        order = a,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_splinter, amount = 1}},
        results =
        {
            {type = item, name = crystal_splinter_blue_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_splinter_blue_cut
    },
    {
        name = crystal_splinter_green_cut,
        categories = {crafting},
        subgroup = is_crystals_splinter_2,
        icons = THREE_R_I(crystal_splinter, crystal_splinter_green_cut, crystal_powder),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_splinter, amount = 1}},
        results =
        {
            {type = item, name = crystal_splinter_green_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_splinter_green_cut
    },
    {
        type = recipe,
        name = crystal_splinter_red_cut,
        categories = {crafting},
        subgroup = is_crystals_splinter_2,
        icons = THREE_R_I(crystal_splinter, crystal_splinter_red_cut, crystal_powder),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_splinter, amount = 1}},
        results =
        {
            {type = item, name = crystal_splinter_red_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_splinter_red_cut
    },
    {
        name = crystal_shard_blue_cut,
        categories = {crafting},
        subgroup = is_crystals_shard_2,
        icons = THREE_R_I(crystal_shard, crystal_shard_blue_cut, crystal_powder),
        order = a,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_shard, amount = 1}},
        results =
        {
            {type = item, name = crystal_shard_blue_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_shard_blue_cut
    },
    {
        name = crystal_shard_green_cut,
        categories = {crafting},
        subgroup = is_crystals_shard_2,
        icons = THREE_R_I(crystal_shard, crystal_shard_green_cut, crystal_powder),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_shard, amount = 1}},
        results =
        {
            {type = item, name = crystal_shard_green_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_shard_green_cut
    },
    {
        name = crystal_shard_red_cut,
        categories = {crafting},
        subgroup = is_crystals_shard_2,
        icons = THREE_R_I(crystal_shard, crystal_shard_red_cut, crystal_powder),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_shard, amount = 1}},
        results =
        {
            {type = item, name = crystal_shard_red_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_shard_red_cut
    },
    {
        name = crystal_full_blue_cut,
        categories = {crafting},
        subgroup = is_crystals_full_2,
        icons = THREE_R_I(crystal_full, crystal_full_blue_cut, crystal_powder),
        order = a,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_full, amount = 1}},
        results =
        {
            {type = item, name = crystal_full_blue_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_full_blue_cut
    },
    {
        name = crystal_full_green_cut,
        categories = {crafting},
        subgroup = is_crystals_full_2,
        icons = THREE_R_I(crystal_full, crystal_full_green_cut, crystal_powder),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_full, amount = 1}},
        results =
        {
            {type = item, name = crystal_full_green_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_full_green_cut
    },
    {
        name = crystal_full_red_cut,
        categories = {crafting},
        subgroup = is_crystals_full_2,
        icons = THREE_R_I(crystal_full, crystal_full_red_cut, crystal_powder),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_full, amount = 1}},
        results =
        {
            {type = item, name = crystal_full_red_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_full_red_cut
    }
})