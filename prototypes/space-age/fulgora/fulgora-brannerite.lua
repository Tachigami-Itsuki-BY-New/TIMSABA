local graphics_brannerite = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite/"

brannerite_ore = "brannerite-ore"
brannerite_crushed = "brannerite-crushed"
brannerite_chunks = "brannerite-chunks"
brannerite_crystals = "brannerite-crystals"
brannerite_purified = "brannerite-purified"
TIMSABA.functions.create_items
({
    {
        name = brannerite_ore,
        subgroup = is_brannerite,
        icon = graphics_brannerite .. brannerite_ore .. ".png",
        pictures =
        {
            {filename = graphics_brannerite .. brannerite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_brannerite .. brannerite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_brannerite .. brannerite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        name = brannerite_crushed,
        subgroup = is_brannerite,
        icon = graphics_brannerite .. brannerite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = brannerite_chunks,
        subgroup = is_brannerite,
        icon = graphics_brannerite .. brannerite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = brannerite_crystals,
        subgroup = is_brannerite,
        icon = graphics_brannerite .. brannerite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        name = brannerite_purified,
        subgroup = is_brannerite,
        icon = graphics_brannerite .. brannerite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

ANGELS.functions.create_crushed(brannerite_crushed, is_brannerite, b, brannerite_ore)
ANGELS.functions.create_chunk(brannerite_chunks, is_brannerite, c, brannerite_crushed, calcium_silicate, water_greenyellow_waste)
ANGELS.functions.create_crystal(brannerite_crystals, is_brannerite, d, brannerite_chunks, hydrofluoric_acid_angels)
ANGELS.functions.create_purified(brannerite_purified, is_brannerite, e, brannerite_crystals)
-- Brannerite ore / Ho + Ca + U + Th + Fe + Ti
ANGELS.functions.create_ore_processing(brannerite_ore, is_brannerite, f, calcium_silicate)
ANGELS.functions.create_crushed_processing(brannerite_crushed, is_brannerite, g, holmium_ore, calcium, calcium_silicate)
ANGELS.functions.create_chunk_processing(brannerite_chunks, is_brannerite, h, holmium_ore, calcium, uranium_ore, thorium_ore_bob, calcium_silicate)
ANGELS.functions.create_crystal_processing(brannerite_crystals, is_brannerite, i, holmium_ore, calcium, uranium_ore, thorium_ore_bob, iron_ore, calcium_silicate)
ANGELS.functions.create_purified_processing(brannerite_purified, is_brannerite, j, holmium_ore, calcium, uranium_ore, thorium_ore_bob, iron_ore, titanium_ore_bob)