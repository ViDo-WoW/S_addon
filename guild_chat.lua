local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_GUILD")
GC_Sniffer:SetScript("OnEvent", function (self, event, message, sender)
    --Срабатывает, когда что то происходит в гильдейском чате
     -- Проверка отправителя
    if Hefe(sender) then
            --print("Креветка по имени " .. sender)
            --print("Нашкрябал " .. message)
    end
    if Hefe(sender) then
         if string.find(message:lower(), "^чо") then
            SendChatMessage("Это креветка по имени " .. sender, "GUILD")
        end
    end
    if message:lower() == "тест" then
        print("Тесто в род.падеже и мн.числе будет: " .. message)
        SendChatMessage("хуест", "GUILD")
    end
end)


local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_GUILD")
GC_Sniffer:SetScript("OnEvent", function (self, event, message, sender)--переменные
    if string.find(message:lower(), "^-команда") then--проверка сообщения
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


local HighestGame = {}
local GameOn = false
local GameQuest = " "
local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_GUILD")
GC_Sniffer:SetScript("OnEvent", function (self, event, message, sender)
    if string.find(sender, "Высшая") or string.find(sender, "Наивысшая") or string.find(sender, "Endur") then
        if string.find(message, "^?вопрос") then--проверка сообщения
        local fraza = message
        local words = mysplit(fraza)
        local rezultat = table.concat(words, " ",2)
        GameQuest = rezultat
            SendChatMessage("ИВЕНТ СТАРТ", "OFFICER")
            SendChatMessage("Текущее задание от Высшей: " .. rezultat, "GUILD")
            SendChatMessage("Чтобы ответ засчитался нужна команда !ответ ", "GUILD")
            GameOn = true
        end
    end
        if string.find(message:lower(), "^!повтор") then
            if GameQuest ~= " " then
                SendChatMessage("Текущее задание от Высшей: " .. GameQuest, "GUILD")
                SendChatMessage("Чтобы ответ засчитался нужна команда !ответ ", "GUILD")
            end   
        end
    if string.find(message:lower(), "^!ответ") then--проверка сообщения
        if GameOn then      
            local fraza = message
            local words = mysplit(fraza)
            local rezultat = table.concat(words, " ",2)
            table.insert(HighestGame, sender .. "-" .. rezultat)
            print("Ответ от", sender .. "-" .. rezultat)
            SendChatMessage("Ответ принят от " .. sender, "OFFICER")
        end
    end
end)
    local eventFrame = CreateFrame("Frame")
    eventFrame:SetScript("OnEvent", function(self, event, message, sender)
    if string.find(sender, "Высшая") or string.find(sender, "Наивысшая") or string.find(sender, "Endur") then
        if message == "!результат" then
        local count = #HighestGame
            if count > 0 then
            local start = count - 199
                if start < 1 then
                    start = 1
                end
            for i = start, count do
                SendChatMessage(HighestGame[i], "OFFICER")
            end
            SendChatMessage("ИВЕНТ СТОП", "OFFICER")
            SendChatMessage("Задание от Высшей завершено, ответы больше не принимаются!", "GUILD")
                HighestGame = {}
                GameOn = false
                GameQuest = " "
            end
        end
    end
end)
local eventFrame = CreateFrame("Frame")
eventFrame:SetScript("OnEvent", function(self, event, text, sender)
    if event == "CHAT_MSG_GUILD" then
            if text:lower() == "!монетка" then
            local monetka = math.random(1,100)
                if monetka <= 40 then
            SendChatMessage(sender .. ": ОРЁЛ", "OFFICER")
                    return 1
                elseif monetka <= 80 then
            SendChatMessage(sender .. ": РЕШКА", "OFFICER")
                    return 2
                elseif monetka <= 95 then
            SendChatMessage(sender .. ", ШЕФ СПЕР ТВОЮ МОНЕТУ!", "OFFICER")
                    return 3
                else
            SendChatMessage(sender .. ": РЕБРО", "OFFICER")
                return 4    
            end
        end
    end

end)
eventFrame:RegisterEvent("CHAT_MSG_SYSTEM")
eventFrame:RegisterEvent("CHAT_MSG_GUILD")
