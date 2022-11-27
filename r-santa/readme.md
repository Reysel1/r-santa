--add on qb-core/function/function.lua

function QBCore.Help(msg, coords) 
    AddTextEntry('ShowFloatingHelpNotification', msg) 
    SetFloatingHelpTextWorldPosition(1, coords) 
    SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0) 
    BeginTextCommandDisplayHelp('ShowFloatingHelpNotification') 
    EndTextCommandDisplayHelp(2, false, false, -1) 
end

--discord for suppprt 
    https://discord.gg/8Kqmxu7YH6

--REQUIREMENTS

-QBCore
-OXMYSQL
