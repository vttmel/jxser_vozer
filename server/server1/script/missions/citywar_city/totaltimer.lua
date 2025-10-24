Include("\\script\\missions\\citywar_city\\head.lua");
Include("\\script\\missions\\citywar_city\\ctc3tru.lua");

function OnTimer()
	local Ctc3tru_GameCity = Ctc3tru_GetNameCityWarWithnCan1to7(GetWarOfCity());
	WriteLog(GetLoop().."§Õn giê thi ®Êu. ");
	timestate = GetMissionV(MS_STATE);
	str = format("thµnh <color=yellow>%s<color> kÕt thóc thêi gian tranh ®o¹t!! HiÖn t¹i <color=green>%d<color> Long trô ®· håi phôc thuéc tÝnh", Ctc3tru_GameCity, MS_SYMBOLCOUNT);
	for i = 1, MS_SYMBOLCOUNT do 
		if (GetMissionV(MS_SYMBOLBEGIN + i - 1)  == 1) then
			str = str .. "<color=green>Phe Phßng Thñ. "	;
		else 	
			str = str .. "<color=green>Phe TÊn C«ng. ";
		end;
	end;
	
	if (timestate == 2) then --¿ªÕ½ÖÐ
		nCount = CheckWin();
		if (nCount > MS_SYMBOLCOUNT / 2) then 
			str = format("Phe tÊn c«ng cuèi cïng %s: %s giµnh th¾ng lîi hoµn toµn! NhËn ®­îc quyÒn thèng trÞ %s?",str,GetGamerName(2),Ctc3tru_GameCity);
			AddGlobalNews(str);
			GameWin(2)
			return
		else
			str = format("Phe phßng thñ cuèi cïng %s: %s th¾ng lîi hoµn toµn! TiÕp tôc gi÷ quyÒn thèng trÞ %s?",str,GetGamerName(2),Ctc3tru_GameCity);
			AddGlobalNews(str);
			GameWin(1)
			return
		end;
	end;

	CloseMission(MISSIONID);
end;
