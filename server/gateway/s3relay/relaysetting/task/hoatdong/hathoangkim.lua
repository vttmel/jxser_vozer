Include("\\script\\gb_taskfuncs.lua")
greatseed_configtab = {
{959, 4, 3, "\\settings\\maps\\great_night\\chienlongdong.txt","ChiÕn Long §éng"},
};

tblantern_area = {2, 21, 167, 193}

function TaskShedule()
	TaskName("Qua Hoang Kim")
	TaskTime(19	, 00); --Thêi Gian	
	TaskInterval(5)
	TaskCountLimit(0)
	OutputMsg("Qua Hoang Kim");
end

function TaskContent()
	if righttime_add() ~= 1 then
		gb_SetTask("Qña Huy Hoµng", 12, 0);	
		return
	end;
	
	local nNowTime = tonumber(date("%H%M"))
	local nBatch = floor(mod(nNowTime,100)/5) + 1
	local nMapCount = getn(greatseed_configtab);
	for i = 1, nMapCount do
		local strExecute = format("dw Global_GreatSeedExecute(%d, %d, %d, [[%s]], [[%s]],%d)", greatseed_configtab[i][1], greatseed_configtab[i][2], greatseed_configtab[i][3], greatseed_configtab[i][4],greatseed_configtab[i][5],nBatch);
		GlobalExecute(strExecute);
		local szMsg = "";
		if (mod(nBatch,2) == 1) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "Qña Hoµng Kim"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "Qña Hoµng Kim"
		elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "Qña Hoµng Kim"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "Qña Hoµng Kim"
		end; 
		szMsg = format("Tr­íc m¾t <%s> ®· xuÊt hiÖn %s, 5 phót sau kÕt thóc, c¸c ®¹i hiÖp chuÈn bÞ h¸i qu¶ !",
					szMsg,
					greatseed_configtab[i][5]);	
		GlobalExecute(format("dw AddLocalNews([[%s]])",szMsg));
	end;
end

function righttime_add()
	local nTime = tonumber(date("%H%M"));
	if (nTime >= 1900 and nTime < 1930)  then
		return 1;
	end;
	return 0;
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
