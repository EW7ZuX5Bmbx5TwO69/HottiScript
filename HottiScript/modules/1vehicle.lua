local player_veh_lights_on = false
local lastRadio = nil
local isOnVehicle = nil

local function getPlayerRadio()
    return GET_PLAYER_RADIO_STATION_NAME() or lastRadio or "OFF"
end

local function spawnBuses(amount)

    local vehicle_hash = util.joaat("pbus2")
    util.request_model(vehicle_hash)

    local pRadio = getPlayerRadio()
    local pVehicle = GET_VEHICLE_PED_IS_USING(players.user_ped())

    if pVehicle then
        SET_VEHICLE_RADIO_ENABLED(pVehicle, false)
    end

    local volume = menu.get_value(menu.ref_by_command_name("soundboost"))
    local angle_increment = 2 * math.pi / volume

    local bus_visibilityToggle = Cache:get("bus_visibilityToggle")
    local bus_collisionToggle = Cache:get("bus_collisionToggle")
    local bus_size = Cache:get("bus_size")
    local bus_height = Cache:get("bus_height") * 0.10
    local bus_yaw = Cache:get("bus_yaw")

    for i = 1, volume do

        local angle = (i - 1) * angle_increment + 90 -- Add rotation
        local size = bus_size
        local xOffset = size * math.cos(angle)
        local yOffset = size * math.sin(angle)
        local offset_position = GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), xOffset, yOffset, bus_height)

        local bus = entities.create_vehicle(vehicle_hash, offset_position, 0)
        entities.set_can_migrate(bus, false)
        SET_ENTITY_COLLISION(bus, bus_collisionToggle, bus_collisionToggle)
        SET_ENTITY_INVINCIBLE(bus, true)
        SET_ENTITY_PROOFS(bus, true, true, true, true, true, true, 1, true)
        for e = 2, 7 do
            SET_VEHICLE_EXTRA(bus, e, -1)
        end

        FREEZE_ENTITY_POSITION(bus, true)
        SET_ENTITY_VISIBLE(bus, bus_visibilityToggle, bus_visibilityToggle)
        SET_VEHICLE_ENGINE_ON(bus, true, true, false)
        SET_VEHICLE_KEEP_ENGINE_ON_WHEN_ABANDONED(bus, true)

        SET_ENTITY_COORDS_NO_OFFSET(bus, offset_position.x, offset_position.y, offset_position.z, false, false,
            false, false)
        local user_rotation = GET_ENTITY_ROTATION(players.user_ped(), 0)

        local yaw = math.deg(angle) + bus_yaw
        SET_ENTITY_ROTATION(bus, user_rotation.x, bus_yaw, user_rotation.z + math.deg(angle), 0, true)

        SET_VEHICLE_RADIO_ENABLED(bus, true)
        SET_VEH_HAS_NORMAL_RADIO(bus)
        SET_VEH_RADIO_STATION(bus, pRadio)
        SET_VEHICLE_RADIO_LOUD(bus)
        table.insert(buses, bus)

        -- if pVehicle then                  bone x y z  rX    rY   rZ
        -- ATTACH_ENTITY_TO_ENTITY(bus, entity, PED.GET_PED_BONE_INDEX(entity, 0xDD1C), x, y, 0, 0.0, 0.0, angle, false,
        --     false, false, false, 0, false, 0)

        -- SET_ENTITY_COORDS(bus, x, y, offset_position.z, false, false, false, false)

    end

end

