INTERVAL_TIME = 60	
function GetNextTime()
    local hour = tonumber(date("%H"));
    if (hour == 23) then
    	hour = 0;
    else
    	hour = hour + 1;
    end
    return hour, 0;
end

function TaskShedule()
	TaskName("PhongLangDo");	
	TaskInterval(INTERVAL_TIME);
	local h, m = GetNextTime();
	TaskTime(h, m);
	OutputMsg(format("=================Phong Lang Do %d:%d================== ", h, m));
	TaskCountLimit(0);
end

function TaskContent()
	GlobalExecute("dwf \\script\\missions\\fengling_ferry\\fldmap_boat1.lua fenglingdu_main()")
	OutputMsg("=================Phong Lang Do RUN============== ");
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
