local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
local function OnEvent(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" then
        DEFAULT_CHAT_FRAME:AddMessage("ViDo - это успешный успех успешного успеха!")
    end
end
frame:SetScript("OnEvent", OnEvent)