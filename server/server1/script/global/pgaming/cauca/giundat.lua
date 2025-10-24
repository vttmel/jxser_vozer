Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

local nHideTime = 10

local _limit = function()
	if (GetLevel() < 50) then
	Talk(1,"","<color=yellow>§¼ng cÊp 50 trë lªn <color> míi b¾t giun.")
	return 1;
	end	
	if (0 == GetCamp()) then
	Talk(1,"","B¹n ch­a gia nhËp <color=yellow> M«n Ph¸i <color> kh«ng thÓ b¾t giun")
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
		Talk(1,"","H·y §Ó Trèng Tèi ThiÓu 1 ¤ Råi h·y b¾t giun")
		return
	end 
	
	if (GetFightState() == 0) then
	Talk(1,"","Tr¹ng th¸i phi chiÕn ®Êu kh«ng b¾t giun")
	return 1;
	end
local nYear  = tonumber(date("%y"));
local nMonth  = tonumber(date("%m"));
local nDay  = tonumber(date("%d")) + 1;
if nDay < 10 then
nDay2 = "0"..nDay..""
else
nDay2 = nDay
end
if nMonth < 10 then
nMonth2 = "0"..nMonth..""
else
nMonth2 = nMonth
end
local nTime = "20"..nYear..""..nMonth2..""..nDay2..""
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4897,0,0,0},nCount = 1,nExpiredTime = nTime}, "test", 1);	
	HideNpc(nNpcIndex, %nHideTime * 18)
	
end 


function main()
local nNpcIndex = GetLastDiagNpc()
local dwNpcId = GetNpcId(nNpcIndex)
	if %_limit() then
		return
	end
	tbProgressBar:OpenByConfig(20, %_GetAward, {nNpcIndex, dwNpcId}, %_OnBreak)
end