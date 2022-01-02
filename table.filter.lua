function table.filter(array, func)
    local filtered = {}

    for i, k in ipairs(array) do
        if func(k) then
            table.insert(filtered, k)
        end
    end

    return filtered
end


-- @example:
local numbers = {1, 2, 3, 4, 5, 6}

local result = table.filter(numbers, function(number)
    return number >= 3
end)

print(unpack(result)) --@console: 3, 4, 5, 6
