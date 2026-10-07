if mods[lignumis_mods] then
    -- GOLD
    local gold_plate_lignumis = "gold-plate-lignumis"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"item-name." .. gold_plate_bob},
            name = gold_plate_lignumis,
            categories = {smelting},
            subgroup = is_lignumis_gold,
            icons = TWO_I(gold_ore_bob, gold_plate_bob),
            order = c,
            enabled = true,
            energy_required = 1,
            ingredients = {{type = item, name = gold_ore_bob, amount = 1}},
            results = {{type = item, name = gold_plate_bob, amount = 1}},
            main_product = gold_plate_bob,
            surface_conditions = {{property = pressure, min = 900, max = 900}}
        }
    })

    -- TANTALUM
    tantalum_powder_2 = "tantalum-powder-2"
    tantalum_powder_3 = "tantalum-powder-3"
    TIMSABA.functions.create_recipes
    ({
        {
            name = tantalum_processed,
            categories = {angels_processed_pressing_4},
            subgroup = is_tantalum,
            icons = TWO_I(tantalum_ore, tantalum_processed),
            order = b,
            energy_required = 2,
            ingredients = {{type = item, name = tantalum_ore, amount = 4}},
            results = {{type = item, name = tantalum_processed, amount = 4}},
            main_product = tantalum_processed
        },
        {
            name = tantalum_pellet,
            categories = {angels_pellet_pressing_4},
            subgroup = is_tantalum,
            icons = TWO_I(tantalum_processed, tantalum_pellet),
            order = c,
            energy_required = 2,
            ingredients = {{type = item, name = tantalum_processed, amount = 4}},
            results = {{type = item, name = tantalum_pellet, amount = 4}},
            main_product = tantalum_pellet
        },
        {
            name = tantalum_powder,
            categories = {angels_blast_smelting_4},
            subgroup = is_tantalum,
            icons = TWO_D_I(tantalum_oxide_V, magnesium_powder, tantalum_powder, magnesium_oxide),
            order = d,
            energy_required = 8, -- Ta₂O₅(s) + 5Mg(s) --> 2Ta(s) + 5MgO(s)
            ingredients =
            {
                {type = item, name = tantalum_oxide_V, amount = 8},
                {type = item, name = magnesium_powder, amount = 40}
            },
            results =
            {
                {type = item, name = tantalum_powder, amount = 16},
                {type = item, name = magnesium_oxide, amount = 8} -- 40
            },
            main_product = tantalum_powder
        },
        {
            localised_name = {"item-name." .. tantalum_powder},
            name = tantalum_powder_2,
            categories = {angels_blast_smelting_4},
            subgroup = is_tantalum,
            icons = THREE_D_I(potassium_heptafluorotantalate, nil, sodium_angels, tantalum_powder, potassium_fluoride, sodium_fluoride),
            order = d_a,
            energy_required = 8, -- K₂TaF₇(s) + 5Na(s) --> Ta(s) + 2KF(s) + 5NaF(s)
            ingredients =
            {
                {type = item, name = potassium_heptafluorotantalate, amount = 16},
                {type = item, name = sodium_angels, amount = 80}
            },
            results =
            {
                {type = item, name = tantalum_powder, amount = 16},
                {type = item, name = potassium_fluoride, amount = 16}, -- 32
                {type = item, name = sodium_fluoride, amount = 16} -- 80
            },
            main_product = tantalum_powder
        },
        {
            localised_name = {"item-name." .. tantalum_powder},
            name = tantalum_powder_3,
            categories = {angels_blast_smelting_4},
            subgroup = is_tantalum,
            icons = FOUR_THREE_R_I(sodium_tantalate, nil, calcium_hydride, tantalum_powder, lime_angels, sodium_oxide, hydrogen_angels),
            order = d_b,
            energy_required = 8, -- 2NaTaO₃(s) + 5CaH₂(s) --> 2Ta(s) + 5CaO(s) + Na₂O(s) + 5H₂(g)
            ingredients =
            {
                {type = item, name = sodium_tantalate, amount = 16},
                {type = item, name = calcium_hydride, amount = 40}
            },
            results =
            {
                {type = item, name = tantalum_powder, amount = 16},
                {type = item, name = lime_angels, amount = 8}, -- 40
                {type = item, name = sodium_oxide, amount = 4}, -- 8
                {type = fluid, name = hydrogen_angels, amount = 120} -- 600
            },
            main_product = tantalum_powder
        },
        {
            name = tantalum_tungsten_powder_mixture,
            categories = {angels_powder_mixing_4},
            subgroup = is_tantalum,
            icons = THREE_I(tantalum_powder, tungsten_powder, tantalum_tungsten_powder_mixture),
            order = e,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = tantalum_powder, amount = 8},
                {type = item, name = tungsten_powder, amount = 8}
            },
            results = {{type = item, name = tantalum_tungsten_powder_mixture, amount = 8}},
            main_product = tantalum_tungsten_powder_mixture
        },
        {
            name = tantalum_molybdenum_rhenium_powder_mixture,
            categories = {angels_powder_mixing_4},
            subgroup = is_tantalum,
            icons = THREE_D_I(tantalum_powder, molybdenum_powder, rhenium_powder, tantalum_molybdenum_rhenium_powder_mixture),
            order = f,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = tantalum_powder, amount = 8},
                {type = item, name = molybdenum_powder, amount = 8},
                {type = item, name = rhenium_powder, amount = 8}
            },
            results = {{type = item, name = tantalum_molybdenum_rhenium_powder_mixture, amount = 8}},
            main_product = tantalum_molybdenum_rhenium_powder_mixture
        },
        {
            name = tantalum_niobium_powder_mixture,
            categories = {angels_powder_mixing_4},
            subgroup = is_tantalum,
            icons = THREE_I(tantalum_powder, niobium_powder, tantalum_niobium_powder_mixture),
            order = g,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = tantalum_powder, amount = 8},
                {type = item, name = niobium_powder, amount = 8}
            },
            results = {{type = item, name = tantalum_niobium_powder_mixture, amount = 8}},
            main_product = tantalum_niobium_powder_mixture
        },
        -- CHEMISTRY
        {
            name = hexafluorotantalic_acid_solution,
            categories = {angels_advanced_chemistry},
            subgroup = is_tantalum_chemistry,
            icons = THREE_D_I(tantalum_ore, sulfuric_acid_angels, hydrofluoric_acid_angels, hexafluorotantalic_acid_solution, sulfur_dioxide_angels, water_purified_angels),
            order = a,
            energy_required = 8, -- 2Ta(ore) + 5H₂SO₄(l) + 12HF(aq) --> 2HTaF₆(aq) + 5SO₂(g) + 8H₂O(l)
            ingredients =
            {
                {type = item, name = tantalum_ore, amount = 32},
                {type = fluid, name = sulfuric_acid_angels, amount = 600},
                {type = fluid, name = hydrofluoric_acid_angels, amount = 1440}
            },
            results =
            {
                {type = fluid, name = hexafluorotantalic_acid_solution, amount = 240},
                {type = fluid, name = sulfur_dioxide_angels, amount = 120}, -- 600
                {type = fluid, name = water_purified_angels, amount = 480} -- 960
            },
            main_product = hexafluorotantalic_acid_solution
        },
        {
            name = tantalum_hydroxide_V,
            categories = {angels_advanced_chemistry},
            subgroup = is_tantalum_chemistry,
            icons = THREE_D_I(hexafluorotantalic_acid_solution, ammonia_angels, water_purified_angels, tantalum_hydroxide_V, nil, ammonium_fluoride_solution),
            order = b,
            energy_required = 8, -- HTaF₆(aq) + 6NH₃(g) + 5H₂O(l) --> Ta(OH)₅(s) + 6NH₄F(aq)
            ingredients =
            {
                {type = fluid, name = hexafluorotantalic_acid_solution, amount = 240},
                {type = fluid, name = ammonia_angels, amount = 1440},
                {type = fluid, name = water_purified_angels, amount = 1200}
            },
            results =
            {
                {type = item, name = tantalum_hydroxide_V, amount = 16},
                {type = fluid, name = ammonium_fluoride_solution, amount = 480} -- 1440
            },
            main_product = tantalum_hydroxide_V
        },
        {
            name = tantalum_oxide_V,
            categories = {angels_blast_smelting_4},
            subgroup = is_tantalum_chemistry,
            icons = THREE_R_I(tantalum_hydroxide_V, tantalum_oxide_V, steam),
            order = c,
            energy_required = 8, -- 2Ta(OH)₅(s) --> Ta₂O₅(s) + 5H₂O(g)
            ingredients = {{type = item, name = tantalum_hydroxide_V, amount = 16}},
            results =
            {
                {type = item, name = tantalum_oxide_V, amount = 8},
                {type = fluid, name = steam, amount = 120} -- 600
            },
            main_product = tantalum_oxide_V
        },
        {
            name = potassium_heptafluorotantalate,
            categories = {angels_chemical_smelting_4},
            subgroup = is_tantalum_chemistry,
            icons = FOUR_THREE_I(tantalum_processed, potassium_chloride, hydrogen_fluoride_angels, hydrofluoric_acid_angels, potassium_heptafluorotantalate, hydrogen_angels, hydrochloric_acid_angels),
            order = d,
            energy_required = 8, -- 2Ta(processed) + 4KCl(s) + 10HF(g) + 4HF(aq) --> 2K₂TaF₇(s) + 5H₂(g) + 4HCl(aq)
            ingredients =
            {
                {type = item, name = tantalum_processed, amount = 16},
                {type = item, name = potassium_chloride, amount = 32},
                {type = fluid, name = hydrogen_fluoride_angels, amount = 1200},
                {type = fluid, name = hydrofluoric_acid_angels, amount = 480}
            },
            results =
            {
                {type = item, name = potassium_heptafluorotantalate, amount = 16},
                {type = fluid, name = hydrogen_angels, amount = 120}, -- 600
                {type = fluid, name = hydrochloric_acid_angels, amount = 240} -- 480
            },
            main_product = potassium_heptafluorotantalate
        },
        {
            name = tantalum_chloride_V_gas,
            categories = {angels_chemical_smelting_4},
            subgroup = is_tantalum_chemistry,
            icons = THREE_I(tantalum_powder, chlorine_angels, tantalum_chloride_V_gas),
            order = e,
            energy_required = 8, -- 2Ta(pellet) + 5Cl₂(g) --> 2TaCl₅(g)
            ingredients =
            {
                {type = item, name = tantalum_powder, amount = 8},
                {type = fluid, name = chlorine_angels, amount = 600}
            },
            results = {{type = fluid, name = tantalum_chloride_V_gas, amount = 240}},
            main_product = tantalum_chloride_V_gas
        },
        {
            name = sodium_tantalate,
            categories = {angels_chemical_smelting_4},
            subgroup = is_tantalum_chemistry,
            icons = THREE_D_I(tantalum_chloride_V_gas, nil, sodium_hydroxide_solution_angels, sodium_tantalate, sodium_chloride_solution, water_purified_angels),
            order = f,
            energy_required = 8, -- TaCl₅(g) + 6NaOH(aq) --> NaTaO₃(s) + 5NaCl(aq) + 4H₂O(l)
            ingredients =
            {
                {type = fluid, name = tantalum_chloride_V_gas, amount = 240},
                {type = fluid, name = sodium_hydroxide_solution_angels, amount = 1440}
            },
            results =
            {
                {type = item, name = sodium_tantalate, amount = 16},
                {type = fluid, name = sodium_chloride_solution, amount = 480}, -- 1200
                {type = fluid, name = water_purified_angels, amount = 480} -- 960
            },
            main_product = sodium_tantalate
        },
        -- CASTING Ta-W
        {
            name = tantalum_tungsten_plate,
            categories = {sintering_6},
            subgroup = is_tantalum_tungsten,
            icons = TWO_I(tantalum_tungsten_powder_mixture, tantalum_tungsten_plate),
            order = a,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 8,
            ingredients = {{type = item, name = tantalum_tungsten_powder_mixture, amount = 16}},
            results = {{type = item, name = tantalum_tungsten_plate, amount = 16}},
            main_product = tantalum_tungsten_plate
        },
        {
            name = tantalum_tungsten_gear_wheel,
            categories = {sintering_6},
            subgroup = is_tantalum_tungsten,
            icons = TWO_I(tantalum_tungsten_powder_mixture, tantalum_tungsten_gear_wheel),
            order = b,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients = {{type = item, name = tantalum_tungsten_powder_mixture, amount = 1}},
            results = {{type = item, name = tantalum_tungsten_gear_wheel, amount = 1}},
            main_product = tantalum_tungsten_gear_wheel
        },
        -- CASTING Ta-Mo-Re
        {
            name = tantalum_molybdenum_rhenium_plate,
            categories = {sintering_6},
            subgroup = is_tantalum_molybdenum_rhenium,
            icons = TWO_I(tantalum_molybdenum_rhenium_powder_mixture, tantalum_molybdenum_rhenium_plate),
            order = a,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 8,
            ingredients = {{type = item, name = tantalum_molybdenum_rhenium_powder_mixture, amount = 16}},
            results = {{type = item, name = tantalum_molybdenum_rhenium_plate, amount = 16}},
            main_product = tantalum_molybdenum_rhenium_plate
        },
        -- CASTING Ta-Nb
        {
            name = tantalum_niobium_plate,
            categories = {sintering_6},
            subgroup = is_tantalum_niobium,
            icons = TWO_I(tantalum_niobium_powder_mixture, tantalum_niobium_plate),
            order = a,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 8,
            ingredients = {{type = item, name = tantalum_niobium_powder_mixture, amount = 16}},
            results = {{type = item, name = tantalum_niobium_plate, amount = 16}},
            main_product = tantalum_niobium_plate
        }
    })

    -- OTHER CHEMISTRY
    TIMSABA.functions.create_recipes
    ({
        -- POTASSIUM
        {
            name = potassium_sulfate_solution,
            categories = {chemistry},
            subgroup = is_potassium_fluid,
            icons = THREE_D_I(potassium_fluoride, water_purified_angels, sulfuric_acid_angels, potassium_sulfate_solution, hydrogen_fluoride_angels),
            order = g_a,
            -- 2KF(s) + H₂O(l) + H₂SO₄(l) --> K₂SO₄(aq) + HF(g)
            ingredients =
            {
                {type = item, name = potassium_fluoride, amount = 8},
                {type = fluid, name = water_purified_angels, amount = 60},
                {type = fluid, name = sulfuric_acid_angels, amount = 60}
            },
            results =
            {
                {type = fluid, name = potassium_sulfate_solution, amount = 60},
                {type = fluid, name = hydrogen_fluoride_angels, amount = 60}
            },
            main_product = potassium_sulfate_solution
        },
        -- SODIUM
        {
            localised_name = {"fluid-name." .. sodium_sulfate_solution},
            name = sodium_sulfate_solution_2,
            categories = {chemistry},
            subgroup = is_sodium_fluid,
            icons = THREE_D_I(sodium_fluoride, water_purified_angels, sulfuric_acid_angels, sodium_sulfate_solution, hydrogen_fluoride_angels),
            order = g_a,
            -- 2NaF(s) + H₂O(l) + H₂SO₄(l) --> Na₂SO₄(aq) + HF(g)
            ingredients =
            {
                {type = item, name = sodium_fluoride, amount = 8},
                {type = fluid, name = water_purified_angels, amount = 60},
                {type = fluid, name = sulfuric_acid_angels, amount = 60}
            },
            results =
            {
                {type = fluid, name = sodium_sulfate_solution, amount = 60},
                {type = fluid, name = hydrogen_fluoride_angels, amount = 60}
            },
            main_product = sodium_sulfate_solution
        },
        {
            name = calcium_hydride,
            categories = {chemistry},
            subgroup = is_calcium,
            icons = THREE_I(calcium, hydrogen_angels, calcium_hydride),
            order = j,
            -- Ca(s) + H₂(g) --> CaH₂(s)
            ingredients =
            {
                {type = item, name = calcium, amount = 4},
                {type = fluid, name = hydrogen_angels, amount = 60}
            },
            results = {{type = item, name = calcium_hydride, amount = 4}},
            main_product = calcium_hydride
        }
    })

    -- SPACE
    advanced_full_metallic_asteroid_crushing_3 = "advanced-full-metallic-asteroid-crushing-3" -- Tantalum ore
    TIMSABA.functions.create_recipes
    ({
        {
            name = advanced_full_metallic_asteroid_crushing_3,
            categories = {crushing},
            subgroup = is_space_environment_1,
            icons = TWO_I(metallic_asteroid_chunk, tantalum_ore),
            order = h_c,
            allow_productivity = true,
            ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
            results = {{type = item, name = tantalum_ore, amount = 8}},
            main_product = tantalum_ore
        }
    })
end