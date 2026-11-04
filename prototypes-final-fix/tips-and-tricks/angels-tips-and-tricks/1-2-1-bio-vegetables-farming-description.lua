local description = {"", {"tips-and-tricks-description.angels-vegetables-farming"}}
local tnt = angelsmods.functions.TNT

local items = {""}
local mid_string = {"tips-and-tricks-description.equivalent-seed"}
table.insert(items, tnt.get_item_from_name(garden_temperate, item, "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({wheaton, seed_wheaton}, item, mid_string))
table.insert(items, tnt.get_items_from_name({tianaton, seed_tianaton}, item, mid_string))
table.insert(items, tnt.get_items_from_name({okarinome, seed_okarinome}, item, mid_string))
table.insert(items, tnt.get_items_from_name({quillnoa, seed_quillnoa}, item, mid_string))
table.insert(items, tnt.get_items_from_name({kendallion, seed_kendallion}, item, mid_string))
table.insert(items, tnt.get_item_from_name(garden_swamp, item, "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({elendilomone, seed_elendilomone}, item, mid_string))
table.insert(items, tnt.get_items_from_name({zombieecalyptus, seed_zombieecalyptus}, item, mid_string))
table.insert(items, tnt.get_items_from_name({saundsrcress, seed_saundsrcress}, item, mid_string))
table.insert(items, tnt.get_items_from_name({nexeflax, seed_nexeflax}, item, mid_string))
table.insert(items, tnt.get_items_from_name({mushredtato, seed_mushredtato}, item, mid_string))
table.insert(items, tnt.get_item_from_name(garden_desert, item, "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({binafran, seed_binafran}, item, mid_string))
table.insert(items, tnt.get_items_from_name({primedeadelion, seed_primedeadelion}, item, mid_string))
table.insert(items, tnt.get_items_from_name({nilaubergine, seed_nilaubergine}, item, mid_string))
table.insert(items, tnt.get_items_from_name({zelosquash, seed_zelosquash}, item, mid_string))
table.insert(items, tnt.get_items_from_name({arumbiphila, seed_arumbiphila}, item, mid_string))

table.insert(items, {"", {"tips-and-tricks-sub.angels-farm-seeds-to-crops"}, "\n"})

table.insert(description, items)

return description