--citydefence.lua
-- 卫国战争之烽火连城

function TaskShedule()
	TaskName("卫国烽火连城");	

	-- 一天一次，单位分钟
	TaskInterval(1440);
	-- 设置触发时间
	TaskTime(19, 30);
	OutputMsg(format("PHONG HOA LIEN THANH BAT DAU %d:%d...", 19, 30));
	-- 执行无限次
	TaskCountLimit(0);

end

function TaskContent()
	local weekdate = CloudOpen_Defence()
	if (weekdate == nil) then
		OutputMsg("PHONG HOA LIEN THANH : Khong phai thu 7 va chu nhat se khong mo")
		return
	end
	if (weekdate == 6) then
		OutputMsg("Phong h醓 li猲 th祅h Kim phng  b総 u ghi danh.");
		GlobalExecute("dw CityDefence_OpenMain(2)");
	else
		OutputMsg("Phong h醓 li猲 th祅h T鑞g phng  b総 u ghi danh.");
		GlobalExecute("dw CityDefence_OpenMain(1)");
	end
end

function CloudOpen_Defence()
	local weekdate = tonumber(date("%w"))
	if (weekdate ~= 6 and weekdate ~= 0) then
		return nil
	end
	return weekdate
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
