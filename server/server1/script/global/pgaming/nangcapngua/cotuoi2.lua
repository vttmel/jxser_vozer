Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

local nHideTime = 7200

local _limit = function()
	if (GetLevel() < 50) then
	Talk(1,"","<color=yellow>§¼ng cÊp 50 trë lªn <color> míi gÆt cá.")
	return 1;
	end	
	if (0 == GetCamp()) then
	Talk(1,"","B¹n ch­a gia nhËp <color=yellow> M«n Ph¸i <color> kh«ng thÓ gÆt cá")
	return 1;
end
end

local _OnBreak = function()
	Msg2Player("Thu thËp ®· bÞ gi¸n ®o¹n.")
end

local _GetAward = function(nNpcIndex, dwNpcId)
	if nNpcIndex <= 0 or GetNpcId(nNpcIndex) ~= dwNpcId then
		return
	end
	
	if IsNpcHide(nNpcIndex) == 1 then
		return 0
	end

	if CalcFreeItemCellCount() < 1 then
		Talk(1,"","H·y §Ó Trèng Tèi ThiÓu 1 ¤ Råi Thu Ho¹ch")
		return
	end 

	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4891,0,0,0},nCount = 1}, "test", 1);
	AddGlobalNews(format("Chóc mõng <color=green>%s<color> h¸i ®­îc <color=red>Cá T­¬i<color> t¹i  <color=yellow>%s<color> ë M¹c B¾c Th¶o Nguyªn",GetName(),"§iÓm 2 154/150"))	
	HideNpc(nNpcIndex, %nHideTime * 18)
	
end 


function main()
local nNpcIndex = GetLastDiagNpc()
local dwNpcId = GetNpcId(nNpcIndex)
	if %_limit() then
		return
	end
	tbProgressBar:OpenByConfig(1000, %_GetAward, {nNpcIndex, dwNpcId}, %_OnBreak)
end



