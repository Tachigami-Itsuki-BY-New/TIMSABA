if mods[shchierbin_mods] then
    local graphics_vanadinite = "__TIMSABA__/graphics/icons/shchierbin/vanadinite-ore/"

    vanadinite_crushed = "vanadinite-crushed"
    vanadinite_chunks = "vanadinite-chunks"
    vanadinite_crystals = "vanadinite-crystals"
    vanadinite_purified = "vanadinite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = vanadinite_crushed,
            subgroup = is_vanadinite,
            icon = graphics_vanadinite .. vanadinite_crushed .. ".png",
            order = b
        },
        {
            name = vanadinite_chunks,
            subgroup = is_vanadinite,
            icon = graphics_vanadinite .. vanadinite_chunks .. ".png",
            order = c
        },
        {
            name = vanadinite_crystals,
            subgroup = is_vanadinite,
            icon = graphics_vanadinite .. vanadinite_crystals .. ".png",
            order = d
        },
        {
            name = vanadinite_purified,
            subgroup = is_vanadinite,
            icon = graphics_vanadinite .. vanadinite_purified .. ".png",
            order = e
        }
    })

    -- RECIPE
    ANGELS.functions.create_crushed(vanadinite_crushed, is_vanadinite, b, vanadinite_ore)
    ANGELS.functions.create_chunk(vanadinite_chunks, is_vanadinite, c, vanadinite_crushed, salt_angels, water_green_waste)
    ANGELS.functions.create_crystal(vanadinite_crystals, is_vanadinite, d, vanadinite_chunks, hydrochloric_acid_angels)
    ANGELS.functions.create_purified(vanadinite_purified, is_vanadinite, e, vanadinite_crystals)
    -- Vanadinite ore / V + Ca + Pb + Cr + Mo + As
    ANGELS.functions.create_ore_processing(vanadinite_ore, is_vanadinite, f, salt_angels)
    ANGELS.functions.create_crushed_processing(vanadinite_crushed, is_vanadinite, g, vanadium_ore, calcium, salt_angels)
    ANGELS.functions.create_chunk_processing(vanadinite_chunks, is_vanadinite, h, vanadium_ore, calcium, lead_ore_bob, chromium_ore_angels, salt_angels)
    ANGELS.functions.create_crystal_processing(vanadinite_crystals, is_vanadinite, i, vanadium_ore, calcium, lead_ore_bob, chromium_ore_angels, molybdenum_ore, salt_angels)
    ANGELS.functions.create_purified_processing(vanadinite_purified, is_vanadinite, j, vanadium_ore, calcium, lead_ore_bob, chromium_ore_angels, molybdenum_ore, arsenic)
end