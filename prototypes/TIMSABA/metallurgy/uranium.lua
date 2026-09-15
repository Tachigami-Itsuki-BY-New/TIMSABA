is_uranium = "is-uranium"
local is_uranium_chemistry = "is-uranium-chemistry"
TIMSABA.functions.create_subgroups(ig_smelting,
{
    {name = is_uranium,           order = o},
    {name = is_uranium_chemistry, order = o_a}
})
local is_uranium_casting = "is-uranium-casting"
TIMSABA.functions.create_subgroups(ig_casting, {{name = is_uranium_casting, order = o}})