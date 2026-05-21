local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_OFFICER")
GC_Sniffer:SetScript("OnEvent", function (self, event, message, sender)

	--срабатывает, когда что то происходит в офицерском чате
	--print("test_officer_chat")
	--print("Офицерский Кто пишет: " .. sender)
	--print("Офицерский, сообщение: " .. message)
end
)
