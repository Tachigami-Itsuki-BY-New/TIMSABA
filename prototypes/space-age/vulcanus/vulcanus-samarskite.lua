local graphics_samarskite = "__TIMSABA__/graphics/icons/space-age/vulcanus/samarskite-ore/"

samarskite_ore = "samarskite-ore"
samarskite_crushed = "samarskite-crushed"
samarskite_chunks = "samarskite-chunks"
samarskite_crystals = "samarskite-crystals"
samarskite_purified = "samarskite-purified"
TIMSABA.functions.create_items
({
    {
        name = samarskite_ore,
        subgroup = is_samarskite,
        icon = graphics_samarskite .. samarskite_ore .. ".png",
        pictures =
        {
            {filename = graphics_samarskite .. samarskite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_samarskite .. samarskite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_samarskite .. samarskite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        name = samarskite_crushed,
        subgroup = is_samarskite,
        icon = graphics_samarskite .. samarskite_crushed .. ".png",
        icon_size = 32,
        order = b
    },
    {
        name = samarskite_chunks,
        subgroup = is_samarskite,
        icon = graphics_samarskite .. samarskite_chunks .. ".png",
        icon_size = 32,
        order = c
    },
    {
        name = samarskite_crystals,
        subgroup = is_samarskite,
        icon = graphics_samarskite .. samarskite_crystals .. ".png",
        icon_size = 32,
        order = d
    },
    {
        name = samarskite_purified,
        subgroup = is_samarskite,
        icon = graphics_samarskite .. samarskite_purified .. ".png",
        icon_size = 32,
        order = e
    }
})

-- FLUID

-- RECIPE
ANGELS.functions.create_crushed(samarskite_crushed, is_samarskite, b, samarskite_ore)
ANGELS.functions.create_chunk(samarskite_chunks, is_samarskite, c, samarskite_crushed, calcium_silicate, water_greenyellow_waste)
ANGELS.functions.create_crystal(samarskite_crystals, is_samarskite, d, samarskite_chunks, hydrofluoric_acid_angels)
ANGELS.functions.create_purified(samarskite_purified, is_samarskite, e, samarskite_crystals)
-- Samarskite ore / Nb + Ho + Fe + Mn + U + Th
ANGELS.functions.create_ore_processing(samarskite_ore, is_samarskite, f, calcium_silicate)
ANGELS.functions.create_crushed_processing(samarskite_crushed, is_samarskite, g, niobium_ore, holmium_ore, calcium_silicate)
ANGELS.functions.create_chunk_processing(samarskite_chunks, is_samarskite, h, niobium_ore, holmium_ore, iron_ore, manganese_ore_angels, calcium_silicate)
ANGELS.functions.create_crystal_processing(samarskite_crystals, is_samarskite, i, niobium_ore, holmium_ore, iron_ore, manganese_ore_angels, uranium_ore, calcium_silicate)
ANGELS.functions.create_purified_processing(samarskite_purified, is_samarskite, j, niobium_ore, holmium_ore, iron_ore, manganese_ore_angels, uranium_ore, thorium_ore_bob)

-- ORE
samarskite_ore_ac = "samarskite_ore"
data:extend
({
    TIMSABA.functions.create_resource(
        {
            name = samarskite_ore,
            subgroup = is_samarskite,
            order = a,
            map_color = {r = 065/255, g = 020/255, b = 065/255, a = 1.000},
            mining_visualisation_tint = {r = 085/255, g = 060/255, b = 085/255, a = 1.000},
            category = "hard-solid"
        },
        {probability_expression = 0}
    )
})

local samarskite_ore_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
samarskite_ore_particle.name = samarskite_ore .. _particle
for _, picture in pairs(samarskite_ore_particle.pictures) do
    picture.tint = {r = 075/256, g = 040/256, b = 075/256, a = 1.000}
end
data:extend({samarskite_ore_particle})

TIMSABA.functions.create_autoplace_control(samarskite_ore_ac, samarskite_ore_ac, {"", "[item=samarskite-ore] ", {"entity-name.samarskite-ore"}})

data:extend
({
    {
        type = "noise-expression",
        name = "vulcanus_samarskite_ore_size",
        expression = "slider_rescale(control:samarskite_ore:size, 2)"
    },
    {
        type = "noise-expression",
        name = "vulcanus_samarskite_ore_region",
        expression = "max(vulcanus_starting_tungsten,\z
        min(1 - vulcanus_starting_circle,\z
        vulcanus_place_metal_spots(799, 15, 2,\z
        vulcanus_samarskite_ore_size * min(1.2, vulcanus_ore_dist) * 25,\z
        control:samarskite_ore:frequency,\z
        vulcanus_basalts_resource_favorability)))"
    },
    {
        type = "noise-expression",
        name = "vulcanus_samarskite_ore_probability",
        intended_property = "probability",
        expression = "(control:samarskite_ore:size > 0) * (1000 * ((1 + vulcanus_samarskite_ore_region) * random_penalty_between(0.9, 1, 1) - 1))"
    },
    {
        type = "noise-expression",
        name = "vulcanus_samarskite_ore_richness",
        intended_property = "richness",
        expression = "vulcanus_samarskite_ore_region * random_penalty_between(0.9, 1, 1)\z
        * 10000 * vulcanus_starting_area_multiplier\z
        * control:samarskite_ore:richness / vulcanus_samarskite_ore_size"
    }
})

data_planet[planet_vulcanus].map_gen_settings.property_expression_names["entity:samarskite-ore:probability"] = "vulcanus_samarskite_ore_probability"
data_planet[planet_vulcanus].map_gen_settings.property_expression_names["entity:samarskite-ore:richness"] = "vulcanus_samarskite_ore_richness"
data_planet[planet_vulcanus].map_gen_settings.autoplace_controls[samarskite_ore_ac] = {}
data_planet[planet_vulcanus].map_gen_settings.autoplace_settings.entity.settings[samarskite_ore] = {}

data_resource[samarskite_ore].location = planet_vulcanus