local QBCore = exports['qb-core']:GetCoreObject()

local processWait = Config.WaitTime

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        ShowMethStartNotifyProcess()

        local methProcessCoords = Config.MethProcessLocation

        local playerCoords = GetEntityCoords(PlayerPedId())
        local dst = GetDistanceBetweenCoords(playerCoords, methProcessCoords, true)

        if IsControlJustReleased(0, 38) and dst <= 1.0 then
            PlayAnimation()
            QBCore.Functions.Progressbar("process_meth", Lang:t('progress.processingmeth'), 5000, false, true)
            Citizen.Wait(processWait)
            StopAnimation()
            TriggerServerEvent("dx-drugs:getProcessedMeth")
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        ShowMethStartNotifyPackage()

        local methPackageCoords = Config.MethPackageLocation

        local playerCoords = GetEntityCoords(PlayerPedId())
        local dst = GetDistanceBetweenCoords(playerCoords, methPackageCoords, true)

        if IsControlJustReleased(0, 38) and dst <= 1.0 then 
            if exports["qb-inventory"]:HasItem("unprocessed_meth") then
                PlayAnimation()
                QBCore.Functions.Progressbar("packet_meth", Lang:t('progress.packagingmeth'), 5000, false, true)
                Citizen.Wait(processWait)
                StopAnimation()
                TriggerServerEvent("dx-drugs:getMeth")
                TriggerServerEvent("dx-drugs:removeProcessMeth")
            else
                QBCore.Functions.Notify(Lang:t('notify.needprocmeth'), "error")
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        ShowCocaineStartNotifyProcess()

        local cocaineProcessCoords = Config.CocaineProcessLocation

        local playerCoords = GetEntityCoords(PlayerPedId())
        local dst = GetDistanceBetweenCoords(playerCoords, cocaineProcessCoords, true)

        if IsControlJustReleased(0, 38) and dst <= 1.0 then
            PlayAnimation()
            QBCore.Functions.Progressbar("cocaine_process", Lang:t('progress.processingcocaine'), 5000, false, true)
            Citizen.Wait(processWait)
            StopAnimation()
            TriggerServerEvent("dx-drugs:getProcessedCocaine")
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        ShowCocaineStartNotifyPackage()

        local cocainePackageCoords = Config.CocainePackageLocation

        local playerCoords = GetEntityCoords(PlayerPedId())
        local dst = GetDistanceBetweenCoords(playerCoords, cocainePackageCoords, true)

        if IsControlJustReleased(0, 38) and dst <= 1.0 then
            if exports["qb-inventory"]:HasItem("coke_small_brick") then
                PlayAnimation()
                QBCore.Functions.Progressbar("cocaine_package", Lang:t('progress.packagingcocaine'), 5000, false, true)
                Citizen.Wait(processWait)
                StopAnimation()
                TriggerServerEvent("dx-drugs:getCocaine")
                TriggerServerEvent("dx-drugs:removeCocaine")
            else
                QBCore.Functions.Notify(Lang:t('notify.needproccocaine'), "error")
            end
        end
    end
end)

RegisterNetEvent("dx-drugs:notifyMethPr", function(methPrAmount)
    local methPrMessage = string.format(Lang:t('notify.gotprocmeth'), methPrAmount)
    QBCore.Functions.Notify(methPrMessage, "success")
end)

RegisterNetEvent("dx-drugs:notifyCocainePr", function(cocainePrAmount)
    local cocainePrMessage = string.format(Lang:t('notify.gotproccocaine'), cocainePrAmount)
    QBCore.Functions.Notify(cocainePrMessage, "success")
end)

RegisterNetEvent("dx-drugs:notifyMethPa", function(methPaAmount)
    local methPaMessage = string.format(Lang:t('notify.gotmeth'), methPaAmount)
    QBCore.Functions.Notify(methPaMessage, "success")
end)

RegisterNetEvent("dx-drugs:notifyCocainePa", function(cocainePaAmount)
    local cocainePaMessage = string.format(Lang:t('notify.gotcocaine'), cocainePaAmount)
    QBCore.Functions.Notify(cocainePaMessage, "success")
end)