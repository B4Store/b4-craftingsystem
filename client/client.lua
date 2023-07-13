local QBCore = exports[Config.CoreName]:GetCoreObject()


RegisterNetEvent('b4-craftingsystem:client:crafting100', function()
    exports[Config.MenuName]:openMenu({
        {
            header = "carfting Table",
            txt = "weapon crafting table",
            isMenuHeader = true
        },
        {
            header = "weapon appistol",
            txt = "Require: iron = 70 , plastic = 70,metalscrap = 100,blueprint_appistol =1",
            icon = "",
            params = {
                event = "b4-craftingsystem:client:crafting8",
            }
        },--weapon_pistol50
        {
            header = "weapon_assaultrifle",
            txt = "Require: iron = 90 , plastic = 100,metalscrap = 120,blueprint_ak =1",
            icon = "",
            params = {
                event = "b4-craftingsystem:client:crafting9",
            }
        },
        {
            header = "weapon_assaultsmg",
            txt = "Require: iron = 110 , plastic = 120,metalscrap = 140,blueprint_uzi =1",
            icon = "",
            params = {
                event = "b4-craftingsystem:client:crafting10",
            }
        },
        {
            header = "weapon_assaultsmg",
            txt = "Require: iron = 130 , plastic = 140,metalscrap = 160, blueprint_pistol =1",
            icon = "",
            params = {
                event = "b4-craftingsystem:client:crafting11",
            }
        },
        {
            header = "Exit",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "b4-craftingsystem:closemenu"
            }
        },
    })
