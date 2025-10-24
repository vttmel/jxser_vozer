

function TaskShedule()
	--…Ë÷√∑Ω∞∏√˚≥∆
	TaskName("HOA SON DAI CHIEN")
	local nStartHour = tonumber(date("%H")) + 1;
	
	if (nStartHour >= 24) then
		nStartHour = 0;
	end;
	
	TaskTime(nStartHour, 0);
	
	--…Ë÷√º‰∏Ù ±º‰£¨µ•ŒªŒ™∑÷÷”
	TaskInterval(60) --15“ª¥Œ
	
	--…Ë÷√¥•∑¢¥Œ ˝£¨0±Ì æŒﬁœﬁ¥Œ ˝
	TaskCountLimit(0)
	OutputMsg(" =================HOA SON DAI CHIEN 10H,15H,22H==================");
end

function TaskContent()

	local nHour = tonumber(date("%H"))
	local nWeek	= tonumber(date("%w"))
	local nDate	= tonumber(date("%y%m%d"))
	

	local bIsStart = 0
	if nHour == 10 or nHour == 22 then
		bIsStart = 1
	elseif (nHour == 15 ) and (nWeek == 6 or nWeek == 0) then
		bIsStart = 1
	end
	
	if bIsStart == 1 then
		OutputMsg(" =================HOA SON DAI CHIEN Started==================");
		GlobalExecute("dwf \\script\\missions\\huashanqunzhan\\missionctrl.lua startHuaShanQunZhanMission()")
		GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", "Hoa s¨n L∑o T»u Æ∑ mÎ Hoa S¨n L´i Æµi, Hoa S¨n Æπi chi’n Æang trong giai Æoπn ghi danh."))
	end
end



function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


