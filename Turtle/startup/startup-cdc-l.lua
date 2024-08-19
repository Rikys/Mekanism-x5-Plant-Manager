-- startup.lua
 
local cdc = require("cdc")
local move = require("move")
 
rednet.open("right")
 
local function run()
    local machine = peripheral.wrap("left")
    local data = cdc.getAll(machine)
    rednet.send(4, data, "cdcData")
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