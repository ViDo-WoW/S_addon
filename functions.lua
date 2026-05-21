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

--Функция распознавания Шефа
function Hefe(sender)
	if string.find(sender, "Шеф") or string.find(sender, "Ваймс") or string.find(sender, "Хефе") or string.find(sender, "Люцзе") or string.find(sender, "Посети") or string.find(sender, "Витинари") or string.find(sender, "Колон") or string.find(sender, "Кербес") or string.find(sender, "Аффа") or string.find(sender, "Нугган") then

        print("Попався!")
        return true
    end
end

