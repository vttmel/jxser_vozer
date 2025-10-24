-- Author by AloneScript (Linh Em)

IncludeLib("LEAGUE");
Include("\\script\\lib\\awardtemplet.lua");

------------------------------ TONG HOP DANH SACH MODULE -------------------------------
SUPPORT_PLAYER = 1; --ID MODULE giµnh riªng cho hç trî t©n thñ theo cÊp ®é
	--ID Task hç trî t©n thñ theo tõng cÊp
		TASKMODULE_NEWBIE = 1; --Task: Hç trî ng­êi ch¬i míi gia nhËp vµo game
		-- TASK 10-200: kh«ng ®­îc sö dông (chØ ®­îc sö dông khi cho nhËn th­ëng hç trî theo tõng cÊp)
		
PLAYER_CHARGECARD = 2; --ID MODULE hç trî t©n thñ cho mèc n¹p thÎ
	--ID Task hç trî t©n thñ theo tõng cÊp
		TASKMODULE_CURCARD = 1; --Mèc n¹p thÎ hiÖn t¹i (®¬n vÞ: KNB hoÆc TiÒn §ång) mÆc ®Þnh lµ KNB
		TASKMODULE_DATACARD = 2; --Gi¸ trÞ tiÒn n¹p khi ng­êi ch¬i rót tiÒn t¹i NPC TiÒn Trang
		TASKMODULE_CHARGECARD_20K = 20;
		TASKMODULE_CHARGECARD_50K = 50;
		TASKMODULE_CHARGECARD_100K = 100;
		TASKMODULE_CHARGECARD_200K = 200;
		TASKMODULE_CHARGECARD_500K = 500;

----------------------- HiÖn thÞ néi dung thªm cho c©u héi tho¹i khi lµ GM thao t¸c lªn nã -----------------------
function Note(szCode)
	return ""
end

----------------------- T¹o hép tho¹i theo danh s¸ch table (trang tr­íc, trang kÕ) -------------------------------
function AddItemByTable(szTitle, tbListItem, nPage)
	local tbOption = {}
	local nMaxOption = 10;
	nPage = nPage or 1;

	if (nPage > 1) then
		tinsert(tbOption, {"Trë vÒ trang tr­íc…", AddItemByTable, {szTitle, tbListItem, (nPage-1)}})
	end
	if (getn(tbListItem) <= nMaxOption*nPage) then
		for i = (nMaxOption*(nPage-1)+1), getn(tbListItem) do
			tinsert(tbOption, {format("%s", tbListItem[i]["szName"]), AddItemByTableCheckRoom, {tbListItem[i]}})
		end
	else
		for i = (nMaxOption*(nPage-1)+1), (nMaxOption*nPage) do
			tinsert(tbOption, {format("%s", tbListItem[i]["szName"]), AddItemByTableCheckRoom, {tbListItem[i]}})
		end
		tinsert(tbOption, {"§i ®Õn trang kÕ…", AddItemByTable, {szTitle, tbListItem, (nPage+1)}})
	end
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption)
end

function AddItemByTableCheckRoom(tbItem)
	local n_IsRoom = IsRoom(tbItem)
	if (n_IsRoom == 0) then
	return end
	
	tbAwardTemplet:GiveAwardByList(tbItem, "AloneScript")
end

function IsRoom(tbItem)
	if not (tbItem["nWidth"]) and not (tbItem["nHeight"]) then
	return 1; end
	
	if (CountFreeRoomByWH(tbItem["nWidth"],tbItem["nHeight"]) < 1) then
		Talk(1, "", format("§Ó nhËn ®­îc <color=yellow>%s<color> cÇn Ýt nhÊt <color=red>%dx%d<color> « trèng", tbItem["szName"],tbItem["nWidth"],tbItem["nHeight"]))
	return 0; end
return 1 end

----------------------- NO / CANCEL ------------------------------
SAYNO = "KÕt thóc ®èi tho¹i./OnCancel";
THINKAGIAN = "§Ó ta suy nghÜ l¹i xem./OnCancel";
NOTTRADE = "Kh«ng giao dÞch./OnCancel";

function OnCancel()
end


function GetTaskModule(nModuleID, szModuleName, nTaskID)
	local lid = LG_GetLeagueObj(nModuleID, szModuleName);
	if (lid == 0) or (lid == nil) then
	return 0 end;
return LG_GetLeagueTask(lid, nTaskID) end

function SetTaskModule(nModuleID, szModuleName, nTaskID, nValueTask)
	local lid = LG_GetLeagueObj(nModuleID, szModuleName);
	if (lid == 0) or (lid == nil) then
		lid = LG_CreateLeagueObj()
		local memberObj = LGM_CreateMemberObj();
		LG_SetLeagueInfo(lid, nModuleID, szModuleName);
		LGM_SetMemberInfo(memberObj, szModuleName, 1, nModuleID, szModuleName);
		LG_AddMemberToObj(lid, memberObj);
		LG_ApplyAddLeague(lid,"\\script\\global\\npc\\hotrotanthu.lua", "CreateTaskModule")
		LG_FreeLeagueObj(lid)
	end
	LG_ApplySetLeagueTask(nModuleID, szModuleName, nTaskID, nValueTask)
end

function CreateTaskModule(nLeagueType, szLeagueName, szMemberName, bSucceed)
	if (bSucceed == 0) then
		WriteLog("TaskModule Create Fail: "..szLeagueName.." - szMember: "..szMemberName)
		print("TaskModule Create Fail: "..szLeagueName.." - szMember: "..szMemberName)
	end
	print("TaskModule Create Success: "..szLeagueName.." - szMember: "..szMemberName)
end