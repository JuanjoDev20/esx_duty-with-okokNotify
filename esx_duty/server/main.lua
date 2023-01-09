ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('duty:onoff')
AddEventHandler('duty:onoff', function(job)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local job = xPlayer.job.name
    local grade = xPlayer.job.grade
    
    if job == 'police' or job == 'ambulance' then
        xPlayer.setJob('off' ..job, grade)
        TriggerClientEvent('okokNotify:Alert', _source, _U('offduty'),'', 2000, 'error')
    elseif job == 'offpolice' then
        xPlayer.setJob('police', grade)
        TriggerClientEvent('okokNotify:Alert', _source, _U('onduty'),'', 2000, 'success')
    elseif job == 'offambulance' then
        xPlayer.setJob('ambulance', grade)
        TriggerClientEvent('okokNotify:Alert', _source, _U('onduty'),'', 2000, 'success')
    end

end)








  