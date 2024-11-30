lib.addCommand(Config.GreenzonesCommand, {
    help = 'Create a temporary greenzone',
    restricted = Config.GreenzonesAceGroup
}, function(source, args, raw)
    local source = source
    local ped = GetPlayerPed(source)
    lib.callback.await('lation_greenzones:adminZone', source)
end)

lib.addCommand(Config.GreenzonesClearCommand, {
    help = 'Delete a temporary greenzone',
    restricted = Config.GreenzonesAceGroup
}, function(source, args, raw)
    local source = source
    local ped = GetPlayerPed(source)
    lib.callback.await('lation_greenzones:adminZoneClear', source)
end)

lib.callback.register('lation_greenzones:data', function(source, zoneCoords, zoneName, textUI, textUIColor, textUIPosition, zoneSize, disarm, invincible, speedLimit, blipID, blipColor)
    TriggerClientEvent('lation_greenzones:createAdminZone', -1, zoneCoords, zoneName, textUI, textUIColor, textUIPosition, zoneSize, disarm, invincible, speedLimit, blipID, blipColor)
end)

lib.callback.register('lation_greenzones:deleteZone', function()
    TriggerClientEvent('lation_greenzones:deleteAdminZone', -1)
end)