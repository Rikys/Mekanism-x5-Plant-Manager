-- comms.lua
 
local comms = {}
 
function comms.send(data)
    rednet.send(4, data, "cdcData")
end
 
return comms