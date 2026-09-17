require("prototypes.global-name.global-name")
require("prototypes.global-name.global-name-items")
require("prototypes.global-name.global-name-fluids")
require("prototypes.global-name.global-name-recipe")
require("prototypes.global-name.global-name-mods")
require("prototypes.prototypes-setting")

require("prototypes.recipe-category")
require("prototypes.fuel-category")

require("lib.TIMSABA-functions")
require("lib.barreling-and-void")

require("prototypes.planet-order")

require("prototypes.base.base-groups")
require("prototypes.bobs.bobs-groups")
require("prototypes.angels.angels-groups")
require("prototypes.space-age.space-age-groups")

require("prototypes.bobs.bobs-name-building")
require("prototypes.angels.angels-name-building")

require("prototypes.bobs.bobs-name-technology")
require("prototypes.angels.angels-name-technology")

require("lib.icons")

require("prototypes.new-icons.new-icons")
require("prototypes.new-icons.new-icons-items")
require("prototypes.new-icons.new-icons-fluids")
require("prototypes.new-icons.new-icons-recipes")
require("prototypes.new-icons.new-icons-entities")
require("prototypes.new-icons.new-icons-technology")

require("prototypes.bobs.bobs-item-fluid")
require("prototypes.angels.angels-item-fluid")

require("compatibility.angels-mods.angelspetrochem")

require("prototypes.TIMSABA.metallurgy.magnesium")
require("prototypes.TIMSABA.metallurgy.uranium")
require("prototypes.TIMSABA.metallurgy.thorium")
require("prototypes.TIMSABA.chemistry.boron")
require("prototypes.TIMSABA.chemistry.potassium")
require("prototypes.TIMSABA.chemistry.phosphorus")
require("prototypes.TIMSABA.metallurgy.molybdenum")
require("prototypes.TIMSABA.metallurgy.rhenium")
require("prototypes.TIMSABA.metallurgy.molybdenum-rhenium")
require("prototypes.TIMSABA.chemistry.selenium")
require("prototypes.TIMSABA.metallurgy.niobium")
require("prototypes.TIMSABA.metallurgy.holmium")
require("prototypes.TIMSABA.metallurgy.antimony")
require("prototypes.TIMSABA.metallurgy.germanium")
require("prototypes.TIMSABA.chemistry.arsenic")
require("prototypes.TIMSABA.metallurgy.gallium")
require("prototypes.TIMSABA.metallurgy.vanadium")

require("prototypes.TIMSABA.resource.new-resource")
require("prototypes.TIMSABA.resource.senaite")
require("prototypes.TIMSABA.resource.franckeite")
require("prototypes.TIMSABA.resource.plumbium")
require("prototypes.TIMSABA.resource.stannium")
require("prototypes.TIMSABA.resource.powellite")
require("prototypes.TIMSABA.resource.molybdenite")

require("prototypes.TIMSABA.remnants")
require("prototypes.TIMSABA.pipe")

require("compatibility.bobs-mods.bobores")
require("compatibility.bobs-mods.boblogistics")
require("compatibility.bobs-mods.bobplates")

require("prototypes.mods.flow-control-new.flow-control-base")
require("prototypes.mods.flow-control-new.flow-control-bobs")
require("prototypes.mods.flow-control-new.flow-control-TIMSABA")

require("prototypes.space-age.space-age-item-fluid")
require("prototypes.space-age.space-age-resource")
require("prototypes.space-age.space-age-entities")

require("prototypes.base.base-recipe")
require("prototypes.bobs.bobs-building")
require("prototypes.bobs.bobs-recipe")
require("prototypes.angels.angels-recipe")
require("prototypes.angels.angels-building")
require("prototypes.space-age.space-age-recipe")

require("prototypes.TIMSABA.technology")
-- base
require("prototypes.bobs.bobs-technology")
require("prototypes.angels.angels-technology")
require("prototypes.bobs-angels-technology")
require("prototypes.space-age.space-age-technology")

require("prototypes.TIMSABA.new-modules")

require("prototypes.planet.planet-groups")
require("prototypes.planet.planet-item-fluid")
require("prototypes.planet.planet-resource")
require("prototypes.planet.planet-recipe")
require("prototypes.planet.planet-building")
require("prototypes.planet.planet-technology")

require("prototypes.TIMSABA.resource.synthesis")

require("prototypes.TIMSABA.recipe-mods")
require("prototypes.TIMSABA.technology-mods")

-- ???
--require("prototypes.planet.rubia.rubia-groups")
--require("prototypes.planet.rubia.rubia-recipe")
--require("prototypes.planet.rubia.rubia-technology")

--require("prototypes.planet.cubium.cubium-groups")
--require("prototypes.planet.cubium.cubium-recipe")
--require("prototypes.planet.cubium.cubium-technology")

--require("prototypes.planet.nexus.nexus-groups")
--require("prototypes.planet.nexus.nexus-recipe")
--require("prototypes.planet.nexus.nexus-technology")

require("prototypes.mods.flow-control-new.flow-control-mods")

require("prototypes.angels-ground-water-pump-recipe")

require("prototypes.mods.space-science-pack")

for recipe_name, recipe in pairs(data.raw.recipe) do

    local function check_table(subtable_name)
        local st = recipe[subtable_name]
        if st then
            for index, item in pairs(st) do
                if type(item) == "table" and (not item.name or item[1] ~= nil) then
                    error(string.format("\n\n[CRITICAL ERROR] Найден устаревший (сокращенный) формат 1.1!\n" .. "Рецепт: '%s'\n" .. "Где косяк: в таблице '%s' (элемент №%s)\n" .. "Содержимое элемента: %s\n" .."Исправьте этот рецепт в своем моде на полный формат {type='item', name='...', amount=...}\n", recipe_name, subtable_name, tostring(index), serpent.block(item)))
                end
            end
        end
    end

    check_table("ingredients")
    check_table("results")
end