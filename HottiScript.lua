local SCRIPT_VERSION = "0.69"
local SCRIPT_NAME = "HottiScript"
---
--- Auto-Updater
---
---

local auto_update_config = {
    source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript.lua",
    script_relpath = SCRIPT_RELPATH,
    project_url = "https://github.com/EW7ZuX5Bmbx5TwO69/HottiScript",
    branch = "main",
    switch_to_branch = "main",
    verify_file_begins_with = "--",
    dependencies = {
    {
        name = "default_config",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/data/default_config.lua",
        script_relpath = "HottiScript/data/default_config.lua",
        switch_to_branch = "main",
        is_required = true,
    },
    {
        name = "cache",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/utils/cache.lua",
        script_relpath = "HottiScript/utils/cache.lua",
        switch_to_branch = "main",
        is_required = true,
    },
    {
        name = "lua",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/utils/lua.lua",
        script_relpath = "HottiScript/utils/lua.lua",
        switch_to_branch = "main",
        is_required = true,
    },
    {
        name = "configLoader",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/handlers/main/configLoader.lua",
        script_relpath = "HottiScript/handlers/main/configLoader.lua",
        switch_to_branch = "main",
        is_required = true,
    },
    {
        name = "playerJoinLeave",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/events/playerJoinLeave.lua",
        script_relpath = "HottiScript/events/playerJoinLeave.lua",
        switch_to_branch = "main",
        is_required = true,
    },
    {
        name = "constants",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/dependencies/constants.lua",
        script_relpath = "HottiScript/dependencies/constants.lua",
        switch_to_branch = "main",
        is_required = true,
    }, {
        name = "item_browser",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/dependencies/item_browser.lua",
        script_relpath = "HottiScript/dependencies/item_browser.lua",
        switch_to_branch = "main",
        is_required = true,
    }, {
        name = "colors",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/dependencies/colors.lua",
        script_relpath = "HottiScript/dependencies/colors.lua",
        switch_to_branch = "main",
        is_required = true
    }, {
        name = "constructor_lib",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/dependencies/constructor_lib.lua",
        script_relpath = "HottiScript/dependencies/constructor_lib.lua",
        is_required = true,
    }, {
        name = "vehicles_list",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/dependencies/vehicles.txt",
        script_relpath = "HottiScript/dependencies/vehicles.txt",
        switch_to_branch = "main"
    }, {
        name = "inspect",
        source_url = "https://raw.githubusercontent.com/hexarobi/stand-lua-constructor/main/lib/inspect.lua",
        script_relpath = "lib/inspect.lua",
        verify_file_begins_with = "local",
        is_required = true
    },
    {
        name = "modules_vehicle",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/modules/1vehicle.lua",
        script_relpath = "HottiScript/modules/1vehicle.lua",
        switch_to_branch = "main",
        is_required = true,
    },
    {
        name = "modules_online",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/modules/2online.lua",
        script_relpath = "HottiScript/modules/2online.lua",
        switch_to_branch = "main",
        is_required = true,
    },
    {
        name = "modules_hud",
        source_url = "https://raw.githubusercontent.com/EW7ZuX5Bmbx5TwO69/HottiScript/main/HottiScript/modules/3hud.lua",
        script_relpath = "HottiScript/modules/3hud.lua",
        switch_to_branch = "main",
        is_required = true,
    },
    

}
}

util.ensure_package_is_installed('lua/auto-updater')
local auto_updater = require('auto-updater')
if auto_updater then
    auto_updater.run_auto_update(auto_update_config)
end

local scripts_dir = filesystem.scripts_dir()

local utils_dir = scripts_dir .. SCRIPT_NAME .. "\\utils\\"
local handlers_dir = scripts_dir .. SCRIPT_NAME .. "\\handlers\\"
local modules_dir = scripts_dir .. SCRIPT_NAME .. "\\modules\\"
local dependencies_dir = scripts_dir .. SCRIPT_NAME .. "\\dependencies\\"

libs = {}
commands = {}
categories = {}
buses = {}

util.require_natives("3095a", "g")


local root = menu.my_root()
root:divider("HOTTI SCRIPT " .. SCRIPT_VERSION)

for _, dependency in pairs(auto_update_config.dependencies) do
    if dependency.is_required then
        if dependency.loaded_lib == nil then
            local lib_require_path = dependency.script_relpath:gsub("[.]lua$", "")
            loaded_lib_status, loaded_lib = pcall(require, lib_require_path)
            if not loaded_lib_status then
                error("Could not load required dependency `" .. dependency.name .. "`")
            else
                dependency.loaded_lib = loaded_lib
            end
        end
        libs[dependency.name] = dependency.loaded_lib
    end
end

-- load all the functions first
-- util.execute_in_os_thread(function()
--     for _, file in pairs(filesystem.list_files(utils_dir)) do
--         -- Puedes agregar cualquier lógica de carga que necesites aquí
--         local utilName = file:match("([^/\\]+)%.lua$") -- gets the file name and removes the extension, so it will look like "money" instead of "dir/dir/money.lua"
--         require(SCRIPT_NAME .. ".utils." .. utilName)
--     end
-- end)

util.execute_in_os_thread(function()

    -- load main handlers
    for _, file in pairs(filesystem.list_files(handlers_dir .. "main\\")) do

        if filesystem.is_regular_file(file) ~= false then
            -- Puedes agregar cualquier lógica de carga que necesites aquí
            package.loaded[file] = nil
            xpcall(function()
                local module_name = file:match("([^/\\]+)%.lua$")
                local required_mod = require(SCRIPT_NAME .. ".handlers.main." .. module_name)
            end, function(err)
                util.toast("Failed to load: " .. file .. ". Check the log for more info")
                util.toast("error: " .. err)
            end)

        end

    end

    -- Iteramos sobre los archivos en el directorio de módulos
    for _, file in pairs(filesystem.list_files(modules_dir)) do
        -- Puedes agregar cualquier lógica de carga que necesites aquí
        package.loaded[file] = nil
        xpcall(function()
            local module_name = file:match("([^/\\]+)%.lua$")
            local list_name = string.upper(string.sub(module_name, 2), 1)
            local list = root:list(list_name)
            local required_mod = require(SCRIPT_NAME .. ".modules." .. module_name)(root, list, list_name)
        end, function(err)
            util.toast("Failed to load: " .. file .. ". Check the log for more info")
            util.toast("error: " .. err)
        end)
    end

    -- late handlers (to avoid bugs)
    for _, file in pairs(filesystem.list_files(handlers_dir)) do

        if filesystem.is_regular_file(file) ~= false then
            -- Puedes agregar cualquier lógica de carga que necesites aquí
            package.loaded[file] = nil
            xpcall(function()
                local module_name = file:match("([^/\\]+)%.lua$")
                local required_mod = require(SCRIPT_NAME .. ".handlers." .. module_name)
            end, function(err)
                util.toast("Failed to load: " .. file .. ". Check the log for more info")
                util.toast("error: " .. err)
            end)

        end

    end
end)

root:divider("by zuzia & diego")
root:readonly("love u bby <3")

