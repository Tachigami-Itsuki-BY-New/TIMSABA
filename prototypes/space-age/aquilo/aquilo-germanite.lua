local graphics_germanite = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/"

germanite_ore = "germanite-ore"
germanite_crushed = "germanite-crushed"
germanite_chunks = "germanite-chunks"
germanite_crystals = "germanite-crystals"
germanite_purified = "germanite-purified"
TIMSABA.functions.create_items
({
    {
        localised_description = {"item-description.germanite-ore"},
        name = germanite_ore,
        subgroup = is_germanite,
        icon = graphics_germanite .. germanite_ore .. ".png",
        pictures =
        {
            {filename = graphics_germanite .. germanite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_germanite .. germanite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_germanite .. germanite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        localised_description = {"item-description.germanite-crushed"},
        name = germanite_crushed,
        subgroup = is_germanite,
        icon = graphics_germanite .. germanite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        localised_description = {"item-description.germanite-chunks"},
        name = germanite_chunks,
        subgroup = is_germanite,
        icon = graphics_germanite .. germanite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        localised_description = {"item-description.germanite-crystals"},
        name = germanite_crystals,
        subgroup = is_germanite,
        icon = graphics_germanite .. germanite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        localised_description = {"item-description.germanite-purified"},
        name = germanite_purified,
        subgroup = is_germanite,
        icon = graphics_germanite .. germanite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

ANGELS.functions.create_crushed(germanite_crushed, is_germanite, b, germanite_ore)
ANGELS.functions.create_chunk(germanite_chunks, is_germanite, c, germanite_crushed, sulfur, water_yellow_waste)
ANGELS.functions.create_crystal(germanite_crystals, is_germanite, d, germanite_chunks, sulfuric_acid_angels)
ANGELS.functions.create_purified(germanite_purified, is_germanite, e, germanite_crystals)
-- Germanite Ore / Ge + Ga + Fe + Cu + V + As
ANGELS.functions.create_ore_processing(germanite_ore, is_germanite, f, sulfur)
ANGELS.functions.create_crushed_processing(germanite_crushed, is_germanite, g, germanium_ore, gallium_ore, sulfur)
ANGELS.functions.create_chunk_processing(germanite_chunks, is_germanite, h, germanium_ore, gallium_ore, iron_ore, copper_ore, sulfur)
ANGELS.functions.create_crystal_processing(germanite_crystals, is_germanite, i, germanium_ore, gallium_ore, iron_ore, copper_ore, vanadium_ore, sulfur)
ANGELS.functions.create_purified_processing(germanite_purified, is_germanite, j, germanium_ore, gallium_ore, iron_ore, copper_ore, vanadium_ore, arsenic)