end)
--weapon_pistol_mk2
RegisterNetEvent('b4-craftingsystem:client:crafting11', function()
	local ingredients = QBCore.Functions.HasItem({'iron','metalscrap','plastic','blueprint_pistol'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "crafting..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("b4-craftingsystem:server:crafting11")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["metalscrap"], "remove", 160)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["iron"], "remove", 130)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["plastic"], "remove", 140)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueprint_pistol"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_pistol_mk2"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('b4-craftingsystem:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('b4-craftingsystem:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

RegisterNetEvent('b4-craftingsystem:client:crafting10', function()
	local ingredients = QBCore.Functions.HasItem({'iron','metalscrap','plastic','blueprint_uzi'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "crafting..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("b4-craftingsystem:server:crafting10")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["metalscrap"], "remove", 140)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["iron"], "remove", 110)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["plastic"], "remove", 120)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueprint_uzi"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_assaultsmg"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('b4-craftingsystem:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('b4-craftingsystem:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

RegisterNetEvent('b4-craftingsystem:client:crafting9', function()
	local ingredients = QBCore.Functions.HasItem({'iron','metalscrap','plastic','blueprint_ak'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "crafting..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("b4-craftingsystem:server:crafting9")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["metalscrap"], "remove", 120)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["iron"], "remove", 90)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["plastic"], "remove", 100)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueprint_ak"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_assaultrifle"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('b4-craftingsystem:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('b4-craftingsystem:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

RegisterNetEvent('b4-craftingsystem:client:crafting8', function()
	local ingredients = QBCore.Functions.HasItem({'iron','metalscrap','plastic','blueprint_appistol'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "crafting..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent("b4-craftingsystem:server:crafting8")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["metalscrap"], "remove", 100)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["iron"], "remove", 70)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["plastic"], "remove", 70)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueprint_appistol"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_appistol"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('b4-craftingsystem:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('b4-craftingsystem:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

RegisterNetEvent('b4-craftingsystem:client:crafting1', function()
	local ingredients = QBCore.Functions.HasItem({'keys','weapon_knife'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "crafting..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            exports[Config.DispatchName]:CustomAlert({
                coords = vector3(-1570.74, -1039.77, 7.72),
                message = "blue bag theft",
                dispatchCode = "10-88",
                description = "blue bag theft",
                radius = 0,
                sprite = 437,
                color = 1,
                scale = 1.0,
                length = 3,
            })
            TriggerServerEvent("b4-craftingsystem:server:crafting1")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_knife"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["keys"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueprint_uzi"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('b4-craftingsystem:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('b4-craftingsystem:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

RegisterNetEvent('b4-craftingsystem:client:crafting2', function()
	local ingredients = QBCore.Functions.HasItem({'keys','weapon_knife'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "crafting..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            exports[Config.DispatchName]:CustomAlert({
                coords = vector3(-1570.74, -1039.78, 7.72),
                message = "blue bag theft",
                dispatchCode = "10-88",
                description = "blue bag theft",
                radius = 0,
                sprite = 437,
                color = 1,
                scale = 1.0,
                length = 3,
            })
            TriggerServerEvent("b4-craftingsystem:server:crafting2")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_knife"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["keys"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueprint_pistol90"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('b4-craftingsystem:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('b4-craftingsystem:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

RegisterNetEvent('b4-craftingsystem:client:crafting3', function()
	local ingredients = QBCore.Functions.HasItem({'keys','weapon_knife'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "crafting..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            exports[Config.DispatchName]:CustomAlert({
                coords = vector3(-534.43, 5126.58, 90.67),
                message = "blue bag theft",
                dispatchCode = "10-88",
                description = "blue bag theft",
                radius = 0,
                sprite = 437,
                color = 1,
                scale = 1.0,
                length = 3,
            })
            TriggerServerEvent("b4-craftingsystem:server:crafting3")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_knife"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["keys"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueprint_pistol"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('b4-craftingsystem:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('b4-craftingsystem:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

RegisterNetEvent('b4-craftingsystem:client:crafting4', function()
	local ingredients = QBCore.Functions.HasItem({'keys','weapon_knife'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "crafting..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            exports[Config.DispatchName]:CustomAlert({
                coords = vector3(-198.24, 3637.03, 64.45),
                message = "blue bag theft",
                dispatchCode = "10-88",
                description = "blue bag theft",
                radius = 0,
                sprite = 437,
                color = 1,
                scale = 1.0,
                length = 3,
            })
            TriggerServerEvent("b4-craftingsystem:server:crafting4")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_knife"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["keys"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueprint_ak"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('b4-craftingsystem:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('b4-craftingsystem:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

RegisterNetEvent('b4-craftingsystem:client:crafting5', function()
	local ingredients = QBCore.Functions.HasItem({'keys','weapon_knife'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "crafting..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            exports[Config.DispatchName]:CustomAlert({
                coords = vector3(891.83, 2855.94, 57.0),
                message = "blue bag theft",
                dispatchCode = "10-88",
                description = "blue bag theft",
                radius = 0,
                sprite = 437,
                color = 1,
                scale = 1.0,
                length = 3,
            })
            TriggerServerEvent("b4-craftingsystem:server:crafting5")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_knife"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["keys"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueprint_appistol"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('b4-craftingsystem:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('b4-craftingsystem:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

RegisterNetEvent('b4-craftingsystem:client:crafting6', function()
	local ingredients = QBCore.Functions.HasItem({'keys','weapon_knife'})
    if ingredients then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic4"})
        TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 20.0, "grilling", 0.6)
        QBCore.Functions.Progressbar("taco_stuff", "crafting..", 10000, false, true, {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            exports[Config.DispatchName]:CustomAlert({
                coords = vector3(572.02, 149.53, 104.25),
                message = "blue bag theft",
                dispatchCode = "10-88",
                description = "blue bag theft",
                radius = 0,
                sprite = 437,
                color = 1,
                scale = 1.0,
                length = 3,
            })
            TriggerServerEvent("b4-craftingsystem:server:crafting6")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_knife"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["keys"], "remove", 1)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueprint_mk"], "add", 1)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            TriggerEvent('b4-craftingsystem:client:cooking')
        end, function() -- Cancel
            QBCore.Functions.Notify("Okay then", "error")
            TriggerEvent('b4-craftingsystem:client:cooking')
        end)
    else		
        QBCore.Functions.Notify('You missing something.', 'error')
    end
end)

exports[Config.TargetName]:AddBoxZone("crafting8", vector3(-169.74, -287.32, 81.83), 1, 1, {
    name="crafting8",
    debugPoly=false,
    heading=340,
    minZ=78.63,
    maxZ=82.63,
            }, {
                    options = {
                        {
                            event = "b4-craftingsystem:client:crafting100",
                            icon = "",
                            label = "crafting",
                            job = "all",
                        },
                    },
                    distance = 2.5
                })

exports[Config.TargetName]:AddBoxZone("bag6", vector3(572.04, 149.56, 104.25), 1, 1, {
    name="bag6",
    debugPoly=false,
    heading=0,
    minZ=100.05,
    maxZ=104.05,
            }, {
                    options = {
                        {
                            event = "b4-craftingsystem:client:crafting6",
                            icon = "",
                            label = "open bag",
                            job = "all",
                            item = "keys"
                        },
                    },
                    distance = 2.5
                })

exports[Config.TargetName]:AddBoxZone("bag5", vector3(892.0, 2856.54, 57.0), 1, 1, {
    name="bag5",
    debugPoly=false,
    heading=0,
    minZ=52.8,
    maxZ=56.8,
            }, {
                    options = {
                        {
                            event = "b4-craftingsystem:client:crafting5",
                            icon = "",
                            label = "open bag",
                            job = "all",
                            item = "keys"
                        },
                    },
                    distance = 2.5
                })


exports[Config.TargetName]:AddBoxZone("bag4", vector3(-198.16, 3636.74, 64.45), 1, 1, {
    name="bag4",
    debugPoly=false,
    heading=280,
    minZ=60.05,
    maxZ=64.05,
            }, {
                    options = {
                        {
                            event = "b4-craftingsystem:client:crafting4",
                            icon = "",
                            label = "open bag",
                            job = "all",
                            item = "keys"
                        },
                    },
                    distance = 2.5
                })

exports[Config.TargetName]:AddBoxZone("bag3", vector3(-534.27, 5126.86, 90.71), 1, 1, {
    name="bag3",
    debugPoly=false,
    heading=0,
    minZ=86.31,
    maxZ=90.31,
            }, {
                    options = {
                        {
                            event = "b4-craftingsystem:client:crafting3",
                            icon = "",
                            label = "open bag",
                            job = "all",
                            item = "keys"
                        },
                    },
                    distance = 2.5
                })

exports[Config.TargetName]:AddBoxZone("bag2", vector3(-1570.85, -1039.46, 7.6), 1, 1, {
    name="bag2",
    debugPoly=false,
    heading=0,
    minZ=3.2,
    maxZ=7.2,
            }, {
                    options = {
                        {
                            event = "b4-craftingsystem:client:crafting1",
                            icon = "",
                            label = "open bag",
                            job = "all",
                            item = "keys"
                        },
                    },
                    distance = 2.5
                })

exports[Config.TargetName]:AddBoxZone("bag1", vector3(1729.47, 3329.81, 41.22), 1, 1, {
    name="bag1",
    debugPoly=false,
    heading=0,
    minZ=36.82,
    maxZ=40.82,
            }, {
                    options = {
                        {
                            event = "b4-craftingsystem:client:crafting2",
                            icon = "",
                            label = "open bag",
                            job = "all",
                            item = "keys"
                        },
                    },
                    distance = 2.5
                })