-- ¹úÕ½ËÎ½ğ
-- DongZhi
Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )

function TaskShedule()
	
	TaskName( "Tèng Kim Quèc ChiÕn tæng ®iÒu ®éng" );	--ÈÎÎñÃû³Æ
	TaskTime( 19, 00 );				--Æô¶¯Ê±¼ä
	TaskInterval(1440);				--¼ä¸ôÊ±¼ä:Ò»Ìì
	TaskCountLimit(0);				--ÎŞ´ÎÊıÏŞÖÆ
	
	OutputMsg("**************** Tèng Kim Quèc ChiÕn nhiÖm vô khëi ®éng thµnh c«ng****************")	
end

function TaskContent()
	
	local nWeekday = tonumber(date("%w"));
	
	if nWeekday == 1 then
		OutputMsg("**************** Create GUOZHAN New Battle ****************")	
		battle_StartNewIssue(2, 3);	
	zMsg2SubWorld  = "<color=yellow>ChiÕn Tr­êng Quèc ChiÕn<color> <color=green>Thiªn Tö<color> ®· khëi ®éng, c¸c anh hïng 2 bang chiÕm L©m An - BiÖn Kinh h·y chuÈn bŞ tinh thÇn s½n sµng ®Õn<color=pink> 21h<color> chiÕn ®Êu."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
