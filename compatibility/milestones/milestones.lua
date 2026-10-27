require("prototypes.global-name.global-name-items")
require("prototypes.global-name.global-name-mods")
require("prototypes.bobs.bobs-name-building")
require("prototypes.angels.angels-name-building")

-- Loaded only in control stage when Milestones is enabled.
local prefix = "timsaba-milestone-"
local function sorted_keys(values)
    local keys = {}
    for key in pairs(values) do keys[#keys + 1] = key end
    table.sort(keys)
    return keys
end

local function make_preset()
    local milestones, seen, pending_group = {}, {}, nil
    local function group(name)
        pending_group = name
    end
    local function add(kind, name, quality)
        local collection = kind == "kill" and prototypes.entity or prototypes.item
        if not collection[name] or (quality and not prototypes.quality[quality]) then return end
        local key = kind .. ":" .. name .. ":" .. (quality or "")
        if seen[key] then return end
        seen[key] = true
        if pending_group then
            milestones[#milestones + 1] = {type = "group", name = pending_group}
            pending_group = nil
        end
        milestones[#milestones + 1] = {type = kind, name = name, quantity = 1, quality = quality}
    end
    -- Each family starts a fresh Milestones section; never pad with fake goals.
    local function family(name, items)
        group(name)
        for _, item_name in ipairs(items) do add("item", item_name) end
    end
    group("Science")
    local packs = {}
    for _, technology in pairs(prototypes.technology) do
        if not technology.hidden then
            for _, ingredient in pairs(technology.research_unit_ingredients) do
                packs[ingredient.name] = true
            end
        end
    end
    -- Rubia's early packs are intermediates, but deserve their own production stages.
    for _, name in ipairs({"makeshift-biorecycling-science-pack", "ghetto-biorecycling-science-pack",
        "biorecycling-science-pack", "rubia-biofusion-science-pack"}) do
        if prototypes.item[name] then packs[name] = true end
    end
    -- Production progression supplied for TIMSABA, not alphabetical prototype IDs.
    -- Alien research unlocks several packs; keep that family before space science.
    local science_order =
    {
        -- Lignumis
        wood_science_pack, steam_science_pack,
        -- Nauvis
        automation_science_pack, logistic_science_pack, military_science_pack, chemical_science_pack, transport_science_pack, production_science_pack, utility_science_pack,
        gold_science_pack_bob, alien_science_pack, alien_science_pack_orange, alien_science_pack_blue, alien_science_pack_yellow, alien_science_pack_purple, alien_science_pack_green, alien_science_pack_red,
        -- Space Age
        space_science_pack, metallurgic_science_pack, agricultural_science_pack, electromagnetic_science_pack,
        -- Muluna
        interstellar_science_pack,
        -- Second Circle Planets
        compression_science_pack, polishing_science_pack, refraction_science_pack, bioengineering_science_pack, pathological_science_pack, battlefield_science_pack, vanadium_science_pack, acidworking_science_pack, spoilage_science_pack, apicultural_science_pack,
        -- Third Circle Planets
        cryogenic_science_pack, galvanization_science_pack, hydraulic_science_pack, electrochemical_science_pack, golden_science_pack,
        -- Fourth Circle Planets
        gas_manipulation_science_pack,
        -- Others Star Systems
        lightweight_science_pack, pulsar_science_pack,
        -- Final Circle Planets
        promethium_science_pack
    }
    for _, name in ipairs(science_order) do
        if packs[name] then
            add("item", name)
            packs[name] = nil
        end
    end
    -- Preserve science packs from other installed mods without disturbing the main progression.
    for _, name in ipairs(sorted_keys(packs)) do add("item", name) end
    family("Locomotives", {locomotive_1, locomotive_2, locomotive_3})
    family("Cargo wagons", {cargo_wagon_1, cargo_wagon_2, cargo_wagon_3})
    family("Fluid wagons", {fluid_wagon_1, fluid_wagon_2, fluid_wagon_3})
    family("Artillery wagons", {artillery_wagon_1, artillery_wagon_2, artillery_wagon_3, artillery_wagon_4})
    family("Space trains", {space_locomotive, space_cargo_wagon, space_fluid_wagon})
    family("Armored trains", {"rubia-armored-locomotive", "rubia-armored-cargo-wagon", "rubia-armored-fluid-wagon"})
    family("Basic construction robots", {basic_construction_robot_gold})
    family("Construction robots", {construction_robot_1, construction_robot_2, construction_robot_3, construction_robot_4, construction_robot_5})
    family("Logistic robots", {logistic_robot_1, logistic_robot_2, logistic_robot_3, logistic_robot_4, logistic_robot_5})
    family("Roboports", {roboport_1, roboport_2, roboport_3, roboport_4})
    -- Use final runtime speeds, including changes made by optional planet mods.
    local belts = {}
    for name, item in pairs(prototypes.item) do
        local entity = item.place_result
        if entity and entity.type == "transport-belt" and not item.hidden then
            belts[#belts + 1] = {name = name, speed = entity.belt_speed}
        end
    end
    table.sort(belts, function(a, b)
        if a.speed ~= b.speed then return a.speed < b.speed end
        return a.name < b.name
    end)
    group("Transport belts (by speed)")
    for _, belt in ipairs(belts) do add("item", belt.name) end
    group("Early spaceflight")
    add("item", "provisional-rocket-silo")
    add("item", "space-platform-starter-pack")
    add("item", "space-platform-foundation")
    add("item", "asteroid-collector")
    add("item", "crusher")
    add("item", "thruster")
    for _, name in ipairs({"lignumis-rocket", "visit-nauvis", "nauvis-rocket", "first-spaceflight", "visit-muluna", "first-voyage"}) do
        add("item", prefix .. name)
    end
    group("Planets and moons")
    for _, name in ipairs(sorted_keys(prototypes.item)) do
        if name:sub(1, #prefix + 6) == prefix .. "visit-" then add("item", name) end
    end
    group("Space destinations")
    for _, name in ipairs(sorted_keys(prototypes.item)) do
        if name:sub(1, #prefix + 6) == prefix .. "reach-" then add("item", name) end
    end
    family("Small solar panels", {solar_panel_small_1, solar_panel_small_2, solar_panel_small_3, solar_panel_small_4})
    family("Solar panels", {solar_panel_1, solar_panel_2, solar_panel_3, solar_panel_4})
    family("Large solar panels", {solar_panel_large_1, solar_panel_large_2, solar_panel_large_3, solar_panel_large_4})
    family("Accumulators", {accumulator_1, accumulator_2, accumulator_3, accumulator_4})
    family("Boilers", {boiler_1, boiler_2, boiler_3, boiler_4, boiler_5, boiler_6})
    family("Steam engines", {steam_engine_1, steam_engine_2, steam_engine_3, steam_engine_4, steam_engine_5, steam_engine_6})
    family("Steam turbines", {steam_turbine_1, steam_turbine_2, steam_turbine_3, steam_turbine_4})
    family("Reactors", {uranium_reactor, thorium_reactor, deuterium_reactor, tritium_reactor, fusion_reactor})
    family("Electric mining drills", {electric_mining_drill_1, electric_mining_drill_2, electric_mining_drill_3, electric_mining_drill_4, electric_mining_drill_5, electric_mining_drill_6})
    family("Area mining drills", {area_mining_drill_1, area_mining_drill_2, area_mining_drill_3, area_mining_drill_4})
    family("Large and planetary mining drills", {big_mining_drill, geode_mining_drill, deep_miner})
    family("Pumpjacks", {pumpjack_1, pumpjack_2, pumpjack_3, pumpjack_4, pumpjack_5, pumpjack_6})
    family("Centrifuges", {centrifuge_1, centrifuge_2, centrifuge_3, centrifuge_4})
    family("Electric furnaces", {electric_furnace_1, electric_furnace_2, electric_furnace_3, electric_furnace_4})
    family("Electric mixing furnaces", {electric_mixing_furnace_1, electric_mixing_furnace_2, electric_mixing_furnace_3, electric_mixing_furnace_4})
    family("Assembling machines", {burner_assembling_machine, assembling_machine_1, assembling_machine_2, assembling_machine_3, assembling_machine_4, assembling_machine_5, assembling_machine_6, hyper_assembling_machine})
    family("Laboratories", {wood_lab, lab_1, lab_2, biolab, cryolab})
    family("Planetary industry", {foundry, biochamber, electromagnetic_plant, cryogenic_plant}) -- Доделать
    family("Ore crushers", {ore_crusher_1, ore_crusher_2, ore_crusher_3, ore_crusher_4})
    family("Flotation cells", {ore_floatation_cell_1, ore_floatation_cell_2, ore_floatation_cell_3, ore_floatation_cell_4})
    family("Leaching plants", {ore_leaching_plant_1, ore_leaching_plant_2, ore_leaching_plant_3, ore_leaching_plant_4})
    family("Ore refineries", {ore_refinery_1, ore_refinery_2, ore_refinery_3, ore_refinery_4})
    family("Ore sorting facilities", {ore_sorting_facility_1, ore_sorting_facility_2, ore_sorting_facility_3, ore_sorting_facility_4, ore_sorting_facility_5, ore_sorting_facility_6})
    family("Blast furnaces", {blast_furnace_1, blast_furnace_2, blast_furnace_3, blast_furnace_4})
    family("Electric blast furnaces", {electric_blast_furnace_1, electric_blast_furnace_2, electric_blast_furnace_3, electric_blast_furnace_4})
    family("Induction furnaces", {induction_furnace_1, induction_furnace_2, induction_furnace_3, induction_furnace_4})
    family("Casting machines", {casting_machine_1, casting_machine_2, casting_machine_3, casting_machine_4})
    family("Strand casting machines", {strand_casting_machine_1, strand_casting_machine_2, strand_casting_machine_3, strand_casting_machine_4})
    family("Sintering ovens", {sintering_oven_1, sintering_oven_2, sintering_oven_3, sintering_oven_4, sintering_oven_5, sintering_oven_6})
    family("Metals", {iron_plate, copper_plate, tin_plate_bob, lead_plate_bob, nickel_plate_bob, aluminium_plate_bob, zinc_plate_bob, silver_plate_bob, titanium_plate_bob, gold_plate_bob, uranium_238_plate, tungsten_plate_bob, platinum_plate, molybdenum_plate, rhenium_plate})
    --family("Planetary metals", {}) -- Доделать
    family("Alloys", {solder, steel_plate, bronze_plate_bob, brass_plate_bob, gunmetal_plate_bob, invar_plate_bob, cobalt_steel_plate_bob, tungsten_carbide_plate_bob, nitinol_plate_bob, copper_tungsten_plate_bob, molybdenum_rhenium_plate, aluminium_lithium_plate})
    --family("Planetary alloys", {}) -- Доделать
    --family("", {})
    local spiders = {antron, tankotron, logitron, spidertron, heavy_spidertron}
    local known_spiders = {}
    for _, name in ipairs(spiders) do known_spiders[name] = true end
    for _, name in ipairs(sorted_keys(prototypes.item)) do
        local item = prototypes.item[name]
        local entity = item.place_result
        if entity and entity.type == "spider-vehicle" and not item.hidden and not known_spiders[name] then
            spiders[#spiders + 1] = name
        end
    end
    local equipment_families =
    {
        {name = "Tanks", items = {tank_1, tank_2, tank_3}},
        {name = "Power armor", items = {power_armor_1, power_armor_2, power_armor_3, power_armor_4, power_armor_5, mech_armor}},
        {name = "Spidertrons", items = spiders}
    }
    for _, equipment in ipairs(equipment_families) do family(equipment.name, equipment.items) end
    family("Speed modules", {speed_module_1, speed_module_2, speed_module_3, speed_module_4, speed_module_5, speed_module_6, speed_module_7, speed_module_8})
    family("Efficiency modules", {efficiency_module_1, efficiency_module_2, efficiency_module_3, efficiency_module_4, efficiency_module_5, efficiency_module_6, efficiency_module_7, efficiency_module_8})
    family("Productivity modules", {productivity_module_1, productivity_module_2, productivity_module_3, productivity_module_4, productivity_module_5, productivity_module_6, productivity_module_7, productivity_module_8})
    family("Quality modules", {quality_module_1, quality_module_2, quality_module_3, quality_module_4, quality_module_5, quality_module_6, quality_module_7, quality_module_8})
    family("Pollution cleaning modules", {pollution_clean_module_1, pollution_clean_module_2, pollution_clean_module_3, pollution_clean_module_4, pollution_clean_module_5, pollution_clean_module_6, pollution_clean_module_7, pollution_clean_module_8})
    family("Pollution generating modules", {pollution_create_module_1, pollution_create_module_2, pollution_create_module_3, pollution_create_module_4, pollution_create_module_5, pollution_create_module_6, pollution_create_module_7, pollution_create_module_8})
    family("Agricultural modules", {agricultural_module_1, agricultural_module_2, agricultural_module_3, agricultural_module_4, agricultural_module_5, agricultural_module_6, agricultural_module_7, agricultural_module_8})
    family("Rigor modules", {"rigor-module", "rigor-module-2", "rigor-module-3","rigor-module-4-S"})
    family("Rubia efficiency module", {"rubia-efficiency-module4"})
    -- Discover every installed module family, rather than sampling two quality modules.
    local modules = {}
    for name, item in pairs(prototypes.item) do
        if item.type == "module" and not item.hidden then
            local category = item.category or "other"
            modules[category] = modules[category] or {}
            modules[category][#modules[category] + 1] = {name = name, tier = item.tier or 1}
        end
    end
    for _, category in ipairs(sorted_keys(modules)) do
        table.sort(modules[category], function(a, b)
            if a.tier ~= b.tier then return a.tier < b.tier end
            return a.name < b.name
        end)
    end
    for _, quality in ipairs({"rare", "epic", "legendary"}) do
        for _, category in ipairs(sorted_keys(modules)) do
            group("Quality - " .. quality .. " - " .. category .. " modules")
            for _, module in ipairs(modules[category]) do add("item", module.name, quality) end
        end
        for _, equipment in ipairs(equipment_families) do
            group("Quality - " .. quality .. " - " .. equipment.name)
            for _, name in ipairs(equipment.items) do add("item", name, quality) end
        end
    end
    local kill_entities =
    {
        "medium-biter", "big-biter", "behemoth-biter",
        "small-strafer-pentapod", "medium-strafer-pentapod", "big-strafer-pentapod",
        "small-stomper-pentapod", "medium-stomper-pentapod", "big-stomper-pentapod",
        "small-demolisher", "medium-demolisher", "big-demolisher",
        "huge-promethium-asteroid"
    }
    group("Kills")
    for _, name in ipairs(kill_entities) do
        add("kill", name)
    end
    return
    {
        ["TIMSABA - Family layout"] =
        {
            required_mods = {"TIMSABA", "space-age", "boblogistics", "angelsrefining"},
            milestones = milestones
        }
    }
end

remote.add_interface("TIMSABA-milestones", {milestones_presets = make_preset})