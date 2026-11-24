local graphics_vulcanus = "__TIMSABA__/graphics/icons/space-age/vulcanus/wolframite-ore/"

wolframite_crushed = "wolframite-crushed"
wolframite_chunks = "wolframite-chunks"
wolframite_crystals = "wolframite-crystals"
wolframite_purified = "wolframite-purified"
TIMSABA.functions.create_items
({
    {
        name = wolframite_crushed,
        subgroup = is_wolframite,
        icon = graphics_vulcanus .. wolframite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = wolframite_chunks,
        subgroup = is_wolframite,
        icon = graphics_vulcanus .. wolframite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = wolframite_crystals,
        subgroup = is_wolframite,
        icon = graphics_vulcanus .. wolframite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        name = wolframite_purified,
        subgroup = is_wolframite,
        icon = graphics_vulcanus .. wolframite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

ANGELS.functions.create_crushed(wolframite_crushed, is_wolframite, b, wolframite_ore)
ANGELS.functions.create_chunk(wolframite_chunks, is_wolframite, c, wolframite_crushed, calcium_silicate, water_yellow_waste)
ANGELS.functions.create_crystal(wolframite_crystals, is_wolframite, d, wolframite_chunks, sulfuric_acid_angels)
ANGELS.functions.create_purified(wolframite_purified, is_wolframite, e, wolframite_crystals)
-- Wolframite ore / W + Nb + Mn + Mg + Fe + Re
ANGELS.functions.create_ore_processing(wolframite_ore, is_wolframite, f, calcium_silicate)
ANGELS.functions.create_crushed_processing(wolframite_crushed, is_wolframite, g, tungsten_ore_bob, niobium_ore, calcium_silicate)
ANGELS.functions.create_chunk_processing(wolframite_chunks, is_wolframite, h, tungsten_ore_bob, niobium_ore, manganese_ore_angels, magnesium_ore, calcium_silicate)
ANGELS.functions.create_crystal_processing(wolframite_crystals, is_wolframite, i, tungsten_ore_bob, niobium_ore, manganese_ore_angels, magnesium_ore, iron_ore, calcium_silicate)
ANGELS.functions.create_purified_processing(wolframite_purified, is_wolframite, j, tungsten_ore_bob, niobium_ore, manganese_ore_angels, magnesium_ore, iron_ore, rhenium_ore)