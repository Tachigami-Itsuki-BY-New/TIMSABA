local description = {"tips-and-tricks-description.angels-petrochem"}

local function get_item_from_name(item_name, item_type, before)
    before = before or "- "
    item_type = item_type or "item"
    return
    {
        "",
        before .. "[" .. "img=" .. item_type .. "/" .. item_name .. "] ",
        { item_type .. "-name." .. item_name },
        "\n",
    }
end
local one = {""}
table.insert(one, get_item_from_name(plastic))
table.insert(one, get_item_from_name(explosives))
table.insert(one, get_item_from_name(data_item[resin_bob] and resin_bob))
table.insert(one, get_item_from_name(data_item[rubber_bob] and rubber_bob))
table.insert(one, get_item_from_name(sulfuric_acid_angels, fluid))
table.insert(one, {"tips-and-tricks-description.various-fuels"})
table.insert(description, one)

local two = {""}
table.insert(two, get_item_from_name("angels-natural-gas", "entity", ""))

table.insert(description, two)

return description