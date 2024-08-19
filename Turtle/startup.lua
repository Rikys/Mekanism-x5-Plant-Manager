-- startup.lua
 
local cdc = require("cdc")
local comms = require("comms")
local move = require("move")
 
rednet.open("right")
 
local function run()
    local data = cdc.getAll()
    comms.send(data)
end
 
while true do
    for i = 1, 3 do
        run()
        os.sleep(1)
        move.fw(4)
    end
    run()
    os.sleep(1)
    turtle.turnRight()
    move.fw(4)
    turtle.turnRight()
    for i = 1, 4 do
        run()
        os.sleep(1)
        move.fw(4)
    end
    turtle.turnRight()
    turtle.turnRight()
    move.fw(4)
    turtle.turnLeft()
    move.fw(4)
    turtle.turnRight()
end