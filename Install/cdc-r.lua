-- Download necessary files
local files = {
    "startup/startup-cdc-r.lua",
    "machine/cdc.lua",
    "move.lua"
}
 
for _, file in ipairs(files) do
    shell.run("wget", "https://raw.githubusercontent.com/Rikys/Mekanism-x5-Plant-Manager/main/Turtle/" .. file)
end
 
fs.move("startup-cdc-r.lua", "startup.lua")
-- Reboot turtle
os.reboot()