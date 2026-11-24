if mods[corrundum_mods] then
    local graphics_sperrylite = "__TIMSABA__/graphics/icons/corrundum/sperrylite-ore/"

    sperrylite_crushed = "sperrylite-crushed"
    sperrylite_chunks = "sperrylite-chunks"
    sperrylite_crystals = "sperrylite-crystals"
    sperrylite_purified = "sperrylite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = sperrylite_crushed,
            subgroup = is_sperrylite,
            icon = graphics_sperrylite .. sperrylite_crushed .. ".png",
            order = b
        },
        {
            name = sperrylite_chunks,
            subgroup = is_sperrylite,
            icon = graphics_sperrylite .. sperrylite_chunks .. ".png",
            order = c
        },
        {
            name = sperrylite_crystals,
            subgroup = is_sperrylite,
            icon = graphics_sperrylite .. sperrylite_crystals .. ".png",
            order = d
        },
        {
            name = sperrylite_purified,
            subgroup = is_sperrylite,
            icon = graphics_sperrylite .. sperrylite_purified .. ".png",
            order = e
        }
    })

    -- RECIPE
    ANGELS.functions.create_crushed(sperrylite_crushed, is_sperrylite, b, sperrylite_ore)
    ANGELS.functions.create_chunk(sperrylite_chunks, is_sperrylite, c, sperrylite_crushed, calcium_silicate, water_greenyellow_waste)
    ANGELS.functions.create_crystal(sperrylite_crystals, is_sperrylite, d, sperrylite_chunks, hydrofluoric_acid_angels)
    ANGELS.functions.create_purified(sperrylite_purified, is_sperrylite, e, sperrylite_crystals)
    -- Sperrylite ore / Pt + As + Sn + Cu + Fe + Ir
    ANGELS.functions.create_ore_processing(sperrylite_ore, is_sperrylite, f, calcium_silicate)
    ANGELS.functions.create_crushed_processing(sperrylite_crushed, is_sperrylite, g, platinum_ore_angels, arsenic, calcium_silicate)
    ANGELS.functions.create_chunk_processing(sperrylite_chunks, is_sperrylite, h, platinum_ore_angels, arsenic, tin_ore_bob, copper_ore, calcium_silicate)
    ANGELS.functions.create_crystal_processing(sperrylite_crystals, is_sperrylite, i, platinum_ore_angels, arsenic, tin_ore_bob, copper_ore, iron_ore, calcium_silicate)
    ANGELS.functions.create_purified_processing(sperrylite_purified, is_sperrylite, j, platinum_ore_angels, arsenic, tin_ore_bob, copper_ore, iron_ore, iridium_ore)
end