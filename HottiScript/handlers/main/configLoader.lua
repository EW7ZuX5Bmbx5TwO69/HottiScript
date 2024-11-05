local cmdConfig = require("DewScript.data.config")
for key, value in pairs(cmdConfig) do
    Cache:set(key, value)
end
