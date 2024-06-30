local QBCore = exports['qb-core']:GetCoreObject()

local methPrAmount = Config.MethProcessItemCount
local methPaAmount = Config.MethPackageItemCount
local cocainePrAmount = Config.CocaineProcessItemCount
local cocainePaAmount = Config.CocainePackageItemCount

-- Meth
RegisterServerEvent("dx-drugs:getProcessedMeth", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.AddItem("unprocessed_meth", methPrAmount)
    TriggerClientEvent("dx-drugs:notifyMethPr", src, methPrAmount)
end)

RegisterServerEvent("dx-drugs:getMeth", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.AddItem("meth", methPaAmount)
    TriggerClientEvent("dx-drugs:notifyMethPa", src, methPaAmount)
end)

RegisterServerEvent("dx-drugs:removeProcessMeth", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.RemoveItem("unprocessed_meth", 1)
end)

-- Cocaine
RegisterServerEvent("dx-drugs:getProcessedCocaine", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.AddItem("coke_small_brick", cocainePrAmount)
    TriggerClientEvent("dx-drugs:notifyCocainePr", src, cocainePrAmount)
end)

RegisterServerEvent("dx-drugs:getCocaine", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.AddItem("cokebaggy", cocainePaAmount)
    TriggerClientEvent("dx-drugs:notifyCocainePa", src, cocainePaAmount)
end)

RegisterServerEvent("dx-drugs:removeCocaine", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.RemoveItem("coke_small_brick", 1)
end)