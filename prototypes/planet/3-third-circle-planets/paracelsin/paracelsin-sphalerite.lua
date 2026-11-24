if mods[paracelsin_mods] then
    local graphics_sphalerite = "__TIMSABA__/graphics/icons/paracelsin/sphalerite/"

    sphalerite_crushed = "sphalerite-crushed"
    sphalerite_chunks = "sphalerite-chunks"
    sphalerite_crystals = "sphalerite-crystals"
    sphalerite_purified = "sphalerite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = sphalerite_crushed,
            subgroup = is_sphalerite,
            icon = graphics_sphalerite .. sphalerite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = sphalerite_chunks,
            subgroup = is_sphalerite,
            icon = graphics_sphalerite .. sphalerite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = sphalerite_crystals,
            subgroup = is_sphalerite,
            icon = graphics_sphalerite .. sphalerite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = sphalerite_purified,
            subgroup = is_sphalerite,
            icon = graphics_sphalerite .. sphalerite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    ANGELS.functions.create_crushed(sphalerite_crushed, is_sphalerite, b, sphalerite_ore)
    ANGELS.functions.create_chunk(sphalerite_chunks, is_sphalerite, c, sphalerite_crushed, sulfur, water_red_waste)
    ANGELS.functions.create_crystal(sphalerite_crystals, is_sphalerite, d, sphalerite_chunks, nitric_acid_angels)
    ANGELS.functions.create_purified(sphalerite_purified, is_sphalerite, e, sphalerite_crystals)
    -- Sphalerite ore / Zn + Ge + Fe + Mn + Co + Sb
    ANGELS.functions.create_ore_processing(sphalerite_ore, is_sphalerite, f, sulfur)
    ANGELS.functions.create_crushed_processing(sphalerite_crushed, is_sphalerite, g, zinc_ore_bob, germanium_ore, sulfur)
    ANGELS.functions.create_chunk_processing(sphalerite_chunks, is_sphalerite, h, zinc_ore_bob, germanium_ore, iron_ore, manganese_ore_angels, sulfur)
    ANGELS.functions.create_crystal_processing(sphalerite_crystals, is_sphalerite, i, zinc_ore_bob, germanium_ore, iron_ore, manganese_ore_angels, cobalt_ore_bob, sulfur)
    ANGELS.functions.create_purified_processing(sphalerite_purified, is_sphalerite, j, zinc_ore_bob, germanium_ore, iron_ore, manganese_ore_angels, cobalt_ore_bob, antimony_ore)
end