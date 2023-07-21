--Functionality to get current player position and send it to the server.
Citizen.CreateThread(function()
    while true do 
        if IsControlJustReleased(1, 243) then --Tilde character 243 (`)
            local plyPed = GetPlayerPed(-1)
            local plyPos = GetEntityCoords(plyPed)
            local plyHeading = GetEntityHeading(plyPed)

            TriggerServerEvent("sv_savePositions:savePosition", plyHeading, plyPos.x, plyPos.y, plyPos.z)

            print("[Obtain Position] Heading: " .. plyHeading .. " | x: " .. plyPos.x .. " | y: " .. plyPos.y .. " | z: " .. plyPos.z)
        end

        Citizen.Wait(1)
    end
end)