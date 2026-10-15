-- Run from repository root with Lua 5.2+ (or a compatible embedded Lua runtime).
local checks = 0
local function check(value, message)
    assert(value, message)
    checks = checks + 1
end
local function copy(value)
    if type(value) ~= "table" then return value end
    local result = {}
    for k, v in pairs(value) do result[k] = copy(v) end
    return result
end
table.deepcopy = copy
mods = {Milestones = "1.5.2", lignumis = "2.12.0"}
data = {raw = {planet = {}, ["space-location"] = {}, item = {}}}
for _, name in ipairs({"lignumis", "nauvis", "muluna", "rubia"}) do
    data.raw.planet[name] = {name = name, icon = name .. ".png"}
end
data.raw["space-location"]["secretas"] = {name = "secretas", icon = "secretas.png"}
data.raw["space-location"]["star"] = {name = "star"}
function data:extend(values)
    for _, value in ipairs(values) do self.raw[value.type][value.name] = value end
end
dofile("compatibility/milestones-data.lua")
local prefix = "timsaba-milestone-"
check(not data.raw.item[prefix .. "visit-lignumis"], "Starting planet must not get a landing goal")
check(data.raw.item[prefix .. "visit-nauvis"], "Nauvis must get a landing goal")
check(not data.raw.item[prefix .. "reach-star"], "Stars must be excluded")
check(data.raw.item[prefix .. "reach-secretas"].hidden, "Counters must be hidden")

prototypes = {item = data.raw.item, technology = {}, entity = {}, quality = {normal = {}, rare = {}}}
for _, name in ipairs({"automation-science-pack", "test-planet-pack", "locomotive", "construction-robot", "quality-module"}) do
    prototypes.item[name] = {name = name}