local function adjustBuses()
    local pRadio = getPlayerRadio()
    local bus_visibilityToggle = Cache:get("bus_visibilityToggle")
    local bus_collisionToggle = Cache:get("bus_collisionToggle")
    local bus_size = Cache:get("bus_size")
    local circleRotation = Cache:get("bus_circleRotation")
    local bus_height = Cache:get("bus_height") * 0.10
    local bus_yaw = Cache:get("bus_yaw")

    local angle_increment = 2 * math.pi / #buses

    for i, bus in ipairs(buses) do
        local angle = (i - 1) * angle_increment
        local xOffset = bus_size * math.cos(angle)
        local yOffset = bus_size * math.sin(angle)

        local x = xOffset * math.cos(math.rad(circleRotation)) - yOffset * math.sin(math.rad(circleRotation))
        local y = xOffset * math.sin(math.rad(circleRotation)) + yOffset * math.cos(math.rad(circleRotation))

        local offset_position = GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), x, y, bus_height)

        SET_ENTITY_VISIBLE(bus, bus_visibilityToggle, bus_visibilityToggle)
        SET_ENTITY_COLLISION(bus, bus_collisionToggle, bus_collisionToggle)

        SET_ENTITY_COORDS_NO_OFFSET(bus, offset_position.x, offset_position.y, offset_position.z, false, false,
            false, false)
        local user_rotation = GET_ENTITY_ROTATION(players.user_ped(), 0)

        local yaw = math.deg(angle) + bus_yaw
        SET_ENTITY_ROTATION(bus, user_rotation.x, bus_yaw, user_rotation.z + math.deg(angle), 0, true)
        SET_VEH_RADIO_STATION(bus, pRadio)
        SET_VEH_FORCED_RADIO_THIS_FRAME(bus)
    end
end

local function deleteBuses()
    for i, bus in ipairs(buses) do
        entities.delete_by_handle(bus)
    end
    buses = {}

end

