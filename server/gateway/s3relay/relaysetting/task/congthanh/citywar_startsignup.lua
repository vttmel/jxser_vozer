Include("\\relaySetting\\task\\congthanh\\citywar_head.lua")
function TaskShedule()
	TaskName("凤翔-报名开始");
	TaskInterval(1440);
	TaskTime(18, 0);
	-- TaskTime(18, 35);
	TaskCountLimit(0);
	OutputMsg( "                           Cong Thanh Chien - Start Sign Up - OK");
end

function Ctc3tru_NowDayCityWar()
	local Ctc3tru_NowDayW = tonumber(date("%w"));
	return Ctc3tru_NowDayW;
end

function Ctc3tru_GetNcanCityIDWithDayW()
	local NowDay = Ctc3tru_NowDayCityWar();
	for i = 1, 7 do
		if TB_CITYWAR_ARRANGE[i][1] == NowDay then
			return i;
		end
	end
end

function TaskContent()
	if Ctc3truCheckIsLimitOpenCityWar(1) == 0 then return end
	local Ctc3tru_nweek = Ctc3tru_NowDayCityWar();
	local Ctc3tru_ncan = Ctc3tru_GetNcanCityIDWithDayW();
	cw_startsignup_fun(Ctc3tru_nweek,Ctc3tru_ncan);
	OutputMsg( " ========================= Cong Thanh Chien - Bat dau bao danh ---> ")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
