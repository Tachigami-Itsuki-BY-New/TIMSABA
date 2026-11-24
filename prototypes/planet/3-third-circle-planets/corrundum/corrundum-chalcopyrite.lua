if mods[corrundum_mods] then
    local graphics_chalcopyrite = "__TIMSABA__/graphics/icons/corrundum/chalcopyrite-ore/"

    chalcopyrite_crushed = "chalcopyrite-crushed"
    chalcopyrite_chunks = "chalcopyrite-chunks"
    chalcopyrite_crystals = "chalcopyrite-crystals"
    chalcopyrite_purified = "chalcopyrite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = chalcopyrite_crushed,
            subgroup = is_chalcopyrite,
            icon = graphics_chalcopyrite .. chalcopyrite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = chalcopyrite_chunks,
            subgroup = is_chalcopyrite,
            icon = graphics_chalcopyrite .. chalcopyrite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = chalcopyrite_crystals,
            subgroup = is_chalcopyrite,
            icon = graphics_chalcopyrite .. chalcopyrite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = chalcopyrite_purified,
            subgroup = is_chalcopyrite,
            icon = graphics_chalcopyrite .. chalcopyrite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    ANGELS.functions.create_crushed(chalcopyrite_crushed, is_chalcopyrite, b, chalcopyrite_ore)
    ANGELS.functions.create_chunk(chalcopyrite_chunks, is_chalcopyrite, c, chalcopyrite_crushed, sulfur, water_yellow_waste)
    ANGELS.functions.create_crystal(chalcopyrite_crystals, is_chalcopyrite, d, chalcopyrite_chunks, sulfuric_acid_angels)
    ANGELS.functions.create_purified(chalcopyrite_purified, is_chalcopyrite, e, chalcopyrite_crystals)
    -- Chalcopyrite ore / Fe + Cu + Mn + Ag + Au + Se
    ANGELS.functions.create_ore_processing(chalcopyrite_ore, is_chalcopyrite, f, sulfur)
    ANGELS.functions.create_crushed_processing(chalcopyrite_crushed, is_chalcopyrite, g, iron_ore, copper_ore, sulfur)
    ANGELS.functions.create_chunk_processing(chalcopyrite_chunks, is_chalcopyrite, h, iron_ore, copper_ore, silver_ore_bob, gold_ore_bob, sulfur)
    ANGELS.functions.create_crystal_processing(chalcopyrite_crystals, is_chalcopyrite, i, iron_ore, copper_ore, silver_ore_bob, gold_ore_bob, platinum_ore_angels, sulfur)
    ANGELS.functions.create_purified_processing(chalcopyrite_purified, is_chalcopyrite, j, iron_ore, copper_ore, silver_ore_bob, gold_ore_bob, platinum_ore_angels, selenium)
end