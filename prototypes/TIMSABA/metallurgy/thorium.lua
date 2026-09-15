is_thorium = "is-thorium"
local is_thorium_chemistry = "is-thorium-chemistry"
TIMSABA.functions.create_subgroups(ig_smelting,
{
    {name = is_thorium,           order = p},
    {name = is_thorium_chemistry, order = p_a}
})
local is_thorium_casting = "is-thorium-casting"
TIMSABA.functions.create_subgroups(ig_casting, {{name = is_thorium_casting, order = p}})