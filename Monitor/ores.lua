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
 
function ores.drawOn(frame)
    for i = 1, #ore_list do
        frame[i]:addLabel()
            :setText(ore_list[i])
            :setForeground(colors.white)
    end
end
 
return ores, ore_list