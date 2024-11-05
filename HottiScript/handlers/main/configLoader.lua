local cmdConfig = require("HottiScript.data.config")
for key, value in pairs(cmdConfig) do
    Cache:set(key, value)
end
