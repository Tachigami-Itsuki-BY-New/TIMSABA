if mods[bobmodules] then
    -- SPEED
    data_module[speed_module_1].effect =
    {
        speed = bobmods.modules.SpeedBonus, -- 25%
        consumption = bobmods.modules.ConsumptionPenaltyPerLevel, -- 25%
        --quality = -1 * bobmods.modules.QualityBonus, -- -1%
    }

    data_module[speed_module_2].effect =
    {
        speed = bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus, -- 50%
        consumption = bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 50%
        --quality = -1 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus, -- -2%
    }

    data_module[speed_module_3].effect =
    {
        speed = 2 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus, -- 75%
        consumption = 2 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 75%
        --quality = -2 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus, -- -3%
    }

    data_module[speed_module_4].effect =
    {
        speed = 3 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus, -- 100%
        consumption = 3 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 100%
        --quality = -3 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus, -- -4%
    }

    data_module[speed_module_5].effect =
    {
        speed = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus, -- 125%
        consumption = 4 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 125%
        --quality = -4 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus, -- -5%
    }

    -- EFFICIENCY
    --data_module[efficiency_module_1].effect = {consumption = -1 * bobmods.modules.ConsumptionBonus} -- 25%

    --data_module[efficiency_module_2].effect = {consumption = -1 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus} -- 50%

    --data_module[efficiency_module_3].effect = {consumption = -2 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus} -- 75%

    --data_module[efficiency_module_4].effect = {consumption = -3 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus} -- 100%

    --data_module[efficiency_module_5].effect = {consumption = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus} -- 125%


    -- PRODUCTIVITY
    data_module[productivity_module_1].effect =
    {
        speed = -1 * bobmods.modules.SpeedPenalty, -- -25%
        consumption = bobmods.modules.ConsumptionPenalty, -- 25%
        productivity = bobmods.modules.ProductivityBonus, -- 5%
        pollution = bobmods.modules.PollutionPenalty, -- 25%
    }

    data_module[productivity_module_2].effect =
    {
        speed = -1 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- -50%
        consumption = bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 50%
        productivity = bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 10%
        pollution = bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 50%
    }

    data_module[productivity_module_3].effect =
    {
        speed = -2 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- -75%
        consumption = 2 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 75%
        productivity = 2 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 15%
        pollution = 2 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 75%
    }

    data_module[productivity_module_4].effect =
    {
        speed = -3 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- -100%
        consumption = 3 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 100%
        productivity = 3 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 20%
        pollution = 3 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 100%
    }

    data_module[productivity_module_5].effect =
    {
        speed = -4 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- -125%
        consumption = 4 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 125%
        productivity = 4 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 25%
        pollution = 4 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 125%
    }

    -- POLLUTION CLEANING
    --data_module[pollution_clean_module_1].effect = {pollution = -1 * bobmods.modules.PollutionBonus} -- 25%

    --data_module[pollution_clean_module_2].effect = {pollution = -1 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus} -- 50%

    --data_module[pollution_clean_module_3].effect = {pollution = -2 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus} -- 75%

    --data_module[pollution_clean_module_4].effect = {pollution = -3 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus} -- 100%

    --data_module[pollution_clean_module_5].effect = {pollution = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus} -- 125%


    -- POLLUTION PRODUCING
    --data_module[pollution_create_module_1].effect = {pollution = bobmods.modules.PollutionCreateBonus} -- 25%

    --data_module[pollution_create_module_2].effect = {pollution = bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus} -- 50%

    --data_module[pollution_create_module_3].effect = {pollution = 2 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus} -- 75%

    --data_module[pollution_create_module_4].effect = {pollution = 3 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus} -- 100%

    --data_module[pollution_create_module_5].effect = {pollution = 4 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus} -- 125%

    -- QUALITY
    if mods[quality_mods] then
        data_module[quality_module_1].effect =
        {
            speed = -1 * bobmods.modules.SpeedPenalty, -- -25%
            quality = bobmods.modules.QualityBonus, -- 2%
        }

        data_module[quality_module_2].effect =
        {
            speed = -1 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- 50%
            quality = bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus, -- 4%
        }

        data_module[quality_module_3].effect =
        {
            speed = -2 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- 75%
            quality = 2 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus, -- 6%
        }

        data_module[quality_module_4].effect =
        {
            speed = -3 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- 100%
            quality = 3 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus, -- 8%
        }

        data_module[quality_module_5].effect =
        {
            speed = -4 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- 125%
            quality = 4 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus, -- 10%
        }
    end

    -- AGRICULTURAL
    local module_color_map = {["yellow"] = {primary = util.color("e6c229"), secondary = util.color("ffe670")}}
    data_module[agricultural_module_1].effect =
    {
        productivity = bobmods.modules.ProductivityBonus, -- 5%
        pollution = bobmods.modules.PollutionPenalty, -- 25%
    }
    data_module[agricultural_module_1].beacon_tint = module_color_map["yellow"]

    data_module[agricultural_module_2].effect =
    {
        productivity = bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 10%
        pollution = bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 50%
    }
    data_module[agricultural_module_2].beacon_tint = module_color_map["yellow"]

    data_module[agricultural_module_3].effect =
    {
        productivity = 2 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 15%
        pollution = 2 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 75%
    }
    data_module[agricultural_module_3].beacon_tint = module_color_map["yellow"]

    data_module[agricultural_module_4].effect =
    {
        productivity = 3 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 20%
        pollution = 3 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 100%
    }
    data_module[agricultural_module_4].beacon_tint = module_color_map["yellow"]

    data_module[agricultural_module_5].effect =
    {
        productivity = 4 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 25%
        pollution = 4 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 125%
    }
    data_module[agricultural_module_5].beacon_tint = module_color_map["yellow"]
