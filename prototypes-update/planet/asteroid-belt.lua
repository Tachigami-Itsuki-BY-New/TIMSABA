if mods[asteroid_belt_mods] then
    space_discovery_asteroid_belt = "space-discovery-asteroid-belt"
    if mods[tellus_mods] then
        table.insert(data_technology[space_discovery_asteroid_belt].prerequisites, pathological_science_pack)
    end
    if mods[castra_mods] then
        table.insert(data_technology[space_discovery_asteroid_belt].prerequisites, battlefield_science_pack)
    end
    if mods[shchierbin_mods] then
        table.insert(data_technology[space_discovery_asteroid_belt].prerequisites, vanadium_science_pack)
    end
    if mods[muria_mods] then
        table.insert(data_technology[space_discovery_asteroid_belt].prerequisites, acidworking_science_pack)
    end
    if mods[pelagos_mods] then
        table.insert(data_technology[space_discovery_asteroid_belt].prerequisites, spoilage_science_pack)
    end
    if mods[apia_carnova_mods] then
        table.insert(data_technology[space_discovery_asteroid_belt].prerequisites, apicultural_science_pack)
    end

    space_discovery_kuiper_belt = "space-discovery-kuiper-belt"
    table.insert(data_technology[planet_discovery_aquilo].prerequisites, space_discovery_asteroid_belt)
    if mods[paracelsin_mods] then
        table.insert(data_technology[planet_discovery_paracelsin].prerequisites, space_discovery_asteroid_belt)
    end
    if mods[corrundum_mods] then
        table.insert(data_technology[planet_discovery_corrundum].prerequisites, space_discovery_asteroid_belt)

        if data_technology[space_discovery_kuiper_belt] then
            table.insert(data_technology[space_discovery_kuiper_belt].prerequisites, electrochemical_science_pack)
        end
    end
    if mods[secretas_frozeta_mods] then
        table.insert(data_technology[planet_discovery_secretas].prerequisites, space_discovery_asteroid_belt)

        if data_technology[space_discovery_kuiper_belt] then
            table.insert(data_technology[space_discovery_kuiper_belt].prerequisites, golden_science_pack)
        end
    end
    if mods[maraxsis_mods] then
        table.insert(data_technology[planet_discovery_maraxsis].prerequisites, space_discovery_asteroid_belt)
    end
end