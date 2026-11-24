local graphics_franckeite = "__TIMSABA__/graphics/icons/angels/resource/franckeite-ore/"
local graphics_crushed = "__angelsrefininggraphics__/graphics/icons/crushed/"
local tint = {r = 101 / 255, g = 152 / 255, b = 020 / 255}

ore_franckeite = "franckeite-ore"
crushed_franckeite = "franckeite-crushed"
chunk_franckeite = "franckeite-chunk"
crystal_franckeite = "franckeite-crystal"
purified_franckeite = "franckeite-purified"
TIMSABA.functions.create_items
({
    {
        name = ore_franckeite,
        subgroup = is_ores,
        icon = graphics_franckeite .. ore_franckeite .. ".png",
        pictures =
        {
            {filename = graphics_franckeite .. ore_franckeite .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_franckeite .. ore_franckeite .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_franckeite .. ore_franckeite .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = h
    },
    {
        name = crushed_franckeite,
        subgroup = is_ore_processing_a,
        icon = graphics_franckeite .. crushed_franckeite .. ".png",
        icon_size = 32,
        pictures =
        {
            {size = 64, filename = graphics_crushed .. "crushed-1.png", scale = 0.5, tint = tint},
            {size = 64, filename = graphics_crushed .. "crushed-2.png", scale = 0.5, tint = tint},
            {size = 64, filename = graphics_crushed .. "crushed-3.png", scale = 0.5, tint = tint},
            {size = 64, filename = graphics_crushed .. "crushed-4.png", scale = 0.5, tint = tint},
            {size = 64, filename = graphics_crushed .. "crushed-5.png", scale = 0.5, tint = tint},
            {size = 64, filename = graphics_crushed .. "crushed-6.png", scale = 0.5, tint = tint},
            {size = 64, filename = graphics_crushed .. "crushed-7.png", scale = 0.5, tint = tint},
            {size = 64, filename = graphics_crushed .. "crushed-8.png", scale = 0.5, tint = tint}
        },
        order = h
    },
    {
        name = chunk_franckeite,
        subgroup = is_ore_processing_b,
        icon = graphics_franckeite .. chunk_franckeite .. ".png",
        icon_size = 32,
        order = h
    },
    {
        name = crystal_franckeite,
        subgroup = is_ore_processing_c,
        icon = graphics_franckeite .. crystal_franckeite .. ".png",
        icon_size = 32,
        order = h
    },
    {
        name = purified_franckeite,
        subgroup = is_ore_processing_d,
        icon = graphics_franckeite .. purified_franckeite .. ".png",
        icon_size = 32,
        order = h
    }
})

-- FLUID

-- RECIPE
ANGELS.functions.create_crushed(crushed_franckeite, is_ore_processing_a, h, ore_franckeite)
ANGELS.functions.create_chunk(chunk_franckeite, is_ore_processing_b, h, crushed_franckeite, calcium_silicate, water_green_waste)
ANGELS.functions.create_crystal(crystal_franckeite, is_ore_processing_c, h, chunk_franckeite, hydrochloric_acid_angels)
ANGELS.functions.create_purified(purified_franckeite, is_ore_processing_d, h, crystal_franckeite)
-- Franckeite ore / Sn + Pb + Al + Ag + Au + Pt
ANGELS.functions.create_crushed_processing(crushed_franckeite, is_ore_sorting_T1, h, tin_ore_bob, lead_ore_bob, slag_angels)
ANGELS.functions.create_chunk_processing(chunk_franckeite, is_ore_sorting_T2, h, tin_ore_bob, lead_ore_bob, aluminium_ore_bob, silver_ore_bob, slag_angels)
ANGELS.functions.create_crystal_processing(crystal_franckeite, is_ore_sorting_T3, h, tin_ore_bob, lead_ore_bob, aluminium_ore_bob, silver_ore_bob, gold_ore_bob, slag_angels)
ANGELS.functions.create_purified_processing(purified_franckeite, is_ore_sorting_T4, h, tin_ore_bob, lead_ore_bob, aluminium_ore_bob, silver_ore_bob, gold_ore_bob, platinum_ore_angels)

-- ORE
local ore_franckeite_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
ore_franckeite_particle.name = ore_franckeite .. _particle
for _, picture in pairs(ore_franckeite_particle.pictures) do
    picture.tint = {r = 115/256, g = 175/256, b = 035/256, a = 1.000}
end
data:extend({ore_franckeite_particle})

data:extend
({
    TIMSABA.functions.create_resource(
        {
            name = ore_franckeite,
            subgroup = is_ores,
            order = h,
            map_color = {r = 080/255, g = 135/255, b = 020/255, a = 1.000},
            mining_visualisation_tint = {r = 145/255, g = 210/255, b = 045/255, a = 1.000}
        },
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    )
})

TIMSABA.functions.create_autoplace_control(ore_franckeite)

data_planet[planet_nauvis].map_gen_settings.autoplace_controls[ore_franckeite] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[ore_franckeite] = {}

data_resource[ore_franckeite].location = planet_nauvis