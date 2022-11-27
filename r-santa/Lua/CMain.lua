
local give = false
local givebola = false

Citizen.CreateThread(function()
    while true do
        local _char = PlayerPedId()
        local _charps = GetEntityCoords(_char)
        local _s = 5000
        for i, _ob in pairs(CFG.ALL["xmax_snowman"]) do
                if Vdist(GetEntityCoords(PlayerPedId()), _ob.x, _ob.y, _ob.z) < 50 then
                thisTable = GetClosestObjectOfType(_ob.x, _ob.y, _ob.z, 1.5, GetHashKey(_ob.model), 0, 0, 0)
                if DoesEntityExist(thisTable) then
                    SetEntityHeading(thisTable, _ob.h)
                    PlaceObjectOnGroundProperly(thisTable)
                else
                    thisTable = CreateObject(GetHashKey(_ob.model), _ob.x, _ob.y, _ob.z, true, true, true)
                    SetEntityHeading(thisTable, _ob.h)
                    PlaceObjectOnGroundProperly(thisTable)
                end
                elseif Vdist(GetEntityCoords(PlayerPedId()), _ob.x, _ob.y, _ob.z) >= 100 then
                thisTable = GetClosestObjectOfType(_ob.x, _ob.y, _ob.z, 1.5, GetHashKey(_ob.model), 0, 0, 0)
                if DoesEntityExist(thisTable) then
                    DeleteEntity(thisTable)
                end
            end		
        end
        for i, _ob in pairs(CFG.ALL["xmax_tree"]) do
                if Vdist(GetEntityCoords(PlayerPedId()), _ob.x, _ob.y, _ob.z) < 50 then
                thisTable = GetClosestObjectOfType(_ob.x, _ob.y, _ob.z, 1.5, GetHashKey(_ob.model), 0, 0, 0)
                if DoesEntityExist(thisTable) then
                    SetEntityHeading(thisTable, _ob.h)
                    PlaceObjectOnGroundProperly(thisTable)
                else
                    thisTable = CreateObject(GetHashKey(_ob.model), _ob.x, _ob.y, _ob.z, true, true, true)
                    SetEntityHeading(thisTable, _ob.h)
                    PlaceObjectOnGroundProperly(thisTable)
                end
                elseif Vdist(GetEntityCoords(PlayerPedId()), _ob.x, _ob.y, _ob.z) >= 100 then
                thisTable = GetClosestObjectOfType(_ob.x, _ob.y, _ob.z, 1.5, GetHashKey(_ob.model), 0, 0, 0)
                if DoesEntityExist(thisTable) then
                    DeleteEntity(thisTable)
                end
            end		
        end
        for k, v in pairs(CFG.ALL) do 
            if k == 'xmax_tree' or k == 'xmax_snowman' then
                for k2,v2 in pairs(v) do
                    if #(_charps - vector3(v2.x, v2.y, v2.z)) < 3 then 
                        _s = 0 
                        QBCore.Help(v2.helptext, vector3(v2.x, v2.y, v2.z+1.0))
                        if k == "xmax_tree" then 
                          if IsControlJustPressed(0, 58) then 
                            if (not give) then
                              QBCore.Functions.Progressbar('name_here', CFG.ALL["LANGS"]["PROGRESS"], CFG.ALL["PROGGRSSTIME"], false, true, {  
                                      disableMovement = true,
                                      disableCarMovement = true,
                                      disableMouse = false,
                                      disableCombat = true,
                                  }, {}, {}, function()  
                                  end, function() 
                                      gettingRegalo = false
                                      QBCore.Functions.TriggerCallback('r-santa:giveregal', function(gived) give = gived end)
                                  end)
                              else
                                  QBCore.Functions.Notify(CFG.ALL["LANGS"]["HAVEREGAL"])  
                              end
                            break 
                        end
                    elseif k == "xmax_snowman" then 
                        if IsControlJustPressed(0, 58) then 
                          if (not givebola) then                             
                            QBCore.Functions.Progressbar('name_here', CFG.ALL["LANGS"]["PROGRESSSNOW"], CFG.ALL["PROGGRSSTIME"], false, true, { 
                                disableMovement = true,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true,
                            }, {}, {}, function()  
                            end, function() 
                                QBCore.Functions.TriggerCallback('givebola', function( )end)  
                                givebola = true
                            end)
                          else 
                            QBCore.Functions.Notify(CFG.ALL["LANGS"]["HAVESNOW"]) 
                        end
                      end
                     end
                  end
                end
            end
        end
        Wait(_s)	
    end
end)
