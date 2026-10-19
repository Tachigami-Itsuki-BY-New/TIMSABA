if mods[bobwarfare] then
    ---@type CreateIconsFromListInputs
    local inputs =
    {
        mod = bobs_mod,
        group = "warfare",
        type = technology,
        technology_icon_size = 256
    }

    ---@type CreateIconsFromListTable
    local technologies =
    {
        -- SNIPER TURRET T4
        [tech_sniper_turret_4] = {icon_name = "sniper-turrets", tier = 4, prog_tier = 6},
        -- ARTILLERY TURRET T4
        [artillery_turret_4] = {icon_name = "artillery", tier = 4, prog_tier = 6}
    }

    reskins.internal.create_icons_from_list(technologies, inputs)
end