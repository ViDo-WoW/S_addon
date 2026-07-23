local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_ADDON")
GC_Sniffer:SetScript("OnEvent", function (self, event, prefix, message, chanel, sender)
	--срабатывает, когда в чате аддонов что то происходит
	--print("test_addon_chat")
	if prefix == "ViDo" then --слушаю свой префикс(хз зачем если честно)
        if string.find(message, "Никому не рассказывай ") then
    	    local fraza = message
            local words = mysplit(fraza)
            local rezultat = table.concat(words, " ",4)
            print(rezultat)
            local final_msg = "Никому не рассказывай, что " .. rezultat
            print("ViDo:", final_msg)
        end
    end
end)


SL_Sniffer = CreateFrame("Frame")
SL_Sniffer:RegisterEvent("CHAT_MSG_ADDON")
SL_Sniffer:SetScript("OnEvent", function (self, event, prefix, message, chanel, sender)
    if prefix == "itsSysLog" then --слушаю префикс Шефа на журнал повышений и понижений
        print(message)
    end
end)