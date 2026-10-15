--require("scripting.lingumis-plants-boost")
require("scripting.starting-items")

local extract_ground = require("scripting.extract-ground")
local multi_building = require("scripting.multi-building")
local muluna_loot = require("scripting.muluna-loot")
local planet_messages = require("scripting.planet-messages")
local dynamic_underground_belts = require("scripting.dynamic-underground-belts")
local dynamic_pipe_to_ground = require("scripting.dynamic-pipe-to-ground")

local milestones_events
if script.active_mods["Milestones"] then
    require("compatibility.milestones")
    milestones_events = require("scripting.milestones-events")
    script.on_event(defines.events.on_rocket_launch_ordered, milestones_events.on_rocket_launch_ordered)
    script.on_event(defines.events.on_rocket_launched, milestones_events.on_rocket_launched)
    script.on_event(defines.events.on_space_platform_changed_state, milestones_events.on_space_platform_changed_state)
    script.on_nth_tick(60, milestones_events.poll)
end

script.on_event
({
    defines.events.on_built_entity,
    defines.events.on_robot_built_entity,
    defines.events.on_space_platform_built_entity
},
function(event)
    if extract_ground and extract_ground.on_entity_built then
        extract_ground.on_entity_built(event)
    end

    if multi_building and multi_building.on_entity_built then
        multi_building.on_entity_built(event)
    end

    if dynamic_underground_belts and dynamic_underground_belts.on_entity_built then
        dynamic_underground_belts.on_entity_built(event)
    end

    if dynamic_pipe_to_ground and dynamic_pipe_to_ground.on_entity_built then
        dynamic_pipe_to_ground.on_entity_built(event)
    end
end)

script.on_event
({
    defines.events.on_player_mined_entity,
    defines.events.on_robot_mined_entity,
    defines.events.on_space_platform_mined_entity
},
function(event)
    if dynamic_underground_belts and dynamic_underground_belts.on_entity_mined then
        dynamic_underground_belts.on_entity_mined(event)
    end

    if dynamic_pipe_to_ground and dynamic_pipe_to_ground.on_entity_mined then
        dynamic_pipe_to_ground.on_entity_mined(event)
    end
end)

script.on_event(defines.events.script_raised_built, function(event)
    if multi_building and multi_building.on_entity_built then
        multi_building.on_entity_built(event)
    end
end)


script.on_event(defines.events.on_surface_created, function(event)
    if script.active_mods["planet-muluna"] then
        if muluna_loot and muluna_loot.on_surface_created then
            muluna_loot.on_surface_created(event)
        end
    end
end)

script.on_event(defines.events.on_player_changed_surface, function(event)
    if milestones_events then milestones_events.on_player_changed_surface(event) end
    if planet_messages and planet_messages.on_player_changed_surface then
        planet_messages.on_player_changed_surface(event)
    end
end)