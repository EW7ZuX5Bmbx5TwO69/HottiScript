table.indexOf = function(self, item)
    for index, value in ipairs(self) do
        if value == item then
            return index
        end
    end
    return nil -- Si el elemento no se encuentra en la tabla
end

table.includes = function(self, itemOrItems)
    if type(itemOrItems) == "table" then
        for _, item in ipairs(itemOrItems) do
            if not table.includes(self, item) then
                return false
            end
        end
        return true
    else
        for _, v in ipairs(self) do
            if v == itemOrItems then
                return true
            end
        end
        return false
    end
end

table.filter = function(tbl, predicate)
    local result = {} -- Tabla para almacenar los elementos que cumplen el predicado
    for _, value in ipairs(tbl) do
        if predicate(value) then
            table.insert(result, value) -- Agregar el elemento a la tabla de resultados
        end
    end
    return result
end



table.getKeys = function(self)
    local keyset = {}
    local n = 0
    for k, v in pairs(self) do
        n = n + 1
        keyset[n] = k
    end
    table.sort(keyset)
    return keyset

end

table.findIndex = function(self, string)
    for i, item in ipairs(self) do
        if item == string then
            return i
        end
    end
    return -1
end

table.join = function(self, sep)
    if sep == nil then
        sep = ""
    end
    return table.concat(self, sep)
end


string.startsWith = function(self, starts)
    return string.sub(self, 1, string.len(starts)) == starts
end

string.endsWith = function(self, ending)
    return ending == "" or self:sub(-#ending) == ending
end


string.split = function(self, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(self, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end


function merge_objects(obj1, obj2)
    local merged = {}

    -- Copiar las propiedades de obj1
    for k, v in pairs(obj1) do
        merged[k] = v
    end

    -- Copiar las propiedades de obj2
    for k, v in pairs(obj2) do
        merged[k] = v
    end

    return merged

end

function array_reverse(x)
    local n, m = #x, #x / 2
    for i = 1, m do
        x[i], x[n - i + 1] = x[n - i + 1], x[i]
    end
    return x
end

function array_remove(t, fnKeep)
    local j, n = 1, #t;

    for i = 1, n do
        if (fnKeep(t, i, j)) then
            -- Move i's kept value to j's position, if it's not already there.
            if (i ~= j) then
                t[j] = t[i];
                t[i] = nil;
            end
            j = j + 1; -- Increment position of where we'll place the next kept value.
        else
            t[i] = nil;
        end
    end

    return t;
end

return self
