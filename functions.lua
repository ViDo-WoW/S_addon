--функция для разбивания строки на слова (слова помещаются в таблицу)
function mysplit (inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str)
    end
    return t
end


--проверка длины таблицы
function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end


--пример функции для скрывания фреймов группы
function partyFrameHide()
    for i = 1, 25 do
        local prtyF = _G["PartyMemberFrame"..i]
        if prtyF ~= nil and prtyF:IsVisible() then
            prtyF:Hide()
        end
    end
end
--ВЫШЕ НЕ МОИ ФУНКЦИИ

-- МАКРОСЫ:
--макрос на запрос логов по префиксу Шефа
--/run SendAddonMessage("nsVysSysChat", "Хефе 5", "GUILD")

--макрос на исключение слова из матов
--/run SendAddonMessage("нс_мат_исключения", "слово", "guild")

--макрос на добавление мата
--/run SendAddonMessage("нс_мат", "мат", "guild")

--макрос на отключение котиков
--



--Функция распознавания Шефа
function Hefe(sender)
    if string.find(sender, "Шеф")
        or string.find(sender, "Ваймс")
        or string.find(sender, "Хефе")
        or string.find(sender, "Люцзе")
        or string.find(sender, "Посети")
        or string.find(sender, "Витинари")
        or string.find(sender, "Колон")
        or string.find(sender, "Кербес")
        or string.find(sender, "Аффа")
        or string.find(sender, "Нугган")
        or string.find(sender, "Никколо") then
      --print("Попався!")
        return true
    end
end


--Функция отключения котиков
--[[function netkotov(self, event, text, sender)
    local lowerMsg = strlower(text)
    if string.find(lowerMsg, "котика") then
        return true
    end
end
ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", netkotov)--]]

--функция поиска по системному чату
function searchSystl(text, count)
    local ans = {}
    for i = #SAtest, 1, -1 do
        local answer = SAtest[i]
        if answer and string.find(answer, text) then

            table.insert(ans, answer)
            
            if count and #ans >= count then
                break
            end
        end
    end
    return ans
end