Include("\\script\\gb_taskfuncs.lua")
greatseed_configtab = {
	{340,3,100,"\\settings\\maps\\great_night\\maccaoquat.txt","M¹c Cao QuËt"},			
	{336,3,100,"\\settings\\maps\\great_night\\phonglangdo.txt","Phong L¨ng §é"},			
	
	{322,2,100,"\\settings\\maps\\great_night\\truongbachbac.txt","Tr­êng B¹ch S¬n B¾c"},	
	{321,2,100,"\\settings\\maps\\great_night\\truongbachnam.txt","Tr­êng B¹ch S¬n Nam"},		
	{225,2,30,"\\settings\\maps\\great_night\\samac1.txt"," Sa M¹c 1"},		
	{226,2,30,"\\settings\\maps\\great_night\\samac2.txt"," Sa M¹c 2"},		
	{227,2,40,"\\settings\\maps\\great_night\\samac3.txt"," Sa M¹c 3"},		
	
	{182,1,25,"\\settings\\maps\\great_night\\nghietlongdong.txt","NghiÖt Long §éng"},	
	{167,1,25,"\\settings\\maps\\great_night\\diemthuongson.txt","§iÓm Th­¬ng S¬n"},			
	{200,1,25,"\\settings\\maps\\great_night\\thuccuongson.txt","Cæ D­¬ng §éng Mª Cung"},	
	{92,1,25,"\\settings\\maps\\great_night\\thuccuongson.txt","Thôc C­¬ng S¬n"},				
};
tblantern_area = {2, 21, 167, 193}
function TaskShedule()
	TaskName("Qña Huy Hoµng")
	TaskTime(12,00);
	TaskInterval(5)
	TaskCountLimit(0)
	OutputMsg("Qña Huy Hoµng");
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
			szMsg = "Qña Huy Hoµng"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "Qña Huy Hoµng"
		elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "Qña Huy Hoµng"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "Qña Huy Hoµng"
		end; 
		szMsg = format("Tr­íc m¾t <%s> ®· xuÊt hiÖn %s, 5 phót sau kÕt thóc, c¸c ®¹i hiÖp chuÈn bÞ h¸i qu¶ !",
					szMsg,
					greatseed_configtab[i][5]);	
		GlobalExecute(format("dw AddLocalNews([[%s]])",szMsg));
	end;
end

function righttime_add()
	local nTime = tonumber(date("%H%M"));
	if (nTime >= 1200 and nTime < 1230)  then
		return 1;
	end;
	return 0;
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
