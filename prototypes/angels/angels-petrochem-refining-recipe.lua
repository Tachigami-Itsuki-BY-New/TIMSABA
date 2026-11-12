-- BASIC PETROCHEN FLUIDS
TIMSABA.functions.create_recipes
({
    {
        name = argon_gas,
        categories = {chemistry},
        subgroup = is_basic_fluids,
        icons = TWO_I(compressed_air, argon_gas),
        order = h,
        energy_required = 8,
        ingredients = {{type = fluid, name = compressed_air, amount = 960}},
        results = {{type = fluid, name = argon_gas, amount = (15 / 2)}},
        main_product = argon_gas
    },
    {
        name = hydrogen_liquid,
        categories = {angels_cooling},
        subgroup = is_basic_fluids,
        icons = TWO_I(hydrogen_angels, hydrogen_liquid, number_1),
        order = i,
        energy_required = 8,
        ingredients =
        {
            {type = fluid, name = hydrogen_angels, amount = 240},
            {type = fluid, name = coolant, amount = 60}
        },
        results =
        {
            {type = fluid, name = hydrogen_liquid, amount = 240},
            {type = fluid, name = coolant_used, amount = 30, temperature = 300} -- 60
        },
        main_product = hydrogen_liquid
    },
    {
        name = oxygen_liquid,
        categories = {angels_cooling},
        subgroup = is_basic_fluids,
        icons = TWO_I(oxygen_angels, oxygen_liquid, number_1),
        order = j,
        energy_required = 8,
        ingredients =
        {
            {type = fluid, name = oxygen_angels, amount = 240},
            {type = fluid, name = coolant, amount = 60}
        },
        results =
        {
            {type = fluid, name = oxygen_liquid, amount = 240},
            {type = fluid, name = coolant_used, amount = 30, temperature = 300} -- 60
        },
        main_product = oxygen_liquid
    }
})

