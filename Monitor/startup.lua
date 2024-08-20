local basalt = require("basalt")
 
local monitor = peripheral.wrap("right")
monitor.setTextScale(0.5)
 
local bg = basalt.addMonitor()
bg:setMonitor("right")
bg:setBackground(colors.black)
 
require("ores").draw(bg)
 
basalt.autoUpdate()
 
local p = bg:addFrame()
    :setSize("parent.w - 2", "parent.h / 2")
    :setPosition(2, 2)
    :setBackground(colors.black)
    :setBorder(colors.green)
 
local m1 = p:addFrame()
    :setSize(10,10)
    :setPosition(2,2)
    :setBackground(colors.black)
 
local ma = m1:addFrame()
    :setSize(7,5)
    :setBackground(colors.gray)
    :setBorder(colors.red)
 
local i = m1:addPane()
    :setSize(1,1)
    :setPosition(9,1)
    :setBackground(colors.red, "i", colors.white)
 
local l = m1:addPane()
    :setSize(1,1)
    :setPosition(9,3)
    :setBackground(colors.orange, "g", colors.white)
 
 
 
 
basalt.autoUpdate()