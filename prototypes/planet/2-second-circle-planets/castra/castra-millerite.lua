if mods[castra_mods] then
    local graphics_millerite = "__TIMSABA__/graphics/icons/castra/millerite/"

    millerite_crushed = "millerite-crushed"
    millerite_chunks = "millerite-chunks"
    millerite_crystals = "millerite-crystals"
    millerite_purified = "millerite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = millerite_crushed,
            subgroup = is_millerite,
            icon = graphics_millerite .. millerite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = millerite_chunks,
            subgroup = is_millerite,
            icon = graphics_millerite .. millerite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = millerite_crystals,
            subgroup = is_millerite,
            icon = graphics_millerite .. millerite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = millerite_purified,
            subgroup = is_millerite,
            icon = graphics_millerite .. millerite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    ANGELS.functions.create_crushed(millerite_crushed, is_millerite, b, millerite_ore)
    ANGELS.functions.create_chunk(millerite_chunks, is_millerite, c, millerite_crushed, sulfur, water_yellow_waste)
    ANGELS.functions.create_crystal(millerite_crystals, is_millerite, d, millerite_chunks, sulfuric_acid_angels)
    ANGELS.functions.create_purified(millerite_purified, is_millerite, e, millerite_crystals)
    -- Millerite ore / Ni + Co + Fe + Cu + Cr + V
    ANGELS.functions.create_ore_processing(millerite_ore, is_millerite, f, sulfur)
    ANGELS.functions.create_crushed_processing(millerite_crushed, is_millerite, g, nickel_ore_bob, cobalt_ore_bob, sulfur)
    ANGELS.functions.create_chunk_processing(millerite_chunks, is_millerite, h, nickel_ore_bob, cobalt_ore_bob, iron_ore, copper_ore, sulfur)
    ANGELS.functions.create_crystal_processing(millerite_crystals, is_millerite, i, nickel_ore_bob, cobalt_ore_bob, iron_ore, copper_ore, chromium_ore_angels, sulfur)
    ANGELS.functions.create_purified_processing(millerite_purified, is_millerite, j, nickel_ore_bob, cobalt_ore_bob, iron_ore, copper_ore, chromium_ore_angels, vanadium_ore)
end