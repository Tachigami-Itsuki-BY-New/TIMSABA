local planet_lignumis = "lignumis"
local FAST_PLANT = "timsaba-fast-tree-plant"

script.on_event(defines.events.on_tower_planted_seed, function(event)
    local plant = event.plant
    if not plant or not plant.valid then return end
    if plant.surface.name ~= planet_lignumis then return end
    if plant.name == FAST_PLANT then return end

    local surface = plant.surface
    local pos = plant.position
    local quality = plant.quality
    local force = plant.force

    plant.destroy({ raise_destroy = false })

    local new_plant = surface.create_entity({
        name = FAST_PLANT,
        position = pos,
        quality = quality,
        force = force,
        raise_built = false,
        create_build_effect_smoke = false,
    })

    if not new_plant then return end

    local growth = new_plant.prototype.growth_ticks
    if growth and new_plant.tick_grown > game.tick + growth then
        new_plant.tick_grown = game.tick + growth
    end
end)