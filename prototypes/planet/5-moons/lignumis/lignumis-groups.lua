if mods[lignumis_mods] then
    local ig_lignumis = "lignumis"
    data:extend
    ({
        {
            type = item_group,
            name = ig_lignumis,
            order = data_planet[planet_lignumis].order,
            icon = "__TIMSABA__/graphics/icons/lignumis/lignumis-planet.png",
            icon_size = 128
        }
    })

    is_lignumis_wood = "is-lignumis-wood"
    is_lignumis_gold = "is-lignumis-gold"
    is_wodginite = "is-wodginite"
    is_tantalum = "is-tantalum"
    is_tantalum_chemistry = "is-tantalum-chemistry"
    is_tantalum_tungsten = "is-tantalum-tungsten"
    is_tantalum_molybdenum_rhenium = "is-tantalum-molybdenum-rhenium"
    is_tantalum_niobium = "is-tantalum-niobium"
    is_cupriavidus = "is-cupriavidus"
    is_lignumis_logistic = "is-lignumis-logistic"
    is_lignumis_mining = "is-lignumis-mining"
    is_lignumis_building = "is-lignumis-building"
    is_lignumis_war = "is-lignumis-war"
    TIMSABA.functions.create_subgroups(ig_lignumis,
    {
        {name = is_lignumis_wood,               order = a},
        {name = is_lignumis_gold,               order = b},
        {name = is_wodginite,                   order = c},
        {name = is_tantalum,                    order = d},
        {name = is_tantalum_chemistry,          order = d_a},
        {name = is_tantalum_tungsten,           order = d_c},
        {name = is_tantalum_molybdenum_rhenium, order = d_d},
        {name = is_tantalum_niobium,            order = d_e},
        {name = is_cupriavidus,                 order = e},
        {name = is_lignumis_logistic,           order = f},
        {name = is_lignumis_mining,             order = g},
        {name = is_lignumis_building,           order = h},
        {name = is_lignumis_war,                order = i}
    })
end