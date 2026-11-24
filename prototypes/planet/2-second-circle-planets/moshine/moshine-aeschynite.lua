if mods[moshine_mods] then
    local graphics_aeschynite = "__TIMSABA__/graphics/icons/moshine/aeschynite/"

    aeschynite_ore = "aeschynite-ore"
    aeschynite_crushed = "aeschynite-crushed"
    aeschynite_chunks = "aeschynite-chunks"
    aeschynite_crystals = "aeschynite-crystals"
    aeschynite_purified = "aeschynite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = aeschynite_ore,
            subgroup = is_aeschynite,
            icon = graphics_aeschynite .. aeschynite_ore .. ".png",
            pictures =
            {
                {filename = graphics_aeschynite .. aeschynite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_aeschynite .. aeschynite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_aeschynite .. aeschynite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            name = aeschynite_crushed,
            subgroup = is_aeschynite,
            icon = graphics_aeschynite .. aeschynite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = aeschynite_chunks,
            subgroup = is_aeschynite,
            icon = graphics_aeschynite .. aeschynite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = aeschynite_crystals,
            subgroup = is_aeschynite,
            icon = graphics_aeschynite .. aeschynite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = aeschynite_purified,
            subgroup = is_aeschynite,
            icon = graphics_aeschynite .. aeschynite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- FLUID

    -- RECIPE
    ANGELS.functions.create_crushed(aeschynite_crushed, is_aeschynite, b, aeschynite_ore)
    ANGELS.functions.create_chunk(aeschynite_chunks, is_aeschynite, c, aeschynite_crushed, calcium_silicate, water_green_waste)
    ANGELS.functions.create_crystal(aeschynite_crystals, is_aeschynite, d, aeschynite_chunks, hydrochloric_acid_angels)
    ANGELS.functions.create_purified(aeschynite_purified, is_aeschynite, e, aeschynite_crystals)
    -- Aeschynite ore / Nd + Th + Fe + Sn + Ti + Nb
    ANGELS.functions.create_ore_processing(aeschynite_ore, is_aeschynite, f, calcium_silicate)
    ANGELS.functions.create_crushed_processing(aeschynite_crushed, is_aeschynite, g, neodymium_ore, thorium_ore_bob, calcium_silicate)
    ANGELS.functions.create_chunk_processing(aeschynite_chunks, is_aeschynite, h, neodymium_ore, thorium_ore_bob, iron_ore, tin_ore_bob, calcium_silicate)
    ANGELS.functions.create_crystal_processing(aeschynite_crystals, is_aeschynite, i, neodymium_ore, thorium_ore_bob, iron_ore, tin_ore_bob, titanium_ore_bob, calcium_silicate)
    ANGELS.functions.create_purified_processing(aeschynite_purified, is_aeschynite, j, neodymium_ore, thorium_ore_bob, iron_ore, tin_ore_bob, titanium_ore_bob, niobium_ore)
end