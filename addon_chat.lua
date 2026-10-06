local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_ADDON")
GC_Sniffer:SetScript("OnEvent", function (prefix, text, kod, message, chanel, sender, hernya, name, instanceID)
	--срабатывает, когда в чате аддонов что то происходит
	--print("test_addon_chat")
	--print(text)
	--print(kod)
end)

SL_Sniffer = CreateFrame("Frame")
SL_Sniffer:RegisterEvent("CHAT_MSG_ADDON")
SL_Sniffer:SetScript("OnEvent", function (self, event, prefix, message, chanel, sender)
    if prefix == "itsSysLog" then --слушаю префикс Шефа на журнал повышений и понижений
        print(message)
    end
end)