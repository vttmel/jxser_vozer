--close_citydefence_1700.lua
--

function TaskShedule()
	TaskName("Phong Hoa Lien Thanh");	

	-- 一天一次，单位分钟
	TaskInterval(1440);
	-- 设置触发时间
	TaskTime(22, 0);
	OutputMsg(format("Phong Hoa Lien Thanh da ket thuc %d:%d...", 22, 0));
	-- 执行无限次
	TaskCountLimit(0);

end

function TaskContent()
	OutputMsg("Phong H醓 Li猲 Th祅h  k誸 th骳");
	GlobalExecute("dw CityDefence_CloseMain()");
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