local function list_setup(root, list, list_name)
    list:divider("VEHICLE SETTINGS")

    menu.toggle_loop(list, "Keep headlights enabled", {"keepheadlightson"}, "Keep the fucking headlights enabled...",
        function()
            local playerVehicle = GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
            if playerVehicle and DOES_ENTITY_EXIST(playerVehicle) then
                SET_VEHICLE_LIGHTS(playerVehicle, 3) -- Encender
            end
        end)

    menu.toggle_loop(list, "Flashing Lights", {"hazardlights"},
        "Toggle the flashing hazard lights on your current vehicle", function()

            if menu.get_value(menu.ref_by_command_name("keepheadlightson")) then
                menu.set_value(menu.ref_by_command_name("keepheadlightson"), false)
            end

            local playerVehicle = GET_VEHICLE_PED_IS_IN(players.user_ped(), true)

            if playerVehicle and DOES_ENTITY_EXIST(playerVehicle) then
                if player_veh_lights_on then
                    SET_VEHICLE_LIGHTS(playerVehicle, 0) -- Apagar
                    SET_VEHICLE_LIGHTS(playerVehicle, 1) -- Apagar
                    player_veh_lights_on = false
                else
                    SET_VEHICLE_LIGHTS(playerVehicle, 3) -- Encender
                    player_veh_lights_on = true
                end
                util.yield(850)
            end

        end)

    local variations = {0, 1, 2, 3}
    local headlightsIndex = -1

    menu.toggle_loop(list, "Rainbow Headlights", {"rainbowheadlights"},
        "Toggle the rainbow lights on your current vehicle", function()
            local playerVehicle = GET_VEHICLE_PED_IS_IN(players.user_ped(), true)

            if playerVehicle and DOES_ENTITY_EXIST(playerVehicle) then
                TOGGLE_VEHICLE_MOD(playerVehicle, libs.constants.VEHICLE_MOD_TYPES.MOD_XENONLIGHTS, true)
                SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(playerVehicle, headlightsIndex)

                headlightsIndex = headlightsIndex + 1
                if headlightsIndex > 12 then
                    headlightsIndex = 1
                end

                util.yield(500)
            end

        end)

    menu.toggle_loop(list, "Repair Vehicle Loop", {"repairvehloop"}, "Repair the vehicle in a loop", function()
        local playerVehicle = GET_VEHICLE_PED_IS_IN(players.user_ped(), true)

        if playerVehicle and DOES_ENTITY_EXIST(playerVehicle) then
            SET_VEHICLE_FIXED(playerVehicle)
            SET_VEHICLE_DIRT_LEVEL(playerVehicle, 0)
            SET_VEHICLE_DIRT_LEVEL(playerVehicle, 0.0)
            SET_VEHICLE_UNDRIVEABLE(playerVehicle, false)
            SET_VEHICLE_ENGINE_HEALTH(playerVehicle, 1000.0)
            SET_VEHICLE_PETROL_TANK_HEALTH(playerVehicle, 1000.0)
            SET_VEHICLE_ENGINE_ON(playerVehicle, true, true, true)
        end

    end)

    menu.toggle(list, "Vehicle never damaged", {"vehicleneverdamaged"}, "Never get your vehicle visually damaged",
        function(toggled)
            local playerVehicle = GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
            if playerVehicle and DOES_ENTITY_EXIST(playerVehicle) then
                if toggled then
                    SET_VEHICLE_CAN_BE_VISIBLY_DAMAGED(playerVehicle, false) -- Apagar
                else
                    SET_VEHICLE_CAN_BE_VISIBLY_DAMAGED(playerVehicle, true) -- Apagar
                end

            end
        end)

    local function blinkLights(pVehicle)
        SET_VEHICLE_LIGHTS(pVehicle, 0)
        SET_VEHICLE_LIGHTS(pVehicle, 1)
        util.yield(500)
        SET_VEHICLE_LIGHTS(pVehicle, 3)

    end


    menu.toggle_loop(list, "Roll Windows Down", {"rolldownwindows"}, "Roll your windows down and lock them down",
        function()
            local pVehicle = GET_VEHICLE_PED_IS_USING(players.user_ped())
            if pVehicle then
                ROLL_DOWN_WINDOW(pVehicle, 0)
                ROLL_DOWN_WINDOW(pVehicle, 1)
            end
        end, function()
            local pVehicle = GET_VEHICLE_PED_IS_USING(players.user_ped())
            if pVehicle then
                ROLL_UP_WINDOW(pVehicle, 0)
                ROLL_UP_WINDOW(pVehicle, 1)
            end
        end)

    menu.toggle_loop(list, "Freeze when unnocupied", {"freezeonempty"}, "Freeze the car when nobody is in", function()

        local pVehicle = GET_VEHICLE_PED_IS_IN(players.user_ped(), true)
        if IS_VEHICLE_SEAT_FREE(pVehicle, -1, false) then
            FREEZE_ENTITY_POSITION(pVehicle, true)
        else
            FREEZE_ENTITY_POSITION(pVehicle, false)
        end
    end)



    local policeHeadlightsIndex = 1
    menu.toggle_loop(list, "Police Headlights", {"policeheadlights"},
        "Toggle the police lights on your current vehicle", function()
            local playerVehicle = GET_VEHICLE_PED_IS_IN(players.user_ped(), true)

            if playerVehicle and DOES_ENTITY_EXIST(playerVehicle) then
                TOGGLE_VEHICLE_MOD(playerVehicle, libs.constants.VEHICLE_MOD_TYPES.MOD_XENONLIGHTS, true)
                SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(playerVehicle, policeHeadlightsIndex)

                if policeHeadlightsIndex == 1 then
                    policeHeadlightsIndex = 8

                else
                    policeHeadlightsIndex = 1
                end
                util.yield(500)
            end

        end)

    local neonIndex = 0

    menu.toggle(list, "Police tuning", {"policetuning"}, "", function()
        menu.trigger_commands("policeheadlights")
        menu.trigger_commands("policeneon")
    end)

    list:divider("MUSIC BLASTER 3000")

    menu.toggle_loop(list, "Loud Radio", {"radiobrr"}, "", function()
        if #buses == 0 then
            spawnBuses(menu.get_value(menu.ref_by_command_name("soundboost")))
        else
            adjustBuses()
        end

    end, function()
        deleteBuses()
    end)

    menu.toggle_loop(list, "Sync radio automatically", {"loudradio_autosync"}, "", function(toggled)
        if #buses > 0 then
            -- get user radio
            local pRadio = getPlayerRadio()
            local pVehicle = GET_VEHICLE_PED_IS_IN(players.user_ped(), false)
            if pRadio == "OFF" and lastRadio and lastRadio ~= pRadio then
                pRadio = lastRadio
            end
            if lastRadio == pRadio then
                return
            end
            lastRadio = pRadio
            for i, bus in ipairs(buses) do
                SET_VEH_RADIO_STATION(bus, pRadio)
                SET_VEH_RADIO_STATION(bus, pRadio)
                SET_VEH_RADIO_STATION(bus, pRadio)
                -- try many times to make sure it sets, seems that only one is not enough.. lmao
            end

            if menu.get_value(menu.ref_by_command_name("loudradio_autodisableradio")) then
                if IS_MOBILE_PHONE_RADIO_ACTIVE() then
                    SET_RADIO_TO_STATION_NAME("OFF")
                end

                if pVehicle then
                    SET_VEHICLE_RADIO_ENABLED(pVehicle, false)
                end

            end

        end

    end)

    menu.toggle(list, "Disable vehicle radio automatically", {"loudradio_autodisableradio"},
        "Disable vehicle radio automatically to hear the external one first", function()
        end)

    menu.slider(list, "Sound Boost", {"soundboost"}, "", 2, 100, 4, 2, function(amount)
        if #buses > 0 then
            deleteBuses()
            spawnBuses(amount)

        end
    end)

    local extraRadioSettingsList = list:list("Extra Settings")

    extraRadioSettingsList:slider('Size', {"LRsize"}, 'Will change the distance between the busses', 0, 100,
        Cache:get("bus_size"), 1, function(h)
            Cache:set("bus_size", h)
        end)

    extraRadioSettingsList:slider_float('Height', {"LRheight"}, 'Will change the height of the busses', -100, 100,
        Cache:get("bus_height"), 1, function(h)
            Cache:set("bus_height", h)
        end)

    extraRadioSettingsList:slider_float('Rotation', {"LRrotation"}, 'Will change the Rotation of the busses', -180, 180,
        Cache:get("bus_rot"), 1, function(h)
            local rot = h * 5
            Cache:set("bus_rot", rot)
            local staticR = rot
            Cache:set("bus_staticR", staticR)
            local staticRR = rot
            Cache:set("bus_staticRR", staticRR)

        end)

    extraRadioSettingsList:slider_float('Circle Rotation', {"LRcircle"},
        'Controls the rotation of buses around the player in a circular motion', -180, 180,
        Cache:get("bus_circleRotation"), 1, function(h)
            local circleRotation = h
            Cache:set("bus_circleRotation", circleRotation)

            local rot = h + Cache:set("bus_staticR")
            Cache:set("bus_rot", rot)

        end)

    extraRadioSettingsList:slider_float('X offset', {"LRxOffset"}, 'Will change the x Offset of the busses', 0, 300,
        Cache:get("bus_xOffset"), 10, function(h)
            local xOffset = h / 100
            Cache:set("bus_xOffset", xOffset)

            local staticX = xOffset
            Cache:set("bus_staticX", staticX)
        end)

    extraRadioSettingsList:slider_float('Y offset', {"LRyOffset"}, 'Will change the y Offset of the busses', 0, 300,
        Cache:get("bus_yOffset"), 10, function(h)
            local yOffset = h / 100
            Cache:set("bus_yOffset", yOffset)

            local staticY = yOffset
            Cache:set("bus_staticY", staticY)

        end)

    extraRadioSettingsList:slider_float('Roll', {"LRroll"}, 'Will change the roll of the busses', -180, 180,
        Cache:get("bus_roll"), 1, function(h)
            local roll = h
            Cache:set("bus_roll", roll)

        end)

    extraRadioSettingsList:slider_float('Yaw', {"LRyaw"}, 'Will change the yaw of the busses', -180, 180,
        Cache:get("bus_yaw"), 1, function(h)
            local yaw = h
            Cache:set("bus_yaw", yaw)
        end)

    extraRadioSettingsList:toggle('Visibility Toggle', {"LRvisibil"}, 'Toggles the invisibility', function(on)
        Cache:set("bus_visibilityToggle", on)
    end, Cache:get("bus_visibilityToggle")) -- true at the end to make it default to on, instead of off

    extraRadioSettingsList:toggle('Collision Toggle', {"LRcollis"}, 'Toggles the collision of detached busses',
        function(on)
            Cache:set("bus_collisionToggle", on)
        end)

end

return list_setup
