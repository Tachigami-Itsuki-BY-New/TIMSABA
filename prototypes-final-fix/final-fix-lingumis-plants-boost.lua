local speed_boost_modifyer = 4

local original = data_plant["tree-plant"]
if not original then
    log("[LignumisBoost|data-final-fix] ERROR: prototype 'tree-plant' no")
    return
end

local fast = table.deepcopy(original)
fast.name = "timsaba-fast-tree-plant"

if fast.growth_ticks then
    fast.growth_ticks = math.max(60, math.floor(fast.growth_ticks / speed_boost_modifyer))
end
if fast.growth_time then
    fast.growth_time = fast.growth_time / speed_boost_modifyer
end

fast.hidden = true
fast.localised_name = original.localised_name
fast.localised_description = original.localised_description

data_plant[fast.name] = fast
log("[LignumisBoost|data-final-fix] Registered " .. fast.name ..
    " (growth_ticks=" .. tostring(fast.growth_ticks) .. ")")