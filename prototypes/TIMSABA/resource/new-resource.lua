-- RESOURCE
local fluorite_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
fluorite_particle.name = fluorite_angels .. _particle
for _, picture in pairs(fluorite_particle.pictures) do
    picture.tint = {r = 165/256, g = 196/256, b = 042/256, a = 1.000}
end
local borax_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
borax_particle.name = borax .. _particle
for _, picture in pairs(borax_particle.pictures) do
    picture.tint = {r = 200/256, g = 205/256, b = 210/256, a = 1.000}
end
local carnallite_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
carnallite_particle.name = carnallite .. _particle
for _, picture in pairs(carnallite_particle.pictures) do
    picture.tint = {r = 155/256, g = 095/256, b = 080/256, a = 1.000}
end
local fluorapatite_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
fluorapatite_particle.name = fluorapatite .. _particle
for _, picture in pairs(fluorapatite_particle.pictures) do
    picture.tint = {r = 175/256, g = 175/256, b = 150/256, a = 1.000}
end
data:extend({fluorite_particle, borax_particle, carnallite_particle, fluorapatite_particle})

data:extend
({
    TIMSABA.functions.create_resource(
        {
            name = fluorite_angels,
            subgroup = is_calcium,
            icon_size = 32,
            order = b,
            map_color = {r = 120/255, g = 145/255, b = 030/255, a = 1.000},
            mining_visualisation_tint = {r = 175/255, g = 210/255, b = 045/255, a = 1.000}
        },
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    ),
    TIMSABA.functions.create_resource(
        {
            name = borax,
            subgroup = is_boron,
            order = a,
            map_color = {r = 150/255, g = 155/255, b = 160/255, a = 1.000},
            mining_visualisation_tint = {r = 220/255, g = 225/255, b = 230/255, a = 1.000}
        },
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    ),
    TIMSABA.functions.create_resource(
        {
            name = carnallite,
            subgroup = is_potassium,
            order = a,
            map_color = {r = 110/255, g = 065/255, b = 055/255, a = 1.000},
            mining_visualisation_tint = {r = 175/255, g = 110/255, b = 095/255, a = 1.000}
        },
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    ),
    TIMSABA.functions.create_resource(
        {
            name = fluorapatite,
            subgroup = is_phosphorus,
            order = a,
            map_color = {r = 120/255, g = 120/255, b = 100/255, a = 1.000},
            mining_visualisation_tint = {r = 195/255, g = 195/255, b = 165/255, a = 1.000}
        },
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    )
})

TIMSABA.functions.create_autoplace_control(fluorite_angels)
TIMSABA.functions.create_autoplace_control(borax)
TIMSABA.functions.create_autoplace_control(carnallite)
TIMSABA.functions.create_autoplace_control(fluorapatite)

data_planet[planet_nauvis].map_gen_settings.autoplace_controls[fluorite_angels] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_controls[borax] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_controls[carnallite] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_controls[fluorapatite] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[fluorite_angels] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[borax] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[carnallite] = {}
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[fluorapatite] = {}

data_resource[fluorite_angels].location = planet_nauvis
data_resource[borax].location = planet_nauvis
data_resource[carnallite].location = planet_nauvis
data_resource[fluorapatite].location = planet_nauvis