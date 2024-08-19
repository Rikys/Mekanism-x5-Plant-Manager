local machine = peripheral.wrap("left")
 
if machine then
    local methods = peripheral.getMethods("left")
    for _, method in ipairs(methods) do
        print("- "..method)
        os.sleep(1)
    end
end