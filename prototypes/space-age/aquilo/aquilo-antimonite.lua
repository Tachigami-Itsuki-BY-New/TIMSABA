local graphics_antimonite = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/"

antimonite_ore = "antimonite-ore"
antimonite_crushed = "antimonite-crushed"
antimonite_chunks = "antimonite-chunks"
antimonite_crystals = "antimonite-crystals"
antimonite_purified = "antimonite-purified"
TIMSABA.functions.create_items
({
    {
        name = antimonite_ore,
        subgroup = is_antimonite,
        icon = graphics_antimonite .. antimonite_ore .. ".png",
        pictures =
        {
            {filename = graphics_antimonite .. antimonite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_antimonite .. antimonite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_antimonite .. antimonite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        name = antimonite_crushed,
        subgroup = is_antimonite,
        icon = graphics_antimonite .. antimonite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = antimonite_chunks,
        subgroup = is_antimonite,
        icon = graphics_antimonite .. antimonite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = antimonite_crystals,
        subgroup = is_antimonite,
        icon = graphics_antimonite .. antimonite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        name = antimonite_purified,
        subgroup = is_antimonite,
        icon = graphics_antimonite .. antimonite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

ANGELS.functions.create_crushed(antimonite_crushed, is_antimonite, b, antimonite_ore)
ANGELS.functions.create_chunk(antimonite_chunks, is_antimonite, c, antimonite_crushed, sulfur, water_green_waste)
ANGELS.functions.create_crystal(antimonite_crystals, is_antimonite, d, antimonite_chunks, hydrochloric_acid_angels)
ANGELS.functions.create_purified(antimonite_purified, is_antimonite, e, antimonite_crystals)
-- Antimonite ore / Sb + As + Fe + Cu + Pb + Ag
ANGELS.functions.create_ore_processing(antimonite_ore, is_antimonite, f, sulfur)
ANGELS.functions.create_crushed_processing(antimonite_crushed, is_antimonite, g, antimony_ore, arsenic, sulfur)
ANGELS.functions.create_chunk_processing(antimonite_chunks, is_antimonite, h, antimony_ore, arsenic, iron_ore, copper_ore, sulfur)
ANGELS.functions.create_crystal_processing(antimonite_crystals, is_antimonite, i, antimony_ore, arsenic, iron_ore, copper_ore, lead_ore_bob, sulfur)
ANGELS.functions.create_purified_processing(antimonite_purified, is_antimonite, j, antimony_ore, arsenic, iron_ore, copper_ore, lead_ore_bob, silver_ore_bob)