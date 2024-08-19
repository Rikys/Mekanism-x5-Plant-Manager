-- cdc.lua
 
local cdc = {}
 
function cdc.getAll(machine)
    if machine.getInputItem() == nil then
        return nil
    end
    local data = {
        item = machine.getInputItem().name,
        gas = machine.getGasInputFilledPercentage(),
        energy = machine.getEnergyFilledPercentage()
    }
    return data
end
 
return cdc