require("prototypes.global-name.global-name")
require("prototypes.global-name.global-name-mods")
require("prototypes.global-name.global-name-setting")

if mods[space_age_science_packs] then
    data_bool_setting["sasp-nostalgia-mode"] = nil
end

-- BOBS
data_bool_setting["bobmods-assembly-electronicmachines"].hidden = true
data_bool_setting["bobmods-assembly-burner"].hidden = true
data_bool_setting["bobmods-assembly-oilfurnaces"].hidden = true

data_bool_setting["bobmods-mining-steamminingdrills"].hidden = true
data_bool_setting["bobmods-mining-waterminers"].hidden = true

if mods[bobmodules] then
    data_bool_setting["bobmods-modules-enablegodmodules"].hidden = true
end

data_bool_setting["bobmods-power-heatsources"].hidden = true

if mods[bobwarfare] then
    data_bool_setting["bobmods-warfare-drainlesslaserturrets"].hidden = true
    data_bool_setting["bobmods-warfare-spidertron-overhaul"].hidden = true
    data_string_setting["bobmods-warfare-spidertron-needsfuel"].hidden = true
end

-- FROZETA
if mods[secretas_frozeta_mods] then
    data_bool_setting["condense-level-4-modules-into-one-technology"].hidden = true
end

-- MODS
if mods["Accumulator-V2"] then
    data_double_setting["accumulator-power-capacity"].hidden = true
    data_bool_setting["link-multiplier-to-cost"].hidden = true
end

if mods["SolarMatrix"] then
    data_color_setting["solar-matrix-color"].hidden = true
    data_double_setting["solar-matrix-power"].hidden = true
    data_bool_setting["link-multiplier-to-cost"].hidden = true
end

if mods[asphalt_roads_patched_mods] and mods[corrundum_mods] then
    data_bool_setting["AR-use-items-from-corrundum"].default_value = true
end