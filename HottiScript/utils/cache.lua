Cache = {}

-- Función para obtener un valor de la caché
function Cache:get(key)
    local entry = self[key]
    if entry then
        if entry.expireTime == 0 or (entry.expireTime and entry.expireTime >= os.time()) then
            return entry.value
        else
            self[key] = nil -- Eliminar la entrada caducada
            return nil
        end
    else
        return nil
    end
end

-- Función para establecer un valor en la caché con un tiempo de vida
function Cache:set(key, value, ttlInSeconds)
    if ttlInSeconds == nil then
        ttlInSeconds = 0 -- DONT EXPIRE
    end

    if ttlInSeconds == 0 then
        self[key] = {
            value = value,
            expireTime = 0
        }

    else
        self[key] = {
            value = value,
            expireTime = os.time() + ttlInSeconds
        }

    end
end

return self
