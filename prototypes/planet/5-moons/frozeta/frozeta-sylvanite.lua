if mods[secretas_frozeta_mods] then
    local graphics_sylvanite = "__TIMSABA__/graphics/icons/frozeta/sylvanite/"

    sylvanite_ore = "sylvanite-ore"
    sylvanite_crushed = "sylvanite-crushed"
    sylvanite_chunks = "sylvanite-chunks"
    sylvanite_crystals = "sylvanite-crystals"
    sylvanite_purified = "sylvanite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = sylvanite_ore,
            subgroup = is_sylvanite,
            icon = graphics_sylvanite .. sylvanite_ore .. ".png",
            pictures =
            {
                {filename = graphics_sylvanite .. sylvanite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_sylvanite .. sylvanite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_sylvanite .. sylvanite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            name = sylvanite_crushed,
            subgroup = is_sylvanite,
            icon = graphics_sylvanite .. sylvanite_crushed .. ".png",
            order = b
        },
        {
            name = sylvanite_chunks,
            subgroup = is_sylvanite,
            icon = graphics_sylvanite .. sylvanite_chunks .. ".png",
            order = c
        },
        {
            name = sylvanite_crystals,
            subgroup = is_sylvanite,
            icon = graphics_sylvanite .. sylvanite_crystals .. ".png",
            order = d
        },
        {
            name = sylvanite_purified,
            subgroup = is_sylvanite,
            icon = graphics_sylvanite .. sylvanite_purified .. ".png",
            order = e
        }
    })

    -- FLUID


    -- RECIPE
    ANGELS.functions.create_crushed(sylvanite_crushed, is_sylvanite, b, sylvanite_ore)
    ANGELS.functions.create_chunk(sylvanite_chunks, is_sylvanite, c, sylvanite_crushed, salt_angels, water_green_waste)
    ANGELS.functions.create_crystal(sylvanite_crystals, is_sylvanite, d, sylvanite_chunks, hydrochloric_acid_angels)
    ANGELS.functions.create_purified(sylvanite_purified, is_sylvanite, e, sylvanite_crystals)
    -- Sylvanite ore / Au + Ag + Pb + Cu + Ni + Sb
    ANGELS.functions.create_ore_processing(sylvanite_ore, is_sylvanite, f, salt_angels)
    ANGELS.functions.create_crushed_processing(sylvanite_crushed, is_sylvanite, g, gold_ore_bob, silver_ore_bob, salt_angels)
    ANGELS.functions.create_chunk_processing(sylvanite_chunks, is_sylvanite, h, gold_ore_bob, silver_ore_bob, lead_ore_bob, copper_ore, salt_angels)
    ANGELS.functions.create_crystal_processing(sylvanite_crystals, is_sylvanite, i, gold_ore_bob, silver_ore_bob, lead_ore_bob, copper_ore, nickel_ore_bob, salt_angels)
    ANGELS.functions.create_purified_processing(sylvanite_purified, is_sylvanite, j, gold_ore_bob, silver_ore_bob, lead_ore_bob, copper_ore, nickel_ore_bob, antimony_ore)
end