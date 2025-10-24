function TaskShedule()
	TaskName( "WorldRank")
	TaskTime(23, 50);
	TaskInterval(1440) 
	TaskCountLimit(0)
	OutputMsg("         Cap nhat thong tin moi nhat ve THU HANG GIANG HO vao luc 23h50 moi ngay");
end

function TaskContent()
	OutputMsg(" ================= WorldRank => Start Update 23h50 -> Start");
	GlobalExecute("dwf \\script\\global\\pgaming\\xephang\\worldrank.lua WorldRank:UpdateRankData()")
	OutputMsg(" ================= WorldRank => End Update "..(date("%H:%M ")).." -> Complete");
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end