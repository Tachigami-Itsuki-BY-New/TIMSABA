if script.active_mods["lignumis"] then
    script.on_init(function()
        if remote.interfaces["freeplay"] then
            local items = remote.call("freeplay", "get_created_items")

            if items["angels-burner-ore-crusher"] and items["angels-burner-ore-crusher"] > 0 then
                items["angels-burner-ore-crusher"] = items["angels-burner-ore-crusher"] - 1
                if items["angels-burner-ore-crusher"] <= 0 then items["angels-burner-ore-crusher"] = nil end
            end

            items["burner-ore-sorting-facility"] = (items["burner-ore-sorting-facility"] or 0) + 1

            remote.call("freeplay", "set_created_items", items)
        end
    end)
end