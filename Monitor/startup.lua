local basalt = require("basalt")
local ores = require("ores")
 
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

for i = 1, #ores.list do
    flexBoxRows[i] = flexBox:addFlexbox()
        :setSize(6, "parent.h-2")
        :setDirection("column")
        :setJustifyContent("space-around")
        :setBackground(colors.gray)
end

ores.drawOn(flexBoxRows)

for i = 1, 8 do
    flexBoxRows[i]:addPane()
        :setSize(3,2)
        :setPosition(2,2)
        :setBackground(colors.black)
end

 
basalt.autoUpdate()
