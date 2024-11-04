local SCRIPT_VERSION = "0.7"

---
--- Auto-Updater
---

local auto_update_config = {
    source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/refs/heads/main/HottiScript.lua",
    script_relpath = SCRIPT_RELPATH,
    project_url = "https://github.com/EW7ZuX5Bmbx5TwO69/HottiScript",
    branch = "main",
    dependencies = {}
}


util.ensure_package_is_installed('lua/auto-updater')
local auto_updater = require('auto-updater')
if auto_updater then
    auto_updater.run_auto_update(auto_update_config)
end

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
menu:readonly("love u bby lot lot lot lot lot lot lot lot")

