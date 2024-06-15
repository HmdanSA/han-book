AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        SetNuiFocus(false,false)
        SendNUIMessage({
            show = false
        })
    end
end)

RegisterNetEvent('han-book:client:OpenBook', function(bookname)
    SetNuiFocus(true,true)
    SendNUIMessage({
        show = true,
        book = bookname,
        pages = Config.books[bookname]["pages"],
        size = Config.books[bookname]["size"],
    })
end)

RegisterNUICallback('escape', function(data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)