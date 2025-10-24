IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
-------------Ph«n Th≠Îng Hoπt ßÈng-----------------------
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
----------------------------------------------------------
HONOURID = {1257, 1294}
SIGNET_DROPCOUNT = 10
TSK_PLAYER_BOSSKILLED = 2598
KILLBOSSEXPAWARD = 2000000
KILLBOSSNEAREXPAWARD = 1000000

function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	local maxcount = SIGNET_DROPCOUNT;
	local _, nTongID = GetTongName();
	if (nTongID > 0) then
		if (IsDoubledMoneyBox(nTongID)) then
			maxcount = getSignetDropRate(SIGNET_DROPCOUNT);
		end;
	end;
	local nCurtime = GetCurServerTime() + 7 * 24 *60 * 60
	local nYear = tonumber(FormatTime2String("%Y", nCurtime))
	local nMonth = tonumber(FormatTime2String("%m", nCurtime))
	local nDay = tonumber(FormatTime2String("%d", nCurtime))
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbVnNewItemDropBossAward,format("killed_%s",GetNpcName(nNpcIndex)))	
	local nTeamSize = GetTeamSize();
	local szName;
	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ∂ bπi BOSS hoµng kim"));
		end
	else 
		szName = GetName();
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ∂ bπi BOSS hoµng kim"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
	
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ¯ng g«n lÛc BOSS hoµng kim bﬁ ti™u di÷t"));
	end
	
	local szNews = format("ßπi hi÷p <color=yellow>%s<color> tπi <color=yellow>%s<color> Æ∑ ti™u di÷t thµnh c´ng <color=yellow>%s<color><pic=48><pic=108>!", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then 
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "ReduceGoldBossCount", 0);
	end
end;

