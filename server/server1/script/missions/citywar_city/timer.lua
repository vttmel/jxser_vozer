Include("\\script\\missions\\citywar_city\\head.lua");
Include("\\script\\missions\\citywar_city\\ctc3tru.lua");

function OnTimer()
	timestate = GetMissionV(MS_STATE);
	V = GetMissionV(MS_NEWSVALUE);
	SetMissionV(MS_NEWSVALUE, V+1);
	if (timestate == 2) then --¿ªÕ½ÁË
		ReportBattle(V);
	end;
end;

function ReportBattle(V)
--Õ½¶·½øÐÐ¹ý³ÌÖÐ£¬ÏµÍ³¶¨ÆÚÍ¨ÖªÊ¯±®µÄÇé¿ö
	local Ctc3tru_GameCity = Ctc3tru_GetNameCityWarWithnCan1to7(GetWarOfCity());
	gametime = (floor(GetMSRestTime(MISSIONID,13) / 18));
	RestMin, RestSec = GetMinAndSec(gametime);
	str = format("HiÖn t¹i <color=yellow>%s<color> ®ang tranh ®o¹t quyÕt liÖt! Thêi gian cßn <color=green>%d<color> phót; hiÖn t¹i <color=green>%d<color> Long trô ®· håi phôc thuéc tÝnh ", Ctc3tru_GameCity, RestMin, MS_SYMBOLCOUNT);
	for i = 1, MS_SYMBOLCOUNT do 
		if (GetMissionV(MS_SYMBOLBEGIN + i - 1)  == 1) then
			str = str .. "<color=green>Phe Thñ. "	;
		else 	
			str = str .. "<color=yellow>Phe C«ng. ";
		end;
	end;

	--2004.11.5¹Ø±ÕÏòÈ«Çò·¢ËÍ¹ã²¥µÄ¹¦ÄÜ
	--if (mod(V, 18) == 0) then 
	--	AddGlobalNews(str)
	--else
		Msg2MSAll(MISSIONID, str)
	--end;
end;
 