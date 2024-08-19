-- cdc.lua
 
local cdc = {}
 
function cdc.getAll()
    local m = peripheral.wrap("left")
    local data = {
        item = m.getInputItem().name
    }
    return data
end
 
return cdc