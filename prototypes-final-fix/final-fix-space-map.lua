local Planet = require('__kry_stdlib__/stdlib/data/planet')
local Location = require('__kry_stdlib__/stdlib/data/space-location')

local calidus_stargate = "calidus-bellicos-stargate-calidus"

local bellicos_stargate = "calidus-bellicos-stargate-bellicos"
local aegis_outer_edge = "aegis-outer-edge"
local aegis_inner_edge = "aegis-inner-edge"
local aegis_warden = "aegis-warden"

local stargate_connection = "stargate-connection"
local aegis = "aegis"
local bellicos_connection = "bellicos-connection"

local function update_planet_or_space_location(name, solar_power, solar_power_in_space, origin, distance, orientation, starmap_icon_orientation, order)
    if data_planet[name] then
        if solar_power then data_planet[name].surface_properties["solar-power"] = solar_power end
        if solar_power_in_space then data_planet[name].solar_power_in_space = solar_power_in_space end
        data_planet[name].label_orientation = 0.875

        -- Местоположение на Карте
        if origin then data_planet[name].origin = origin end -- Дистанция от Центра (Nauvis, Gleba and ...)
        data_planet[name].distance = distance -- Дистанция от Центра (Calidus)
        data_planet[name].orientation = orientation -- Направление по орбите: 0 - север(верх) / 0.25 - восток(право) / 0.5 юг(низ) / 0.75 - запад(лево)
        data_planet[name].starmap_icon_orientation = starmap_icon_orientation
        data_planet[name].parked_platforms_orientation = 0.25
        data_planet[name].draw_orbit = false
    else
        if solar_power_in_space then data_space_location[name].solar_power_in_space = solar_power_in_space end
        data_space_location[name].label_orientation = 0.875
        if order then data_space_location[name].order = order end

        -- Местоположение на Карте
        if origin then data_space_location[name].origin = origin end -- Дистанция от Центра (Nauvis, Gleba and ...)
        data_space_location[name].distance = distance -- Дистанция от Центра (Calidus)
        data_space_location[name].orientation = orientation -- Направление по орбите: 0 - север(верх) / 0.25 - восток(право) / 0.5 юг(низ) / 0.75 - запад(лево)
        data_space_location[name].starmap_icon_orientation = starmap_icon_orientation
        data_space_location[name].parked_platforms_orientation = 0.25
        data_space_location[name].draw_orbit = false
    end

    if name == northeast_asteroid_belt_outer_edge then data_space_location[name].label_orientation = 0.375 end
    if name == east_asteroid_belt_outer_edge then data_space_location[name].label_orientation = 0.375 end
    if name == southeast_asteroid_belt_outer_edge then data_space_location[name].label_orientation = 0.375 end

    if name == east_kuiper_belt_outer_edge then data_space_location[name].label_orientation = 0.375 end

    if name == aegis_inner_edge then data_space_location[name].label_orientation = 0.375 end
end

local line = "line"
local arc = "arc"

local multiplier_length = settings.startup[setting_space_connection_multiplier_length].value

local function update_space_connection(planet_A, dist_A, planet_B, dist_B, angle_deg)
    local distance = 0
    if angle_deg then
        local multiplied = 10
        if settings.startup[setting_space_connection_use_line].value then
            local angle_rad = math.rad(angle_deg)
            local dist_C_squared = (dist_A^2) + (dist_B^2) - (2 * dist_A * dist_B * math.cos(angle_rad))
            local dist_C = math.sqrt(dist_C_squared)
            multiplied = dist_C * 1000
        else
            local angle_rad = math.rad(angle_deg)
            local dist_C_squared = (dist_A^2) + (dist_B^2) - (2 * dist_A * dist_B * math.cos(angle_rad))
            local straight_line = math.sqrt(dist_C_squared)
            local orbit_diff = math.abs(dist_A - dist_B)
            local arc_length = straight_line + (orbit_diff * 0.25) * angle_rad
            multiplied = arc_length * 1000
        end
        distance = math.floor(multiplied / 100 + 0.5) * 100
    else
        distance = math.abs(dist_A - dist_B) * 1000
    end
    if planet_B then
        data_space_connection[planet_A .. "-" .. planet_B].length = distance * multiplier_length
        if settings.startup[setting_space_connection_use_line].value then
            data_space_connection[planet_A .. "-" .. planet_B].shape = line
        else
            if angle_deg then
                data_space_connection[planet_A .. "-" .. planet_B].shape = arc
            else
                data_space_connection[planet_A .. "-" .. planet_B].shape = line
            end
        end
        data_space_connection[planet_A .. "-" .. planet_B].order = planet_A .. "-" .. planet_B
    else
        data_space_connection[planet_A].length = distance * multiplier_length
        if settings.startup[setting_space_connection_use_line].value then
            data_space_connection[planet_A].shape = line
        else
            if angle_deg then
                data_space_connection[planet_A].shape = arc
            else
                data_space_connection[planet_A].shape = line
            end
        end
        data_space_connection[planet_A].order = planet_A
    end
