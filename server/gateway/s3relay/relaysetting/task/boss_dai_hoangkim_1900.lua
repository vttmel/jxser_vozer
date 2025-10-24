function TaskShedule()
	TaskName("Boss Чi Ho祅g Kim 19:00")
	TaskTime(19,0);
	
	--设置间隔时间，单位为分钟
	TaskInterval(1440) --60分钟一次
	
	--设置触发次数，0表示无限次数
	TaskCountLimit(0)
	OutputMsg("================[START BOSS HOANG KIM [19:00 PM] ]==================");
end

function TaskContent()
	GlobalExecute("dwf \\script\\global\\pgaming\\missions\\bosshoangkim\\bossdai\\goldboss_main.lua bigboss_call2world()")
	OutputMsg("============[RUN BOSS HOANG KIM [19:00 PM] ]=============");
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end