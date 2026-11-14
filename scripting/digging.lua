local M = {}

local tile_to_resource =
{
    ["grass-1"] = "angels-solid-soil",
    ["grass-2"] = "angels-solid-soil",
    ["grass-3"] = "angels-solid-soil",
    ["grass-4"] = "angels-solid-soil",
    ["dry-dirt"] = "angels-solid-soil",
    ["dirt-1"]  = "angels-solid-soil",
    ["dirt-2"]  = "angels-solid-soil",
    ["dirt-3"]  = "angels-solid-soil",
    ["dirt-4"]  = "angels-solid-soil",
    ["dirt-5"]  = "angels-solid-soil",
    ["dirt-6"]  = "angels-solid-soil",
    ["dirt-7"]  = "angels-solid-soil",
    ["red-desert-0"] = "angels-solid-sand",
    ["red-desert-1"] = "angels-solid-sand",
    ["red-desert-2"] = "angels-solid-sand",
    ["red-desert-3"] = "angels-solid-sand",
    ["sand-1"]  = "angels-solid-sand",
    ["sand-2"]  = "angels-solid-sand",
    ["sand-3"]  = "angels-solid-sand"
}

local BASE_DIG_VOLUME = 300

local function get_player_reach_distance(player)
    local base_reach = 10.0
    if player.character and player.character.valid then
        base_reach = player.character.prototype.reach_distance
    end
    local modifier = player.force.character_reach_distance_bonus

    return base_reach + modifier
end

local function destroy_gui(player)
    if player.gui.center.timsaba_dig_frame then
        player.gui.center.timsaba_dig_frame.destroy()
    end
end

local function create_gui(player)
    destroy_gui(player)
    local frame = player.gui.center.add{type = "frame", name = "timsaba_dig_frame", caption = {"mod-messages.digging"}, direction = "vertical"}
    local bar = frame.add{type = "progressbar", name = "progress_bar", value = 0}
    bar.style.minimal_width = 200
end

local function finish_digging(player, pos)
    local surface = player.surface
    local tile = surface.get_tile(pos.x, pos.y)
    local bonus_resource = tile_to_resource[tile.name]

    if not bonus_resource then return end

    surface.set_tiles({{name = "water", position = pos}}, true)
    surface.play_sound{path = "utility/build_blueprint_large", position = pos}

    local inv = player.get_main_inventory()
    local items = {{name = "landfill", count = 1}, {name = bonus_resource, count = 1}}

    for _, item in ipairs(items) do
        if helpers.is_valid_sprite_path("item/" .. item.name) then
            if inv and inv.can_insert(item) then
                inv.insert(item)
            else
                surface.spill_item_stack{position = pos, stack = item, enable_looted_by_player_achievement = true}
            end
        end
    end
    player.print({"mod-messages.digging-finished"})

    local cursor_stack = player.cursor_stack
    if cursor_stack and cursor_stack.valid_for_read and cursor_stack.name == "shovel" then
        local current_health = cursor_stack.health
        local new_health = current_health - 0.01

        if new_health <= 0 then
            cursor_stack.clear()
            player.print("Ваша лопата сломалась!")
            player.surface.play_sound{path = "utility/cannot_build", position = player.position}
        else
            cursor_stack.health = new_health
        end
    end
end

local function get_player_mining_speed(player)
    local base_speed = 1.0
    if player.character and player.character.valid then
        base_speed = player.character.prototype.mining_speed
    end
    local modifier = player.force.manual_mining_speed_modifier
    return base_speed * (1 + modifier)
end

function M.start_digging(player, target_pos)
    local tile = player.surface.get_tile(target_pos.x, target_pos.y)

    if not tile_to_resource[tile.name] then
        player.print({"mod-messages.cannot-dig-here"})
        return
    end

    local player_tile_x = math.floor(player.position.x)
    local player_tile_y = math.floor(player.position.y)
    local target_tile_x = math.floor(target_pos.x)
    local target_tile_y = math.floor(target_pos.y)

    if player_tile_x == target_tile_x and player_tile_y == target_tile_y then
        player.print("Нельзя копать под самим собой! Вы утонете.")
        return
    end

    local current_max_distance = get_player_reach_distance(player)

    local dx = player.position.x - target_pos.x
    local dy = player.position.y - target_pos.y
    if (dx*dx + dy*dy)^0.5 > current_max_distance then
        player.print("Слишком далеко для раскопок!")
        return
    end

    if not storage.timsaba_digging then storage.timsaba_digging = {} end

    storage.timsaba_digging[player.index] =
    {
        start_pos = {x = player.position.x, y = player.position.y},
        target_pos = target_pos,
        progress = 0
    }

    create_gui(player)
end

function M.on_tick(event)
    if not storage.timsaba_digging then return end

    for player_index, data in pairs(storage.timsaba_digging) do
        local player = game.players[player_index]

        if player and player.character and player.character.valid then
            local dx = player.position.x - data.start_pos.x
            local dy = player.position.y - data.start_pos.y
            local distance = (dx*dx + dy*dy)^0.5

            if distance > 0.5 then
                player.print({"mod-messages.digging-interrupted"})
                destroy_gui(player)
                storage.timsaba_digging[player_index] = nil
            else
                local mining_speed = get_player_mining_speed(player)
                data.progress = data.progress + mining_speed

                if event.tick % 15 == 0 then
                    local tile_name = player.surface.get_tile(data.target_pos.x, data.target_pos.y).name
                    local smoke_name = "soft-laser-spark"

                    if string.find(tile_name, "sand") or string.find(tile_name, "desert") then
                        smoke_name = "sand-smoke"
                    elseif string.find(tile_name, "grass") or string.find(tile_name, "dirt") then
                        smoke_name = "turbine-smoke"
                    end

                    player.surface.create_trivial_smoke{name = smoke_name, position = data.target_pos}
                end

                local frame = player.gui.center.timsaba_dig_frame
                if frame and frame.progress_bar then
                    frame.progress_bar.value = data.progress / BASE_DIG_VOLUME
                end

                if data.progress >= BASE_DIG_VOLUME then
                    finish_digging(player, data.target_pos)
                    destroy_gui(player)
                    storage.timsaba_digging[player_index] = nil
                end
            end
        else
            storage.timsaba_digging[player_index] = nil
        end
    end
end

return M