-- COAL
raw_graphite_block_2 = "raw-graphite-block-2"
TIMSABA.functions.create_recipes
({
    {
        name = coke_processed,
        categories = {angels_processed_pressing_1},
        subgroup = is_coal,
        icons = TWO_I(coke_angels, coke_processed),
        order = e,
        -- C(s) --> C(s)
        ingredients = {{type = item, name = coke_angels, amount = 4}},
        results = {{type = item, name = coke_processed, amount = 4}},
        main_product = coke_processed
    },
    {
        name = pitch,
        categories = {chemistry},
        subgroup = is_coal,
        icons = FOUR_THREE_R_I(coal_tar_liquid, nil, steam, pitch, phenol, benzene_angels, hydrogen_angels),
        order = g,
        -- 2C₁₀H₈(l) + 2H₂O(g) --> 2C(s) + 2C₆H₅OH(s) + C₆H₆(l) + H₂(g)
        ingredients =
        {
            {type = fluid, name = coal_tar_liquid, amount = 120},
            {type = fluid, name = steam, amount = 60}
        },
        results =
        {
            {type = item, name = pitch, amount = 2},
            {type = item, name = phenol, amount = 2},
            {type = fluid, name = benzene_angels, amount = 15},
            {type = fluid, name = hydrogen_angels, amount = 15}
        },
        main_product = pitch
    },
    {
        name = raw_graphite_block,
        categories = {chemistry},
        subgroup = is_coal,
        icons = THREE_I(coke_angels, pitch, raw_graphite_block),
        order = h,
        -- Coke + Pitch --> Raw graphite block
        ingredients =
        {
            {type = item, name = coke_angels, amount = 4},
            {type = item, name = pitch, amount = 4}
        },
        results = {{type = item, name = raw_graphite_block, amount = 1}},
        main_product = raw_graphite_block
    },
    {
        name = raw_graphite_block_2,
        categories = {chemistry},
        subgroup = is_coal,
        icons = THREE_I(graphite_chips, pitch, raw_graphite_block),
        order = h_a,
        -- Graphite chips + Pitch --> Raw graphite block
        ingredients =
        {
            {type = item, name = graphite_chips, amount = 4},
            {type = item, name = pitch, amount = 4}
        },
        results = {{type = item, name = raw_graphite_block, amount = 1}},
        main_product = raw_graphite_block
    },
    {
        name = graphite_block,
        categories = {smelting},
        subgroup = is_coal,
        icons = TWO_I(raw_graphite_block, graphite_block),
        order = i,
        energy_required = 16, -- Raw graphite block --> Graphite block
        ingredients = {{type = item, name = raw_graphite_block, amount = 4}},
        results = {{type = item, name = graphite_block, amount = 4}},
        main_product = graphite_block
    },
    {
        name = graphite_plate,
        categories = {advanced_crafting},
        subgroup = is_coal,
        icons = THREE_R_I(graphite_block, graphite_plate, graphite_chips),
        order = j,
        allow_productivity = true,
        -- Graphite block --> Graphite plate + Graphite chips
        ingredients = {{type = item, name = graphite_block, amount = 1}},
        results =
        {
            {type = item, name = graphite_plate, amount = 4},
            {type = item, name = graphite_chips, amount = 4, ignored_by_productivity = 4}
        },
        main_product = graphite_plate
    },
    {
        name = graphite_electrode,
        categories = {smelting},
        subgroup = is_coal,
        icons = THREE_I(graphite_block, pitch, graphite_electrode),
        order = l,
        allow_productivity = true,
        -- Graphite block + Pitch --> Graphite electrode
        ingredients =
        {
            {type = item, name = graphite_block, amount = 1},
            {type = item, name = pitch, amount = 4}
        },
        results = {{type = item, name = graphite_electrode, amount = 4}},
        main_product = graphite_electrode
    },
    {
        name = carbon_nanotube,
        categories = {angels_electrolysis},
        subgroup = is_coal,
        icons = FOUR_R_I(graphite_electrode, carbon_nanotube, nil, graphite_chips),
        order = m,
        energy_required = 8, -- Graphite electrode -electrolyser/cat(4)/Argon gas-> Carbon nanotube + Graphite chips
        ingredients =
        {
            {type = item, name = graphite_electrode, amount = 16},
            {type = fluid, name = argon_gas, amount = 240},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = item, name = carbon_nanotube, amount = 8},
            {type = item, name = graphite_chips, amount = 8},
            {type = fluid, name = argon_gas, amount = 120}, -- 240
            {type = item, name = catalyst_yellow, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = carbon_nanotube
    },
    {
        name = graphene_oxide,
        categories = {chemistry},
        subgroup = is_coal,
        icons = THREE_D_I(graphite_plate, potassium_permanganate, sulfuric_acid_angels, graphene_oxide, manganese_sulfate_II_solution, potassium_sulfate_solution),
        order = n,
        allow_quality = true,
        -- Graphite plate + 2KMnO₄(s) + 3H₂SO₄(l) --> Graphene oxide + 2MnSO₄(aq) + K₂SO₄(aq)
        ingredients =
        {
            {type = item, name = graphite_plate, amount = 4},
            {type = item, name = potassium_permanganate, amount = 8},
            {type = fluid, name = sulfuric_acid_angels, amount = 180}
        },
        results =
        {
            {type = item, name = graphene_oxide, amount = 4},
            {type = fluid, name = manganese_sulfate_II_solution, amount = 60}, -- 120
            {type = fluid, name = potassium_sulfate_solution, amount = 30} -- 60
        },
        main_product = graphene_oxide
    },
    {
        name = graphene,
        categories = {chemistry},
        subgroup = is_coal,
        icons = THREE_D_I(graphene_oxide, nil, dinitrogen_tetroxide_angels, graphene, nitrogen_angels, steam),
        order = o,
        allow_quality = true,
        -- Graphene oxide + N₂H₄(l) --> Graphene + N₂(g) + H₂O(g)
        ingredients =
        {
            {type = item, name = graphene_oxide, amount = 4},
            {type = fluid, name = dinitrogen_tetroxide_angels, amount = 60}
        },
        results =
        {
            {type = item, name = graphene, amount = 4},
            {type = fluid, name = nitrogen_angels, amount = 30}, -- 60
            {type = fluid, name = steam, amount = 30}, -- 60
        },
        main_product = graphene
    },
    -- COAL FLUID
    {
        name = coal_tar_liquid,
        categories = {angels_liquifying},
        subgroup = is_carbon_fluid_1,
        icons = TWO_I(coal, coal_tar_liquid),
        order = d,
        -- Coal crushed --> Coal tar liquid
        ingredients = {{type = item, name = coal, amount = 4}},
        results = {{type = fluid, name = coal_tar_liquid, amount = 60}},
        main_product = coal_tar_liquid
    }
})

-- CARBON FLUIDS 1
carbonic_acid_reversed = "carbonic-acid-reversed"
TIMSABA.functions.create_recipes
({
    {
        name = carbonic_acid_reversed,
        categories = {chemistry},
        subgroup = is_carbon_fluid_1,
        icons = THREE_R_I(carbonic_acid, water_purified_angels, carbon_dioxide_angels),
        order = c_a,
        -- H₂CO₃(aq) --> 2H₂O(l) + CO₂(g)
        ingredients = {{type = fluid, name = carbonic_acid, amount = 60}},
        results =
        {
            {type = fluid, name = water_purified_angels, amount = 120},
            {type = fluid, name = carbon_dioxide_angels, amount = 60}
        },
        main_product = water_purified_angels
    }
})

-- NITROGEN
ammonium_nitrate_2 = "ammonium-nitrate-2"
ammonia_gas_2 = "ammonia-gas-2"
ammonium_chloride_reprocess = "ammonium-chloride-reprocess"
ammonium_hydrosulfate_reprocess = "ammonium-hydrosulfate-reprocess"
nitric_acid_2 = "nitric-acid-liquid-2"
melamine_solution_2 = "melamine-solution-2"
ammonium_chloride_solution_2 = "ammonium-chloride-solution-2"
ammonium_sulfate_solution_2 = "ammonium-sulfate-solution-2"
TIMSABA.functions.create_recipes
({
    {
        localised_name = {"item-name." .. ammonium_nitrate_angels},
        name = ammonium_nitrate_2,
        categories = {chemistry},
        subgroup = is_nitrogen,
        icons = THREE_R_I(ammonium_nitrate_solution, ammonium_nitrate_angels, steam),
        order = a_a,
        -- NH₄NO₃(aq) --> NH₄NO₃(s) + H₂O(g)
        ingredients = {{type = fluid, name = ammonium_nitrate_solution, amount = 60}},
        results =
        {
            {type = item, name = ammonium_nitrate_angels, amount = 4},
            {type = fluid, name = steam, amount = 60}
        },
        main_product = ammonium_nitrate_angels
    },
    {
        name = ammonium_sulfate,
        categories = {chemistry},
        subgroup = is_nitrogen,
        icons = THREE_I(ammonia_angels, sulfuric_acid_angels, ammonium_sulfate),
        order = d,
        -- 2NH₃(g) + H₂SO₄(l) --> (NH₄)₂SO₄(s)
        ingredients =
        {
            {type = fluid, name = ammonia_angels, amount = 120},
            {type = fluid, name = sulfuric_acid_angels, amount = 60}
        },
        results = {{type = item, name = ammonium_sulfate, amount = 4}},
        main_product = ammonium_sulfate
    },
    {
        name = ammonium_chloride_reprocess,
        categories = {chemistry},
        subgroup = is_nitrogen,
        icons = TWO_D_I(ammonium_chloride, sodium_hydroxide_solution_angels, ammonia_solution, sodium_chloride_solution),
        order = e_a,
        -- NH₄Cl(s) + NaOH(aq) --> NH₃(aq) + NaCl(aq)
        ingredients =
        {
            {type = item, name = ammonium_chloride, amount = 4},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 60},
        },
        results =
        {
            {type = fluid, name = ammonia_solution, amount = 60},
            {type = fluid, name = sodium_chloride_solution, amount = 60}
        },
        main_product = ammonia_solution
    },
    {
        name = ammonium_hydrosulfate_reprocess,
        categories = {angels_advanced_chemistry},
        subgroup = is_nitrogen,
        icons = FOUR_R_I(ammonium_hydrosulfate, ammonia_angels, sulfur_trioxide_gas, steam),
        order = f_a,
        energy_required = 8, -- NH₄HSO₄(s) --> NH₃(g) + SO₃(g) + H₂O(g)
        ingredients = {{type = item, name = ammonium_hydrosulfate, amount = 16}},
        results =
        {
            {type = fluid, name = ammonia_angels, amount = 240},
            {type = fluid, name = sulfur_trioxide_gas, amount = 240},
            {type = fluid, name = steam, amount = 240}
        },
        main_product = ammonia_angels
    },
    {
        name = hexamethylenediamine,
        categories = {chemistry},
        subgroup = is_nitrogen,
        icons = THREE_I(adiponitrile_liquid, hydrogen_angels, hexamethylenediamine),
        order = g,
        -- C₆H₈N₂(l) + 4H₂(g) --> С₆H₁₆N₂(s)
        ingredients =
        {
            {type = fluid, name = adiponitrile_liquid, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 240}
        },
        results = {{type = item, name = hexamethylenediamine, amount = 4}},
        main_product = hexamethylenediamine
    },
    {
        name = imidazole,
        categories = {chemistry},
        subgroup = is_nitrogen,
        icons = THREE_R_I(imidazole_solution, imidazole, steam),
        order = h,
        -- C₃H₄N₂(aq) --> C₃H₄N₂(s) + H₂O(g)
        ingredients = {{type = fluid, name = imidazole_solution, amount = 60}},
        results =
        {
            {type = item, name = imidazole, amount = 4},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = imidazole
    },
    {
        name = imidazolium_salt,
        categories = {chemistry},
        subgroup = is_nitrogen,
        icons = THREE_I(imidazole, chlorobutane_liquid, imidazolium_salt),
        order = i,
        -- C₃H₄N₂(s) + C₄H₉Cl(l) -Ar-> [C₇H₁₃N₂]Cl(s)
        ingredients =
        {
            {type = item, name = imidazole, amount = 4},
            {type = fluid, name = chlorobutane_liquid, amount = 60},
            {type = fluid, name = argon_gas, amount = 60}
        },
        results =
        {
            {type = item, name = imidazolium_salt, amount = 4},
            {type = fluid, name = argon_gas, amount = 30} -- 60
        },
        main_product = imidazolium_salt
    },
    -- FLUID
    {
        localised_name = {"fluid-name." .. ammonia_angels},
        name = ammonia_gas_2,
        categories = {chemistry},
        subgroup = is_nitrogen_fluids,
        icons = THREE_R_I(ammonia_solution, ammonia_angels, steam),
        order = b_a,
        -- NH₃(aq) --> NH₃(g) + H₂O(g)
        ingredients =
        {
            {type = fluid, name = ammonia_solution, amount = 60}
        },
        results =
        {
            {type = fluid, name = ammonia_angels, amount = 60},
            {type = fluid, name = steam, amount = 30}, -- 60
        },
        main_product = ammonia_angels
    },
    {
        localised_name = {"fluid-name." .. nitric_acid_angels},
        name = nitric_acid_2,
        categories = {angels_cooling},
        subgroup = is_nitrogen_fluids,
        energy_required = 8, -- HNO₃(g) -coolant-> HNO₃(l)
        icons = TWO_I(gaseous_nitric_acid, nitric_acid_angels),
        order = f_b,
        ingredients =
        {
            {type = fluid, name = gaseous_nitric_acid, amount = 240},
            {type = fluid, name = coolant, amount = 60}
        },
        results =
        {
            {type = fluid, name = nitric_acid_angels, amount = 240},
            {type = fluid, name = coolant_used, amount = 30, temperature = 300} -- 60
        },
        main_product = nitric_acid_angels
    },
    {
        localised_name = {"fluid-name." .. melamine_solution_angels},
        name = melamine_solution_2,
        categories = {angels_advanced_chemistry},
        subgroup = is_nitrogen_fluids,
        icons = TWO_D_I(dicyandiamide_solution, ammonia_angels, melamine_solution_angels, ammonia_solution),
        order = g_a,
        -- 3(NH₂)₂(CN)₂(aq) + NH₃(g) --> 2C₃H₆N₆(aq) + NH₃(aq)
        ingredients =
        {
            {type = fluid, name = dicyandiamide_solution, amount = 90},
            {type = fluid, name = ammonia_angels, amount = 30}
        },
        results =
        {
            {type = fluid, name = melamine_solution_angels, amount = 60},
            {type = fluid, name = ammonia_solution, amount = 15} -- 30
        },
        main_product = melamine_solution_angels
    },
    {
        localised_name = {"fluid-name." .. ammonium_chloride_solution_angels},
        name = ammonium_chloride_solution_2,
        categories = {angels_liquifying},
        subgroup = is_nitrogen_fluids,
        icons = THREE_I(ammonium_chloride, water_purified_angels, ammonium_chloride_solution_angels),
        order = o_a,
        -- NH₄Cl(s) + H₂O(l) --> NH₄Cl(aq)
        ingredients =
        {
            {type = item, name = ammonium_chloride, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = ammonium_chloride_solution_angels, amount = 60}},
        main_product = ammonium_chloride_solution_angels
    },
    {
        name = dicyandiamide_solution,
        categories = {chemistry},
        subgroup = is_nitrogen_fluids,
        icons = THREE_R_I(cyanamide_solution, dicyandiamide_solution, water_purified_angels),
        order = q,
        -- 2NH₂CN(aq) --> (NH₂)₂(CN)₂(aq) + H₂O(l)
        ingredients = {{type = fluid, name = cyanamide_solution, amount = 120}},
        results =
        {
            {type = fluid, name = dicyandiamide_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 30} -- 60
        },
        main_product = dicyandiamide_solution
    },
    {
        name = ammonium_sulfate_solution,
        categories = {angels_liquifying},
        subgroup = is_nitrogen_fluids,
        icons = THREE_I(ammonium_sulfate, water_purified_angels, ammonium_sulfate_solution),
        order = r,
        -- (NH₄)₂SO₄(s) + H₂O(l) --> (NH₄)₂SO₄(aq)
        ingredients =
        {
            {type = item, name = ammonium_sulfate, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = ammonium_sulfate_solution, amount = 60}},
        main_product = ammonium_sulfate_solution
    },
    {
        localised_name = {"fluid-name." .. ammonium_sulfate_solution},
        name = ammonium_sulfate_solution_2,
        categories = {chemistry},
        subgroup = is_nitrogen_fluids,
        icons = THREE_I(ammonium_hydrosulfate, ammonia_solution, ammonium_sulfate_solution),
        order = r_a,
        -- NH₄HSO₄(s) + NH₃(aq) --> (NH₄)₂SO₄(aq)
        ingredients =
        {
            {type = item, name = ammonium_hydrosulfate, amount = 4},
            {type = fluid, name = ammonia_solution, amount = 60}
        },
        results = {{type = fluid, name = ammonium_sulfate_solution, amount = 60}},
        main_product = ammonium_sulfate_solution
    },
    {
        name = acrylonitrile,
        categories = {angels_advanced_chemistry},
        subgroup = is_nitrogen_fluids,
        icons = TWO_D_I(acetylene_gas, hydrocyanic_acid, acrylonitrile, water_purified_angels),
        order = s,
        energy_required = 8, -- C₂H₂(g) + HCN(aq) -NH₄CuCl₂(aq)-> C₃H₃N(l) + H₂O(l)
        ingredients =
        {
            {type = fluid, name = acetylene_gas, amount = 240},
            {type = fluid, name = hydrocyanic_acid, amount = 240},
            {type = fluid, name = ammonium_dichlorocuprate_I_solution, amount = 240}
        },
        results =
        {
            {type = fluid, name = acrylonitrile, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 120}, -- 240
            {type = fluid, name = ammonium_dichlorocuprate_I_solution, amount = 120} -- 240
        },
        main_product = acrylonitrile
    },
    {
        name = acetone_cyanohydrin,
        categories = {chemistry},
        subgroup = is_nitrogen_fluids,
        icons = TWO_D_I(methanol_angels, hydrocyanic_acid, acetone_cyanohydrin, water_purified_angels),
        order = t,
        -- C₃H₆O(l) + HCN(aq) -cat-> C₄H₇NO(l) + H₂O(l)
        ingredients =
        {
            {type = fluid, name = methanol_angels, amount = 60},
            {type = fluid, name = hydrocyanic_acid, amount = 60},
            {type = item, name = catalyst_red, amount = 1}
        },
        results =
        {
            {type = fluid, name = acetone_cyanohydrin, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 30}, -- 60
            {type = item, name = catalyst_red, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = acetone_cyanohydrin
    },
    {
        name = adiponitrile_liquid,
        categories = {chemistry},
        subgroup = is_nitrogen_fluids,
        icons = THREE_I(butadiene_angels, hydrocyanic_acid, adiponitrile_liquid),
        order = w,
        -- C₄H₆(g) + 2HCN(l) --> C₆H₈N₂(l)
        ingredients =
        {
            {type = fluid, name = butadiene_angels, amount = 60},
            {type = fluid, name = hydrocyanic_acid, amount = 120}
        },
        results = {{type = fluid, name = adiponitrile_liquid, amount = 60}},
        main_product = adiponitrile_liquid
    },
    {
        name = imidazole_solution,
        categories = {angels_advanced_chemistry},
        subgroup = is_nitrogen_fluids,
        icons = THREE_D_I(glyoxal_liquid, formaldehyde_angels, ammonia_angels, imidazole_solution, nil, water_purified_angels),
        order = x,
        energy_required = 8, -- C₂H₂O₂(l) + CH₂O(l) + 2NH₃(g) --> C₃H₄N₂(aq) + 2H₂O(l)
        ingredients =
        {
            {type = fluid, name = glyoxal_liquid, amount = 240},
            {type = fluid, name = formaldehyde_angels, amount = 240},
            {type = fluid, name = ammonia_angels, amount = 480}
        },
        results =
        {
            {type = fluid, name = imidazole_solution, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = imidazole_solution
    }
})

-- NITROGEN 2
gaseous_nitric_acid_cooling = "gaseous-nitric-acid-cooling"
TIMSABA.functions.create_recipes
({
    {
        name = gaseous_nitric_acid,
        categories = {chemistry},
        subgroup = is_nitrogen_fluids_2,
        icons = THREE_R_I(ammonium_nitrate_angels, gaseous_nitric_acid, ammonia_angels),
        order = b,
        -- NH₄NO₃(s) --> HNO₃(g) + NH₃(g)
        ingredients = {{type = item, name = ammonium_nitrate_angels, amount = 4}},
        results =
        {
            {type = fluid, name = gaseous_nitric_acid, amount = 60},
            {type = fluid, name = ammonia_angels, amount = 60}
        },
        main_product = gaseous_nitric_acid
    },
    {
        name = lauryl_dimethylamine_solution,
        categories = {chemistry},
        subgroup = is_nitrogen_fluids_2,
        icons = THREE_I(dodecanol, dimethylamine_angels, lauryl_dimethylamine_solution),
        order = c,
        -- C₁₂H₂₆O(s) + C₂H₇N(l) --> С₁₄H₃₁N(aq)
        ingredients =
        {
            {type = item, name = dodecanol, amount = 4},
            {type = fluid, name = dimethylamine_angels, amount = 60}
        },
        results = {{type = fluid, name = lauryl_dimethylamine_solution, amount = 60}},
        main_product = lauryl_dimethylamine_solution
    },
    {
        name = lauryl_dimethylamine_oxide_solution,
        categories = {chemistry},
        subgroup = is_nitrogen_fluids_2,
        icons = TWO_D_I(lauryl_dimethylamine_solution, hydrogen_peroxide, lauryl_dimethylamine_oxide_solution, water_purified_angels),
        order = d,
        -- С₁₄H₃₁N(aq) + H₂O₂(l) --> С₁₄H₃₁NO(aq) + H₂O(l)
        ingredients =
        {
            {type = fluid, name = lauryl_dimethylamine_solution, amount = 60},
            {type = fluid, name = hydrogen_peroxide, amount = 60}
        },
        results =
        {
            {type = fluid, name = lauryl_dimethylamine_oxide_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 30} -- 60
        },
        main_product = lauryl_dimethylamine_oxide_solution
    }
})

-- FLUORINE
TIMSABA.functions.create_recipes
({
    {
        name = hydrogen_fluoride_liquefied,
        categories = {angels_cooling},
        subgroup = is_fluorine_fluid,
        icons = TWO_I(hydrogen_fluoride_angels, hydrogen_fluoride_liquefied),
        order = c,
        energy_required = 8, -- HF(g) -Coolant-> HF(liquefied)
        ingredients =
        {
            {type = fluid, name = hydrogen_fluoride_angels, amount = 240},
            {type = fluid, name = coolant, amount = 60}
        },
        results =
        {
            {type = fluid, name = hydrogen_fluoride_liquefied, amount = 240},
            {type = fluid, name = coolant_used, amount = 30, temperature = 300} -- 60
        },
        main_product = hydrogen_fluoride_liquefied
    }
})

-- SODIUM
sodium_hydroxide_2 = "sodium-hydroxide-2"
sodium_chloride = "sodium-chloride"
sodium_sulfate = "sodium-sulfate"
sodium_carbonate = "sodium-carbonate"
sodium_cyanide_2 = "sodium-cyanide-2"
sodium_nitrate = "sodium-nitrate"
sodium_hypochlorite_solution_from_sodium_hydroxide_solution = "sodium-hypochlorite-solution-from-sodium-hydroxide-solution"
sodium_chlorate_solution_from_sodium_hypochlorite_solution = "sodium-chlorate-solution-from-sodium-hypochlorite-solution"
sodium_perchlorate_solution_from_sodium_chlorate_solution = "sodium-perchlorate-solution-from-sodium-chlorate-solution"
sodium_chloride_solution_from_sodium_bicarbonate_solution = "sodium-chloride-solution-from-sodium-bicarbonate-solution"
sodium_sulfate_from_sodium_bicarbonate_solution = "sodium-sulfate-from-sodium-bicarbonate-solution"
sodium_cyanide_solution_2 = sodium_cyanide_solution .. "-2"
sodium_cyanide_solution_3 = sodium_cyanide_solution .. "-3"
TIMSABA.functions.create_recipes
({
    {
        localised_name = {"item-name." .. sodium_hydroxide_angels},
        name = sodium_hydroxide_2,
        categories = {chemistry},
        subgroup = is_sodium,
        icons = THREE_I(sodium_angels, hydrogen_peroxide, sodium_hydroxide_angels),
        order = b_c,
        -- 2Na(s) + H₂O₂(l) --> 2NaOH(s)
        ingredients =
        {
            {type = item, name = sodium_angels, amount = 4},
            {type = fluid, name = hydrogen_peroxide, amount = 30}
        },
        results = {{type = item, name = sodium_hydroxide_angels, amount = 4}},
        main_product = sodium_hydroxide_angels
    },
    {
        name = sodium_chloride,
        categories = {chemistry},
        subgroup = is_sodium,
        icons = THREE_R_I(sodium_chloride_solution, salt_angels, steam),
        order = c_a,
        -- NaCl(aq) --> NaCl(s) + H₂O(g)
        ingredients = {{type = fluid, name = sodium_chloride_solution, amount = 60}},
        results =
        {
            {type = item, name = salt_angels, amount = 4},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = salt_angels
    },
    {
        name = sodium_sulfate,
        categories = {chemistry},
        subgroup = is_sodium,
        icons = THREE_R_I(sodium_sulfate_solution, sodium_sulfate_angels, steam),
        order = d_a,
        -- Na₂SO₄(aq) --> Na₂SO₄(s) + H₂O(g)
        ingredients = {{type = fluid, name = sodium_sulfate_solution, amount = 60}},
        results =
        {
            {type = item, name = sodium_sulfate_angels, amount = 4},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = sodium_sulfate_angels
    },
    {
        name = sodium_carbonate,
        categories = {chemistry},
        subgroup = is_sodium,
        icons = THREE_R_I(sodium_carbonate_solution, sodium_carbonate_angels, steam),
        order = e_a,
        -- 2Na₂CO₃(aq) --> Na₂CO₃(s) + 2H₂O(g)
        ingredients = {{type = fluid, name = sodium_carbonate_solution, amount = 60}},
        results =
        {
            {type = item, name = sodium_carbonate_angels, amount = 4},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = sodium_carbonate_angels
    },
    {
        localised_name = {"item-name." .. sodium_cyanide_angels},
        name = sodium_cyanide_2,
        categories = {chemistry},
        subgroup = is_sodium,
        icons = TWO_D_I(sodium_hydroxide_angels, hydrogen_cyanide_gas, sodium_cyanide_angels, steam),
        order = f_a,
        -- NaOH(s) + HCN(g) --> NaCN(s) + H₂O(g)
        ingredients =
        {
            {type = item, name = sodium_hydroxide_angels, amount = 4},
            {type = fluid, name = hydrogen_cyanide_gas, amount = 60}
        },
        results =
        {
            {type = item, name = sodium_cyanide_angels, amount = 4},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = sodium_cyanide_angels
    },
    {
        name = sodium_nitrate,
        categories = {chemistry},
        subgroup = is_sodium,
        icons = THREE_R_I(sodium_nitrate_solution, sodium_nitrate_angels, steam),
        order = g_a,
        -- NaNO₃(aq) --> NaNO₃(s) + H₂O(g)
        ingredients = {{type = fluid, name = sodium_nitrate_solution, amount = 60}},
        results =
        {
            {type = item, name = sodium_nitrate_angels, amount = 4},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = sodium_nitrate_angels
    },
    {
        name = sodium_peroxide,
        categories = {chemistry},
        subgroup = is_sodium,
        icons = THREE_I(sodium_oxide, oxygen_angels, sodium_peroxide),
        order = l,
        -- 2Na₂O(s) + O₂(g) --> 2Na₂O₂(s)
        ingredients =
        {
            {type = item, name = sodium_oxide, amount = 4},
            {type = fluid, name = oxygen_angels, amount = 30}
        },
        results = {{type = item, name = sodium_peroxide, amount = 4}},
        main_product = sodium_peroxide
    },
    {
        name = sodium_hydride,
        categories = {chemistry},
        subgroup = is_sodium,
        icons = THREE_I(sodium_angels, hydrogen_angels, sodium_hydride),
        order = o,
        -- 2Na(s) + H₂(g) --> 2NaH(s)
        ingredients =
        {
            {type = item, name = sodium_angels, amount = 4},
            {type = fluid, name = hydrogen_angels, amount = 30}
        },
        results = {{type = item, name = sodium_hydride, amount = 4}},
        main_product = sodium_hydride
    },
    -- FLUID
    {
        name = sodium_chloride_solution,
        categories = {angels_liquifying},
        subgroup = is_sodium_fluid,
        icons = THREE_I(salt_angels, water_purified_angels, sodium_chloride_solution),
        order = b,
        -- NaCl(s) + H₂O(l) --> NaCl(aq)
        ingredients =
        {
            {type = item, name = salt_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_chloride_solution, amount = 60}},
        main_product = sodium_chloride_solution
    },
    {
        name = sodium_sulfate_solution,
        categories = {angels_liquifying},
        subgroup = is_sodium_fluid,
        icons = THREE_I(sodium_sulfate_angels, water_purified_angels, sodium_sulfate_solution),
        order = c,
        -- Na₂SO₄(s) + H₂O(l) --> Na₂SO₄(aq)
        ingredients =
        {
            {type = item, name = sodium_sulfate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_sulfate_solution, amount = 60}},
        main_product = sodium_sulfate_solution
    },
    {
        name = sodium_carbonate_solution,
        categories = {angels_liquifying},
        subgroup = is_sodium_fluid,
        icons = THREE_I(sodium_carbonate_angels, water_purified_angels, sodium_carbonate_solution),
        order = d,
        -- Na₂CO₃(s) + H₂O(l) --> Na₂CO₃(aq)
        ingredients =
        {
            {type = item, name = sodium_carbonate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_carbonate_solution, amount = 60}},
        main_product = sodium_carbonate_solution
    },
    {
        name = sodium_nitrate_solution,
        categories = {angels_liquifying},
        subgroup = is_sodium_fluid,
        icons = THREE_I(sodium_nitrate_angels, water_purified_angels, sodium_nitrate_solution),
        order = e,
        -- NaNO₃(s) + H₂O(l) --> NaNO₃(aq)
        ingredients =
        {
            {type = item, name = sodium_nitrate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_nitrate_solution, amount = 60}},
        main_product = sodium_nitrate_solution
    },
    {
        name = sodium_hypochlorite_solution,
        categories = {angels_liquifying},
        subgroup = is_sodium_fluid,
        icons = THREE_I(sodium_hypochlorite_angels, water_purified_angels, sodium_hypochlorite_solution),
        order = f,
        -- NaClO(s) + H₂O(l) --> NaClO(aq)
        ingredients =
        {
            {type = item, name = sodium_hypochlorite_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_hypochlorite_solution, amount = 60}},
        main_product = sodium_hypochlorite_solution
    },
    {
        name = sodium_hypochlorite_solution_from_sodium_hydroxide_solution,
        categories = {angels_advanced_chemistry},
        subgroup = is_sodium_fluid,
        icons = THREE_D_I(sodium_hydroxide_solution_angels, nil, chlorine_angels, sodium_hypochlorite_solution, sodium_chloride_solution, water_purified_angels),
        order = f_a,
        energy_required = 8, -- 2NaOH(aq) + Cl₂(g) --> NaClO(aq) + NaCl(aq) + H₂O(l)
        ingredients =
        {
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 480},
            {type = fluid, name = chlorine_angels, amount = 240},
        },
        results =
        {
            {type = fluid, name = sodium_hypochlorite_solution, amount = 240},
            {type = fluid, name = sodium_chloride_solution, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = sodium_hypochlorite_solution
    },
    {
        name = sodium_chlorate_solution,
        categories = {angels_liquifying},
        subgroup = is_sodium_fluid,
        icons = THREE_I(sodium_chlorate_angels, water_purified_angels, sodium_chlorate_solution),
        order = g,
        -- NaClO₃(s) + H₂O(l) --> NaClO₃(aq)
        ingredients =
        {
            {type = item, name = sodium_chlorate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_chlorate_solution, amount = 60}},
        main_product = sodium_chlorate_solution
    },
    {
        name = sodium_chlorate_solution_from_sodium_hypochlorite_solution,
        categories = {chemistry},
        subgroup = is_sodium_fluid,
        icons = THREE_R_I(sodium_hypochlorite_solution, sodium_chlorate_solution, sodium_chloride_solution),
        order = g_a,
        -- 3NaClO(aq) --> NaClO₃(aq) + 2NaCl(aq)
        ingredients = {{type = fluid, name = sodium_hypochlorite_solution, amount = 90}},
        results =
        {
            {type = fluid, name = sodium_chlorate_solution, amount = 30},
            {type = fluid, name = sodium_chloride_solution, amount = 30} -- 60
        },
        main_product = sodium_chlorate_solution
    },
    {
        name = sodium_perchlorate_solution,
        categories = {angels_liquifying},
        subgroup = is_sodium_fluid,
        icons = THREE_I(sodium_perchlorate_angels, water_purified_angels, sodium_perchlorate_solution),
        order = h,
        -- NaClO₄(s) + H₂O(l) --> NaClO₄(aq)
        ingredients =
        {
            {type = item, name = sodium_perchlorate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_perchlorate_solution, amount = 60}},
        main_product = sodium_perchlorate_solution
    },
    {
        name = sodium_perchlorate_solution_from_sodium_chlorate_solution,
        categories = {chemistry},
        subgroup = is_sodium_fluid,
        icons = TWO_D_I(sodium_chlorate_solution, water_purified_angels, sodium_perchlorate_solution, hydrogen_angels),
        order = h_a,
        -- NaClO₃(aq) + H₂O(l) -cat-> NaClO₄(aq) + H₂(g)
        ingredients =
        {
            {type = fluid, name = sodium_chlorate_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = sodium_perchlorate_solution, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 30}, -- 60
            {type = item, name = catalyst_blue, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = sodium_perchlorate_solution
    },
    {
        name = sodium_chloride_solution_from_sodium_bicarbonate_solution,
        categories = {chemistry},
        subgroup = is_sodium_fluid,
        icons = TWO_D_I(sodium_bicarbonate_solution, hydrochloric_acid_angels, sodium_chloride_solution, carbonic_acid),
        order = i_a,
        -- NaHCO₃(aq) + HCl(aq) --> NaCl(aq) + H₂CO₃(aq)
        ingredients =
        {
            {type = fluid, name = sodium_bicarbonate_solution, amount = 60},
            {type = fluid, name = hydrochloric_acid_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = sodium_chloride_solution, amount = 60},
            {type = fluid, name = carbonic_acid, amount = 30} -- 60
        },
        main_product = sodium_chloride_solution
    },
    {
        name = sodium_sulfate_from_sodium_bicarbonate_solution,
        categories = {chemistry},
        subgroup = is_sodium_fluid,
        icons = TWO_D_I(sodium_bicarbonate_solution, sulfuric_acid_angels, sodium_sulfate_angels, carbonic_acid),
        order = i_b,
        -- 4NaHCO₃(aq) + 2H₂SO₄ --> 2Na₂SO₄ + 4H₂CO₃(aq)
        ingredients =
        {
            {type = fluid, name = sodium_bicarbonate_solution, amount = 60},
            {type = fluid, name = sulfuric_acid_angels, amount = 30}
        },
        results =
        {
            {type = item, name = sodium_sulfate_angels, amount = 2},
            {type = fluid, name = carbonic_acid, amount = 30} -- 60
        },
        main_product = sodium_sulfate_angels
    },
    {
        name = sodium_cyanide_solution,
        categories = {chemistry},
        subgroup = is_sodium_fluid,
        icons = THREE_I(sodium_cyanide_angels, water_purified_angels, sodium_cyanide_solution),
        order = j,
        -- NaCN(s) + H₂O(l) --> NaCN(aq)
        ingredients =
        {
            {type = item, name = sodium_cyanide_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_cyanide_solution, amount = 60}},
        main_product = sodium_cyanide_solution
    },
    {
        localised_name = {"fluid-name." .. sodium_cyanide_solution},
        name = sodium_cyanide_solution_2,
        categories = {chemistry},
        subgroup = is_sodium_fluid,
        icons = TWO_D_I(sodium_hydroxide_angels, hydrocyanic_acid, sodium_cyanide_solution, water_purified_angels),
        order = j_a,
        -- NaOH(s) + HCN(aq) --> NaCN(aq) + H₂O(l)
        ingredients =
        {
            {type = item, name = sodium_hydroxide_angels, amount = 4},
            {type = fluid, name = hydrocyanic_acid, amount = 60}
        },
        results =
        {
            {type = fluid, name = sodium_cyanide_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 30} -- 60
        },
        main_product = sodium_cyanide_solution
    },
    {
        localised_name = {"fluid-name." .. sodium_cyanide_solution},
        name = sodium_cyanide_solution_3,
        categories = {chemistry},
        subgroup = is_sodium_fluid,
        icons = TWO_D_I(sodium_peroxide, hydrocyanic_acid, sodium_cyanide_solution, hydrogen_peroxide),
        order = j_b,
        -- Na₂O₂(s) + 2HCN(aq) -cat-> 2NaCN(aq) + H₂O₂(l)
        ingredients =
        {
            {type = item, name = sodium_peroxide, amount = 2},
            {type = fluid, name = hydrocyanic_acid, amount = 60},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = sodium_cyanide_solution, amount = 60},
            {type = fluid, name = hydrogen_peroxide, amount = 30},
            {type = item, name = catalyst_green, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = sodium_cyanide_solution
    },
    {
        name = sodium_lauryl_sulfate_solution,
        categories = {chemistry},
        subgroup = is_sodium_fluid,
        icons = TWO_D_I(lauryl_sulfate, sodium_hydroxide_solution_angels, sodium_lauryl_sulfate_solution, water_purified_angels),
        order = l,
        -- C₁₂H₂₆SO₄(s) + NaOH(aq) --> NaC₁₂H₂₅SO₄(aq) + H₂O(l)
        ingredients =
        {
            {type = item, name = lauryl_sulfate, amount = 4},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = sodium_lauryl_sulfate_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 30} -- 60
        },
        main_product = sodium_lauryl_sulfate_solution
    }
})

-- SULFUR
sulfuric_acid_decomposition = "sulfuric-acid-decomposition"
TIMSABA.functions.create_recipes
({
    {
        name = sulfur_trioxide_gas,
        categories = {chemistry},
        subgroup = is_sulfur_fluids,
        icons = THREE_I(sulfur_dioxide_angels, oxygen_angels, sulfur_trioxide_gas),
        order = e,
        -- 2SO₂(g) + O₂(g) --> 2SO₃(g)
        ingredients =
        {
            {type = fluid, name = sulfur_dioxide_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 30}
        },
        results = {{type = fluid, name = sulfur_trioxide_gas, amount = 60}},
        main_product = sulfur_trioxide_gas
    },
    {
        name = sulfuric_acid_decomposition,
        categories = {chemistry},
        subgroup = is_sulfur_fluids,
        icons = THREE_R_I(sulfuric_acid_angels, sulfur_trioxide_gas, steam),
        order = e_a,
        -- H₂SO₄(l) --> SO₃(g) + H₂O(g)
        ingredients = {{type = fluid, name = sulfuric_acid_angels, amount = 60}},
        results =
        {
            {type = fluid, name = sulfur_trioxide_gas, amount = 60},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = sulfur_trioxide_gas
    },
    {
        name = peroxydisulfuric_acid,
        categories = {angels_electrolysis},
        subgroup = is_sulfur_fluids,
        icons = FOUR_R_I(sulfuric_acid_angels, hydrogen_angels, peroxydisulfuric_acid, oxygen_angels),
        order = g,
        energy_required = 8, -- 2H₂SO₄(l) + 2H₂O(l) -electrode/electrolyser-> H₂S₂O₈(s) + 3H₂(g) + O₂(g)
        ingredients =
        {
            {type = fluid, name = sulfuric_acid_angels, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = item, name = peroxydisulfuric_acid, amount = 8},
            {type = fluid, name = hydrogen_angels, amount = 360},
            {type = fluid, name = oxygen_angels, amount = 120},
            {type = item, name = electrode, amount = 1, independent_probability = 0.875},
            {type = item, name = electrode_used, amount = 1, independent_probability = 0.125}
        },
        main_product = peroxydisulfuric_acid
    }
})

-- CHLORINE
chloroethane_from_acetylene_gas = "chloroethane-from-acetylene-gas"
TIMSABA.functions.create_recipes
({
    {
        name = phosgene_gas,
        categories = {chemistry},
        subgroup = is_chlorine_fluids,
        icons = THREE_I(carbon_monoxide_angels, chlorine_angels, phosgene_gas),
        order = g,
        -- CO(g) + Cl₂(g) --> COCl₂(g)
        ingredients =
        {
            {type = fluid, name = carbon_monoxide_angels, amount = 60},
            {type = fluid, name = chlorine_angels, amount = 60}
        },
        results = {{type = fluid, name = phosgene_gas, amount = 60}}
    },
    {
        name = chlorine_oxide_gas,
        categories = {angels_advanced_chemistry},
        subgroup = is_chlorine_fluids,
        icons = THREE_D_I(chlorine_angels, sodium_carbonate_solution, water_purified_angels, chlorine_oxide_gas, sodium_chlorate_solution, sodium_bicarbonate_solution),
        order = h,
        energy_required = 8, -- 4Cl₂(g) + 4Na₂CO₃(aq) + 6H₂O(l) --> 2Cl₂O(g) + 4NaCl(aq) + 4NaHCO₃(aq)
        ingredients =
        {
            {type = fluid, name = chlorine_angels, amount = 240},
            {type = fluid, name = sodium_carbonate_solution, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 360}
        },
        results =
        {
            {type = fluid, name = chlorine_oxide_gas, amount = 120},
            {type = fluid, name = sodium_chlorate_solution, amount = 120}, -- 240
            {type = fluid, name = sodium_bicarbonate_solution, amount = 120} -- 240
        },
        main_product = chlorine_oxide_gas
    },
    {
        name = hypochlorous_acid,
        categories = {chemistry},
        subgroup = is_chlorine_fluids,
        icons = THREE_I(chlorine_oxide_gas, water_purified_angels, hypochlorous_acid),
        order = i,
        -- Cl₂O(g) + 3H₂O(l) --> 2HClO(aq)
        ingredients =
        {
            {type = fluid, name = chlorine_oxide_gas, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 180}
        },
        results = {{type = fluid, name = hypochlorous_acid, amount = 120}},
        main_product = hypochlorous_acid
    },
    {
        name = chloroethane_gas,
        categories = {chemistry},
        subgroup = is_chlorine_fluids,
        icons = THREE_I(ethylene_angels, hydrogen_chloride_angels, chloroethane_gas),
        order = j,
        -- C₂H₄(g) + HCl(g) --> C₂H₅Cl(g)
        ingredients =
        {
            {type = fluid, name = ethylene_angels, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 60},
        },
        results = {{type = fluid, name = chloroethane_gas, amount = 60}},
        main_product = chloroethane_gas
    },
    {
        name = chloroethane_from_acetylene_gas,
        categories = {chemistry},
        subgroup = is_chlorine_fluids,
        icons = THREE_I(acetylene_gas, hydrogen_chloride_angels, chloroethane_gas),
        order = j_a,
        -- C₂H₂(g) + HCl(g) -cat-> C₂H₃Cl(g)
        ingredients =
        {
            {type = fluid, name = acetylene_gas, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = chloroethane_gas, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = chloroethane_gas
    },
    {
        name = chlorobutane_liquid,
        categories = {chemistry},
        subgroup = is_chlorine_fluids,
        icons = TWO_D_I(butane_angels, chlorine_angels, chlorobutane_liquid, hydrogen_chloride_angels),
        order = k,
        -- C₄H₁₀(g) + Cl₂(g) --> C₄H₉Cl(l) + HCl(g)
        ingredients =
        {
            {type = fluid, name = butane_angels, amount = 60},
            {type = fluid, name = chlorine_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = chlorobutane_liquid, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 30} -- 60
        },
        main_product = chlorobutane_liquid
    },
    {
        name = chlorosulfonic_acid,
        categories = {angels_advanced_chemistry},
        subgroup = is_chlorine_fluids,
        icons = THREE_D_I(phosphorus_chloride_V, nil, sulfuric_acid_angels, chlorosulfonic_acid, phosphorus_oxychloride_liquid, hydrogen_chloride_angels),
        order = l,
        energy_required = 8, -- PCl₅(s) + H₂SO₄(l) --> HSO₃Cl(l) + POCl₃(l) + HCl(g)
        ingredients =
        {
            {type = item, name = phosphorus_chloride_V, amount = 16},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = chlorosulfonic_acid, amount = 240},
            {type = fluid, name = phosphorus_oxychloride_liquid, amount = 120}, -- 240
            {type = fluid, name = hydrogen_chloride_angels, amount = 120} -- 240
        },
        main_product = chlorosulfonic_acid
    }
})

-- CALCIUM
calcium_sulfate_from_ammonium_sulfate_solution = "calcium-sulfate-from-ammonium-sulfate-solution"
lime_from_calcium_hydroxide = "lime-from-calcium-hydroxide"
calcium_hydroxide_from_calcium_cyanamide = "calcium-hydroxide-from-calcium-cyanamide"
limestone_from_calcium_cyanamide = "limestone-from-calcium-cyanamide"
limestone_from_calcium_hydroxide_solution = "limestone-from-calcium-hydroxide-solution"
TIMSABA.functions.create_recipes
({
    {
        name = calcium_sulfate_angels,
        categories = {chemistry},
        subgroup = is_calcium,
        icons = TWO_D_I(calcium_hydroxide, sulfuric_acid_angels, calcium_sulfate_angels, water_purified_angels),
        order = b,
        -- Ca(OH)₂(s) + H₂SO₄(l) --> CaSO₄(s) + 2H₂O(l)
        ingredients =
        {
            {type = item, name = calcium_hydroxide, amount = 4},
            {type = fluid, name = sulfuric_acid_angels, amount = 60}
        },
        results =
        {
            {type = item, name = calcium_sulfate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = calcium_sulfate_angels
    },
    {
        name = calcium_sulfate_from_ammonium_sulfate_solution,
        categories = {chemistry},
        subgroup = is_calcium,
        icons = THREE_D_I(ammonium_sulfate_solution, nil, calcium_hydroxide, calcium_sulfate_angels, ammonia_angels, steam),
        order = b_a,
        -- (NH₄)₂SO₄(aq) + Ca(OH)₂(s) --> CaSO₄(s) + 2NH₃(g) + 2H₂O(g)
        ingredients =
        {
            {type = fluid, name = ammonium_sulfate_solution, amount = 60},
            {type = item, name = calcium_hydroxide, amount = 4}
        },
        results =
        {
            {type = item, name = calcium_sulfate_angels, amount = 4},
            {type = fluid, name = ammonia_angels, amount = 60}, -- 120
            {type = fluid, name = steam, amount = 60} -- 120
        },
        main_product = calcium_sulfate_angels
    },
    {
        name = lime_from_calcium_hydroxide,
        categories = {chemistry},
        subgroup = is_calcium,
        icons = THREE_R_I(calcium_hydroxide, lime_angels, steam),
        order = c_a,
        -- Ca(OH)₂(s) --> CaO(s) + H₂O(g)
        ingredients = {{type = item, name = calcium_hydroxide, amount = 4}},
        results =
        {
            {type = item, name = lime_angels, amount = 4},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = lime_angels
    },
    {
        name = calcium_carbide,
        categories = {chemistry},
        subgroup = is_calcium,
        icons = TWO_D_I(lime_angels, coke_angels, calcium_carbide, carbon_monoxide_angels),
        order = e,
        -- CaO(s) + 3C(s) --> CaC₂(s) + CO(g)
        ingredients =
        {
            {type = item, name = lime_angels, amount = 4},
            {type = item, name = carbon_angels, amount = 12}
        },
        results =
        {
            {type = item, name = calcium_carbide, amount = 4},
            {type = fluid, name = carbon_monoxide_angels, amount = 60}
        },
        main_product = calcium_carbide
    },
    {
        name = calcium_cyanamide,
        categories = {chemistry},
        subgroup = is_calcium,
        icons = TWO_D_I(calcium_carbide, nitrogen_angels, calcium_cyanamide, carbon_angels),
        order = f,
        -- CaC₂(s) + N₂(g) --> CaCN₂(s) + C(s)
        ingredients =
        {
            {type = item, name = calcium_carbide, amount = 4},
            {type = fluid, name = nitrogen_angels, amount = 60}
        },
        results =
        {
            {type = item, name = calcium_cyanamide, amount = 4},
            {type = item, name = carbon_angels, amount = 4}
        },
        main_product = calcium_cyanamide
    },
    {
        name = calcium_hydroxide,
        categories = {chemistry},
        subgroup = is_calcium,
        icons = TWO_D_I(calcium_carbide, water_purified_angels, calcium_hydroxide, acetylene_gas),
        order = g,
        -- CaC₂(s) + 2H₂O(l) --> Ca(OH)₂(s) + C₂H₂(g)
        ingredients =
        {
            {type = item, name = calcium_carbide, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 120}
        },
        results =
        {
            {type = item, name = calcium_hydroxide, amount = 4},
            {type = fluid, name = acetylene_gas, amount = 60}
        },
        main_product = calcium_hydroxide
    },
    {
        name = calcium_hydroxide_from_calcium_cyanamide,
        categories = {chemistry},
        subgroup = is_calcium,
        icons = TWO_D_I(calcium_cyanamide, water_purified_angels, calcium_hydroxide, urea_solution_angels),
        order = h_a,
        -- CaCN₂(s) + 4H₂O(l) --> Ca(OH)₂(s) + (NH₂)₂CO(aq)
        ingredients =
        {
            {type = item, name = calcium_cyanamide, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = item, name = calcium_hydroxide, amount = 4},
            {type = fluid, name = urea_solution_angels, amount = 60}
        },
        main_product = calcium_hydroxide
    },
    {
        name = limestone_from_calcium_cyanamide,
        categories = {chemistry},
        subgroup = is_calcium,
        icons = THREE_D_I(calcium_cyanamide, water_purified_angels, carbon_dioxide_angels, limestone_angels, nil, cyanamide_solution),
        order = i_a,
        -- CaCN₂(s) + 2H₂O(l) + CO₂(g) --> CaCO₃(s) + NH₂CN(aq)
        ingredients =
        {
            {type = item, name = calcium_cyanamide, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 120},
            {type = fluid, name = carbon_dioxide_angels, amount = 60}
        },
        results =
        {
            {type = item, name = limestone_angels, amount = 4},
            {type = fluid, name = cyanamide_solution, amount = 60}
        },
        main_product = limestone_angels
    },
    {
        name = limestone_from_calcium_hydroxide_solution,
        categories = {chemistry},
        subgroup = is_calcium,
        icons = TWO_D_I(calcium_hydroxide_solution, carbon_dioxide_angels, limestone_angels, water_purified_angels),
        order = i_b,
        -- Ca(OH)₂(aq) + CO₂(g) --> CaCO₃(s) + 2H₂O(l)
        ingredients =
        {
            {type = fluid, name = calcium_hydroxide_solution, amount = 60},
            {type = fluid, name = carbon_dioxide_angels, amount = 60}
        },
        results =
        {
            {type = item, name = limestone_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = limestone_angels
    },
    -- FLUID
    {
        name = calcium_chloride_solution,
        categories = {chemistry},
        subgroup = is_calcium_fluid,
        icons = TWO_D_I(calcium_hydroxide, hydrochloric_acid_angels, calcium_chloride_solution, water_purified_angels),
        order = b,
        -- Ca(OH)₂(s) + 2HCl(aq) --> CaCl₂(aq) + 3H₂O(l)
        ingredients =
        {
            {type = item, name = calcium_hydroxide, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = calcium_chloride_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 120} -- 180
        },
        main_product = calcium_chloride_solution
    },
    {
        name = calcium_hydroxide_solution,
        categories = {chemistry},
        subgroup = is_calcium_fluid,
        icons = THREE_I(calcium_hydroxide, water_purified_angels, calcium_hydroxide_solution),
        order = c,
        -- Ca(OH)₂(s) + H₂O(l) --> Ca(OH)₂(aq)
        ingredients =
        {
            {type = item, name = calcium_hydroxide, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = calcium_hydroxide_solution, amount = 60}},
        main_product = calcium_hydroxide_solution
    },
    {
        name = calcium_hypochlorite_solution,
        categories = {angels_advanced_chemistry},
        subgroup = is_calcium_fluid,
        icons = THREE_D_I(calcium_hydroxide_solution, nil, chlorine_angels, calcium_hypochlorite_solution, calcium_chloride_solution, water_purified_angels),
        order = d,
        energy_required = 8, -- 2Ca(OH)₂(aq) + 2Cl₂(g) --> Ca(ClO)₂(aq) + CaCl₂(aq) + 2H₂O(l)
        ingredients =
        {
            {type = fluid, name = calcium_hydroxide_solution, amount = 480},
            {type = fluid, name = chlorine_angels, amount = 480}
        },
        results =
        {
            {type = fluid, name = calcium_hypochlorite_solution, amount = 240},
            {type = fluid, name = calcium_chloride_solution, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = calcium_hypochlorite_solution
    }
})

-- LITHIUM
lithium_chloride_solution_from_lithium_hydroxide = "lithium-chloride-solution-from-lithium-hydroxide"
TIMSABA.functions.create_recipes
({
    {
        name = lithium_chloride_solution,
        categories = {angels_liquifying},
        subgroup = is_lithium_fluid,
        icons = THREE_I(lithium_chloride_angels, water_purified_angels, lithium_chloride_solution),
        order = a,
        -- LiCl + H₂O --> LiCl(aq)
        ingredients =
        {
            {type = item, name = lithium_chloride_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = lithium_chloride_solution, amount = 60}},
        main_product = lithium_chloride_solution
    },
    {
        name = lithium_chloride_solution_from_lithium_hydroxide,
        categories = {chemistry},
        subgroup = is_lithium_fluid,
        icons = TWO_D_I(lithium_hydroxide, hydrochloric_acid_angels, lithium_chloride_solution, water_purified_angels),
        order = a_a,
        -- LiOH(aq) + HCl(aq) --> LiCl(aq) + 2H₂O(l)
        ingredients =
        {
            {type = item, name = lithium_hydroxide, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = lithium_chloride_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = lithium_chloride_solution
    },
    {
        name = lithium_perchlorate_solution,
        categories = {chemistry},
        subgroup = is_lithium_fluid,
        icons = TWO_D_I(sodium_perchlorate_solution, lithium_chloride_solution, lithium_perchlorate_solution, sodium_chloride_solution),
        order = b,
        -- NaClO₄(aq) + LiCl(aq) --> LiClO₄(aq) + NaCl(aq)
        ingredients =
        {
            {type = fluid, name = sodium_perchlorate_solution, amount = 60},
            {type = fluid, name = lithium_chloride_solution, amount = 60},
        },
        results =
        {
            {type = fluid, name = lithium_perchlorate_solution, amount = 60},
            {type = fluid, name = sodium_chloride_solution, amount = 60},
        },
        main_product = lithium_perchlorate_solution
    },
    {
        name = lithium_hydride,
        categories = {chemistry},
        subgroup = is_lithium,
        icons = THREE_I(lithium_bob, hydrogen_angels, lithium_hydride),
        order = e,
        -- 2Li(s) + H₂(g) --> 2LiH(s)
        ingredients =
        {
            {type = item, name = lithium_bob, amount = 4},
            {type = fluid, name = hydrogen_angels, amount = 30}
        },
        results = {{type = item, name = lithium_hydride, amount = 4}},
        main_product = lithium_hydride
    },
    {
        name = lithium_hydroxide,
        categories = {angels_electrolysis},
        subgroup = is_lithium,
        icons = FOUR_R_I(lithium_chloride_solution, hydrogen_angels, lithium_hydroxide, chlorine_angels),
        order = f,
        energy_required = 8, -- 2LiCl(aq) -electrode/electrolys-> 2LiOH(s) + H₂(g) + Cl₂(g)
        ingredients =
        {
            {type = fluid, name = lithium_chloride_solution, amount = 240},
            {type = item, name = graphite_electrode, amount = 1}
        },
        results =
        {
            {type = item, name = lithium_hydroxide, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 120},
            {type = fluid, name = chlorine_angels, amount = 120},
            {type = item, name = graphite_electrode, amount = 1, independent_probability = 0.875},
            {type = item, name = graphite_chips, amount = 1, independent_probability = 0.125}
        },
        main_product = lithium_hydroxide
    },
    {
        name = lithium_fluoride,
        categories = {chemistry},
        subgroup = is_lithium,
        icons = TWO_D_I(lithium_hydroxide, hydrofluoric_acid_angels, lithium_fluoride, water_purified_angels),
        order = h,
        -- LiOH(s) + HF(aq) --> LiF(s) + 2H₂O(l)
        ingredients =
        {
            {type = item, name = lithium_hydroxide, amount = 4},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 60}
        },
        results =
        {
            {type = item, name = lithium_fluoride, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = lithium_fluoride
    },
    {
        name = lithium_hexafluorophosphate,
        categories = {chemistry},
        subgroup = is_lithium,
        icons = THREE_I(lithium_fluoride, phosphorus_fluoride_V_gas, lithium_hexafluorophosphate),
        order = i,
        -- LiF(s) + PF₅(g) -HF(liquefied)-> LiPF₆(s)
        ingredients =
        {
            {type = item, name = lithium_fluoride, amount = 4},
            {type = fluid, name = phosphorus_fluoride_V_gas, amount = 60},
            {type = fluid, name = hydrogen_fluoride_liquefied, amount = 60}
        },
        results =
        {
            {type = item, name = lithium_hexafluorophosphate, amount = 4},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 30}
        },
        main_product = lithium_hexafluorophosphate
    },
    {
        name = lithium_hexafluorophosphate_solution_carbonate,
        categories = {angels_liquifying},
        subgroup = is_lithium_fluid,
        icons = THREE_I(lithium_hexafluorophosphate, ethylene_carbonate, lithium_hexafluorophosphate_solution_carbonate),
        order = i,
        -- LiPF₆(s) + C₃H₄O₃(l) --> LiPF₆(carbonate)
        ingredients =
        {
            {type = item, name = lithium_hexafluorophosphate, amount = 4},
            {type = fluid, name = ethylene_carbonate, amount = 60}
        },
        results = {{type = fluid, name = lithium_hexafluorophosphate_solution_carbonate, amount = 60}},
        main_product = lithium_hexafluorophosphate_solution_carbonate
    }
})

-- OTHERS
hydrocyanic_acid_2 = hydrocyanic_acid .. "-2"
TIMSABA.functions.create_recipes
({
    -- ITEM
    {
        name = dodecanol,
        categories = {chemistry},
        subgroup = is_others,
        icons = TWO_D_I(tridodecylaluminium_oxide, water_purified_angels, dodecanol, aluminium_hydroxide),
        order = a,
        -- Al(C₁₂H₂₅O)₃(s) + 3H₂O(l) --> 3C₁₂H₂₆O(s) + Al(OH)₃(s)
        ingredients =
        {
            {type = item, name = tridodecylaluminium_oxide, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 180}
        },
        results =
        {
            {type = item, name = dodecanol, amount = 12},
            {type = item, name = aluminium_hydroxide, amount = 2} -- 4
        },
        main_product = dodecanol
    },
    {
        name = lauryl_sulfate,
        categories = {chemistry},
        subgroup = is_others,
        icons = TWO_D_I(dodecanol, chlorosulfonic_acid, lauryl_sulfate, hydrogen_chloride_angels),
        order = b,
        -- C₁₂H₂₆O(s) + HSO₃Cl(l) --> C₁₂H₂₆SO₄(s) + HCl(g)
        ingredients =
        {
            {type = item, name = dodecanol, amount = 4},
            {type = fluid, name = chlorosulfonic_acid, amount = 60}
        },
        results =
        {
            {type = item, name = lauryl_sulfate, amount = 4},
            {type = fluid, name = hydrogen_chloride_angels, amount = 30} -- 60
        },
        main_product = lauryl_sulfate
    },
    -- FLUID
    {
        name = hydrogen_peroxide,
        categories = {chemistry},
        subgroup = is_others_fluid,
        icons = TWO_D_I(peroxydisulfuric_acid, water_purified_angels, hydrogen_peroxide, sulfuric_acid_angels),
        order = a,
        -- H₂S₂O₈(s) + 2H₂O(l) --> H₂O₂(l) + 2H₂SO₄(l)
        ingredients =
        {
            {type = item, name = peroxydisulfuric_acid, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = hydrogen_peroxide, amount = 60},
            {type = fluid, name = sulfuric_acid_angels, amount = 60} -- 120
        },
        main_product = hydrogen_peroxide
    },
    {
        name = hydrocyanic_acid,
        categories = {angels_advanced_chemistry},
        subgroup = is_others_fluid,
        icons = THREE_D_I(methane_angels, ammonia_angels, oxygen_angels, hydrocyanic_acid, nil, steam),
        order = b,
        energy_required = 8, -- 2CH₄(g) + 2NH₃(g) + 3O₂(g) --> 2HCN(aq) + 4H₂O(g)
        ingredients =
        {
            {type = fluid, name = methane_angels, amount = 240},
            {type = fluid, name = ammonia_angels, amount = 240},
            {type = fluid, name = oxygen_angels, amount = 360}
        },
        results =
        {
            {type = fluid, name = hydrocyanic_acid, amount = 240},
            {type = fluid, name = steam, amount = 240} -- 480
        },
        main_product = hydrocyanic_acid
    },
    {
        localised_name = {"fluid-name." .. hydrocyanic_acid},
        name = hydrocyanic_acid_2,
        categories = {chemistry},
        subgroup = is_others_fluid,
        icons = THREE_I(hydrogen_cyanide_gas, water_purified_angels, hydrocyanic_acid),
        order = b_a,
        -- HCN(g) + H₂O(l) --> HCN(aq)
        ingredients =
        {
            {type = fluid, name = hydrogen_cyanide_gas, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = hydrocyanic_acid, amount = 60}},
        main_product = hydrocyanic_acid
    },
    {
        name = ionic_liquid,
        categories = {chemistry},
        subgroup = is_others_fluid,
        icons = TWO_D_I(imidazolium_salt, hexafluorophosphoric_acid, ionic_liquid, hydrochloric_acid_angels),
        order = d,
        -- [C₇H₁₃N₂]Cl(s) + HPF₆(aq) --> [C₇H₁₃N₂]PF₆(l) + HCl(aq)
        ingredients =
        {
            {type = item, name = imidazolium_salt, amount = 4},
            {type = fluid, name = hexafluorophosphoric_acid, amount = 60}
        },
        results =
        {
            {type = fluid, name = ionic_liquid, amount = 60},
            {type = fluid, name = hydrochloric_acid_angels, amount = 30} -- 60
        },
        main_product = ionic_liquid
    }
})

-- MULTI-PHASE OIL
lubricant_from_naphtha = "lubricant-from-naphtha"
TIMSABA.functions.create_recipes
({
    {
        name = residual_angels,
        categories = {chemistry},
        subgroup = is_multi_phase_oil,
        icons = THREE_I(methane_angels, carbon_dioxide_angels, residual_angels),
        order = d,-- CH₄(g) + CO₂(g) --> (CH₄ + CO₂)(g)
        ingredients =
        {
            {type = fluid, name = methane_angels, amount = 60},
            {type = fluid, name = carbon_dioxide_angels, amount = 60}
        },
        results = {{type = fluid, name = residual_angels, amount = 60}},
        main_product = residual_angels
    },
    {
        name = lubricant_from_naphtha,
        categories = {chemistry},
        subgroup = is_multi_phase_oil,
        icons = TWO_D_I(naphtha_angels, residual_angels, lubricant, steam),
        order = f_b,
        -- 4C₈H₁₈(l) + 4(CH₄ + CO₂)(g) -cat-> C₄₀H₈₂(l) + 2H₂O(g)
        ingredients =
        {
            {type = fluid, name = naphtha_angels, amount = 60},
            {type = fluid, name = residual_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = lubricant, amount = 15},
            {type = fluid, name = steam, amount = 30},
            {type = item, name = catalyst_blue, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = lubricant
    }
})

-- CARBON FLUIDS 2
TIMSABA.functions.create_recipes
({
    {
        name = acetylene_gas,
        categories = {angels_advanced_chemistry},
        subgroup = is_carbon_fluids_2,
        icons = THREE_R_I(methane_angels, acetylene_gas, hydrogen_angels),
        order = a,
        energy_required = 8, -- 2CH₄(g) + H₂O(l) --> C₂H₂(g) + 3H₂(g) + H₂O(g)
        ingredients =
        {
            {type = fluid, name = methane_angels, amount = 480},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = acetylene_gas, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 720},
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = acetylene_gas
    },
    {
        name = vinyl_acetate_liquid,
        categories = {chemistry},
        subgroup = is_carbon_fluids_2,
        icons = THREE_I(acetylene_gas, acetic_acid, vinyl_acetate_liquid),
        order = b,
        -- C₂H₂(g) + C₂H₄O₂(l) -ZnC₄H₆O₄(s)-> C₄H₆O₂(l)
        ingredients =
        {
            {type = fluid, name = acetylene_gas, amount = 60},
            {type = fluid, name = acetic_acid, amount = 60},
            {type = item, name = zinc_acetate, amount = 4}
        },
        results =
        {
            {type = fluid, name = vinyl_acetate_liquid, amount = 60},
            {type = item, name = zinc_acetate, amount = 2} -- 4
        },
        main_product = vinyl_acetate_liquid
    },
    {
        name = diethyl_ether,
        categories = {angels_advanced_chemistry},
        subgroup = is_carbon_fluids_2,
        icons = THREE_R_I(ethanol_angels, diethyl_ether, steam),
        order = c,
        -- 2C₂H₆O(l) -H₂SO₄-> (C₂H₅)₂O(l) + H₂O(g)
        ingredients =
        {
            {type = fluid, name = ethanol_angels, amount = 120},
            {type = fluid, name = sulfuric_acid_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = diethyl_ether, amount = 60},
            {type = fluid, name = steam, amount = 30}, -- 60
            {type = fluid, name = sulfuric_acid_angels, amount = 30} -- 60
        },
        main_product = diethyl_ether
    },
    {
        name = methyl_methacrylate,
        categories = {angels_advanced_chemistry},
        subgroup = is_carbon_fluids_2,
        icons = THREE_D_I(acetone_cyanohydrin, methanol_angels, sulfuric_acid_angels, methyl_methacrylate, nil, ammonium_hydrosulfate),
        order = d,
        energy_required = 8, -- C₄H₇NO(l) + CH₄O(l) + H₂SO₄(l) --> C₅H₈O₂(l) + NH₄HSO₄(s)
        ingredients =
        {
            {type = fluid, name = acetone_cyanohydrin, amount = 240},
            {type = fluid, name = methanol_angels, amount = 240},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = methyl_methacrylate, amount = 240},
            {type = item, name = ammonium_hydrosulfate, amount = 8} -- 16
        },
        main_product = methyl_methacrylate
    },
    {
        name = acetaldehyde,
        categories = {chemistry},
        subgroup = is_carbon_fluids_2,
        icons = THREE_R_I(ethanol_angels, acetaldehyde, hydrogen_angels),
        order = e,
        -- C₂H₅OH(l) -cat(Cu/Ag)-> C₂H₄O(l) + H₂(g)
        ingredients =
        {
            {type = fluid, name = ethanol_angels, amount = 60},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = acetaldehyde, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 30}, -- 60
            {type = item, name = catalyst_green, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = acetaldehyde
    },
    {
        name = formic_acid,
        categories = {chemistry},
        subgroup = is_carbon_fluids_2,
        icons = THREE_D_I(formaldehyde_angels, nil, copper_hydroxide_II, formic_acid, copper_oxide_I, water_purified_angels),
        order = f,
        -- CH₂O(g) + Cu(OH)₂(s) --> CH₂O₂(l) + Cu₂O(s) + H₂O(l)
        ingredients =
        {
            {type = fluid, name = formaldehyde_angels, amount = 60},
            {type = item, name = copper_hydroxide_II, amount = 4}
        },
        results =
        {
            {type = fluid, name = formic_acid, amount = 60},
            {type = item, name = copper_oxide_I, amount = 1}, -- 2
            {type = fluid, name = water_purified_angels, amount = 30} -- 60
        },
        main_product = formic_acid
    }
})

-- METHANE
methane_from_ethane = "methane-from-ethane"
methane_and_propene_from_butane = "methane-and-propene-from-butane"
methane_from_acetylene_gas = "methane-from-acetylene-gas"
TIMSABA.functions.create_recipes
({
    {
        name = methane_from_ethane,
        categories = {chemistry},
        subgroup = is_methane,
        icons = TWO_I(ethane_angels, methane_angels),
        order = a_a,
        -- C₂H₆(g) + H₂(g) -cat-> 2CH₄(g)
        ingredients =
        {
            {type = fluid, name = ethane_angels, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1},
        },
        results =
        {
            {type = fluid, name = methane_angels, amount = 120},
            {type = item, name = catalyst_blue, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = methane_angels
    },
    {
        name = methane_and_propene_from_butane,
        categories = {chemistry},
        subgroup = is_methane,
        icons = THREE_R_I(butane_angels, methane_angels, propene_angels),
        order = a_b,
        -- C₄H₁₀(g) -cat-> CH₄(g) + C₃H₆(g)
        ingredients =
        {
            {type = fluid, name = butane_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = methane_angels, amount = 60},
            {type = fluid, name = propene_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = methane_angels
    },
    {
        name = methane_from_acetylene_gas,
        categories = {chemistry},
        subgroup = is_methane,
        icons = THREE_I(acetylene_gas, hydrogen_angels, methane_angels),
        order = a_c,
        -- C₂H₂(g) + H₂(g) -cat-> C₂H₄(g)
        ingredients =
        {
            {type = fluid, name = acetylene_gas, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = methane_angels, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = methane_angels
    },
    {
        name = dimethyl_carbonate,
        categories = {chemistry},
        subgroup = is_methane,
        icons = TWO_D_I(methanol_angels, phosgene_gas, dimethyl_carbonate, hydrogen_chloride_angels),
        order = d,
        -- 2CH₄O(l) + COCl₂(g) --> C₃H₆O₃(l) + 2HCl(g)
        ingredients =
        {
            {type = fluid, name = methanol_angels, amount = 120},
            {type = fluid, name = phosgene_gas, amount = 60}
        },
        results =
        {
            {type = fluid, name = dimethyl_carbonate, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 30} -- 60
        },
        main_product = dimethyl_carbonate
    },
})

-- ETHANE
ethane_and_ethylene_from_butane = "ethane-and-ethylene-from-butane"
ethane_from_acetylene_gas = "ethane-from-acetylene-gas"
TIMSABA.functions.create_recipes
({
    {
        name = ethane_angels,
        categories = {chemistry},
        subgroup = is_ethane,
        icons = TWO_D_I(chloromethane_angels, sodium_angels, ethane_angels, salt_angels),
        order = a,
        -- 2CH₃Cl(g) + 2Na(s) --> C₂H₆(g) + 2NaCl(s)
        ingredients =
        {
            {type = fluid, name = chloromethane_angels, amount = 120},
            {type = item, name = sodium_angels, amount = 8}
        },
        results =
        {
            {type = fluid, name = ethane_angels, amount = 60},
            {type = item, name = salt_angels, amount = 4} -- 8
        },
        main_product = ethane_angels
    },
    {
        name = ethane_and_ethylene_from_butane,
        categories = {chemistry},
        subgroup = is_ethane,
        icons = THREE_R_I(butane_angels, ethane_angels, ethylene_angels),
        order = a_a,
        -- C₄H₁₀(g) -cat-> C₂H₆(g) + C₂H₄(g)
        ingredients =
        {
            {type = fluid, name = butane_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = ethane_angels, amount = 60},
            {type = fluid, name = ethylene_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = ethane_angels
    },
    {
        name = ethane_from_acetylene_gas,
        categories = {chemistry},
        subgroup = is_ethane,
        icons = THREE_I(acetylene_gas, hydrogen_angels, ethane_angels),
        order = a_b,
        -- C₂H₂(g) + 2H₂(g) -cat-> C₂H₆(g)
        ingredients =
        {
            {type = fluid, name = acetylene_gas, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 120},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = ethane_angels, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = ethane_angels
    },
    {
        name = polyethylene,
        categories = {chemistry},
        subgroup = is_ethane,
        icons = TWO_I(ethylene_angels, polyethylene),
        order = d,
        -- C₂H₄(g) -cat-> (C₂H₄)n(s)
        ingredients =
        {
            {type = fluid, name = ethylene_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = item, name = polyethylene, amount = 4},
            {type = item, name = catalyst_blue, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = polyethylene
    },
    {
        name = ethylene_oxide,
        categories = {chemistry},
        subgroup = is_ethane,
        icons = THREE_I(ethylene_angels, oxygen_angels, ethylene_oxide),
        order = e,
        -- 2C₂H₄(g) + O₂(g) -cat-> 2C₂H₄O(g)
        ingredients =
        {
            {type = fluid, name = ethylene_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 30},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = ethylene_oxide, amount = 60},
            {type = item, name = catalyst_green, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = ethylene_oxide
    },
    {
        name = ethylene_carbonate,
        categories = {chemistry},
        subgroup = is_ethane,
        icons = THREE_I(ethylene_oxide, carbon_dioxide_angels, ethylene_carbonate),
        order = f,
        -- C₂H₄O(g) + CO₂(g) -cat-> C₃H₄O₃(l)
        ingredients =
        {
            {type = fluid, name = ethylene_oxide, amount = 60},
            {type = fluid, name = carbon_dioxide_angels, amount = 60},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = ethylene_carbonate, amount = 60},
            {type = item, name = catalyst_green, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = ethylene_carbonate
    },
    {
        name = isoprene_liquid,
        categories = {chemistry},
        subgroup = is_ethane,
        icons = THREE_R_I(ethylene_angels, isoprene_liquid, methane_angels),
        order = g,
        -- 2C₃H₆(g) -Al(C₃H₇)₃(s-> C₅H₈(l) + CH₄(g)
        ingredients =
        {
            {type = fluid, name = ethylene_angels, amount = 120},
            {type = item, name = tripropylaluminium, amount = 4}
        },
        results =
        {
            {type = fluid, name = isoprene_liquid, amount = 60},
            {type = fluid, name = methane_angels, amount = 60},
            {type = item, name = tripropylaluminium, amount = 2}
        },
        main_product = isoprene_liquid
    },
    {
        name = ethylene_glycol_liquid,
        categories = {chemistry},
        subgroup = is_ethane,
        icons = THREE_I(ethylene_oxide, water_purified_angels, ethylene_glycol_liquid),
        order = h,
        -- C₂H₄O(l) + H₂O(l) --> C₂H₆O₂(l)
        ingredients =
        {
            {type = fluid, name = ethylene_oxide, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = ethylene_glycol_liquid, amount = 60}},
        main_product = ethylene_glycol_liquid
    },
    {
        name = glyoxal_liquid,
        categories = {chemistry},
        subgroup = is_ethane,
        icons = TWO_D_I(ethylene_glycol_liquid, oxygen_angels, glyoxal_liquid, water_purified_angels),
        order = i,
        -- C₂H₆O₂(l) + O₂(g) -cat(Ag/Cu)-> C₂H₂O₂(l) + 2H₂O(l)
        ingredients =
        {
            {type = fluid, name = ethylene_glycol_liquid, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 60},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = glyoxal_liquid, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60}, -- 120
            {type = item, name = catalyst_green, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = glyoxal_liquid
    }
})

-- BUTANE
butene_gas_from_butane_gas = "butene-gas-from-butane-gas"
TIMSABA.functions.create_recipes
({
    {
        name = butane_angels,
        categories = {chemistry},
        subgroup = is_butane,
        icons = TWO_D_I(chloroethane_gas, sodium_angels, butane_angels, salt_angels),
        order = a,
        -- 2C₂H₅Cl(g) + 2Na(s) --> C₄H₁₀(g) + 2NaCl(s)
        ingredients =
        {
            {type = fluid, name = chloroethane_gas, amount = 120},
            {type = item, name = sodium_angels, amount = 8}
        },
        results =
        {
            {type = fluid, name = butane_angels, amount = 60},
            {type = item, name = salt_angels, amount = 4} -- 8
        },
        main_product = butane_angels
    },
    {
        name = butene_gas,
        categories = {chemistry},
        subgroup = is_butane,
        icons = TWO_I(ethylene_angels, butene_gas),
        order = b,
        -- 2C₂H₄(g) -cat-> C₄H₈(g)
        ingredients =
        {
            {type = fluid, name = ethylene_angels, amount = 120},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = butene_gas, amount = 60},
            {type = item, name = catalyst_green, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = butene_gas
    },
    {
        name = butene_gas_from_butane_gas,
        categories = {chemistry},
        subgroup = is_butane,
        icons = TWO_I(butane_angels, butene_gas),
        order = b_a,
        -- C₄H₁₀(g) -cat-> C₄H₈(g) + H₂(g)
        ingredients =
        {
            {type = fluid, name = butane_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = butene_gas, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 30}, -- 60
            {type = item, name = catalyst_blue, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = butene_gas
    },
    {
        name = acetone_angels,
        categories = {chemistry},
        subgroup = is_butane,
        icons = THREE_I(propene_angels, oxygen_angels, acetone_angels),
        order = h,
        -- 2C₃H₆(g) + O₂(g) -cat-> 2C₃H₆O(l)
        ingredients =
        {
            {type = fluid, name = propene_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 30},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = acetone_angels, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = acetone_angels
    },
    {
        name = phenol,
        categories = {chemistry},
        subgroup = is_butane,
        icons = THREE_I(benzene_angels, oxygen_angels, phenol),
        order = g,
        -- 2C₆H₆(g) + O₂(g) -cat-> 2C₆H₆O(s)
        ingredients =
        {
            {type = fluid, name = benzene_angels, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = item, name = phenol, amount = 8},
            {type = item, name = catalyst_yellow, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = phenol
    },
    {
        name = bisphenol_a,
        categories = {chemistry},
        subgroup = is_butane,
        icons = TWO_D_I(phenol, acetone_angels, bisphenol_a, water_purified_angels),
        order = i,
        -- 2C₆H₆O(s) + C₃H₆O(l) -HCl-> C₁₅H₁₆O₂(s) + H₂O(l)
        ingredients =
        {
            {type = item, name = phenol, amount = 8},
            {type = fluid, name = acetone_angels, amount = 60},
            {type = fluid, name = hydrochloric_acid_angels, amount = 60},
        },
        results =
        {
            {type = item, name = bisphenol_a, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 30}, -- 60
            {type = fluid, name = hydrochloric_acid_angels, amount = 30}, -- 60
        },
        main_product = bisphenol_a
    }
})

-- PLASTIC
liquid_plastic_4 = "liquid-plastic-4"
TIMSABA.functions.create_recipes
({
    {
        name = liquid_plastic_4,
        categories = {chemistry},
        subgroup = is_plastic,
        icons = TWO_I(methyl_methacrylate, liquid_plastic_angels),
        order = a_d,
        -- C₅H₈O₂(l) -cat-> жидкий пластик
        ingredients =
        {
            {type = fluid, name = methyl_methacrylate, amount = 60},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = liquid_plastic_angels, amount = 120},
            {type = item, name = catalyst_green, amount = 1, independent_probability = 0.875},
            {type = item, name = catalyst_carrier, amount = 1, independent_probability = 0.125}
        },
        main_product = liquid_plastic_angels
    }
})

-- RESINE
TIMSABA.functions.create_recipes
({
    {
        name = epoxy_resin_liquid,
        categories = {angels_advanced_chemistry},
        subgroup = is_resin,
        icons = THREE_D_I(bisphenol_a, epichlorohydrin_angels, sodium_hydroxide_solution_angels, epoxy_resin_liquid, sodium_chloride_solution, water_purified_angels),
        order = c,
        energy_required = 8, -- 2С₃H₅ClO(l) + C₁₅H₁₆O₂(s) + 2NaOH(aq) --> C₂₁H₂₄O₄(l) + 2NaCl(aq) + 2H₂O(l)
        ingredients =
        {
            {type = item, name = bisphenol_a, amount = 32},
            {type = fluid, name = epichlorohydrin_angels, amount = 240},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 480}
        },
        results =
        {
            {type = fluid, name = epoxy_resin_liquid, amount = 240},
            {type = fluid, name = sodium_chloride_solution, amount = 240}, -- 480
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = epoxy_resin_liquid
    }
})

-- RUBBER
liquid_rubber_2 = "liquid-rubber-2"
liquid_rubber_3 = "liquid-rubber-3"
liquid_rubber_4 = "liquid-rubber-4"
TIMSABA.functions.create_recipes
({

    {
        localised_name = {"fluid-name." .. liquid_rubber_angels},
        name = liquid_rubber_2,
        categories = {chemistry},
        subgroup = is_rubber,
        icons = THREE_I(styrene_angels, butadiene_angels, liquid_rubber_angels),
        order = a_a,
        -- C₈H₈(l) + C₄H₆(g) --> liquid rubber
        ingredients =
        {
            {type = fluid, name = styrene_angels, amount = 60},
            {type = fluid, name = butadiene_angels, amount = 60}
        },
        results = {{type = fluid, name = liquid_rubber_angels, amount = 60}},
        main_product = liquid_rubber_angels
    },
    {
        localised_name = {"fluid-name." .. liquid_rubber_angels},
        name = liquid_rubber_3,
        categories = {chemistry},
        subgroup = is_rubber,
        icons = THREE_I(styrene_angels, isoprene_liquid, liquid_rubber_angels),
        order = a_b,
        -- C₈H₈(l) + C₅H₈(l) --> liquid rubber
        ingredients =
        {
            {type = fluid, name = styrene_angels, amount = 60},
            {type = fluid, name = isoprene_liquid, amount = 60}
        },
        results = {{type = fluid, name = liquid_rubber_angels, amount = 120}},
        main_product = liquid_rubber_angels
    },
    {
        localised_name = {"fluid-name." .. liquid_rubber_angels},
        name = liquid_rubber_4,
        categories = {chemistry},
        subgroup = is_rubber,
        icons = THREE_I(butadiene_angels, acrylonitrile, liquid_rubber_angels),
        order = a_c,
        -- C₄H₆(g) + C₃H₃N(l) --> liquid rubber
        ingredients =
        {
            {type = fluid, name = butadiene_angels, amount = 60},
            {type = fluid, name = acrylonitrile, amount = 60}
        },
        results = {{type = fluid, name = liquid_rubber_angels, amount = 240}},
        main_product = liquid_rubber_angels
    }
})

-- EXPLOSIVES
TIMSABA.functions.create_recipes
({
    {
        name = glycerol_dichlorohydrin,
        categories = {chemistry},
        subgroup = is_explosives,
        icons = TWO_D_I(allyl_chloride_angels, hypochlorous_acid, glycerol_dichlorohydrin, water_purified_angels),
        order = b,
        -- C₃H₅Cl + HClO(aq) --> C₃H₆Cl₂O + H₂O(l)
        ingredients =
        {
            {type = fluid, name = allyl_chloride_angels, amount = 60},
            {type = fluid, name = hypochlorous_acid, amount = 60}
        },
        results =
        {
            {type = fluid, name = glycerol_dichlorohydrin, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 30} -- 60
        },
        main_product = glycerol_dichlorohydrin
    }
})