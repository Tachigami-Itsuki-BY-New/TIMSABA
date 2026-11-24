if mods[lignumis_mods] then
    local graphics_wodginite = "__TIMSABA__/graphics/icons/lignumis/wodginite/"

    wodginite_patch = "gold-patch"

    wodginite_ore = "wodginite-ore"
    wodginite_crushed = "wodginite-crushed"
    wodginite_chunks = "wodginite-chunks"
    wodginite_crystals = "wodginite-crystals"
    wodginite_purified = "wodginite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = wodginite_ore,
            subgroup = is_wodginite,
            icon = graphics_wodginite .. wodginite_ore .. ".png",
            pictures =
            {
                {filename = graphics_wodginite .. wodginite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_wodginite .. wodginite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_wodginite .. wodginite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            name = wodginite_crushed,
            subgroup = is_wodginite,
            icon = graphics_wodginite .. wodginite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = wodginite_chunks,
            subgroup = is_wodginite,
            icon = graphics_wodginite .. wodginite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = wodginite_crystals,
            subgroup = is_wodginite,
            icon = graphics_wodginite .. wodginite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = wodginite_purified,
            subgroup = is_wodginite,
            icon = graphics_wodginite .. wodginite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- FLUID


    -- RECIPE
    ANGELS.functions.create_crushed(wodginite_crushed, is_wodginite, b, wodginite_ore)
    ANGELS.functions.create_chunk(wodginite_chunks, is_wodginite, c, wodginite_crushed, calcium_silicate, water_greenyellow_waste)
    ANGELS.functions.create_crystal(wodginite_crystals, is_wodginite, d, wodginite_chunks, hydrofluoric_acid_angels)
    ANGELS.functions.create_purified(wodginite_purified, is_wodginite, e, wodginite_crystals)
    -- Wodginite ore / Ta + Sn + Fe + Mn + Li + Nb
    ANGELS.functions.create_ore_processing(wodginite_ore, is_wodginite, f, calcium_silicate)
    ANGELS.functions.create_crushed_processing(wodginite_crushed, is_wodginite, g, tantalum_ore, tin_ore_bob, calcium_silicate)
    ANGELS.functions.create_chunk_processing(wodginite_chunks, is_wodginite, h, tantalum_ore, tin_ore_bob, iron_ore, manganese_ore_angels, calcium_silicate)
    ANGELS.functions.create_crystal_processing(wodginite_crystals, is_wodginite, i, tantalum_ore, tin_ore_bob, iron_ore, manganese_ore_angels, lithium_bob, calcium_silicate)
    ANGELS.functions.create_purified_processing(wodginite_purified, is_wodginite, j, tantalum_ore, tin_ore_bob, iron_ore, manganese_ore_angels, lithium_bob, niobium_ore)
end