end

-- MOSHINE
if mods[moshine_mods] then
    data_module[ai_tier_1].effect = {speed = 0.25}
    data_module[ai_tier_2].effect = {speed = 0.50}
    data_module[ai_tier_3].effect = {speed = 0.75}
    data_module[ai_tier_4].effect = {speed = 1.00}
    data_module[ai_tier_5].effect = {speed = 1.25}
    data_module[ai_tier_6].effect = {speed = 1.50}
    data_module[ai_tier_7].effect = {speed = 1.75}
    data_module[ai_tier_8].effect = {speed = 2.00}
    data_module[ai_tier_9].effect = {speed = 2.25}
    data_module[ai_tier_10].effect = {speed = 2.50}
end

-- PRODUCTION
local minings =
{
    {name = electric_mining_drill_1, subgroup = is_extraction_machine_mining},
    {name = electric_mining_drill_2, subgroup = is_extraction_machine_mining},
    {name = electric_mining_drill_3, subgroup = is_extraction_machine_mining},
    {name = electric_mining_drill_4, subgroup = is_extraction_machine_mining},
    {name = electric_mining_drill_5, subgroup = is_extraction_machine_mining},
    {name = electric_mining_drill_6, subgroup = is_extraction_machine_mining},
    {name = pumpjack_1, subgroup = is_extraction_machine_pumpjack},
    {name = pumpjack_2, subgroup = is_extraction_machine_pumpjack},
    {name = pumpjack_3, subgroup = is_extraction_machine_pumpjack},
    {name = pumpjack_4, subgroup = is_extraction_machine_pumpjack},
    {name = pumpjack_5, subgroup = is_extraction_machine_pumpjack},
    {name = pumpjack_6, subgroup = is_extraction_machine_pumpjack},
    {name = area_mining_drill_1, subgroup = is_extraction_machine_mining},
    {name = area_mining_drill_2, subgroup = is_extraction_machine_mining},
    {name = area_mining_drill_3, subgroup = is_extraction_machine_mining},
    {name = area_mining_drill_4, subgroup = is_extraction_machine_mining},
    {name = pumpplatform, subgroup = is_extraction_machine_pumpjack}
}
for _, BUILD in pairs(minings) do
    if data_mining_drill[BUILD.name] then
        data_mining_drill[BUILD.name].allowed_effects = {speed, consumption, productivity, pollution}
        data_mining_drill[BUILD.name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
        if BUILD.subgroup == is_extraction_machine_mining then
            if mods[quality_mods] then
                data_mining_drill[BUILD.name].allowed_effects = {speed, consumption, productivity, pollution, quality}
                data_mining_drill[BUILD.name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
            else
                data_mining_drill[BUILD.name].allowed_effects = {speed, consumption, productivity, pollution}
                data_mining_drill[BUILD.name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
            end
        else
            data_mining_drill[BUILD.name].allowed_effects = {speed, consumption, productivity, pollution}
            data_mining_drill[BUILD.name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
        end
    end
end

local furnaces =
{
    electric_furnace_1, electric_furnace_2, electric_furnace_3, electric_furnace_4,
    electric_mixing_furnace_1, electric_mixing_furnace_2, electric_mixing_furnace_3, electric_mixing_furnace_4
}
for _, name in ipairs(furnaces) do
    if data_furnace[name] then
        if mods[quality_mods] then
            data_furnace[name].allowed_effects = {speed, consumption, productivity, pollution, quality}
            data_furnace[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
        else
            data_furnace[name].allowed_effects = {speed, consumption, productivity, pollution}
            data_furnace[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
        end
    end
    if data_assembling[name] then
        if mods[quality_mods] then
            data_assembling[name].allowed_effects = {speed, consumption, productivity, pollution, quality}
            data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
        else
            data_assembling[name].allowed_effects = {speed, consumption, productivity, pollution}
            data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
        end
    end
end

local centrifuges = {centrifuge_1, centrifuge_2, centrifuge_3, centrifuge_4}
for _, name in ipairs(centrifuges) do
    if mods[quality_mods] then
        data_assembling[name].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[name].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

local assembling_machines = {assembling_machine_1, assembling_machine_2, assembling_machine_3, assembling_machine_4, assembling_machine_5, assembling_machine_6}
for _, name in ipairs(assembling_machines) do
    if mods[quality_mods] then
        data_assembling[name].allowed_effects = {speed, consumption, productivity, quality}
        data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, quality}
    else
        data_assembling[name].allowed_effects = {speed, consumption, productivity}
        data_assembling[name].allowed_module_categories = {speed, efficiency, productivity}
    end
end

local labs = {lab_1, lab_2, lab_alien}
for _, name in ipairs(labs) do
    if data_lab[name] then
        data_lab[name].allowed_effects = {speed, consumption, productivity}
        data_lab[name].allowed_module_categories = {speed, efficiency, productivity}
    end
end

-- ANGELS RESOURCE REFINING
local resource_refining_without_productivity =
{
    ore_crusher_1, ore_crusher_2, ore_crusher_3, ore_crusher_4,
    ore_floatation_cell_1, ore_floatation_cell_2, ore_floatation_cell_3, ore_floatation_cell_4,
    ore_leaching_plant_1, ore_leaching_plant_2, ore_leaching_plant_3, ore_leaching_plant_4,
    ore_refinery_1, ore_refinery_2, ore_refinery_3, ore_refinery_4,
    powderizer_1, powderizer_2, powderizer_3, powderizer_4,
    electro_whinning_cell_1, electro_whinning_cell_2, electro_whinning_cell_3, electro_whinning_cell_4,
    filtration_unit_1, filtration_unit_2, filtration_unit_3, filtration_unit_4
}
for _, name in ipairs(resource_refining_without_productivity) do
    data_assembling[name].allowed_effects = {speed, consumption, pollution}
    data_assembling[name].allowed_module_categories = {speed, efficiency, pollution_clean}
end

local ore_sorting_facilities = {ore_sorting_facility_1, ore_sorting_facility_2, ore_sorting_facility_3, ore_sorting_facility_4, ore_sorting_facility_5, ore_sorting_facility_6}
for _, name in ipairs(ore_sorting_facilities) do
    data_assembling[name].allowed_effects = {speed, consumption, productivity, pollution}
    data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
end

local thermal_extractors = {thermal_extractor_1, thermal_extractor_2}
for _, name in ipairs(thermal_extractors) do
    data_mining_drill[name].allowed_effects = {speed, consumption, productivity}
    data_mining_drill[name].allowed_module_categories = {speed, efficiency, productivity}
end

local crystallizers = {crystallizer_1, crystallizer_2, crystallizer_3, crystallizer_4}
for _, name in ipairs(crystallizers) do
    data_assembling[name].allowed_effects = {speed, consumption, productivity}
    data_assembling[name].allowed_module_categories = {speed, efficiency, productivity}
end

-- ANGELS METTALURGY SMELTING
local mettalurgy_without_productivity =
{
    ore_processing_machine_1, ore_processing_machine_2, ore_processing_machine_3, ore_processing_machine_4,
    pellet_press_1, pellet_press_2, pellet_press_3, pellet_press_4,
    powder_mixer_1, powder_mixer_2, powder_mixer_3, powder_mixer_4,
    blast_furnace_1, blast_furnace_2, blast_furnace_3, blast_furnace_4,
    chemical_furnace_1, chemical_furnace_2, chemical_furnace_3, chemical_furnace_4,
    induction_furnace_1, induction_furnace_2, induction_furnace_3, induction_furnace_4,
    strand_casting_machine_1, strand_casting_machine_2, strand_casting_machine_3, strand_casting_machine_4,
}
for _, name in ipairs(mettalurgy_without_productivity) do
    data_assembling[name].allowed_effects = {speed, consumption, pollution}
    data_assembling[name].allowed_module_categories = {speed, efficiency, pollution_clean}
end

local mettalurgy_with_productivity =
{
    casting_machine_1, casting_machine_2, casting_machine_3, casting_machine_4,
    sintering_oven_1, sintering_oven_2, sintering_oven_3, sintering_oven_4, sintering_oven_5, sintering_oven_6, sintering_oven_7
}
for _, name in ipairs(mettalurgy_with_productivity) do
    if data_assembling[name] then
        if mods[quality_mods] then
            data_assembling[name].allowed_effects = {speed, consumption, productivity, pollution, quality}
            data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
        else
            data_assembling[name].allowed_effects = {speed, consumption, productivity, pollution}
            data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
        end
    end
end

-- ANGELS WATER TREATMENT
local water_treatments =
{
    hydro_plant_1, hydro_plant_2, hydro_plant_3, hydro_plant_4,
    washing_plant_1, washing_plant_2, washing_plant_3, washing_plant_4,
    salination_plant_1, salination_plant_2, salination_plant_3, salination_plant_4,
    cooling_tower
}
for _, name in ipairs(water_treatments) do
    data_assembling[name].allowed_effects = {speed, consumption}
    data_assembling[name].allowed_module_categories = {speed, efficiency}
end

local electric_boilers = {electric_boiler_1, electric_boiler_2, electric_boiler_3, electric_boiler_4}
for _, name in ipairs(electric_boilers) do
    data_assembling[name].allowed_effects = {speed}
    data_assembling[name].allowed_module_categories = {speed}
end

data_furnace[clarifier].allowed_effects = {speed, consumption, pollution}
data_furnace[clarifier].allowed_module_categories = {speed, efficiency, pollution_clean}

-- ANGELS PETROCHEM REFINING
local electrolysers = {electrolyser_1, electrolyser_2, electrolyser_3, electrolyser_4}
for _, name in ipairs(electrolysers) do
    data_assembling[name].allowed_effects = {speed}
    data_assembling[name].allowed_module_categories = {speed}
end

local air_filters = {air_filter_1, air_filter_2, air_filter_3, air_filter_4}
for _, name in ipairs(air_filters) do
    data_assembling[name].allowed_effects = {speed, consumption}
    data_assembling[name].allowed_module_categories = {speed, efficiency}
end

local liquifiers = {liquifier_1, liquifier_2, liquifier_3, liquifier_4}
for _, name in ipairs(liquifiers) do
    if mods[quality_mods] then
        data_assembling[name].allowed_effects = {speed, consumption, productivity, quality}
        data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, quality}
    else
        data_assembling[name].allowed_effects = {speed, consumption, productivity}
        data_assembling[name].allowed_module_categories = {speed, efficiency, productivity}
    end
end

local petrochem_refining_with_productivity =
{
    chemical_plant_1, chemical_plant_2, chemical_plant_3, chemical_plant_4,
    advanced_chemical_plant_1, advanced_chemical_plant_2, advanced_chemical_plant_3, advanced_chemical_plant_4
}
for _, name in ipairs(petrochem_refining_with_productivity) do
    if mods[quality_mods] then
        data_assembling[name].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[name].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

local petrochem_refining_without_productivity =
{
    gas_refinery_1, gas_refinery_2, gas_refinery_3, gas_refinery_4,
    advanced_gas_refinery_1, advanced_gas_refinery_2, advanced_gas_refinery_3, advanced_gas_refinery_4,
    oil_refinery_1, oil_refinery_2, oil_refinery_3, oil_refinery_4,
    separator_1, separator_2, separator_3, separator_4,
    steam_cracker_1, steam_cracker_2, steam_cracker_3, steam_cracker_4,
}
for _, name in ipairs(petrochem_refining_without_productivity) do
    data_assembling[name].allowed_effects = {speed, consumption, pollution}
    data_assembling[name].allowed_module_categories = {speed, efficiency, pollution_clean}
end

data_furnace[flare_stack].allowed_effects = {speed, consumption, pollution}
data_furnace[flare_stack].allowed_module_categories = {speed, efficiency, pollution_clean}

-- BARRELING AND FLUID CONTROL
if data_assembling[barreling_pump] then
    data_assembling[barreling_pump].allowed_effects = {speed, consumption}
    data_assembling[barreling_pump].allowed_module_categories = {speed, efficiency}
elseif data_furnace[barreling_pump] then
    data_furnace[barreling_pump].allowed_effects = {speed, consumption}
    data_furnace[barreling_pump].allowed_module_categories = {speed, efficiency}
end

-- ANGELS BIOPROCESSING NAUVIS
local bioprocessing_with_agricultural =
{
    algae_farm_1, algae_farm_2, algae_farm_3, algae_farm_4,
    bio_arboretum_1, bio_arboretum_2, bio_arboretum_3, bio_arboretum_4,
    basic_farm_1, basic_farm_2, basic_farm_3, basic_farm_4,
    temperate_farm_1, temperate_farm_2, temperate_farm_3, temperate_farm_4,
    swamp_farm_1, swamp_farm_2, swamp_farm_3, swamp_farm_4,
    desert_farm_1, desert_farm_2, desert_farm_3, desert_farm_4,
    seed_extractor_1, seed_extractor_2, seed_extractor_3, seed_extractor_4,
    fish_refugium_1, fish_refugium_2, fish_refugium_3, fish_refugium_4,
    puffer_refugium_1, puffer_refugium_2, puffer_refugium_3, puffer_refugium_4,
    biter_refugium_1, biter_refugium_2, biter_refugium_3, biter_refugium_4
}
for _, name in ipairs(bioprocessing_with_agricultural) do
    data_assembling[name].allowed_effects = {speed, consumption, productivity, pollution}
    data_assembling[name].allowed_module_categories = {speed, efficiency, pollution_create, agricultural}
end

local bioprocessing_without_agricultural =
{
    bio_generator_t_1, bio_generator_t_2, bio_generator_t_3, bio_generator_t_4,
    bio_generator_s_1, bio_generator_s_2, bio_generator_s_3, bio_generator_s_4,
    bio_generator_d_1, bio_generator_d_2, bio_generator_d_3, bio_generator_d_4,
    composter_1, composter_2, composter_3, composter_4,
    bio_processor_1, bio_processor_2, bio_processor_3, bio_processor_4,
    bio_press_1, bio_press_2, bio_press_3, bio_press_4,
    nutrient_extractor_1, nutrient_extractor_2, nutrient_extractor_3, nutrient_extractor_4,
    butchery_1, butchery_2, butchery_3, butchery_4,
    hatchery_1, hatchery_2, hatchery_3, hatchery_4
}
for _, name in ipairs(bioprocessing_without_agricultural) do
    if data_assembling[name] then
        data_assembling[name].allowed_effects = {speed, consumption, pollution}
        data_assembling[name].allowed_module_categories = {speed, efficiency, pollution_create}
    elseif data_furnace[name] then
        data_furnace[name].allowed_effects = {speed, consumption, pollution}
        data_furnace[name].allowed_module_categories = {speed, efficiency, pollution_create}
    end
end

-- MODULES
local beacons = {beacon_1, beacon_2, beacon_3}
for _, name in ipairs(beacons) do
    if data_beacon[name] then
        data_beacon[name].allowed_effects = {speed, consumption, pollution}
        data_beacon[name].allowed_module_categories = {speed, efficiency, pollution_clean, pollution_create}
    end
end

-- SPACE AGE
local rocket_silos = {rocket_silo, big_rocket_silo}
for _, name in ipairs(rocket_silos) do
    if data_rocket_silo[name] then
        data_rocket_silo[name].allowed_effects = {speed, consumption, productivity, pollution}
        data_rocket_silo[name].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

if mods[hyarion_mods] then
    if mods[quality_mods] then
        data_assembling[space_manufactorer].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[space_manufactorer].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[space_manufactorer].allowed_effects = {speed, consumption, productivity}
        data_assembling[space_manufactorer].allowed_module_categories = {speed, efficiency, productivity}
    end
end

-- VULCANUS
if mods[quality_mods] then
    data_assembling[foundry].allowed_effects = {speed, consumption, productivity, pollution, quality}
    data_assembling[foundry].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
else
    data_assembling[foundry].allowed_effects = {speed, consumption, productivity, pollution}
    data_assembling[foundry].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
end

data_mining_drill[big_mining_drill].allowed_effects = {speed, consumption, productivity, pollution}
data_mining_drill[big_mining_drill].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}

-- GLEBA
if mods[quality_mods] then
    data_assembling[biochamber].allowed_effects = {speed, consumption, productivity, pollution, quality}
    data_assembling[biochamber].allowed_module_categories = {speed, efficiency, pollution_create, quality, agricultural}
else
    data_assembling[biochamber].allowed_effects = {speed, consumption, productivity, pollution}
    data_assembling[biochamber].allowed_module_categories = {speed, efficiency, pollution_create, agricultural}
end

data_lab[biolab].allowed_effects = {speed, consumption, productivity, pollution}
data_lab[biolab].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}

-- FULGORA
if mods[quality_mods] then
    data_furnace[recycler].allowed_effects = {speed, consumption, pollution, quality}
    data_furnace[recycler].allowed_module_categories = {speed, efficiency, pollution_clean, quality}

    data_assembling[electromagnetic_plant].allowed_effects = {speed, consumption, productivity, quality}
    data_assembling[electromagnetic_plant].allowed_module_categories = {speed, efficiency, productivity, quality}
else
    data_furnace[recycler].allowed_effects = {speed, consumption, pollution}
    data_furnace[recycler].allowed_module_categories = {speed, efficiency, pollution_clean}

    data_assembling[electromagnetic_plant].allowed_effects = {speed, consumption, productivity}
    data_assembling[electromagnetic_plant].allowed_module_categories = {speed, efficiency, productivity}
end

-- MULUNA
if mods[quality_mods] then
    data_assembling[crusher].allowed_effects = {speed, consumption, productivity, pollution, quality}
    data_assembling[crusher].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
else
    data_assembling[crusher].allowed_effects = {speed, consumption, productivity, pollution}
    data_assembling[crusher].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
end

if mods[muluna_mods] then
    if mods[quality_mods] then
        data_assembling[crusher_2].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[crusher_2].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[crusher_2].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[crusher_2].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

if mods[shchierbin_mods] then
    if mods[quality_mods] then
        data_assembling[vanadium_crusher].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[vanadium_crusher].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[vanadium_crusher].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[vanadium_crusher].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

-- MOSHINE


-- PANGLIA
if mods[panglia_mods] then
    data_assembling[dna_scanner].allowed_effects = {speed, consumption, productivity}
    data_assembling[dna_scanner].allowed_module_categories = {speed, efficiency, productivity}

    if mods[quality_mods] then
        data_assembling[cloning_vat].allowed_effects = {speed, consumption, quality}
        data_assembling[cloning_vat].allowed_module_categories = {speed, efficiency, quality}
    else
        data_assembling[cloning_vat].allowed_effects = {speed, consumption}
        data_assembling[cloning_vat].allowed_module_categories = {speed, efficiency}
    end

    data_furnace[matter_printer_entity].allowed_effects = {speed, pollution}
    data_furnace[matter_printer_entity].allowed_module_categories = {speed, pollution_clean}

    data_assembling[thinking_brain].allowed_effects = {speed, consumption, productivity, pollution}
    data_assembling[thinking_brain].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
end

-- ARIG
if mods[arig_mods] then
    if mods[quality_mods] then
        data_assembling[sifter].allowed_effects = {speed, consumption, pollution, quality}
        data_assembling[sifter].allowed_module_categories = {speed, efficiency, pollution_clean, quality}
    else
        data_assembling[sifter].allowed_effects = {speed, consumption, pollution}
        data_assembling[sifter].allowed_module_categories = {speed, efficiency, pollution_clean}
    end

    if mods[quality_mods] then
        data_assembling[press].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[press].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[press].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[press].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end

    data_assembling[water_harvester].allowed_effects = {speed, productivity}
    data_assembling[water_harvester].allowed_module_categories = {speed, productivity}
end

-- HYARION
if mods[hyarion_mods] then
    if mods[quality] then
        data_mining_drill[geode_mining_drill].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_mining_drill[geode_mining_drill].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_mining_drill[geode_mining_drill].allowed_effects = {speed, consumption, productivity, pollution}
        data_mining_drill[geode_mining_drill].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end

    if mods[quality] then
        data_assembling[polisher].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[polisher].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[polisher].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[polisher].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end

    if mods[quality] then
        data_assembling[hyper_assembling_machine].allowed_effects = {speed, consumption, productivity, quality}
        data_assembling[hyper_assembling_machine].allowed_module_categories = {speed, efficiency, productivity, quality}
    else
        data_assembling[hyper_assembling_machine].allowed_effects = {speed, consumption, productivity}
        data_assembling[hyper_assembling_machine].allowed_module_categories = {speed, efficiency, productivity}
    end

    if mods[quality] then
        data_assembling[particle_manipulator].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[particle_manipulator].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[particle_manipulator].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[particle_manipulator].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end

    if mods[quality] then
        data_assembling[refraction_plant].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[refraction_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[refraction_plant].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[refraction_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

-- TELLUS
if mods[tellus_mods] then
    if mods[quality] then
        data_assembling[bioassembler].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[bioassembler].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[bioassembler].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[bioassembler].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end

    data_assembling[air_purifier].allowed_effects = {speed, consumption, pollution}
    data_assembling[air_purifier].allowed_module_categories = {speed, efficiency, pollution_create}

    if mods[quality] then
        data_assembling[incubator].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[incubator].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[incubator].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[incubator].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

-- PARACELSIN
if mods[paracelsin_mods] then
    if mods[quality] then
        data_assembling[electrochemical_plant].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[electrochemical_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[electrochemical_plant].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[electrochemical_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end

    if mods[quality] then
        data_assembling[mechanical_plant].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[mechanical_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[mechanical_plant].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[mechanical_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

-- CORRUNDUM
if mods[corrundum_mods] then
    if mods[quality] then
        data_assembling[catalytic_chemical_plant].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[catalytic_chemical_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[catalytic_chemical_plant].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[catalytic_chemical_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end

    if mods[quality] then
        data_lab[pressure_lab].allowed_effects = {speed, consumption, productivity, pollution}
        data_lab[pressure_lab].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    else
        data_lab[pressure_lab].allowed_effects = {speed, consumption, productivity, pollution}
        data_lab[pressure_lab].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

-- SECRETAS / FROZETA
if mods[secretas_frozeta_mods] then
    if mods[quality_mods] then
        data_furnace[steam_recycler].allowed_effects = {speed, consumption, pollution, quality}
        data_furnace[steam_recycler].allowed_module_categories = {speed, efficiency, pollution_clean, quality}
    else
        data_furnace[steam_recycler].allowed_effects = {speed, consumption, pollution}
        data_furnace[steam_recycler].allowed_module_categories = {speed, efficiency, pollution_clean}
    end
end

-- CASTRA
if mods[castra_mods] then
    if mods[quality_mods] then
        data_assembling[forge].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[forge].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}

        data_assembling["player-" .. jammed_data_collector].allowed_effects = {speed, consumption, productivity, quality}
        data_assembling["player-" .. jammed_data_collector].allowed_module_categories = {speed, efficiency, productivity, quality}
    else
        data_assembling[forge].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[forge].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}

        data_assembling["player-" .. jammed_data_collector].allowed_effects = {speed, consumption, productivity}
        data_assembling["player-" .. jammed_data_collector].allowed_module_categories = {speed, efficiency, productivity}
    end
end

-- MARAXSIS
if mods[maraxsis_mods] then
    if mods[quality_mods] then
        data_assembling[hydro_plant].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[hydro_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[hydro_plant].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[hydro_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

-- VESTA
if mods[vesta_mods] then
    if mods[quality_mods] then
        data_assembling[electrolyzer_vesta].allowed_effects = {speed, productivity, pollution, quality}
        data_assembling[electrolyzer_vesta].allowed_module_categories = {speed, productivity, pollution_clean, quality}

        data_assembling[supermagnet].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[supermagnet].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}

        data_assembling[combustion_furnace].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[combustion_furnace].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[electrolyzer_vesta].allowed_effects = {speed, productivity, pollution}
        data_assembling[electrolyzer_vesta].allowed_module_categories = {speed, productivity, pollution_clean}

        data_assembling[supermagnet].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[supermagnet].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}

        data_assembling[combustion_furnace].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[combustion_furnace].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

-- MURIA
if mods[vesta_mods] then
    if mods[quality_mods] then
        data_assembling[biovat].allowed_effects = {speed, productivity, pollution, quality}
        data_assembling[biovat].allowed_module_categories = {speed, pollution_create, quality, agricultural}

        data_assembling[acidworking_plant].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[acidworking_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}

        data_assembling[smelting_plant].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[smelting_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}
    else
        data_assembling[biovat].allowed_effects = {speed, productivity, pollution}
        data_assembling[biovat].allowed_module_categories = {speed, pollution_create, agricultural}

        data_assembling[acidworking_plant].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[acidworking_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_create}

        data_assembling[smelting_plant].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[smelting_plant].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end

-- APIA and CARNOVA
if mods[apia_carnova_mods] then
    if mods[quality_mods] then
        data_assembling[biosynthesizer].allowed_effects = {speed, productivity, pollution, quality}
        data_assembling[biosynthesizer].allowed_module_categories = {speed, pollution_create, quality, agricultural}
    else
        data_assembling[biosynthesizer].allowed_effects = {speed, productivity, pollution}
        data_assembling[biosynthesizer].allowed_module_categories = {speed, pollution_create, agricultural}
    end
end

-- LIGNUMIS
if mods[lignumis_mods] then
    if mods[quality_mods] then
        data_assembling[steam_assembling_machine].allowed_effects = {speed, consumption, productivity, quality}
        data_assembling[steam_assembling_machine].allowed_module_categories = {speed, efficiency, productivity, quality}

        data_assembling[lumber_mill].allowed_effects = {speed, consumption, productivity, pollution, quality}
        data_assembling[lumber_mill].allowed_module_categories = {speed, efficiency, productivity, pollution_clean, quality}

        data_assembling[quality_assembler].allowed_effects = {speed, quality}
        data_assembling[quality_assembler].allowed_module_categories = {speed, quality}
    else
        data_assembling[steam_assembling_machine].allowed_effects = {speed, consumption, productivity}
        data_assembling[steam_assembling_machine].allowed_module_categories = {speed, efficiency, productivity}

        data_assembling[lumber_mill].allowed_effects = {speed, consumption, productivity, pollution}
        data_assembling[lumber_mill].allowed_module_categories = {speed, efficiency, productivity, pollution_clean}
    end
end