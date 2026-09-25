if mods[eneas_mods] then
    local auxiliary_ai = "auxiliary-ai"
    if mods[arig_mods] then
        table.insert(data_lab[auxiliary_ai].inputs, compression_science_pack)
    end
    if mods[hyarion_mods] then
        table.insert(data_lab[auxiliary_ai].inputs, polishing_science_pack)
        table.insert(data_lab[auxiliary_ai].inputs, refraction_science_pack)
    end
    if mods[tellus_mods] then
        table.insert(data_lab[auxiliary_ai].inputs, bioengineering_science_pack)
        table.insert(data_lab[auxiliary_ai].inputs, pathological_science_pack)
    end
    if mods[paracelsin_mods] then
        table.insert(data_lab[auxiliary_ai].inputs, galvanization_science_pack)
    end
    if mods[castra_mods] then
        table.insert(data_lab[auxiliary_ai].inputs, battlefield_science_pack)
    end
    if mods[shchierbin_mods] then
        table.insert(data_lab[auxiliary_ai].inputs, vanadium_science_pack)
    end
    if mods[maraxsis_mods] then
        table.insert(data_lab[auxiliary_ai].inputs, hydraulic_science_pack)
    end
    if mods[muria_mods] then
        table.insert(data_lab[auxiliary_ai].inputs, acidworking_science_pack)
    end
    if mods[pelagos_mods] then
        table.insert(data_lab[auxiliary_ai].inputs, spoilage_science_pack)
    end
    if mods[apia_carnova_mods] then
        table.insert(data_lab[auxiliary_ai].inputs, apicultural_science_pack)
    end
end