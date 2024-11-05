local cmdConfig = require("HottiScript.data.default_config")
for key, value in pairs(cmdConfig) do
    Cache:set(key, value)
end
