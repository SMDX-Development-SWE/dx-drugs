local methProcess = Config.MethProcessLocation
local methPackage = Config.MethPackageLocation

function ShowMethStartNotifyProcess()
    if not methProcess then
        return
    end

    local player = GetPlayerPed(-1)
    local dst = GetDistanceBetweenCoords(GetEntityCoords(player), methProcess)

    if dst <= 2.0 then
        DrawText3D(methProcess, Lang:t('press.startmethproc'))
    end
end

function ShowMethStartNotifyPackage()
    if not methPackage then
        return
    end

    local player = GetPlayerPed(-1)
    local dst = GetDistanceBetweenCoords(GetEntityCoords(player), methPackage)

    if dst <= 2.0 then
        DrawText3D(methPackage, Lang:t('press.startmethpack'))
    end
end

function PlayAnimation()
    local playerPed = PlayerPedId()
    local animDict = "amb@prop_human_bum_bin@idle_a"
    local animName = "idle_a"

    RequestAnimDict(animDict)

    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(100)
    end
    
    TaskPlayAnim(playerPed, animDict, animName, 8.0, -8.0, -1, 1, 0, false, false, false)
end

function StopAnimation()
    local playerPed = PlayerPedId()
    ClearPedTasks(playerPed)
end