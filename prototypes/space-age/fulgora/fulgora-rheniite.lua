local graphics_rheniite = "__TIMSABA__/graphics/icons/space-age/fulgora/rheniite/"

rheniite_ore = "rheniite-ore"
rheniite_crushed = "rheniite-crushed"
rheniite_chunks = "rheniite-chunks"
rheniite_crystals = "rheniite-crystals"
rheniite_purified = "rheniite-purified"
TIMSABA.functions.create_items
({
    {
        name = rheniite_ore,
        subgroup = is_rheniite,
        icon = graphics_rheniite .. rheniite_ore .. ".png",
        pictures =
        {
            {filename = graphics_rheniite .. rheniite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_rheniite .. rheniite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_rheniite .. rheniite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        name = rheniite_crushed,
        subgroup = is_rheniite,
        icon = graphics_rheniite .. rheniite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = rheniite_chunks,
        subgroup = is_rheniite,
        icon = graphics_rheniite .. rheniite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = rheniite_crystals,
        subgroup = is_rheniite,
        icon = graphics_rheniite .. rheniite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        name = rheniite_purified,
        subgroup = is_rheniite,
        icon = graphics_rheniite .. rheniite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

-- FLUID


-- RECIPE
ANGELS.functions.create_crushed(rheniite_crushed, is_rheniite, b, rheniite_ore)
ANGELS.functions.create_chunk(rheniite_chunks, is_rheniite, c, rheniite_crushed, sulfur, water_red_waste)
ANGELS.functions.create_crystal(rheniite_crystals, is_rheniite, d, rheniite_chunks, nitric_acid_angels)
ANGELS.functions.create_purified(rheniite_purified, is_rheniite, e, rheniite_crystals)
-- Rheniite ore / Re + Nb + Cr + W + Mo + V
ANGELS.functions.create_ore_processing(rheniite_ore, is_rheniite, f, sulfur)
ANGELS.functions.create_crushed_processing(rheniite_crushed, is_rheniite, g, rhenium_ore, niobium_ore, sulfur)
ANGELS.functions.create_chunk_processing(rheniite_chunks, is_rheniite, h, rhenium_ore, niobium_ore, chromium_ore_angels, tungsten_ore_bob, sulfur)
ANGELS.functions.create_crystal_processing(rheniite_crystals, is_rheniite, i, rhenium_ore, niobium_ore, chromium_ore_angels, tungsten_ore_bob, molybdenum_ore, sulfur)
ANGELS.functions.create_purified_processing(rheniite_purified, is_rheniite, j, rhenium_ore, niobium_ore, chromium_ore_angels, tungsten_ore_bob, molybdenum_ore, vanadium_ore)