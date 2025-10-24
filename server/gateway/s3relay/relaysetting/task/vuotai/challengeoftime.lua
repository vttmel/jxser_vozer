-- Ê±¼äµÄÌôÕ½±ÈÈü¶¨Ê±Æ÷

INTERVAL_TIME = 60	-- Ã¿Ð¡Ê±´¥·¢
-- INTERVAL_TIME = 10	-- Ã¿Ð¡Ê±´¥·¢

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
	TaskName("Thach Thuc Thoi Gian");	

	-- 60·ÖÖÓÒ»´Î
	TaskInterval(INTERVAL_TIME);
	-- ÉèÖÃ´¥·¢Ê±¼ä
	local h, m = GetNextTime();
	TaskTime(h, m);
	OutputMsg(format("=====> VUOT AI KHIEU CHIEN THOI GIAN BAT DAU %d:%d...", h, m));
	-- Ö´ÐÐÎÞÏÞ´Î
	TaskCountLimit(0);

	-- OutputMsg("Æô¶¯×Ô¶¯¹ö¶¯¹«¸æ...");
end

function TaskContent()
	OutputMsg("VUOT AI KHIEU CHIEN THOI GIAN DANG GHI DANH");
	-- ´¥·¢GameServerÉÏµÄ½Å±¾
	GlobalExecute("dwf \\settings\\trigger_challengeoftime.lua OnTrigger()");
	szMsg = "'Th¸ch thøc thêi gian' §· ®Õn giê b¸o danh. §éi tr­ëng nhanh ch©n ®Õn NhiÕp ThÝ TrÇn ®Ó ghi danh thêi gian ghi danh lµ 10 phót."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
