if mods[secretas_frozeta_mods] then
    local graphics_gallite = "__TIMSABA__/graphics/icons/frozeta/gallite/"

    gallite_ore = "gallite-ore"
    gallite_crushed = "gallite-crushed"
    gallite_chunks = "gallite-chunks"
    gallite_crystals = "gallite-crystals"
    gallite_purified = "gallite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = gallite_ore,
            subgroup = is_gallite,
            icon = graphics_gallite .. gallite_ore .. ".png",
            pictures =
            {
                {filename = graphics_gallite .. gallite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_gallite .. gallite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_gallite .. gallite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            name = gallite_crushed,
            subgroup = is_gallite,
            icon = graphics_gallite .. gallite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = gallite_chunks,
            subgroup = is_gallite,
            icon = graphics_gallite .. gallite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = gallite_crystals,
            subgroup = is_gallite,
            icon = graphics_gallite .. gallite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = gallite_purified,
            subgroup = is_gallite,
            icon = graphics_gallite .. gallite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- FLUID


    -- RECIPE
    ANGELS.functions.create_crushed(gallite_crushed, is_gallite, b, gallite_ore)
    ANGELS.functions.create_chunk(gallite_chunks, is_gallite, c, gallite_crushed, sulfur, water_yellow_waste)
    ANGELS.functions.create_crystal(gallite_crystals, is_gallite, d, gallite_chunks, sulfuric_acid_angels)
    ANGELS.functions.create_purified(gallite_purified, is_gallite, e, gallite_crystals)
    -- Gallite ore / Ga + Au + Fe + Cu + Ag + Se
    ANGELS.functions.create_ore_processing(gallite_ore, is_gallite, f, sulfur)
    ANGELS.functions.create_crushed_processing(gallite_crushed, is_gallite, g, gallium_ore, gold_ore_bob, sulfur)
    ANGELS.functions.create_chunk_processing(gallite_chunks, is_gallite, h, gallium_ore, gold_ore_bob, iron_ore, copper_ore, sulfur)
    ANGELS.functions.create_crystal_processing(gallite_crystals, is_gallite, i, gallium_ore, gold_ore_bob, iron_ore, copper_ore, silver_ore_bob, sulfur)
    ANGELS.functions.create_purified_processing(gallite_purified, is_gallite, j, gallium_ore, gold_ore_bob, iron_ore, copper_ore, silver_ore_bob, selenium)
end