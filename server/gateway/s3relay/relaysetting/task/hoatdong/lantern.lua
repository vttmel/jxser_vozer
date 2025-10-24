--»¨µÆ»î¶¯
--Ã¿Íí19£º00~21£º00 Ã¿15·ÖÖÓ ÔÚ»ªÉ½£¬Çµ³ÇÉ½£¬µã²ÔÉ½£¬ÎäÒÄÉ½
--ËÄ¸öµØµã·Ö±ð ²úÉú300¸ö»¨µÆ
LANTERN_DATE_START	= 20080611
LANTERN_DATE_END	= 20500713
LANTERN_TIME_START 	= 1900
LANTERN_TIME_END	= 2100

function TaskShedule()
	-- ÉèÖÃ·½°¸Ãû³Æ
	TaskName("Ho¹t §éng Hoa §¨ng");
	TaskTime(19, 00);
	TaskInterval(15);
	TaskCountLimit(0);
	OutputMsg("=====> HOAT DONG HOA DANG KHOI DONG : "..date("%H%M"));
end

function TaskContent()
	local nTime	= tonumber(date("%H%M"));
	local nDate	= tonumber(date("%Y%m%d"));
	
	if (nDate >= LANTERN_DATE_START and nDate <= LANTERN_DATE_END and nTime >= LANTERN_TIME_START and nTime <= LANTERN_TIME_END) then
		if (nTime == LANTERN_TIME_END) then
			GlobalExecute("dw del_all_lantern()");
			return 0;
		end
		GlobalExecute("dw Msg2SubWorld([[Ng­¬i nhanh ®i nói Thanh Thµnh, Vò Di s¬n, §iÓm Th­¬ng s¬n, Hoa S¬n,  chØ cÇn tr¶ lêi ®­îc 3 c©u nhËn ®­îc phÇn th­ëng hÊp dÉn]])");
		GlobalExecute("dw create_lanterns()");
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
