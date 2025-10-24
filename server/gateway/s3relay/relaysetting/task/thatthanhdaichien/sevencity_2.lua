Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- 设置方案名称
	TaskName("SevenCityWar close signup")
	TaskInterval(24 * 60)
	TaskTime(19, 00)
	TaskCountLimit(0)
	-- 输出启动消息
	OutputMsg("=====> [SEVENCITY] Ket Thuc Ghi Danh That Thanh Dai Chien")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- 周五
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:CloseSignup",
			0)
		OutputMsg("=====> [SEVENCITY] Ket Thuc Ghi Danh That Thanh Dai Chien")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
