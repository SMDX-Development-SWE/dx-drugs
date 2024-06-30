local cocaineProcess = Config.CocaineProcessLocation
local cocainePackage = Config.CocainePackageLocation

function ShowCocaineStartNotifyProcess()
    if not cocaineProcess then
        return
    end

    local player = GetPlayerPed(-1)
    local dst = GetDistanceBetweenCoords(GetEntityCoords(player), cocaineProcess)

    if dst <= 2.0 then
        DrawText3D(cocaineProcess, Lang:t('press.startcoceproc'))
    end
end

function ShowCocaineStartNotifyPackage()
    if not cocainePackage then
        return
    end

    local player = GetPlayerPed(-1)
    local dst = GetDistanceBetweenCoords(GetEntityCoords(player), cocainePackage)

    if dst <= 2.0 then
        DrawText3D(cocainePackage, Lang:t('press.startcocepack'))
    end
end