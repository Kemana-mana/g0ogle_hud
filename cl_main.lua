ESX = exports['es_extended']:getSharedObject()

local PlayerData = {}
local maxPlayers = GetConvar("sv_maxclients", "128")
local PlayerData = {}
local player_fps = 0
local fps_calc = 0
local newping = 0
local jancok
local newexp = 0

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job

    jancok = ESX.PlayerData.job.label .. " - " .. ESX.PlayerData.job.grade_label
end)

RegisterNetEvent("HandlePing")
AddEventHandler("HandlePing", function(ping)
    newping = ping
end)

-- RegisterCommand("exp", function()
--     ESX.TriggerServerCallback('esx_crafting:GetSkillLevel', function(level)
--         newexp = level
--     end)

--     ExecuteCommand('me Exp : ' .. newexp)
-- end)

RegisterNUICallback('go_hud:HandInfo', function(data, cb)
    cb({
        -- player = GetPlayerName(PlayerId()),
        player = xPlayer.getName(),
        player_job = ESX.PlayerData.job.label .. " - " .. ESX.PlayerData.job.grade_label,
    --  playerpingofc = newexp,
        ID = GetPlayerServerId(PlayerId()),

        -- ICONS --
        ID_ICON = Config.Icons.ID_ICON,
        PLAYERS_ICON = Config.Icons.PLAYERS_ICON,
        LOBBY_ICON = Config.Icons.LOBBY_ICON,
        FPS_ICON = Config.Icons.FPS_ICON,
        DISCORD_ICON = Config.Icons.DISCORD_ICON,
        WEBSITE_ICON = Config.Icons.WEBSITE_ICON
    })
end)

--[[ CreateThread(function()
    while true do
        fps_calc = fps_calc + 1
        Wait(0)
    end
end) --]]

CreateThread(function() -- calc
    while true do
        player_fps = fps_calc
        fps_calc = 0

        Wait(1000)
    end
end)

RegisterNUICallback('ready', function(data, cb)
    cb("ok")
end)

RegisterCommand("testp", function(source)
    TriggerServerEvent("GetPlayerPing")
    return newping
end)

TriggerEvent('chat:addSuggestion', '/gohud', 'hide or show', {
    { name="hide or show", help="hides / shows the top hud" },
})

RegisterCommand("gohud", function(source, args)
    if args[1] == "hide" then
        TriggerEvent("hidevehhud", source)
    SendNUIMessage({
        action = "hide_hud"
    })
    elseif  args[1] == "show" then
        TriggerEvent("showevehhud", source)
        SendNUIMessage({
            action = "show_hud"
        })
    end
end)