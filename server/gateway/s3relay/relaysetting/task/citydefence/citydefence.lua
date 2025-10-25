--citydefence.lua
-- 卫国战争之烽火连城
INTERVAL_TIME = 120	
function GetNextTime()
    local nhour = tonumber(date("%H"));
	
	if nhour == (floor(nhour / 2)*2) then
    	return nhour, 0;
	else
		nhour = nhour + 1;
		
	end
	if (nhour == 24) then
		nhour = 0;
	end
	
	return nhour, 0;
end
function TaskShedule()
	TaskName("Phong hoa lien thanh");	
	local h, m = GetNextTime();
	-- 一天一次，单位分钟
	TaskInterval(INTERVAL_TIME);
	-- 设置触发时间
	TaskTime(h, m);
	OutputMsg(format("=====> PHONG HOA LIEN THANH BAT DAU DA LEN LICH GIO CHAN"));
	-- 执行无限次
	TaskCountLimit(0);

end

function TaskContent()

	GlobalExecute("dwf \\script\\gmscript.lua NewCityDefence_OpenMain(1)");
	OutputMsg("=====> PHONG HOA LIEN THANH BAT DAU 12:00")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
