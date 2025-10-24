--幸运之星Relay端触发脚本

function GameSvrConnected(dwGameSvrIP)
rolename = GetStringFromSDB("LuckyStar", 0, 0);
if (rolename ~= "") then
	NotifySDBRecordChanged("LuckyStar", 0 , 0, 1);
end;
	str = format("MAY CHU TRO CHOI: KET NOI %d Relay,LAN TRUOC KET NOI %s", dwGameSvrIP, rolename)
	OutputMsg(str);
end;

function GameSvrReady(dwGameSvrIP)
end

function TaskShedule()
	TaskName("NGOI SAO MAY MAN")
	TaskTime(12, 0)
	TaskInterval(360)
	TaskCountLimit(0)
end

function TaskContent()
	accname, rolename = RandomSelAOnlinePlayer()
	date = GetCurrentTime()
	success = SaveStringToSDBOw("LuckyStarLog", date, 0, rolename)
	success = SaveStringToSDBOw("LuckyStar", 0, 0, rolename)
	str = format("MOI PHAT HIEN RA NGOI SAO MAY MAN %s",rolename)
	OutputMsg(str);
	NotifySDBRecordChanged("LuckyStar", 0 , 0, 1);
end

