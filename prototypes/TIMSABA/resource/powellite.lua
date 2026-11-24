local graphics_powellite = "__TIMSABA__/graphics/icons/angels/resource/powellite-ore/"

powellite_ore = "powellite-ore"
powellite_crushed = "powellite-crushed"
powellite_chunks = "powellite-chunks"
powellite_crystals = "powellite-crystals"
powellite_purified = "powellite-purified"
TIMSABA.functions.create_items
({
    {
        name = powellite_ore,
        subgroup = is_powellite,
        icon = graphics_powellite .. powellite_ore .. ".png",
        pictures =
        {
            {filename = graphics_powellite .. powellite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_powellite .. powellite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_powellite .. powellite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        name = powellite_crushed,
        subgroup = is_powellite,
        icon = graphics_powellite .. powellite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = powellite_chunks,
        subgroup = is_powellite,
        icon = graphics_powellite .. powellite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = powellite_crystals,
        subgroup = is_powellite,
        icon = graphics_powellite .. powellite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        name = powellite_purified,
        subgroup = is_powellite,
        icon = graphics_powellite .. powellite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

-- FLUID

-- RECIPE
ANGELS.functions.create_crushed(powellite_crushed, is_powellite, b, powellite_ore)
ANGELS.functions.create_chunk(powellite_chunks, is_powellite, c, powellite_crushed, calcium_silicate, water_green_waste)
ANGELS.functions.create_crystal(powellite_crystals, is_powellite, d, powellite_chunks, hydrochloric_acid_angels)
ANGELS.functions.create_purified(powellite_purified, is_powellite, e, powellite_crystals)
-- Powellite ore / Ca + Mo + Cu + Pb + W + Ho
ANGELS.functions.create_ore_processing(powellite_ore, is_powellite, f, calcium_silicate)
ANGELS.functions.create_crushed_processing(powellite_crushed, is_powellite, g, calcium, molybdenum_ore, calcium_silicate)
ANGELS.functions.create_chunk_processing(powellite_chunks, is_powellite, h, calcium, molybdenum_ore, copper_ore, lead_ore_bob, calcium_silicate)
ANGELS.functions.create_crystal_processing(powellite_crystals, is_powellite, i, calcium, molybdenum_ore, copper_ore, lead_ore_bob, tungsten_ore_bob, calcium_silicate)
ANGELS.functions.create_purified_processing(powellite_purified, is_powellite, j, calcium, molybdenum_ore, copper_ore, lead_ore_bob, tungsten_ore_bob, holmium_ore)

-- ORE
local powellite_ore_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
powellite_ore_particle.name = powellite_ore .. _particle
for _, picture in pairs(powellite_ore_particle.pictures) do
    picture.tint = {r = 185/256, g = 115/256, b = 035/256, a = 1.000}
end
data:extend({powellite_ore_particle})

data:extend
({
    TIMSABA.functions.create_resource(
        {
            name = powellite_ore,
            subgroup = is_ores,
            order = i,
            map_color = {r = 140/255, g = 080/255, b = 020/255, a = 1.000},
            mining_visualisation_tint = {r = 200/255, g = 130/255, b = 045/255, a = 1.000}
        },
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    )
})

TIMSABA.functions.create_autoplace_control(powellite_ore)

data_planet[planet_nauvis].map_gen_settings.autoplace_controls[powellite_ore] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[powellite_ore] = {}

data_resource[powellite_ore].location = planet_nauvis