--citydefence.lua
-- 卫国战争之烽火连城

function TaskShedule()
	TaskName("Phong hoa lien thanh");	

	-- 一天一次，单位分钟
	TaskInterval(1440);
	-- 设置触发时间
	TaskTime(22, 15);
	OutputMsg(format("=====> PHONG HOA LIEN THANH BAT DAU %d:%d...", 22, 15));
	-- 执行无限次
	TaskCountLimit(0);

end

function TaskContent()
	local weekdate = CloudOpen_Defence()
	--if (weekdate == nil) then
		--OutputMsg("Hoat Dong Dien Ra Vao Thu 7 Va Chu Nhat Hang Tuan")
		--return
	--end
	if (weekdate == 0) then
		OutputMsg("'Thu Thanh' Phe Kim da mo ghi danh.");
		GlobalExecute("dw NewCityDefence_OpenMain(2)");
	else
		OutputMsg("'Thu Thanh' Phe Tong da mo ghi danh.");
		GlobalExecute("dw NewCityDefence_OpenMain(1)");
	end
	OutputMsg("=====> PHONG HOA LIEN THANH BAT DAU 22:15 (citydefence_2215.lua)")
end

function CloudOpen_Defence()
	local weekdate = tonumber(date("%w"))
	--if (weekdate ~= 6) then
		--return nil
	--end
	return weekdate
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
