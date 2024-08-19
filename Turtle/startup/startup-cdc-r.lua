-- startup.lua
 
local cdc = require("cdc")
local move = require("move")
 
rednet.open("left")
 
local function run()
    local machine = peripheral.wrap("right")
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
    turtle.turnLeft()
    move.fw(4)
    turtle.turnLeft()
    for i = 1, 4 do
        run()
        os.sleep(1)
        move.fw(4)
    end
    turtle.turnLeft()
    turtle.turnLeft()
    move.fw(4)
    turtle.turnRight()
    move.fw(4)
    turtle.turnLeft()
end