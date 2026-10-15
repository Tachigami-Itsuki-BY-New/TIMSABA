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
    local science_order = {
        "wood-science-pack", "steam-science-pack", "automation-science-pack",
        "logistic-science-pack", "chemical-science-pack", "military-science-pack",
        "bob-advanced-logistic-science-pack", "production-science-pack", "utility-science-pack",
        "bob-alien-science-pack", "bob-alien-science-pack-blue", "bob-alien-science-pack-orange",
        "bob-alien-science-pack-purple", "bob-alien-science-pack-yellow", "bob-alien-science-pack-green",
        "bob-alien-science-pack-red", "bob-science-pack-gold", "space-science-pack",
        "interstellar-science-pack", "electromagnetic-science-pack", "metallurgic-science-pack",
        "agricultural-science-pack", "space-logistic-science-pack", "apicultural-science-pack",
        "acidworking-science-pack", "vanadium-science-pack", "planetaris-compression-science-pack",
        "pulsar-science-pack", "planetaris-polishing-science-pack", "planetaris-refraction-science-pack",
        "planetaris-bioengineering-science-pack", "planetaris-pathological-science-pack", "cryogenic-science-pack",
        "galvanization-science-pack", "hydraulic-science-pack", "golden-science-pack",
        "gas-manipulation-science-pack", "promethium-science-pack",
    }
    for _, name in ipairs(science_order) do
        if packs[name] then
            add("item", name)
            packs[name] = nil
        end
    end
    -- Preserve science packs from other installed mods without disturbing the main progression.
    for _, name in ipairs(sorted_keys(packs)) do add("item", name) end
    family("Locomotives", {
        "locomotive", "bob-locomotive-2", "bob-locomotive-3",
    })
    family("Cargo wagons", {
        "cargo-wagon", "bob-cargo-wagon-2", "bob-cargo-wagon-3",
    })
    family("Fluid wagons", {
        "fluid-wagon", "bob-fluid-wagon-2", "bob-fluid-wagon-3",
    })
    family("Artillery wagons", {
        "artillery-wagon", "bob-artillery-wagon-2", "bob-artillery-wagon-3",
    })
    family("Space trains", {
        "space-locomotive", "space-cargo-wagon", "space-fluid-wagon",
    })
    family("Armored trains", {
        "rubia-armored-locomotive", "rubia-armored-cargo-wagon", "rubia-armored-fluid-wagon",
    })
    family("Basic construction robots", {
        "basic-construction-robot-gold", "basic-construction-robot-copper",
    })
    family("Construction robots", {
        "construction-robot", "bob-construction-robot-2", "bob-construction-robot-3",
        "bob-construction-robot-4", "bob-construction-robot-5",
    })
    family("Logistic robots", {
        "logistic-robot", "bob-logistic-robot-2", "bob-logistic-robot-3",
        "bob-logistic-robot-4", "bob-logistic-robot-5",
    })
    family("Roboports", {
        "basic-roboport", "roboport", "bob-roboport-2",
        "bob-roboport-3", "bob-roboport-4",
    })
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
    family("Small solar panels", {
        "bob-solar-panel-small", "bob-solar-panel-small-2", "bob-solar-panel-small-3",
        "solar-panel-small-4",
    })
    family("Solar panels", {
        "solar-panel", "bob-solar-panel-2", "bob-solar-panel-3",
        "solar-panel-4",
    })
    family("Large solar panels", {
        "bob-solar-panel-large", "bob-solar-panel-large-2", "bob-solar-panel-large-3",
        "solar-panel-large-4",
    })
    family("Accumulators", {
        "accumulator", "bob-large-accumulator-2", "bob-large-accumulator-3",
        "accumulator-4",
    })
    family("Boilers", {
        "boiler", "bob-boiler-2", "bob-boiler-3",
        "bob-boiler-4", "bob-boiler-5", "boiler-6",
    })
    family("Steam engines", {
        "steam-engine", "bob-steam-engine-2", "bob-steam-engine-3",
        "bob-steam-engine-4", "bob-steam-engine-5", "steam-engine-6",
    })
    family("Steam turbines", {
        "steam-turbine", "bob-steam-turbine-2", "bob-steam-turbine-3",
        "steam-turbine-4",
    })
    family("Reactors", {
        "nuclear-reactor", "bob-nuclear-reactor-2", "bob-nuclear-reactor-3",
        "nuclear-reactor-4", "fusion-reactor",
    })
    family("Electric mining drills", {
        "electric-mining-drill", "bob-mining-drill-1", "bob-mining-drill-2",
        "bob-mining-drill-3", "bob-mining-drill-4", "electric-mining-drill-6",
    })
    family("Area mining drills", {
        "bob-area-mining-drill-1", "bob-area-mining-drill-2", "bob-area-mining-drill-3",
        "bob-area-mining-drill-4",
    })
    family("Large and planetary mining drills", {
        "big-mining-drill", "hyarion-geode-mining-drill", "deep-miner",
    })
    family("Pumpjacks", {
        "pumpjack", "bob-pumpjack-1", "bob-pumpjack-2",
        "bob-pumpjack-3", "pumpjack-5", "pumpjack-6",
    })
    family("Centrifuges", {
        "centrifuge", "bob-centrifuge-2", "bob-centrifuge-3",
        "bob-centrifuge-4",
    })
    family("Electric furnaces", {
        "electric-furnace", "bob-electric-furnace-2", "bob-electric-furnace-3",
        "electric-furnace-4",
    })
    family("Electric mixing furnaces", {
        "bob-electric-mixing-furnace", "bob-electric-chemical-mixing-furnace", "bob-electric-chemical-mixing-furnace-2",
        "electric-mixing-furnace-4",
    })
    family("Assembling machines", {
        "burner-assembling-machine", "assembling-machine-1", "assembling-machine-2",
        "assembling-machine-3", "bob-assembling-machine-4", "bob-assembling-machine-5",
        "bob-assembling-machine-6", "planetaris-assembling-machine-4",
    })
    family("Laboratories", {
        "wood-lab", "lab", "bob-lab-2",
        "biolab",
    })
    family("Planetary industry", {
        "foundry", "electromagnetic-plant", "biochamber",
        "cryogenic-plant", "neural_computer", "inert-acidworking-science-pack",
    })
    family("Ore crushers", {
        "angels-ore-crusher", "angels-ore-crusher-2", "angels-ore-crusher-3",
        "ore-crusher-4",
    })
    family("Flotation cells", {
        "angels-ore-floatation-cell", "angels-ore-floatation-cell-2", "angels-ore-floatation-cell-3",
        "ore-floatation-cell-4",
    })
    family("Leaching plants", {
        "angels-ore-leaching-plant", "angels-ore-leaching-plant-2", "angels-ore-leaching-plant-3",
        "ore-leaching-plant-4",
    })
    family("Ore refineries", {
        "angels-ore-refinery", "angels-ore-refinery-2", "ore-refinery-3",
        "ore-refinery-4",
    })
    family("Ore sorting facilities", {
        "angels-ore-sorting-facility", "angels-ore-sorting-facility-2", "angels-ore-sorting-facility-3",
        "angels-ore-sorting-facility-4", "angels-ore-sorting-facility-5", "ore-sorting-facility-6",
    })
    family("Blast furnaces", {
        "angels-blast-furnace", "angels-blast-furnace-2", "angels-blast-furnace-3",
        "angels-blast-furnace-4",
    })
    family("Induction furnaces", {
        "angels-induction-furnace", "angels-induction-furnace-2", "angels-induction-furnace-3",
        "angels-induction-furnace-4",
    })
    family("Casting machines", {
        "angels-casting-machine", "angels-casting-machine-2", "angels-casting-machine-3",
        "angels-casting-machine-4",
    })
    family("Materials", {
        "steel-plate", "bob-aluminium-plate", "bob-titanium-plate",
        "tungsten-plate", "bob-nitinol-alloy", "molybdenum_plate",
        "rhenium_plate", "niobium_plate", "antimony_plate",
        "germanium_plate", "gallium_plate", "vanadium-plate",
    })
    local spiders = {"bob-antron", "bob-tankotron", "bob-logistic-spidertron", "spidertron", "bob-heavy-spidertron"}
    local known_spiders = {}
    for _, name in ipairs(spiders) do known_spiders[name] = true end
    for _, name in ipairs(sorted_keys(prototypes.item)) do
        local item = prototypes.item[name]
        local entity = item.place_result
        if entity and entity.type == "spider-vehicle" and not item.hidden and not known_spiders[name] then
            spiders[#spiders + 1] = name
        end
    end
    local equipment_families = {
        {name = "Tanks", items = {"tank", "bob-tank-2", "bob-tank-3"}},
        {name = "Power armor", items = {"power-armor", "power-armor-mk2", "bob-power-armor-mk3",
            "bob-power-armor-mk4", "bob-power-armor-mk5", "mech-armor"}},
        {name = "Spidertrons", items = spiders}
    }
    for _, equipment in ipairs(equipment_families) do family(equipment.name, equipment.items) end
    family("Speed modules", {
        "speed-module", "speed-module-2", "speed-module-3",
        "bob-speed-module-4", "bob-speed-module-5", "bob-speed-module-6",
        "bob-speed-module-7", "bob-speed-module-8",
    })
    family("Efficiency modules", {
        "efficiency-module", "efficiency-module-2", "efficiency-module-3",
        "bob-efficiency-module-4", "bob-efficiency-module-5", "bob-efficiency-module-6",
        "bob-efficiency-module-7", "bob-efficiency-module-8",
    })
    family("Productivity modules", {
        "productivity-module", "productivity-module-2", "productivity-module-3",
        "bob-productivity-module-4", "bob-productivity-module-5", "bob-productivity-module-6",
        "bob-productivity-module-7", "bob-productivity-module-8",
    })
    family("Quality modules", {
        "quality-module", "quality-module-2", "quality-module-3",
        "bob-quality-module-4", "bob-quality-module-5", "bob-quality-module-6",
        "bob-quality-module-7", "bob-quality-module-8",
    })
    family("Pollution cleaning modules", {
        "bob-pollution-clean-module-1", "bob-pollution-clean-module-2", "bob-pollution-clean-module-3",
        "bob-pollution-clean-module-4", "bob-pollution-clean-module-5", "bob-pollution-clean-module-6",
        "bob-pollution-clean-module-7", "bob-pollution-clean-module-8",
    })
    family("Pollution generating modules", {
        "bob-pollution-create-module-1", "bob-pollution-create-module-2", "bob-pollution-create-module-3",
        "bob-pollution-create-module-4", "bob-pollution-create-module-5", "bob-pollution-create-module-6",
        "bob-pollution-create-module-7", "bob-pollution-create-module-8",
    })
    family("Agricultural modules", {
        "angels-bio-yield-module", "angels-bio-yield-module-2", "angels-bio-yield-module-3",
        "angels-bio-yield-module-4", "angels-bio-yield-module-5", "angels-bio-yield-module-6",
        "angels-bio-yield-module-7", "angels-bio-yield-module-8",
    })
    family("Rigor modules", {
        "rigor-module", "rigor-module-2", "rigor-module-3",
        "rigor-module-4-S",
    })
    family("Rubia efficiency module", {
        "rubia-efficiency-module4",
    })
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
    group("Kills")
    for _, name in ipairs({"medium-biter", "big-biter", "behemoth-biter", "small-strafer-pentapod",
        "medium-strafer-pentapod", "big-strafer-pentapod", "small-stomper-pentapod",
        "medium-stomper-pentapod", "big-stomper-pentapod", "small-demolisher",
        "medium-demolisher", "big-demolisher", "huge-promethium-asteroid"}) do
        add("kill", name)
    end
    return {
        ["TIMSABA - Family layout"] = {
            required_mods = {"TIMSABA", "space-age", "boblogistics", "angelsrefining"},
            milestones = milestones
        }
    }
end

remote.add_interface("TIMSABA-milestones", {milestones_presets = make_preset})
