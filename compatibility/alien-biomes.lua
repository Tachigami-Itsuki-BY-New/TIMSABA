if not (mods["alien-biomes"] and alien_biomes) then return end

-- Run after Alien Biomes has replaced/removed tiles in data-final-fixes.
local ab_tiles = alien_biomes.list_tiles(
    alien_biomes.require_tag(alien_biomes.all_tiles(), {"grass", "dirt", "sand"})
)
table.sort(ab_tiles)

for _, plant_name in ipairs({"tree-plant", tree_temperate_plant, tree_swamp_plant, tree_desert_plant}) do
    local prototype = data.raw.plant[plant_name]
    local allowed_tiles = prototype and prototype.autoplace and prototype.autoplace.tile_restriction
    if allowed_tiles then
        local seen = {}
        for _, tile_name in pairs(allowed_tiles) do
            seen[tile_name] = true
        end
        for _, tile_name in ipairs(ab_tiles) do
            if data.raw.tile[tile_name] and not seen[tile_name] then
                table.insert(allowed_tiles, tile_name)
                seen[tile_name] = true
            end
        end
    end
end
