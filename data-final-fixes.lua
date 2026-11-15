local map_settings = data.raw["map-settings"]["map-settings"]
map_settings.enemy_expansion.enabled = true
map_settings.enemy_evolution.enabled = true
map_settings.enemy_evolution.time_factor = 0
map_settings.pollution.enabled = true

require("prototypes-final-fix.duplicate-items-and-fluids.base")
require("prototypes-final-fix.duplicate-items-and-fluids.bobs")
require("prototypes-final-fix.duplicate-items-and-fluids.angels")
require("prototypes-final-fix.duplicate-items-and-fluids.space-age")

-- FIRST CIRCLE PLANETS
-- nauvis
-- vulcanus
-- gleba
-- fulgora

-- SECOND CIRCLE PLANETS
require("prototypes-final-fix.duplicate-items-and-fluids.planet.moshine")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.arig")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.hyarion")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.tellus")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.corrundum")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.castra")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.shchierbin")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.muria")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.pelagos")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.apia-carnova")

-- THIRD CIRCLE PLANETS
-- aquilo
require("prototypes-final-fix.duplicate-items-and-fluids.planet.paracelsin")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.maraxsis")

-- FOURTH CIRCLE PLANETS
require("prototypes-final-fix.duplicate-items-and-fluids.planet.vesta")

-- MOONS
require("prototypes-final-fix.duplicate-items-and-fluids.planet.muluna")
-- panglia
require("prototypes-final-fix.duplicate-items-and-fluids.planet.frozeta")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.terrapalus")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.lignumis")

-- OTHER STAR SYSTEMS
require("prototypes-final-fix.duplicate-items-and-fluids.planet.aegis-bellicos")

-- FINAL CIRCLE PLANETS
require("prototypes-final-fix.duplicate-items-and-fluids.planet.shattered")

-- ???
require("prototypes-final-fix.duplicate-items-and-fluids.planet.foliax")
-- obsidiax
-- crucible
require("prototypes-final-fix.duplicate-items-and-fluids.planet.ribbonia")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.eneas")
-- rubia
-- cubium
require("prototypes-final-fix.duplicate-items-and-fluids.planet.nexus")

require("prototypes-final-fix.duplicate-items-and-fluids.mods")

require("prototypes-final-fix.mods-final-fix.flare-stack")
require("prototypes-final-fix.mods-final-fix.rocket-silo-construction")
require("prototypes-final-fix.mods-final-fix.bobs-new")
require("prototypes-final-fix.mods-final-fix.mods-update-icons")

require("prototypes-final-fix.final-fix-recipe-barreling")
require("prototypes-final-fix.final-fix-recipe-voids")
require("prototypes-final-fix.final-fix-mods")
require("prototypes-final-fix.final-fix-weights")
require("prototypes-final-fix.final-fix-entities-yelds")
require("prototypes-final-fix.final-fix-recycling")
require("prototypes-final-fix.final-fix-recipe")
require("prototypes-final-fix.final-fix-technology")
require("prototypes-final-fix.final-fix-horogon-balance")
require("prototypes-final-fix.final-fix-module")
require("prototypes-final-fix.final-fix-settings")
require("prototypes-final-fix.final-fix-autoplace-controls")
require("prototypes-final-fix.final-fix-simulation")
require("prototypes-final-fix.final-fix-entities")
require("prototypes-final-fix.final-fix-fuel-categories")
require("prototypes-final-fix.final-fix-prototypes-deleted")
require("prototypes-final-fix.final-fix-space-map")

require("prototypes-final-fix.multi-building.scripting")
require("prototypes-final-fix.multi-building.entities")

require("prototypes-final-fix.tips-and-tricks.final-fix-tips-and-tricks")

--require("prototypes-final-fix.final-fix-lingumis-plants-boost")

require("compatibility.milestones.milestones-data") -- Register travel counters after the final planet/prototype changes.
require("compatibility.alien-biomes.alien-biomes-tile-restriction")

-- Диагностика рецептов для предотвращения ошибки table index is nil в моде Angel's
local function validate_recipes_for_angels()
    local broken_recipes_count = 0

    for recipe_name, recipe in pairs(data_recipe) do
        -- 1. Проверяем секцию ингредиентов
        if recipe.ingredients then
            for i, item in pairs(recipe.ingredients) do
                if type(item) == "table" and item.name == nil and item[1] == nil then
                    log("[Porject TIMSABA] НАЙДЕНА ОШИБКА: Рецепт '" .. recipe_name .. "' содержит ПУСТОЙ ингредиент (индекс " .. i .. ")")
                    broken_recipes_count = broken_recipes_count + 1
                end
            end
        end

        -- 2. Проверяем секцию результатов
        if recipe.results then
            for i, item in pairs(recipe.results) do
                if type(item) == "table" and item.name == nil and item[1] == nil then
                    log("[Porject TIMSABA] НАЙДЕНА ОШИБКА: Рецепт '" .. recipe_name .. "' содержит ПУСТОЙ результат (индекс " .. i .. ")")
                    broken_recipes_count = broken_recipes_count + 1
                end
            end
        end
    end

    if broken_recipes_count > 0 then
        log("[Porject TIMSABA] Всего найдено поломанных рецептов: " .. broken_recipes_count)
        -- Опционально: можно принудительно вызвать ошибку здесь, чтобы игра показала ваш лог сразу
        error("Валидатор мода обнаружил " .. broken_recipes_count .. " кривых рецептов. Проверьте factorio-current.log по тегу Porject TIMSABA")
    else
        log("[Porject TIMSABA] Все рецепты имеют корректную структуру.")
    end
end

-- Запуск проверки
validate_recipes_for_angels()