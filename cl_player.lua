--Get current player's position and send it to the server
Citizen.CreateThread(function()
    while true do
        if IsControlJustReleased(1, 243) then --Tilde character 243 (`)
            local plyPed = GetPlayerPed(-1)
            local plyPos = GetEntityCoords(plyPed)
            local plyHeading = GetEntityHeading(plyPed)

            TriggerServerEvent("sv_savePositions:savePosition", plyHeading, plyPos.x, plyPos.y, plyPos.z)

            print("[Obtain Position] Heading: " ..
                plyHeading .. " | x: " .. plyPos.x .. " | y: " .. plyPos.y .. " | z: " .. plyPos.z)

            Citizen.Wait(1)
        end
    end
end)

function showNotification(message, color, flash, saveToBrief)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    ThefeedSetNextPostBackgroundColor(color)
    EndTextCommandThefeedPostTicker(flash, saveToBrief)
end

showNotification(
    "Successfully saved to JSON file.",
    210,
    false,
    false
)
