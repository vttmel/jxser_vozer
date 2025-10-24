
function HoTroLanDau()
	if (GetLevel() > 150) then
		Talk(1,"", "§¼ng cÊp cña b¹n ®· v­ît qu¸ ®¼ng cÊp hç trî!")
	return end

	if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end

	ST_LevelUp(150 - GetLevel());
	
	-- local tbSupportList = {
		-- {szName="ThÇn Hµnh Phï", tbProp={6,1,1266,1,0,0}, nExpiredTime=7*24*60, nBindState=-2},
		-- {szName="Thæ ®Þa phï (sö dông v« h¹n)", tbProp={6,1,438,1,0,0}, nExpiredTime=7*24*60, nBindState=-2},
		-- {szName="Tiªn Th¶o Lé", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
		-- {szName="Tiªn Th¶o Lé (®Æc biÖt)", tbProp={6,1,1181,1,0,0}, nCount=2, nBindState=-2},
	-- };
	-- tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî t©n thñ lÇn ®Çu tham gia vµo game");
	SetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE, 1)
end