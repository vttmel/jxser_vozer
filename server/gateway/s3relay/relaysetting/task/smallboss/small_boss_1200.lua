
function TaskShedule()
	TaskName("Boss TiÓu Hoµng Kim 12:00")
	TaskTime(12,00);
	TaskInterval(24 * 60) 
	TaskCountLimit(0)
	local szMsg = format("<=====BOSS TIEU HOANG KIM: [%d:%d] IS START========>",12,00)
	OutputMsg(szMsg);
end

function TaskContent()
		local szMsg = "Boss TiÓu Hoµng Kim xuÊt hiÖn trªn b¶n ®å thÕ giíi, quÊy nhiÔu d©n lµnh, c¸c nh©n sü h·y ra søc truy lïng bän chóng."
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
		OutputMsg("===========<START BOSS TIEU HOANG KIM 12:00>==========")
		GlobalExecute("dwf \\script\\global\\pgaming\\missions\\bosshoangkim\\bosstieu\\smallboss_main.lua  smallboss_call2world()")

end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end