end
prototypes.technology.a = {hidden = false, research_unit_ingredients = {{name = "automation-science-pack"}, {name = "test-planet-pack"}}}
prototypes.technology.b = {hidden = false, research_unit_ingredients = {{name = "test-planet-pack"}}}
prototypes.technology.hidden = {hidden = true, research_unit_ingredients = {{name = "not-a-real-pack"}}}
-- Scrambled prototype enumeration must not change the requested science progression.
local science_progression = {
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
prototypes.technology.progression = {hidden = false, research_unit_ingredients = {}}
for index = #science_progression, 1, -1 do
    local name = science_progression[index]
    prototypes.item[name] = {name = name}
    table.insert(prototypes.technology.progression.research_unit_ingredients, {name = name})
end
local armored_train_items = {"rubia-armored-locomotive", "rubia-armored-cargo-wagon", "rubia-armored-fluid-wagon"}
for _, name in ipairs(armored_train_items) do prototypes.item[name] = {name = name} end
-- Tooltip items from the user's screenshots, including similarly named mod variants.
local screenshot_items = {
    "planetaris-hyper-transport-belt", "planetaris-assembling-machine-4",
    "hyarion-geode-mining-drill", "big-mining-drill", "wood-transport-belt",
    "burner-assembling-machine", "basic-construction-robot-gold",
    "space-beryllium-transport-belt", "steam-engine-6", "pumpjack-6",
    "bob-centrifuge-4", "electric-mixing-furnace-4", "electric-furnace-4",
    "rigor-module-4-S", "rubia-efficiency-module4", "military-transport-belt"
}
for _, name in ipairs(screenshot_items) do prototypes.item[name] = {name = name} end
local ordinary_drills = {"electric-mining-drill", "bob-mining-drill-1", "bob-mining-drill-2",
    "bob-mining-drill-3", "bob-mining-drill-4", "electric-mining-drill-6"}
local area_drills = {"bob-area-mining-drill-1", "bob-area-mining-drill-2",
    "bob-area-mining-drill-3", "bob-area-mining-drill-4"}
for _, family in ipairs({ordinary_drills, area_drills}) do
    for _, name in ipairs(family) do prototypes.item[name] = {name = name} end
end
local belt_fixture = {
    {"planetaris-hyper-transport-belt", 120}, {"space-beryllium-transport-belt", 105},
    {"military-transport-belt", 48}, {"wood-transport-belt", 3.75}, {"transport-belt", 15}
}
for _, entry in ipairs(belt_fixture) do
    prototypes.item[entry[1]] = {name = entry[1], place_result = {type = "transport-belt", belt_speed = entry[2]}}
end
prototypes.quality.epic = {}; prototypes.quality.legendary = {}
local module_categories = {"speed", "efficiency", "productivity", "quality", "pollution-clean", "pollution-create", "agriculture"}
for _, category in ipairs(module_categories) do
    for tier = 1, 8 do
        local name = "test-" .. category .. "-module-" .. tier
        prototypes.item[name] = {name = name, type = "module", category = category, tier = tier}
    end
end
prototypes.item["test-hidden-module"] = {name = "test-hidden-module", type = "module", category = "speed", tier = 9, hidden = true}
local equipment_items = {"tank", "bob-tank-2", "bob-tank-3", "power-armor", "power-armor-mk2",
    "bob-power-armor-mk3", "bob-power-armor-mk4", "bob-power-armor-mk5", "mech-armor",
    "bob-antron", "bob-tankotron", "bob-logistic-spidertron", "spidertron", "bob-heavy-spidertron"}
for _, name in ipairs(equipment_items) do prototypes.item[name] = {name = name} end
prototypes.item["test-extra-spider"] = {name = "test-extra-spider", place_result = {type = "spider-vehicle"}}
remote = {add_interface = function(_, interface) remote.preset = interface end}
dofile("compatibility/milestones.lua")
local result = remote.preset.milestones_presets()["TIMSABA - Family layout"].milestones
local seen = {}
for _, goal in ipairs(result) do
    if goal.type ~= "group" then
        local key = goal.type .. goal.name .. (goal.quality or "")
        check(not seen[key], "Preset contains duplicate " .. key)
        seen[key] = true
        check(goal.quantity == 1 and not goal.next, "Only first production goals are allowed")
        check(prototypes.item[goal.name] or prototypes.entity[goal.name], "Missing prototype")
    end
end
local groups, positions, current_group = {}, {}, nil
for index, goal in ipairs(result) do
    if goal.type == "group" then
        check(result[index + 1] and result[index + 1].type ~= "group", "No empty family sections")
        current_group = goal.name
    elseif not goal.quality then
        groups[goal.name] = current_group
        positions[goal.name] = index
    end
end
for _, name in ipairs(screenshot_items) do
    check(seen["item" .. name], "Missing screenshot goal: " .. name)
end
for _, family in ipairs({ordinary_drills, area_drills}) do
    local previous_position = 0
    for _, name in ipairs(family) do
        check(groups[name] == groups[family[1]], "Keep drill tiers in one family")
        check(positions[name] > previous_position, "Preset order must follow drill tiers")
        previous_position = positions[name]
    end
end
check(groups[ordinary_drills[1]] ~= groups[area_drills[1]], "Separate ordinary and area drills")
check(groups["big-mining-drill"] ~= groups[ordinary_drills[1]], "Separate planetary drills")
check(groups["hyarion-geode-mining-drill"] == groups["big-mining-drill"], "Group planetary drills together")
check(groups["rigor-module-4-S"] ~= groups["quality-module"], "Rigor is not a quality module")
local science_index, science_group = 1, false
for _, goal in ipairs(result) do
    if goal.type == "group" then
        science_group = goal.name == "Science"
    elseif science_group and science_index <= #science_progression then
        check(goal.name == science_progression[science_index], "Science must follow the supplied progression")
        science_index = science_index + 1
    end
end
check(science_index == #science_progression + 1, "Include the complete known science progression")
check(positions["test-planet-pack"] > positions["promethium-science-pack"], "Preserve extra packs after known science")
for _, name in ipairs(armored_train_items) do
    check(seen["item" .. name], "Include Rubia armored rolling stock")
    check(groups[name] == "Armored trains", "Keep armored trains in a separate family")
end
-- Missing optional packs and Rubia must not leave invalid goals or empty sections.
prototypes.item["wood-science-pack"] = nil
for _, name in ipairs(armored_train_items) do prototypes.item[name] = nil end
local optional_result = remote.preset.milestones_presets()["TIMSABA - Family layout"].milestones
for _, goal in ipairs(optional_result) do
    check(goal.name ~= "wood-science-pack" and goal.name ~= "Armored trains", "Skip absent optional prototypes")
end
for _, name in ipairs(armored_train_items) do prototypes.item[name] = {name = name} end
prototypes.item["wood-science-pack"] = {name = "wood-science-pack"}
check(seen["itemtest-planet-pack"], "Discover installed planet science")
check(not seen["itemnot-a-real-pack"], "Ignore hidden technologies")
local last_speed = -1
for _, goal in ipairs(result) do
    local item = prototypes.item[goal.name]
    if goal.type ~= "group" and item and item.place_result and item.place_result.type == "transport-belt" and not goal.quality then
        check(item.place_result.belt_speed >= last_speed, "Sort belts by actual final speed")
        last_speed = item.place_result.belt_speed
    end
end
local qualified_count = 0
for _, quality in ipairs({"rare", "epic", "legendary"}) do
    for _, category in ipairs(module_categories) do
        local previous_position = 0
        for tier = 1, 8 do
            local name = "test-" .. category .. "-module-" .. tier
            check(seen["item" .. name .. quality], "Include every module tier/quality")
            for index, goal in ipairs(result) do
                if goal.name == name and goal.quality == quality then
                    check(index > previous_position, "Sort qualified module tiers")
                    previous_position = index
                    qualified_count = qualified_count + 1
                end
            end
        end
    end
end
check(qualified_count == 168, "Seven eight-tier families times three qualities")
for _, name in ipairs(equipment_items) do
    check(seen["item" .. name], "Include every normal equipment variant")
    for _, quality in ipairs({"rare", "epic", "legendary"}) do
        check(seen["item" .. name .. quality], "Include equipment variant in every requested quality")
    end
end
check(seen["itemtest-extra-spiderlegendary"], "Discover extra modded spider vehicles")
for _, goal in ipairs(result) do
    check(goal.name ~= "Resources", "Standalone preset must not add redundant Bob's Modules Resources section")
end
check(not seen["itemtest-hidden-modulerare"], "Skip hidden module variants")
prototypes.quality.legendary = nil
for _, goal in ipairs(remote.preset.milestones_presets()["TIMSABA - Family layout"].milestones) do
    check(goal.quality ~= "legendary", "Skip unavailable qualities")
end
prototypes.quality.legendary = {}

storage = {}
defines = {controllers = {character = 1}}
local counts = {}
local function surface(index, planet, platform)
    return {index = index, planet = planet and {name = planet}, platform = platform}
end
local lignumis, nauvis, muluna = surface(1, "lignumis"), surface(2, "nauvis"), surface(3, "muluna")
local orbit = surface(4, nil, true)
local force = {index = 1, platforms = {}}
force.get_item_production_statistics = function(s)
    counts[s.index] = counts[s.index] or {}
    return {
        get_input_count = function(id) return counts[s.index][id.name] or 0 end,
        on_flow = function(id, n) counts[s.index][id.name] = (counts[s.index][id.name] or 0) + n end
    }
end
local player = {index = 1, valid = true, physical_surface = lignumis, surface = lignumis,
    physical_controller_type = 1, force = force}
game = {surfaces = {lignumis, nauvis, muluna, orbit}, connected_players = {player}, forces = {force},
    get_player = function() return player end}
local events = dofile("scripting/milestones-events.lua")
local function total(suffix)
    local sum = 0
    for _, values in pairs(counts) do sum = sum + (values[prefix .. suffix] or 0) end
    return sum
end
events.poll()
check(total("visit-nauvis") == 0, "Starting does not award Nauvis")
player.surface = nauvis -- Remote view only.
events.on_player_changed_surface({player_index = 1})
check(total("visit-nauvis") == 0, "Remote view must not count")
player.physical_surface = nauvis
events.on_player_changed_surface({player_index = 1})
check(total("visit-nauvis") == 1, "Physical landing must count")
events.poll()
check(total("visit-nauvis") == 1, "Polling must not duplicate landing")
player.physical_surface = lignumis; events.poll()
player.physical_surface = nauvis; events.poll()
check(total("visit-nauvis") == 1, "Repeat landing must not duplicate")
player.physical_surface = orbit; events.poll()
check(total("first-spaceflight") == 1, "Physical boarding must count")
player.physical_surface = muluna; events.poll()
check(total("visit-muluna") == 1, "Scripted landing must be caught by polling")
events.on_rocket_launch_ordered({rocket_silo = {valid = true, name = "provisional-rocket-silo", force = force, surface = lignumis}})
check(total("lignumis-rocket") == 1, "Lignumis scripted launch must count")
events.on_rocket_launched({rocket = {valid = true, force = force, surface = nauvis}})
check(total("nauvis-rocket") == 1, "Conventional Nauvis launch must count")
local platform = {index = 1, valid = true, force = force, surface = orbit, space_location = {name = "nauvis"}}
events.on_space_platform_changed_state({platform = platform})
check(total("first-voyage") == 0, "Platform creation must not count as a voyage")
platform.space_location = nil; events.on_space_platform_changed_state({platform = platform})
platform.space_location = {name = "nauvis"}; events.on_space_platform_changed_state({platform = platform})
check(total("first-voyage") == 0, "Returning to departure must not count")
platform.space_location = nil; events.on_space_platform_changed_state({platform = platform})
platform.space_location = {name = "secretas"}; events.on_space_platform_changed_state({platform = platform})
check(total("first-voyage") == 1 and total("reach-secretas") == 1, "Arrival at a new location must count")
events.on_space_platform_changed_state({platform = platform})
check(total("reach-secretas") == 1, "Repeated state changes must not duplicate arrival")
-- No retrospective visits when installing on an existing save.
storage = {}; player.physical_surface = muluna; events.poll()
check(not storage.timsaba_milestones.completed[1], "Existing save must only establish a baseline")
-- No prototypes at all when the optional mod is absent.
mods.Milestones = nil
local old_count = 0
for _ in pairs(data.raw.item) do old_count = old_count + 1 end
dofile("compatibility/milestones-data.lua")
local new_count = 0
for _ in pairs(data.raw.item) do new_count = new_count + 1 end
check(old_count == new_count, "No integration prototypes without Milestones")
print("Milestones checks passed: " .. checks)
