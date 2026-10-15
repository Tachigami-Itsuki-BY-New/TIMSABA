local M = {}
local prefix = "timsaba-milestone-"

local function state()
    storage.timsaba_milestones = storage.timsaba_milestones or {players = {}, platforms = {}, completed = {}}
    return storage.timsaba_milestones
end

local function mark(force, surface, suffix)
    local name = prefix .. suffix
    if not prototypes.item[name] then return end
    local completed = state().completed
    completed[force.index] = completed[force.index] or {}
    if completed[force.index][name] then return end
    -- Also respect counters inherited through force merges or restored statistics.
    for _, candidate in pairs(game.surfaces) do
        if force.get_item_production_statistics(candidate).get_input_count({name = name, quality = "normal"}) > 0 then
            completed[force.index][name] = true
            return
        end
    end
    completed[force.index][name] = true
    force.get_item_production_statistics(surface).on_flow({name = name, quality = "normal"}, 1)
end

function M.check_player(player)
    if not player or not player.valid then return end
    -- Remote view changes player.surface, but not physical_surface.
    local surface = player.physical_surface
    local players = state().players
    local previous = players[player.index]
    local current = {surface = surface.index, force = player.force.index}
    if not previous then
        players[player.index] = current
        return -- Baseline new players / existing saves without inventing old visits.
    end
    if previous.surface == surface.index and previous.force == player.force.index then return end
    if player.physical_controller_type ~= defines.controllers.character then return end
    players[player.index] = current
    if previous.force ~= player.force.index then return end
    if surface.platform then
        mark(player.force, surface, "first-spaceflight")
    elseif surface.planet then
        mark(player.force, surface, "visit-" .. surface.planet.name)
    end
end

function M.on_player_changed_surface(event)
    M.check_player(game.get_player(event.player_index))
end

function M.on_rocket_launch_ordered(event)
    local silo = event.rocket_silo
    if silo and silo.valid and silo.name == "provisional-rocket-silo" then
        mark(silo.force, silo.surface, "lignumis-rocket")
    end
end

function M.on_rocket_launched(event)
    local rocket = event.rocket
    if not rocket or not rocket.valid then return end
    local silo = event.rocket_silo
    if silo and silo.valid and silo.name == "provisional-rocket-silo" then
        mark(rocket.force, rocket.surface, "lignumis-rocket")
    elseif rocket.surface.planet and rocket.surface.planet.name == "nauvis" then
        mark(rocket.force, rocket.surface, "nauvis-rocket")
    end
end

function M.on_space_platform_changed_state(event)
    local platform = event.platform
    if not platform or not platform.valid then return end
    local platforms = state().platforms
    local previous = platforms[platform.index]
    local location = platform.space_location
    if not location then
        -- Keep the departure location through pauses and intermediate state changes.
        if previous then previous.travelling = true end
        return
    end
    if previous and previous.travelling and previous.location ~= location.name then
        mark(platform.force, platform.surface, "first-voyage")
        mark(platform.force, platform.surface, "reach-" .. location.name)
    end
    platforms[platform.index] = {location = location.name, travelling = false}
end

function M.poll()
    for _, player in pairs(game.connected_players) do M.check_player(player) end
    -- Seed already existing platforms; creating one in orbit is not a voyage.
    for _, force in pairs(game.forces) do
        for _, platform in pairs(force.platforms) do
            if not state().platforms[platform.index] and platform.space_location then
                state().platforms[platform.index] = {location = platform.space_location.name, travelling = false}
            end
        end
    end
end

return M
