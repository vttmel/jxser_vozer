function TaskShedule()
	TaskName( "WorldRank")
	TaskTime(23, 0);
	TaskInterval(1440) 
	TaskCountLimit(0)
	OutputMsg("       Lay danh sach cac cao thu, phu ho, cao thu mon phai vao thu 2 hang tuan 0:01");
	OutputMsg(" ========================================================================================");
end

function TaskContent()
	local weekdate = tonumber(date( "%w "))
	if weekdate ~= 0 then return end
	OutputMsg(" ================= lay danh sach cac cao thu moi thu 2 hang tuan -> Start");
	GlobalExecute("dwf \\script\\global\\pgaming\\xephang\\awardplayerstop.lua UpdateTOPPlayerPrivWeek()")
	OutputMsg(" ================= lay danh sach cac cao thu moi thu 2 hang tuan -> Complete");
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end