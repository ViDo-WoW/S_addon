local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_SYSTEM")
GC_Sniffer:SetScript("OnEvent", function(self, event, text)
    SAtest = SAtest or {}

    table.insert(SAtest, text)
    --print("Пошло поехало: " .. text)

        if string.find(text, "Шеф") then
        print("ТАК ВОТ ЖЕ: " .. text)
    end
end)