Include("\\script\\event\\zhaojingling\\event.lua")

function TaskShedule()	
	TaskName("Hu蕁 luy謓 M閏 nh﹏")

	local nStartHour = tonumber(date("%H")) + 1
	if nStartHour < 12 then
		nStartHour = 12
	end
	if nStartHour == 24 then
		nStartHour = 0
	end
	--15分钟一次
	TaskInterval(15) --测试
	-- 设置触发时间
	TaskTime(nStartHour, 0)
	
	OutputMsg("=====> HOAT DONG TIM MOC NHAN SE BAT DAU %d ",nStartHour)
	-- 执行无限次
	TaskCountLimit(0)
	------------测试用
	tbJingLing:Save(tbJingLing.nSortKey, 0, 0)
	----------------
	tbJingLing:GetNextSortTime()
	tbJingLing:SortPaiMing()
end

function TaskContent()
	local nCurHour = tonumber(date("%H"))
	tbJingLing:SortPaiMing()
	if nCurHour >= 0 and nCurHour < 12 then
		return
	end
	OutputMsg("=====> KHOI DONG HOAT DONG TIM KIEM MOC NHAN <=====")
	RemoteExecute("\\script\\missions\\zhaojingling\\prepare\\preparetimer.lua", "PrepareGame:InitTimer", 0)
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end