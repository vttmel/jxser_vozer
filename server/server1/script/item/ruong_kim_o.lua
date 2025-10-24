Include("\\script\\vng_feature\\getgoldequip.lua")
Include("\\script\\activitysys\\config\\1002\\variables.lua")
function main(nItemIdx)		
	local tb = {nSpecificItem = tbVnItemPos.WHOLE_SET, nItem2Consume = nItemIdx}
	tbVNGetGoldEquip:ShowEquipBranchDialog(6, tb)
	return 1
end