end

local function update_space_connection_arc(planet_A, dist_A, planet_B, dist_B, angle_deg)
    local distance = 0

    if angle_deg then
        local angle_rad = math.rad(angle_deg)

        local arc_length = dist_A * angle_rad

        local multiplied = arc_length * 1000
        distance = math.floor(multiplied / 100 + 0.5) * 100
    end

    data_space_connection[planet_A .. "-" .. planet_B].length = distance * multiplier_length
    data_space_connection[planet_A .. "-" .. planet_B].shape = arc
    data_space_connection[planet_A .. "-" .. planet_B].order = planet_A .. "-" .. planet_B
end

local function remove_space_connection(name_1, name_2)
    data_space_connection[name_1 .. "-" .. name_2] = nil
end

if mods[asteroid_belt_mods] then
    -- NAUVIS
    update_planet_or_space_location(planet_nauvis, nil, 200, nil, 16, 0.75, 0.25)

    if mods[muluna_mods] then
        update_space_connection(planet_nauvis, 0, planet_muluna, 4)
    end

    if mods[lignumis_mods] then
        update_space_connection(planet_nauvis, 0, planet_lignumis, 2)
    end

    update_space_connection(planet_nauvis, 16, planet_vulcanus, 8)

    update_space_connection(planet_nauvis, 16, planet_gleba, 20, 90)

    update_space_connection(planet_nauvis, 16, planet_fulgora, 24, 90)

    if mods[arig_mods] then
        Planet(planet_nauvis):create_space_connection(Planet(planet_arig))
        update_space_connection(planet_nauvis, 16, planet_arig, 16, 45)
    end

    if mods[castra_mods] then
        Planet(planet_nauvis):create_space_connection(Planet(planet_castra))
        update_space_connection(planet_nauvis, 16, planet_castra, 20, 45)
    end

    if mods[muria_mods] then
        Planet(planet_nauvis):create_space_connection(Planet(planet_muria))
        update_space_connection(planet_nauvis, 16, planet_muria, 20, 45)
    end

    remove_space_connection(planet_nauvis, planet_moshine)
    remove_space_connection(planet_nauvis, planet_arig)
    remove_space_connection(planet_nauvis, planet_corrundum)
    remove_space_connection(planet_nauvis, planet_shchierbin)
    remove_space_connection(planet_nauvis, calidus_stargate)
    remove_space_connection(planet_nauvis, "stargate-connection")

    -- MULUNA
    if mods[muluna_mods] then
        update_planet_or_space_location(planet_muluna, 200, 200, {-16, 0}, 4, 0.625, 0.375)
    end

    -- LIGNUMIS
    if mods[lignumis_mods] then
        update_planet_or_space_location(planet_lignumis, 100, 200, {-16, 0}, 2, 0.875, 0.375)
    end

    -- VULCANUS
    update_planet_or_space_location(planet_vulcanus, nil, 800, nil, 8, 0.75, 0.25)

    if mods[moshine_mods] then
        update_space_connection(planet_vulcanus, 8, planet_moshine, 6, 90)
    end

    if mods[arig_mods] then
        Planet(planet_vulcanus):create_space_connection(Planet(planet_arig))
        update_space_connection(planet_vulcanus, 8, planet_arig, 16, 45)
    end

    if mods[castra_mods] then
        update_space_connection(planet_vulcanus, 8, planet_castra, 20, 45)
    end

    if mods[muria_mods] then
        Planet(planet_vulcanus):create_space_connection(Planet(planet_muria))
        update_space_connection(planet_vulcanus, 8, planet_muria, 20, 45)
    end

    remove_space_connection(planet_vulcanus, planet_gleba)
    remove_space_connection(planet_vulcanus, planet_corrundum)

    -- GLEBA
    update_planet_or_space_location(planet_gleba, nil, 100, nil, 20, 0, 0.5)

    if mods[panglia_mods] then
        update_space_connection(planet_gleba, 0, planet_panglia, 4)
    end

    if mods[hyarion_mods] and mods[tellus_mods] then
        Planet(planet_gleba):create_space_connection(Planet(planet_tellus))
        update_space_connection(planet_gleba, 20, planet_tellus, 16, 90)
    end

    if mods[shchierbin_mods] then
        Planet(planet_gleba):create_space_connection(Planet(planet_shchierbin))
        update_space_connection(planet_gleba, 20, planet_shchierbin, 20, 90)
    end

    if mods[muria_mods] then
        Planet(planet_gleba):create_space_connection(Planet(planet_muria))
        update_space_connection(planet_gleba, 20, planet_muria, 20, 45)
    end

    if mods[apia_carnova_mods] then
        update_space_connection(planet_gleba, 20, apia_carnova_orbit, 24, 45)
    end

    Planet(planet_gleba):create_space_connection(Location(northeast_asteroid_belt_inner_edge))
    update_space_connection(planet_gleba, 20, northeast_asteroid_belt_inner_edge, 28, 45)

    remove_space_connection(planet_gleba, planet_vulcanus)
    remove_space_connection(planet_gleba, planet_fulgora)
    remove_space_connection(planet_gleba, planet_castra)
    remove_space_connection(planet_gleba, planet_corrundum)
    remove_space_connection(planet_gleba, east_asteroid_belt_inner_edge)

    -- FULGORA
    update_planet_or_space_location(planet_fulgora, 25, 100, nil, 24, 0.5, 0)

    if mods[hyarion_mods] then
        Planet(planet_fulgora):create_space_connection(Planet(planet_hyarion))
        update_space_connection(planet_fulgora, 24, planet_hyarion, 12, 45)
    end

    if mods[shchierbin_mods] then
        Planet(planet_fulgora):create_space_connection(Planet(planet_shchierbin))
        update_space_connection(planet_fulgora, 24, planet_shchierbin, 20, 90)
    end

    if mods[castra_mods] then
        Planet(planet_fulgora):create_space_connection(Planet(planet_castra))
        update_space_connection(planet_fulgora, 24, planet_castra, 20, 45)
    end

    Planet(planet_fulgora):create_space_connection(Location(southeast_asteroid_belt_inner_edge))
    update_space_connection(planet_fulgora, 24, southeast_asteroid_belt_inner_edge, 28, 45)

    remove_space_connection(planet_fulgora, planet_arig)
    remove_space_connection(planet_fulgora, planet_muria)
    remove_space_connection(planet_fulgora, east_asteroid_belt_inner_edge)
    remove_space_connection(planet_fulgora, "stargate-connection")

    -- MOSHINE
    if mods[moshine_mods] then
        update_planet_or_space_location(planet_moshine, 1600, 3200, nil, 6, 0.5, 0)

        if mods[hyarion_mods] then
            Planet(planet_moshine):create_space_connection(Planet(planet_hyarion))
            update_space_connection(planet_moshine, 6, planet_hyarion, 12, 45)
        end

        if mods[shchierbin_mods] then
            Planet(planet_moshine):create_space_connection(Planet(planet_shchierbin))
            update_space_connection(planet_moshine, 6, planet_shchierbin, 20, 90)
        end

        remove_space_connection(planet_moshine, planet_corrundum)
    end

    -- PANGLIA
    if mods[panglia_mods] then
        update_planet_or_space_location(planet_panglia, 100, 200, {0, -20}, 4, 0, 0.5)
    end

    -- ARIG
    if mods[arig_mods] then
        update_planet_or_space_location(planet_arig, 50, 200, nil, 16, 0.625, 0.125)

        Planet(planet_arig):create_space_connection(Planet(planet_fulgora))
        update_space_connection(planet_arig, 16, planet_fulgora, 24, 45)

        if mods[moshine_mods] then
            Planet(planet_arig):create_space_connection(Planet(planet_moshine))
            update_space_connection(planet_arig, 16, planet_moshine, 6, 45)
        end

        if mods[hyarion_mods] then
            update_space_connection(planet_arig, 16, planet_hyarion, 12, 90)
        end

        if mods[hyarion_mods] then
            Planet(planet_arig):create_space_connection(Planet(planet_castra))
            update_space_connection(planet_arig, 16, planet_castra, 20)
        end

        remove_space_connection(planet_arig, planet_vulcanus)
        remove_space_connection(planet_arig, planet_tellus)
        remove_space_connection(planet_arig, planet_muria)
    end

    -- HYARIOAN
    if mods[hyarion_mods] then
        update_planet_or_space_location(planet_hyarion, 25, 400, nil, 12, 0.375, 0.125)

        if mods[tellus_mods] then
            Planet(planet_hyarion):create_space_connection(Planet(planet_tellus))
            update_space_connection(planet_hyarion, 12, planet_tellus, 16, 90)

            Planet(planet_hyarion):create_space_connection(Location(southeast_asteroid_belt_inner_edge))
            update_space_connection(planet_hyarion, 12, southeast_asteroid_belt_inner_edge, 28)

            Planet(planet_hyarion):create_space_connection(Location(east_asteroid_belt_inner_edge))
            update_space_connection(planet_hyarion, 12, east_asteroid_belt_inner_edge, 28, 45)
        end
    end

    -- TELLUS
    if mods[tellus_mods] then
        update_planet_or_space_location(planet_tellus, 100, 200, nil, 16, 0.125, 0.625)

        if mods[shchierbin_mods] then
            Planet(planet_tellus):create_space_connection(Planet(planet_shchierbin))
            update_space_connection(planet_tellus, 16, planet_shchierbin, 20, 45)
        end

        if mods[apia_carnova_mods] then
            Planet(planet_tellus):create_space_connection(Location(apia_carnova_orbit))
            update_space_connection(planet_tellus, 16, apia_carnova_orbit, 24)
        end

        Planet(planet_tellus):create_space_connection(Location(east_asteroid_belt_inner_edge))
        update_space_connection(planet_tellus, 16, east_asteroid_belt_inner_edge, 28, 45)

        remove_space_connection(planet_tellus, planet_hyarion)
    end

    -- SHCHIERBIN
    if mods[shchierbin_mods] then
        update_planet_or_space_location(planet_shchierbin, 100, 200, nil, 20, 0.25, 0.5)

        Planet(planet_shchierbin):create_space_connection(Location(east_asteroid_belt_inner_edge))
        update_space_connection(planet_shchierbin, 20, east_asteroid_belt_inner_edge, 28)

        Planet(planet_shchierbin):create_space_connection(Location(southeast_asteroid_belt_inner_edge))
        update_space_connection(planet_shchierbin, 20, southeast_asteroid_belt_inner_edge, 28, 45)

        Planet(planet_shchierbin):create_space_connection(Location(northeast_asteroid_belt_inner_edge))
        update_space_connection(planet_shchierbin, 20, northeast_asteroid_belt_inner_edge, 28, 45)

        remove_space_connection(planet_shchierbin, planet_gleba)
        remove_space_connection(planet_shchierbin, planet_fulgora)
    end

    -- CASTRA
    if mods[castra_mods] then
        update_planet_or_space_location(planet_castra, 100, 200, nil, 20, 0.625, 0.125)

        if mods[hyarion_mods] then
            Planet(planet_castra):create_space_connection(Planet(planet_hyarion))
            update_space_connection(planet_castra, 20, planet_hyarion, 12, 90)
        end

        remove_space_connection(planet_castra, planet_corrundum)
    end

    -- MURIA
    if mods[muria_mods] then
        update_planet_or_space_location(planet_muria, 100, 200, nil, 20, 0.875, 0.5)

        if mods[tellus_mods] then
            Planet(planet_muria):create_space_connection(Planet(planet_tellus))
            update_space_connection(planet_muria, 20, planet_tellus, 16, 90)
        end

        remove_space_connection(planet_muria, planet_hyarion)
        remove_space_connection(planet_muria, southeast_asteroid_belt_inner_edge)
    end

    -- APIA CARNOVA
    if mods[apia_carnova_mods] then
        update_planet_or_space_location(apia_carnova_orbit, nil, 100, nil, 24, 0.125, 0)

        update_space_connection(apia_carnova_orbit, 0, planet_apia, 2)

        update_space_connection(apia_carnova_orbit, 0, planet_carnova, 2)

        Location(apia_carnova_orbit):create_space_connection(Location(northeast_asteroid_belt_inner_edge))
        update_space_connection(apia_carnova_orbit, 24, northeast_asteroid_belt_inner_edge, 28)

        remove_space_connection(apia_carnova_orbit, planet_castra)

        -- Apia
        update_planet_or_space_location(planet_apia, nil, 100, {16.9705627484771, -16.9705627484771}, 2, 0, 0.625)

        -- Carnova
        update_planet_or_space_location(planet_carnova, 50, 100, {16.9705627484771, -16.9705627484771}, 2, 0.5, 0.625)
    end

    -- FIRST ASTEROID BELTS
    -- ВХОД в Т4 Северо-Восток
    update_planet_or_space_location(northeast_asteroid_belt_inner_edge, nil, 50, nil, 28, 0.125, 0.75, y_b .. "-" .. a)

    Location(northeast_asteroid_belt_inner_edge):create_space_connection(Location(northeast_asteroid_belt_outer_edge))
    update_space_connection(northeast_asteroid_belt_inner_edge, 28, northeast_asteroid_belt_outer_edge, 32)

    -- ВХОД в Т4 Восток
    update_planet_or_space_location(east_asteroid_belt_inner_edge, nil, 50, nil, 28, 0.25, 0.875, y_c .. "-" .. a)

    update_space_connection(east_asteroid_belt_inner_edge, 28, east_asteroid_belt_outer_edge, 32)

    Location(east_asteroid_belt_inner_edge):create_space_connection(Location(northeast_asteroid_belt_inner_edge))
    update_space_connection_arc(east_asteroid_belt_inner_edge, 28, northeast_asteroid_belt_inner_edge, 28, 45)

    Location(east_asteroid_belt_inner_edge):create_space_connection(Location(southeast_asteroid_belt_inner_edge))
    update_space_connection_arc(east_asteroid_belt_inner_edge, 28, southeast_asteroid_belt_inner_edge, 28, 45)

    remove_space_connection(east_asteroid_belt_inner_edge, apia_carnova_orbit)

    -- ВХОД в Т4 Юго-Восток
    update_planet_or_space_location(southeast_asteroid_belt_inner_edge, nil, 50, nil, 28, 0.375, 0, y_d .. "-" .. a)

    update_space_connection(southeast_asteroid_belt_inner_edge, 28, southeast_asteroid_belt_outer_edge, 32)

    remove_space_connection(southeast_asteroid_belt_inner_edge, planet_hyarion)

    -- TECHNOLOGY
    data_technology[space_discovery_asteroid_belt].effects =
    {
        {type = unlock_space_location, space_location = northeast_asteroid_belt_inner_edge},
        {type = unlock_space_location, space_location = northeast_asteroid_belt_outer_edge},
        {type = unlock_space_location, space_location = east_asteroid_belt_inner_edge},
        {type = unlock_space_location, space_location = east_asteroid_belt_outer_edge},
        {type = unlock_space_location, space_location = southeast_asteroid_belt_inner_edge},
        {type = unlock_space_location, space_location = southeast_asteroid_belt_outer_edge},
    }

    for i, prerequisite in ipairs(data_technology[space_discovery_asteroid_belt].prerequisites) do
        if prerequisite == tech_asteroid_reprocessing then
            table.remove(data_technology[space_discovery_asteroid_belt].prerequisites, i) break
        end
    end

    -- ВЫХОД в Т4 Северо-Восток
    update_planet_or_space_location(northeast_asteroid_belt_outer_edge, nil, 25, nil, 32, 0.125, 0.75, y_b .. "-" .. a)

    if mods[secretas_frozeta_mods] then
        Location(northeast_asteroid_belt_outer_edge):create_space_connection(Location(planet_secretas))
        update_space_connection(northeast_asteroid_belt_outer_edge, 32, planet_secretas, 52)
    end

    if mods[maraxsis_mods] then
        Location(northeast_asteroid_belt_outer_edge):create_space_connection(Planet(planet_maraxsis))
        update_space_connection(northeast_asteroid_belt_outer_edge, 32, planet_maraxsis, 36, 22.5)
    end

    -- ВЫХОД в Т4 Восток
    update_planet_or_space_location(east_asteroid_belt_outer_edge, nil, 25, nil, 32, 0.25, 0.875, y_c .. "-" .. a)

    Location(east_asteroid_belt_outer_edge):create_space_connection(Location(northeast_asteroid_belt_outer_edge))
    update_space_connection_arc(east_asteroid_belt_outer_edge, 32, northeast_asteroid_belt_outer_edge, 32, 45)

    Location(east_asteroid_belt_outer_edge):create_space_connection(Location(southeast_asteroid_belt_outer_edge))
    update_space_connection_arc(east_asteroid_belt_outer_edge, 32, southeast_asteroid_belt_outer_edge, 32, 45)

    update_space_connection(east_asteroid_belt_outer_edge, 32, planet_aquilo, 44)

    if mods[corrundum_mods] then
        Location(east_asteroid_belt_outer_edge):create_space_connection(Planet(planet_corrundum))
        update_space_connection(east_asteroid_belt_outer_edge, 32, planet_corrundum, 40, 22.5)
    end

    if mods[maraxsis_mods] then
        update_space_connection(east_asteroid_belt_outer_edge, 32, planet_maraxsis, 36, 22.5)
    end

    -- ВЫХОД в Т4 Юго-Восток
    update_planet_or_space_location(southeast_asteroid_belt_outer_edge, nil, 25, nil, 32, 0.375, 0, y_d .. "-" .. a)

    if mods[paracelsin_mods] then
        update_space_connection(southeast_asteroid_belt_outer_edge, 32, planet_paracelsin, 48)
    end

    if mods[corrundum_mods] then
        Location(southeast_asteroid_belt_outer_edge):create_space_connection(Planet(planet_corrundum))
        update_space_connection(southeast_asteroid_belt_outer_edge, 32, planet_corrundum, 40, 22.5)
    end

    -- AQUILO
    update_planet_or_space_location(planet_aquilo, 1, 25, nil, 44, 0.25, 0.75)

    if data_space_location[east_kuiper_belt_inner_edge] then
        update_space_connection(planet_aquilo, 44, east_kuiper_belt_inner_edge, 60)
    end

    remove_space_connection(planet_aquilo, planet_secretas)

    -- PARACELSIN
    if mods[paracelsin_mods] then
        update_planet_or_space_location(planet_paracelsin, 1, 25, nil, 48, 0.375, 0)

        if mods[corrundum_mods] then
            Planet(planet_paracelsin):create_space_connection(Planet(planet_corrundum))
            update_space_connection(planet_paracelsin, 48, planet_corrundum, 40, 22.5)
        end

        if data_space_location[east_kuiper_belt_inner_edge] then
            Planet(planet_paracelsin):create_space_connection(Location(east_kuiper_belt_inner_edge))
            update_space_connection(planet_paracelsin, 48, east_kuiper_belt_inner_edge, 60, 45)
        end

        if data_space_location[southeast_kuiper_belt_inner_edge] then
            Planet(planet_paracelsin):create_space_connection(Location(southeast_kuiper_belt_inner_edge))
            update_space_connection(planet_paracelsin, 48, southeast_kuiper_belt_inner_edge, 60)
        end

        remove_space_connection(planet_paracelsin, planet_aquilo)
    end

    -- CORRUNDUM
    if mods[corrundum_mods] then
        update_planet_or_space_location(planet_corrundum, 25, 25, nil, 40, 0.3125, 0.0625)

        Planet(planet_corrundum):create_space_connection(Planet(planet_aquilo))
        update_space_connection(planet_corrundum, 40, planet_aquilo, 44, 22.5)

        if data_space_location[east_kuiper_belt_inner_edge] then
            Planet(planet_corrundum):create_space_connection(Location(east_kuiper_belt_inner_edge))
            update_space_connection(planet_corrundum, 40, east_kuiper_belt_inner_edge, 60, 22.5)
        end

        if data_space_location[southeast_kuiper_belt_inner_edge] then
            Planet(planet_corrundum):create_space_connection(Location(southeast_kuiper_belt_inner_edge))
            update_space_connection(planet_corrundum, 40, southeast_kuiper_belt_inner_edge, 60, 22.5)
        end
    end

    -- SECRETAS / FROZETA
    if mods[secretas_frozeta_mods] then
        update_planet_or_space_location(planet_secretas, nil, 25, nil, 52, 0.125, 0.875)

        update_space_connection(planet_secretas, 0, planet_frozeta, 4)

        if mods[maraxsis_mods] then
            Location(planet_secretas):create_space_connection(Planet(planet_maraxsis))
            update_space_connection(planet_secretas, 52, planet_maraxsis, 36, 22.5)
        end

        if data_space_location[east_kuiper_belt_inner_edge] then
            Location(planet_secretas):create_space_connection(Location(east_kuiper_belt_inner_edge))
            update_space_connection(planet_secretas, 52, east_kuiper_belt_inner_edge, 60, 45)
        end

        remove_space_connection(planet_maraxsis, planet_secretas)

        update_planet_or_space_location(planet_frozeta, 1, 1, {36.7695526217005, -36.7695526217005}, 4, 0.125, 0.375)
    end

    -- MARAXSIS
    if mods[maraxsis_mods] then
        update_planet_or_space_location(planet_maraxsis, 25, 25, nil, 36, 0.1875, 0.6875)

        update_space_connection(planet_maraxsis, 36, planet_aquilo, 44, 22.5)

        if data_space_location[east_kuiper_belt_inner_edge] then
            Planet(planet_maraxsis):create_space_connection(Location(east_kuiper_belt_inner_edge))
            update_space_connection(planet_maraxsis, 36, east_kuiper_belt_inner_edge, 60, 22.5)
        end
    end

    -- SECOND ASTEROID BELTS
    -- ВХОД в Т5 Восток
    if data_space_location[east_kuiper_belt_inner_edge] then
        update_planet_or_space_location(east_kuiper_belt_inner_edge, nil, 25, nil, 60, 0.25, 0.875, z_c .. "-" .. a)

        update_space_connection(east_kuiper_belt_inner_edge, 60, east_kuiper_belt_outer_edge, 68)

        Location(east_kuiper_belt_inner_edge):create_space_connection(Location(southeast_kuiper_belt_inner_edge))
        update_space_connection_arc(east_kuiper_belt_inner_edge, 60, southeast_kuiper_belt_inner_edge, 60, 45)
    end

    -- ВХОД в Т5 Юго-Восток
    if data_space_location[southeast_kuiper_belt_inner_edge] then
        Location(southeast_kuiper_belt_inner_edge):create_space_connection(Location(southeast_kuiper_belt_outer_edge))
        update_space_connection(southeast_kuiper_belt_inner_edge, 60, southeast_kuiper_belt_outer_edge, 68)
    end

    -- Technology
    if data_technology[space_discovery_kuiper_belt] then
        data_technology[space_discovery_kuiper_belt].effects =
        {
            {type = unlock_space_location, space_location = east_kuiper_belt_inner_edge},
            {type = unlock_space_location, space_location = east_kuiper_belt_outer_edge},
            {type = unlock_space_location, space_location = southeast_kuiper_belt_inner_edge},
            {type = unlock_space_location, space_location = southeast_kuiper_belt_outer_edge},
        }
    end
    -- ВЫХОД в Т5 Восток
    if data_space_location[east_kuiper_belt_outer_edge] then
        update_planet_or_space_location(east_kuiper_belt_outer_edge, nil, 1, nil, 68, 0.25, 0.875, z_c .. "-" .. b)

        Location(east_kuiper_belt_outer_edge):create_space_connection(Location(southeast_kuiper_belt_outer_edge))
        update_space_connection_arc(east_kuiper_belt_outer_edge, 68, southeast_kuiper_belt_outer_edge, 68, 45)

        if mods[vesta_mods] then
            update_space_connection(east_kuiper_belt_outer_edge, 68, planet_vesta, 84)
        end
    end
    -- ВЫХОД в Т5 Юго-Восток
    if data_space_location[southeast_kuiper_belt_outer_edge] then
        if mods[aegis_bellicos_mods] then
            Location(southeast_kuiper_belt_outer_edge):create_space_connection(Location(calidus_stargate))
            update_space_connection(southeast_kuiper_belt_outer_edge, 68, calidus_stargate, 84)
        end
    end

    -- VESTA
    if mods[vesta_mods] then
        update_planet_or_space_location(planet_vesta, 1, 1, nil, 84, 0.25, 0.75)

        update_space_connection(planet_vesta, 84, solar_system_edge, 100)
    end

    -- AEGIS and BELLICOS
    if mods[aegis_bellicos_mods] then
        -- Calidus Stargate
        update_planet_or_space_location(calidus_stargate, nil, 1, nil, 84, 0.375, 0)

        update_space_connection("inter", 0, stargate_connection, 4)

        Location(calidus_stargate):create_space_connection(Location(solar_system_edge))
        update_space_connection(calidus_stargate, 84, solar_system_edge, 100, 45)

        remove_space_connection(calidus_stargate, planet_fulgora)
        remove_space_connection(calidus_stargate, planet_arig)
        remove_space_connection(calidus_stargate, planet_muria)

        -- Belicos Stargate
        update_planet_or_space_location(bellicos_stargate, nil, 10, nil, 40, 0.875, 0)

        update_space_connection(aegis, 40, stargate_connection, 32)

        -- Aegis Outer Edge
        update_planet_or_space_location(aegis_outer_edge, nil, 100, nil, 32, 0.875, 0)

        update_space_connection("aegis_outer_inner_connection", 32, nil, 24)

        update_space_connection("aegis_outer_warden_connection", 32, nil, 33, 22.5)

        -- Aegis Inner Edge
        update_planet_or_space_location(aegis_inner_edge, nil, 400, nil, 24, 0.875, 0)

        update_space_connection(aegis, 24, bellicos_connection, 0)

        update_space_connection("aegis_inner_warden_connection", 24, nil, 33, 22.5)

        -- Aegis Warden
        update_planet_or_space_location(aegis_warden, nil, 50, nil, 33, 0.8125, 0)

        -- Bellicos Orbit
        update_planet_or_space_location(bellicos_orbit, nil, 3200, nil, 0, 0.75, 0)
    end

    -- 

    -- 

    -- SOLAR SYSTEM EDGE
    update_planet_or_space_location(solar_system_edge, nil, 1, nil, 100, 0.25, 0.75)

    update_space_connection(solar_system_edge, 0, shattered_planet, 4000)

    remove_space_connection(solar_system_edge, southeast_kuiper_belt_outer_edge)

    -- SHATTERED PLANET
    update_planet_or_space_location(shattered_planet, nil, 1, nil, 256, 0.25, 0.75)
end