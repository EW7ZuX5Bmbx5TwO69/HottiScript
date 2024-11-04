util.require_natives("3095a", "g")

local menu = menu.my_root()

menu:divider("HUD SETTINGS")

menu.toggle_loop(menu, "Hide Ammo", {"hideammo"}, "Hide ammo from the hud at the top right", function(toggled)
    DISPLAY_AMMO_THIS_FRAME(toggled)
end)

menu.toggle_loop(menu, "Hide Money", {"hidemoney"}, "Hide money from the hud at the top right", function(toggled)
    REMOVE_MULTIPLAYER_HUD_CASH() -- Enable this line if you want to display the native player CASH
end)


menu:divider("by dew for his hotti")
menu:readonly("love u bby")
