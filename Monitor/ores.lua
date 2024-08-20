local ores = {}
 
local ore_list = {
    "Iron",
    "Copper",
    "Gold",
    "Tin",
    "Aluminum",
    "Lead",
    "Silver",
    "Nickel",
    "Zinc",
    "Platinum",
    "Uranium"
}
 
function ores.draw(frame)
    local flexBox = frame:addFlexbox()
        :setSize("parent.w - 2", "parent.h - 2")
        :setPosition(2,2)
        :setJustifyContent("space-around")
        :setBackground(colors.gray)
        
    for i = 1, #ore_list do
        flexBox:addLabel()
            :setText(ore_list[i])
            :setForeground(colors.white)
    end
end
 
return ores