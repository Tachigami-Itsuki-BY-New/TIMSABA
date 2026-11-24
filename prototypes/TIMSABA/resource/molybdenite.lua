local graphics_molybdenite = "__TIMSABA__/graphics/icons/angels/resource/molybdenite-ore/"

molybdenite_ore = "molybdenite-ore"
molybdenite_crushed = "molybdenite-crushed"
molybdenite_chunks = "molybdenite-chunks"
molybdenite_crystals = "molybdenite-crystals"
molybdenite_purified = "molybdenite-purified"
TIMSABA.functions.create_items
({
    {
        name = molybdenite_ore,
        subgroup = is_molybdenite,
        icon = graphics_molybdenite .. molybdenite_ore .. ".png",
        pictures =
        {
            {filename = graphics_molybdenite .. molybdenite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_molybdenite .. molybdenite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_molybdenite .. molybdenite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        name = molybdenite_crushed,
        subgroup = is_molybdenite,
        icon = graphics_molybdenite .. molybdenite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = molybdenite_chunks,
        subgroup = is_molybdenite,
        icon = graphics_molybdenite .. molybdenite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = molybdenite_crystals,
        subgroup = is_molybdenite,
        icon = graphics_molybdenite .. molybdenite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        name = molybdenite_purified,
        subgroup = is_molybdenite,
        icon = graphics_molybdenite .. molybdenite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

-- FLUID


-- RECIPE
ANGELS.functions.create_crushed(molybdenite_crushed, is_molybdenite, b, molybdenite_ore)
ANGELS.functions.create_chunk(molybdenite_chunks, is_molybdenite, c, molybdenite_crushed, sulfur, water_red_waste)
ANGELS.functions.create_crystal(molybdenite_crystals, is_molybdenite, d, molybdenite_chunks, nitric_acid_angels)
ANGELS.functions.create_purified(molybdenite_purified, is_molybdenite, e, molybdenite_crystals)
-- Molybdenite ore / Mo + Re + Ag + Au + W + Se
ANGELS.functions.create_ore_processing(molybdenite_ore, is_molybdenite, f, sulfur)
ANGELS.functions.create_crushed_processing(molybdenite_crushed, is_molybdenite, g, molybdenum_ore, rhenium_ore, sulfur)
ANGELS.functions.create_chunk_processing(molybdenite_chunks, is_molybdenite, h, molybdenum_ore, rhenium_ore, silver_ore_bob, gold_ore_bob, sulfur)
ANGELS.functions.create_crystal_processing(molybdenite_crystals, is_molybdenite, i, molybdenum_ore, rhenium_ore, silver_ore_bob, gold_ore_bob, tungsten_ore_bob, sulfur)
ANGELS.functions.create_purified_processing(molybdenite_purified, is_molybdenite, j, molybdenum_ore, rhenium_ore, silver_ore_bob, gold_ore_bob, tungsten_ore_bob, selenium)

-- ORE
local molybdenite_ore_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
molybdenite_ore_particle.name = molybdenite_ore .. _particle
for _, picture in pairs(molybdenite_ore_particle.pictures) do
    picture.tint = {r = 110/256, g = 200/256, b = 175/256, a = 1.000}
end
data:extend({molybdenite_ore_particle})

data:extend
({
    TIMSABA.functions.create_resource(
        {
            name = molybdenite_ore,
            subgroup = is_ores,
            order = j,
            map_color = {r = 045/255, g = 110/255, b = 095/255, a = 1.000},
            mining_visualisation_tint = {r = 100/255, g = 210/255, b = 180/255, a = 1.000}
        },
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    )
})

TIMSABA.functions.create_autoplace_control(molybdenite_ore)

data_planet[planet_nauvis].map_gen_settings.autoplace_controls[molybdenite_ore] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[molybdenite_ore] = {}

data_resource[molybdenite_ore].location = planet_nauvis