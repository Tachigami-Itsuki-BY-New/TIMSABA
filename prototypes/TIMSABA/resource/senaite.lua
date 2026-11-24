local graphics_senaite = "__TIMSABA__/graphics/icons/angels/resource/senaite-ore/"
local graphics_crushed = "__angelsrefininggraphics__/graphics/icons/crushed/"
local tint = {r = 206 / 255, g = 095 / 255, b = 000 / 255}

ore_senaite = "senaite-ore"
crushed_senaite = "senaite-crushed"
chunk_senaite = "senaite-chunk"
crystal_senaite = "senaite-crystal"
purified_senaite = "senaite-purified"
TIMSABA.functions.create_items
({
    {
        name = ore_senaite,
        subgroup = is_ores,
        icon = graphics_senaite .. ore_senaite .. ".png",
        pictures =
        {
            {filename = graphics_senaite .. ore_senaite .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_senaite .. ore_senaite .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_senaite .. ore_senaite .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = f
    },
    {
        name = crushed_senaite,
        subgroup = is_ore_processing_a,
        icon = graphics_senaite .. crushed_senaite .. ".png",
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
        order = f
    },
    {
        name = chunk_senaite,
        subgroup = is_ore_processing_b,
        icon = graphics_senaite .. chunk_senaite .. ".png",
        icon_size = 32,
        order = f
    },
    {
        name = crystal_senaite,
        subgroup = is_ore_processing_c,
        icon = graphics_senaite .. crystal_senaite .. ".png",
        icon_size = 32,
        order = f
    },
    {
        name = purified_senaite,
        subgroup = is_ore_processing_d,
        icon = graphics_senaite .. purified_senaite .. ".png",
        icon_size = 32,
        order = f
    }
})

-- FLUID

-- RECIPE
ANGELS.functions.create_crushed(crushed_senaite, is_ore_processing_a, f, ore_senaite)
ANGELS.functions.create_chunk(chunk_senaite, is_ore_processing_b, f, crushed_senaite, calcium_silicate, water_red_waste)
ANGELS.functions.create_crystal(crystal_senaite, is_ore_processing_c, f, chunk_senaite, nitric_acid_angels)
ANGELS.functions.create_purified(purified_senaite, is_ore_processing_d, f, crystal_senaite)
-- Senaite ore / Pb + Sn + Ni + Zn + Ti + Cr
ANGELS.functions.create_crushed_processing(crushed_senaite, is_ore_sorting_T1, f, lead_ore_bob, tin_ore_bob, slag_angels)
ANGELS.functions.create_chunk_processing(chunk_senaite, is_ore_sorting_T2, f, lead_ore_bob, tin_ore_bob, nickel_ore_bob, zinc_ore_bob, slag_angels)
ANGELS.functions.create_crystal_processing(crystal_senaite, is_ore_sorting_T3, f, lead_ore_bob, tin_ore_bob, nickel_ore_bob, zinc_ore_bob, titanium_ore_bob, slag_angels)
ANGELS.functions.create_purified_processing(purified_senaite, is_ore_sorting_T4, f, lead_ore_bob, tin_ore_bob, nickel_ore_bob, zinc_ore_bob, titanium_ore_bob, chromium_ore_angels)

-- ORE
local ore_senaite_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
ore_senaite_particle.name = ore_senaite .. _particle
for _, picture in pairs(ore_senaite_particle.pictures) do
    picture.tint = {r = 160/256, g = 100/256, b = 025/256, a = 1.000}
end
data:extend({ore_senaite_particle})

data:extend
({
    TIMSABA.functions.create_resource(
        {
            name = ore_senaite,
            subgroup = is_ores,
            order = g,
            map_color = {r = 115/255, g = 065/255, b = 015/255, a = 1.000},
            mining_visualisation_tint = {r = 190/255, g = 125/255, b = 040/255, a = 1.000}
        },
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    )
})

TIMSABA.functions.create_autoplace_control(ore_senaite)

data_planet[planet_nauvis].map_gen_settings.autoplace_controls[ore_senaite] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[ore_senaite] = {}

data_resource[ore_senaite].location = planet_nauvis