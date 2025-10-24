Include("\\script\\xephang\\worldrank_hook.lua")

function TaskShedule()
	TaskName("UpDateRankHook");
	TaskCountLimit(0);
end

function TaskContent()
	RankHook:UpdateRank()
end

function GameSvrConnected(dwGameSvrIP) end
function GameSvrReady(dwGameSvrIP) end


