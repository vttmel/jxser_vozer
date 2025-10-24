Include("\\script\\missions\\bw\\bwhead.lua");

function OnTimer()
	State = GetMissionV(MS_STATE) ;
	if (State == 0) then
		return
	end;
	
	local str1 = "";
	local szCaptainName = {};
	local szCaptainName = bw_getcaptains();
	local nGroup1PlayerCount = GetMSPlayerCount(BW_MISSIONID, 1);
	local nGroup2PlayerCount = GetMSPlayerCount(BW_MISSIONID, 2);
	if (nGroup1PlayerCount <= 0 ) and (nGroup2PlayerCount <= 0 ) then 
		str1 = GetMissionS(CITYID).."Hai bªn ®ång thêi rêi l«i ®µi<#>, ®éi <color=yellow>"..szCaptainName[1].."<color><#> cïng<color=yellow>"..szCaptainName[2].."<color><#> ngang tµi ngang søc";
	end;

	if (nGroup1PlayerCount == nGroup2PlayerCount) then 
		str1 = GetMissionS(CITYID).."Hai bªn ®ång thêi rêi l«i ®µi<#>, ®éi <color=yellow>"..szCaptainName[1].."<color><#> cïng<color=yellow>"..szCaptainName[2].."<color><#> ngang tµi ngang søc"
	elseif (nGroup2PlayerCount > nGroup1PlayerCount) then
		str1 = GetMissionS(CITYID).."KÕt qu?l«i ®µi<#>, ®éi <color=yellow>"..szCaptainName[2].."<color> <#> cßn nhiÒu ng­êi h¬n ®éi<color=yellow>"..szCaptainName[1].."<color> <#>, giµnh ®­îc th¾ng lîi cuèi cïng!"
		bw_branchtask_win(2);
	elseif (nGroup1PlayerCount > nGroup2PlayerCount) then 
		str1 = GetMissionS(CITYID).."KÕt qu?l«i ®µi<#>, ®éi <color=yellow>"..szCaptainName[2].."<color> <#> cßn nhiÒu ng­êi h¬n ®éi<color=yellow>"..szCaptainName[1].."<color> <#>, giµnh ®­îc th¾ng lîi cuèi cïng!"
		bw_branchtask_win(1);
	end;
	Msg2MSAll(BW_MISSIONID, str1);
	--AddGlobalCountNews(str1);
	SetMissionV(MS_STATE,3);
	CloseMission(BW_MISSIONID);
	return
end;
