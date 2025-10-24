Include("\\relaySetting\\task\\congthanh\\citywar_head.lua")

Ctc3tru_DayStarCityWar ={{4,4},{2,2},{3,3},{6,6},{5,5},{1,1},{0,0},}

function TaskShedule()
	TaskName("凤翔-攻城战开始 ");
	TaskInterval(1440);
	TaskTime(20, 0);
	-- TaskTime(18, 37);
	TaskCountLimit(0);
	OutputMsg( "                           Cong Thanh Chien - Start City War - OK");
end

function Ctc3tru_NowDayCityWar()
	local Ctc3tru_NowDayW = tonumber(date("%w"));
	return Ctc3tru_NowDayW;
end

function Ctc3tru_GetNcanCityIDWithDayW()
	local NowDay = Ctc3tru_NowDayCityWar();
	for i = 1, 7 do
		if Ctc3tru_DayStarCityWar[i][1] == NowDay then
			return i;
		end
	end
end

function TaskContent()
	if Ctc3truCheckIsLimitOpenCityWar(2) == 0 then return end
	local Ctc3tru_nweek = Ctc3tru_NowDayCityWar();
	local Ctc3tru_ncan = Ctc3tru_GetNcanCityIDWithDayW();
	cw_start_fun(Ctc3tru_nweek,Ctc3tru_ncan)
	OutputMsg( " ========================= Cong Thanh Chien - Bat dau chien dau, cong thanh khoi dong ---> ")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
