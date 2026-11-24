if mods[moshine_mods] then
    local graphics_monazite = "__TIMSABA__/graphics/icons/moshine/monazite/"

    monazite_ore = "monazite-ore"
    monazite_crushed = "monazite-crushed"
    monazite_chunks = "monazite-chunks"
    monazite_crystals = "monazite-crystals"
    monazite_purified = "monazite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = monazite_ore,
            subgroup = is_monazite,
            icon = graphics_monazite .. monazite_ore .. ".png",
            pictures =
            {
                {filename = graphics_monazite .. monazite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_monazite .. monazite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_monazite .. monazite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            name = monazite_crushed,
            subgroup = is_monazite,
            icon = graphics_monazite .. monazite_crushed .. ".png",
            icon_size = 32,
            order = b
        },
        {
            name = monazite_chunks,
            subgroup = is_monazite,
            icon = graphics_monazite .. monazite_chunks .. ".png",
            icon_size = 32,
            order = c
        },
        {
            name = monazite_crystals,
            subgroup = is_monazite,
            icon = graphics_monazite .. monazite_crystals .. ".png",
            icon_size = 32,
            order = d
        },
        {
            name = monazite_purified,
            subgroup = is_monazite,
            icon = graphics_monazite .. monazite_purified .. ".png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    ANGELS.functions.create_crushed(monazite_crushed, is_monazite, b, monazite_ore)
    ANGELS.functions.create_chunk(monazite_chunks, is_monazite, c, monazite_crushed, calcium_phosphate, water_orange_waste)
    ANGELS.functions.create_crystal(monazite_crystals, is_monazite, d, monazite_chunks, orthophosphoric_acid)
    ANGELS.functions.create_purified(monazite_purified, is_monazite, e, monazite_crystals)
    -- Monazite ore / Nd + Ho + U + Th + Ce + Pm
    ANGELS.functions.create_ore_processing(monazite_ore, is_monazite, f, calcium_phosphate)
    ANGELS.functions.create_crushed_processing(monazite_crushed, is_monazite, g, neodymium_ore, holmium_ore, calcium_phosphate)
    ANGELS.functions.create_chunk_processing(monazite_chunks, is_monazite, h, neodymium_ore, holmium_ore, uranium_ore, thorium_ore_bob, calcium_phosphate)
    ANGELS.functions.create_crystal_processing(monazite_crystals, is_monazite, i, neodymium_ore, holmium_ore, uranium_ore, thorium_ore_bob, cerium_ore, calcium_phosphate)
    ANGELS.functions.create_purified_processing(monazite_purified, is_monazite, j, neodymium_ore, holmium_ore, uranium_ore, thorium_ore_bob, cerium_ore, promethium_ore)
end