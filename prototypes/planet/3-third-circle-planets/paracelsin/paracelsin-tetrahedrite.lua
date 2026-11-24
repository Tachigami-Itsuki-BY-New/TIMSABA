if mods[paracelsin_mods] then
    local graphics_tetrahedrite = "__TIMSABA__/graphics/icons/paracelsin/tetrahedrite/"

    tetrahedrite_crushed = "tetrahedrite-crushed"
    tetrahedrite_chunks = "tetrahedrite-chunks"
    tetrahedrite_crystals = "tetrahedrite-crystals"
    tetrahedrite_purified = "tetrahedrite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = tetrahedrite_crushed,
            subgroup = is_tetrahedrite,
            icon = graphics_tetrahedrite .. tetrahedrite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = tetrahedrite_chunks,
            subgroup = is_tetrahedrite,
            icon = graphics_tetrahedrite .. tetrahedrite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = tetrahedrite_crystals,
            subgroup = is_tetrahedrite,
            icon = graphics_tetrahedrite .. tetrahedrite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = tetrahedrite_purified,
            subgroup = is_tetrahedrite,
            icon = graphics_tetrahedrite .. tetrahedrite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    ANGELS.functions.create_crushed(tetrahedrite_crushed, is_tetrahedrite, b, tetrahedrite_ore)
    ANGELS.functions.create_chunk(tetrahedrite_chunks, is_tetrahedrite, c, tetrahedrite_crushed, sulfur, water_red_waste)
    ANGELS.functions.create_crystal(tetrahedrite_crystals, is_tetrahedrite, d, tetrahedrite_chunks, nitric_acid_angels)
    ANGELS.functions.create_purified(tetrahedrite_purified, is_tetrahedrite, e, tetrahedrite_crystals)
    -- Tetrahedrite ore / Cu + Sb + Ag + Au + Fe + As
    ANGELS.functions.create_ore_processing(tetrahedrite_ore, is_tetrahedrite, f, sulfur)
    ANGELS.functions.create_crushed_processing(tetrahedrite_crushed, is_tetrahedrite, g, copper_ore, antimony_ore, sulfur)
    ANGELS.functions.create_chunk_processing(tetrahedrite_chunks, is_tetrahedrite, h, copper_ore, antimony_ore, silver_ore_bob, gold_ore_bob, sulfur)
    ANGELS.functions.create_crystal_processing(tetrahedrite_crystals, is_tetrahedrite, i, copper_ore, antimony_ore, silver_ore_bob, gold_ore_bob, iron_ore, sulfur)
    ANGELS.functions.create_purified_processing(tetrahedrite_purified, is_tetrahedrite, j, copper_ore, antimony_ore, silver_ore_bob, gold_ore_bob, iron_ore, arsenic)
end