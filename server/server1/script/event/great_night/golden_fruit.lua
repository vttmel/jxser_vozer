IncludeLib("ITEM")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ h¸i qu¶.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("kh«ng thÓ h¸i qu¶.")
		return
	end
	
	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 80) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 80 and nPlayerLevel < 90) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 90) then
		nGetSeedLevel = 3;
	end
	
	if (nGetSeedLevel ~= 3) then 
		Msg2Player("Lo¹i qu¶ nµy ng­êi ch¬i ph¶i tõ cÊp 90 trë lªn míi cã thÓ h¸i ®­îc ")
		return
	end;
	
	return nGetSeedLevel
end

local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return 0
	end
	
	
	DelNpc(nNpcIdx)
	
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,907,1,0,0,0}, nExpiredTime = 10080}, "§ªm Huy Hoµng", 1);
	tongaward_goldenseed();
	AddGlobalNews(format("§¹i hiÖp %s ®· h¸i ®­îc qu¶ Hoµng Kim!!!",GetName()));
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· nhÆt ®­îc qu¶ Hoµng Kim!!!")
end


local _OnBreak = function()
	local nNpcIdx = GetLastDiagNpc();
	Msg2Player("Thu thËp ®øt ®o¹n")
	SetNpcParam(nNpcIdx, 3, 0)
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)

	if  GetNpcParam(nNpcIdx, 3) > 0 then
	Msg2Player("§ang cã ng­êi h¸i qu¶ nµy råi")
	return
	end
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	SetNpcParam(nNpcIdx, 3, 1)
	tbProgressBar:OpenByConfig(2, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
SetPKFlag(1)
end;

