local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_SYSTEM")
GC_Sniffer:SetScript("OnEvent", function(self, event, text)

    -- Функция разбиения строки
    function mysplit(inputstr, sep)
        if sep == nil then sep = "%s" end
        local t = {}
        for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
            table.insert(t, str)
            end
        return t
    end

    SAtest = SAtest or {}
    table.insert(SAtest, text)
    print("Пошло поехало: " .. text)
    if string.find(text, "Шеф") then
        print("ТАК ВОТ ЖЕ: " .. text)
    end

end)
