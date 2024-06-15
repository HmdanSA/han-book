local RSGCore = exports['rsg-core']:GetCoreObject()

CreateThread(function()
    for k, v in pairs(Config.books) do
        RSGCore.Functions.CreateUseableItem(k, function(source, item)
            TriggerClientEvent("han-book:client:OpenBook", source, k, item)
        end)
    end
end)

exports['rsg-core']:AddItem("test_book", {
    name = "test_book", label = "كتاب", weight = 500, type = 'item', image = 'book.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = ""
})