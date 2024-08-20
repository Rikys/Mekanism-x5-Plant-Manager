local basalt = require("basalt")
local ores, ore_list = require("ores")
 
local monitor = peripheral.wrap("right")
monitor.setTextScale(0.5)
 
local main = basalt.addMonitor()
    :setMonitor(monitor)
    :setBackground(colors.black)
 

local flexBox = main:addFlexbox()
    :setSize("parent.w - 2", "parent.h - 2")
    :setPosition(2,2)
    :setJustifyContent("space-around")

local flexBoxRows = {}

for i = 1, #ore_list do
    flexBoxRows[i] = flexBox:addFlexbox()
        :setSize("parent.w", "parent.h / 11")
        :setDirection("column")
        :setJustifyContent("space-around")
        :setBackground(colors.gray)
end

ores.drawOn(flexBoxRows)

 
basalt.autoUpdate()
