local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local graphics_gleba = "__TIMSABA__/graphics/icons/space-age/gleba/"

jivolite_bacteria = "jivolite-bacteria"
crotinnium_bacteria = "crotinnium-bacteria"
rubyte_bacteria = "rubyte-bacteria"
bobmonium_bacteria = "bobmonium-bacteria"
senaite_bacteria = "senaite-bacteria"
franckeite_bacteria = "franckeite-bacteria"
local function create_ore_bacteria(name, order, spoil_result)
    data:extend
    ({
        {
            type = item,
            name = name,
            subgroup = is_bacteria_ore,
            icon = graphics_gleba .. name .. ".png",
            order = order,
            stack_size = 200,
            weight = 5000,
            inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
            pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
            drop_sound = space_age_item_sounds.agriculture_inventory_move,
            default_import_location = planet_gleba,
            spoil_ticks = 1 * minute,
            spoil_result = spoil_result
        }
    })
end
create_ore_bacteria(jivolite_bacteria,   b, ore_jivolite)
create_ore_bacteria(crotinnium_bacteria, d, ore_crotinnium)
create_ore_bacteria(rubyte_bacteria,     e, ore_rubyte)
create_ore_bacteria(bobmonium_bacteria,  f, ore_bobmonium)
create_ore_bacteria(senaite_bacteria,    g, ore_senaite)
create_ore_bacteria(franckeite_bacteria, h, ore_franckeite)
TIMSABA.void.freezing_organics(jivolite_bacteria)
TIMSABA.void.freezing_organics(crotinnium_bacteria)
TIMSABA.void.freezing_organics(rubyte_bacteria)
TIMSABA.void.freezing_organics(bobmonium_bacteria)
TIMSABA.void.freezing_organics(senaite_bacteria)
TIMSABA.void.freezing_organics(franckeite_bacteria)