Include("\\script\\changefeature\\equip_tryon.lua")

local tb = tbEquipTryOn:NewTemplate("Vò KhÝ Bæng")

tb.szFile_Male = "\\settings\\changefeature\\goldequipbong_male.txt"
tb.szFile_Female = "\\settings\\changefeature\\goldequipbong_female.txt"




function tb:TryOn(nNo)
	self:ChangeFeature(-1, -1,nNo,-1)
end

function tb:CheckEquip(nItemIndex)
	
	local nG, nD,nP = GetItemProp(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	--if nQuality ~= 1 and nQuality ~= 4 then
		--Talk(1, "", "§©y kh«ng ph¶i lµ trang bÞ hoµng kim.")
		--return
	--end
	if nG ~= 0 then
		Talk(1, "", "§©y kh«ng ph¶i lµ trang bÞ")
		return 
	end
	if nD ~= 0 and nP ~= 2 then
		Talk(1, "", "Vò khÝ nµy kh«ng ph¶i lµ bæng.")
		return 
	end
	if nD == 1 then
		Talk(1, "", "Vò khÝ nµy kh«ng ph¶i lµ bæng.")
		return 
	end
	if nP == 1 then
		Talk(1, "", "Vò khÝ nµy kh«ng ph¶i lµ bæng.")
		return 
	end

	if nP == 3 then
		Talk(1, "", "Vò khÝ nµy kh«ng ph¶i lµ bæng.")
		return 
	end

	if nP == 0 then
		Talk(1, "", "Vò khÝ nµy kh«ng ph¶i lµ bæng.")
		return 
	end

	if nP == 4 then
		Talk(1, "", "Vò khÝ nµy kh«ng ph¶i lµ bæng.")
		return 
	end

	if nP == 5 then
		Talk(1, "", "Vò khÝ nµy kh«ng ph¶i lµ bæng.")
		return 
	end
	return 1
end

tb:LoadFile()