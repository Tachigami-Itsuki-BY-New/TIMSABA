if mods[lignumis_mods] then
    if mods[muluna_mods] then
        data_item[lumber_mill].icon = nil
        data_item[lumber_mill].icon_size = nil
        data_item[lumber_mill].icons =
        {
            {icon = "__TIMSABA__/graphics/icons/muluna/lumber-mill.png", icon_size = 64, scale = 0.5},
            {icon = electricity_icon, icon_size = 64, scale = 0.25, shift = {8,-8}}
        }
        data_recipe[lumber_mill].icon = nil
        data_recipe[lumber_mill].icon_size = nil
        data_recipe[lumber_mill].icons =
        {
            {icon = "__TIMSABA__/graphics/icons/muluna/lumber-mill.png", icon_size = 64, scale = 0.5},
            {icon = electricity_icon, icon_size = 64, scale = 0.25, shift = {8,-8}}
        }
        data_assembling[lumber_mill].icon = nil
        data_assembling[lumber_mill].icon_size = nil
        data_assembling[lumber_mill].icons =
        {
            {icon = "__TIMSABA__/graphics/icons/muluna/lumber-mill.png", icon_size = 64, scale = 0.5},
            {icon = electricity_icon, icon_size = 64, scale = 0.25, shift = {8,-8}}
        }
        data_assembling[lumber_mill].working_sound = util.table.deepcopy(data_assembling[burner_lumber_mill].working_sound)
    end
    data_assembling[burner_lumber_mill].icon_draw_specification = {shift = {0, -0.3}}
    data_assembling[burner_lumber_mill].collision_box = {{-2.2, -2.2}, {2.2, 2.2}}
    data_assembling[burner_lumber_mill].selection_box = {{-2.5, -2.5}, {2.5, 2.5}}
    data_assembling[burner_lumber_mill].alert_icon_shift = util.by_pixel(0, -12)
    data_assembling[burner_lumber_mill].graphics_set =
    {
        animation =
        {
            layers =
            {
                {
                    filename = "__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-shadow.png",
                    priority = high,
                    width = 660,
                    height = 700,
                    frame_count = 1,
                    repeat_count = 80,
                    shift = util.by_pixel(15, 2),
                    scale = 0.3125,
                    draw_as_shadow = false
                },
                {
                    filenames = {"__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-animation-1.png", "__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-animation-2.png"},
                    priority = high,
                    width = 525,
                    height = 557,
                    frame_count = 80,
                    line_length = 8,
                    lines_per_file = 8,
                    shift = util.by_pixel(0, 2),
                    scale = 0.3125
                },
                {
                    filenames = {"__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-emission-1.png", "__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-emission-2.png"},
                    priority = high,
                    width = 525,
                    height = 557,
                    frame_count = 80,
                    line_length = 8,
                    lines_per_file = 8,
                    shift = util.by_pixel(0, 2),
                    scale = 0.3125,
                    draw_as_glow = true
                }
            }
        }
    }
end