-- Hidden, recipe-free counters bridge travel events to Milestones' item tracker.
-- They never enter an inventory and have no gameplay effects.
if not mods["Milestones"] then return end

local prefix = "timsaba-milestone-"
local function counter(name, localised_name, source)
    local prototype = {
        type = "item", name = prefix .. name, stack_size = 1,
        hidden = true, hidden_in_factoriopedia = true,
        localised_name = localised_name,
        localised_description = {"timsaba-milestones.counter-description"},
        order = name
    }
    if source and source.icons then
        prototype.icons = table.deepcopy(source.icons)
    elseif source and source.icon then
        prototype.icon = source.icon
        prototype.icon_size = source.icon_size or 64
    else
        prototype.icon = "__base__/graphics/icons/rocket-silo.png"
        prototype.icon_size = 64
    end
    data:extend({prototype})
end

for name, planet in pairs(data.raw.planet) do
    local starting_planet = mods["lignumis"] and "lignumis" or "nauvis"
    if name ~= starting_planet then
        counter("visit-" .. name,
            {"timsaba-milestones.visit", planet.localised_name or {"space-location-name." .. name}}, planet)
    end
end
for name, location in pairs(data.raw["space-location"] or {}) do
    -- Stars are map anchors, not destinations in this preset.
    if name ~= "star" and name ~= "pulsar" then
        counter("reach-" .. name,
            {"timsaba-milestones.reach", location.localised_name or {"space-location-name." .. name}}, location)
    end
end
counter("first-spaceflight", {"timsaba-milestones.first-spaceflight"}, data.raw.item["space-platform-starter-pack"])
counter("first-voyage", {"timsaba-milestones.first-voyage"}, data.raw.item["thruster"])
counter("nauvis-rocket", {"timsaba-milestones.nauvis-rocket"}, data.raw.item["rocket-silo"])
if mods["lignumis"] then
    counter("lignumis-rocket", {"timsaba-milestones.lignumis-rocket"}, data.raw.item["provisional-rocket-silo"])
end
