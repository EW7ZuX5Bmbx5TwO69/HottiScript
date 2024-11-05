local function list_setup(root, list, list_name)
    menu.toggle_loop(list, "Hide Ammo", {"hideammo"}, "Hide ammo from the hud at the top right", function(toggled)
        DISPLAY_AMMO_THIS_FRAME(toggled)
    end)

    menu.toggle_loop(list, "Hide Money", {"hidemoney"}, "Hide money from the hud at the top right", function(toggled)
        REMOVE_MULTIPLAYER_HUD_CASH() -- Enable this line if you want to display the native player CASH
    end)

end

return list_setup
