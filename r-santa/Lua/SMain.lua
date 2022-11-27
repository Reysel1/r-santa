local regalTimer = 0

QBCore.Functions.CreateCallback('r-santa:giveregal', function(source, cb)
    local src = source
    local Pdata = QBCore.Functions.GetPlayer(src)

    local result = MySQL.query.await('SELECT * FROM regalos WHERE identifier = ?', {Pdata.PlayerData.citizenid})

    if result[1] == nil then
        local random = math.random(1, #CFG.ALL['items'])
        local item = CFG.ALL['items'][random]
        
        Pdata.Functions.AddItem(item.itemsname, 1)

        TriggerClientEvent('QBCore:Notify', src, (CFG.ALL["LANGS"]["ADDITEMRANDOM"]):format(item.label))

        cb(true)
        MySQL.query.await('INSERT INTO regalos (identifier) VALUES (?)', {Pdata.PlayerData.citizenid})

    else                                            
        TriggerClientEvent('QBCore:Notify', src, CFG.ALL["LANGS"]["HAVEREGAL"])
        cb(false)
    end
end)


QBCore.Functions.CreateCallback('givebola', function(source)
    local src = source 
    local Pdata = QBCore.Functions.GetPlayer(src)
    local random = math.random(5, 10)
    Pdata.Functions.AddItem('snowball', math.random(random, random)) 
    TriggerClientEvent('QBCore:Notify', src, (CFG.ALL["LANGS"]["ADDSNOW"]):format(random))
end)