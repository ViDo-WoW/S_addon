local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_GUILD")
GC_Sniffer:SetScript("OnEvent", function (self, event, message, sender)
    --Срабатывает, когда что то происходит в гильдейском чате
     -- Проверка отправителя
        if string.find(sender, "Шеф") then
            print("Креветка по имени " .. sender)
            print("Нашкрябал " .. message)
        end
        if string.find(sender, "Шеф") then 
            if string.find(message, "чо") then
                SendChatMessage("Это креветка по имени " .. sender, "GUILD")
            end
        end
    if string.find(message, "тест") then
        print("Тесто в род.падеже и мн.числе будет: " .. message)
        SendChatMessage("хуест", "GUILD")
    end
end)

local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_GUILD")
GC_Sniffer:SetScript("OnEvent", function (self, event, message, sender)--переменные
    if string.find(message, "-команда") then--проверка сообщения
        local words = {}
        if words ~= "-команда" then
                local fraza = message
                local words = mysplit(fraza)
                local rezultat = table.concat(words, " ",2)
            print(rezultat)
            SendChatMessage("Фига се вот это " .. rezultat, "GUILD")--реакция в гичат
        end
    end
end)

local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_ADDON")
GC_Sniffer:RegisterEvent("CHAT_MSG_GUILD")
GC_Sniffer:SetScript("OnEvent", function (self, event, message, sender)
    if string.find(message, "-сбщ") then
        local words = {}
        local fraza = message
        local words = mysplit(fraza)
        local rezultat = table.concat(words, " ",2)
            print(rezultat)
        local final_msg = "Никому не рассказывай что " .. rezultat
        SendAddonMessage("ViDo", final_msg, "GUILD")
    end
end)

local eventFrame = CreateFrame("Frame")
eventFrame:SetScript("OnEvent", function(self, event, text, sender)
    SAtest = SAtest or {}
    if event == "CHAT_MSG_GUILD" then
        if string.find(sender, "Высшая") or string.find(sender, "Наивысшая") then
            if text == "-дай" then
            local count = #SAtest
                if count > 0 then
                local start = count - 19
                if start < 1 then
                    start = 1
                end
                    for i = start, count do
                        print(SAtest[i])
                    end
                end
            end
        end
    end
end)
eventFrame:RegisterEvent("CHAT_MSG_SYSTEM")
eventFrame:RegisterEvent("CHAT_MSG_GUILD")
