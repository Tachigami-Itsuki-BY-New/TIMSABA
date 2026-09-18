require("prototypes.global-name.global-name")
require("prototypes.global-name.global-name-mods")
require("prototypes.global-name.global-name-setting")

local bool_setting = "bool-setting"
local double_setting = "double-setting"
local string_setting = "string-setting"
local startup = "startup"
local function create_bool_setting(name, default_value)
    data:extend
    ({
        {
            type = bool_setting,
            name = name,
            setting_type = startup,
            default_value = default_value or false
        }
    })
end
create_bool_setting(setting_early_sintering_oven)
create_bool_setting(setting_no_spoilage)
create_bool_setting(setting_early_cliff_explosives)
if mods[space_age_science_packs] then
    create_bool_setting(setting_science_pack_nostalgia)
end
create_bool_setting(setting_multi_building)
--create_bool_setting(setting_dynamic_underground_belts)
--create_bool_setting(setting_dynamic_pipe_to_ground)
create_bool_setting(setting_rebalance_belts_and_pipes, true)
create_bool_setting(setting_flow_control_new)
create_bool_setting(setting_infinite_research)

data:extend
({
    {
        type = double_setting,
        name = setting_defrost_multiplier,
        setting_type = startup,
        default_value = 2,
        minimum_value = 1,
        maximum_value = 720 -- if 12 hour then 1 year
    },
    {
        type = string_setting,
        name = setting_game_difficulty,
        setting_type = startup,
        default_value = normal,
        allowed_values = {easy, normal, hard}
    }
})

if mods[tellus_mods] then
    create_bool_setting(setting_dye_concrete_brick, true)
end

if mods[flare_stack_mods] then
    create_bool_setting(setting_real_incineration, true)
end

local function horogon_multiplier(name, default_value)
    return
    {
        type = double_setting,
        name = name,
        setting_type = startup,
        default_value = default_value,
        minimum_value = 0.1,
        maximum_value = 100
    }
end

data:extend
({
    {
        type = bool_setting,
        name = "setting-za-horogon-extra-science-packs",
        setting_type = startup,
        default_value = false
    },
    {
        type = bool_setting,
        name = "setting-zb-horogon-high-tier-recipes",
        setting_type = startup,
        default_value = false
    },
    {
        type = bool_setting,
        name = "setting-zc-horogon-module-planet-lock",
        setting_type = startup,
        default_value = false
    },
    {
        type = bool_setting,
        name = "setting-zd-horogon-tier-technology-costs",
        setting_type = startup,
        default_value = false
    },
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk1", 1),
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk2", 1),
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk3", 1),
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk4", 1),
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk5", 1),
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk6", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk1", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk2", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk3", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk4", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk5", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk6", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk1", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk2", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk3", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk4", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk5", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk6", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk1", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk2", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk3", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk4", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk5", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk6", 1),
    {
        type = double_setting,
        name = "setting-zi-horogon-mech-armor-technology-cost",
        setting_type = startup,
        default_value = 4096,
        minimum_value = 1,
        maximum_value = 1000000
    },
    {
        type = bool_setting,
        name = "setting-zj-horogon-power-armor-chain-from-mech",
        setting_type = startup,
        default_value = true
    }
})