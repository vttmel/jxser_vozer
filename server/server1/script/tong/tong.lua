function DefFun1(n1)
	return 1
end
function DefFun2(n1, n2)
	return 1
end
if MODEL_GAMESERVER == 1 or MODEL_RELAY == 1 then
Include("\\script\\tong\\tong_header.lua")
Include("\\script\\tong\\workshop\\workshop_setting.lua")
Include("\\script\\tong\\log.lua")
if MODEL_RELAY == 1 then
	Include("\\script\\gb_taskfuncs.lua")
else
	Include("\\script\\tong\\map\\map_management.lua")
end
function INIT_R(nTongID)
	if (nTongID == 0 or TONG_GetDay(nTongID) ~= 0)then
		return 0
	end
	return MAINTAIN_R(nTongID)
end
INIT_G_1 = DefFun1
INIT_G_2 = DefFun1
function ADD_R(nTongID, nMasterID)
	local szRecord = "T¹o bang héi";
	local szRecordPlus;
	local szMasterName = TONGM_GetName(nTongID, nMasterID);
	if (szMasterName ~= "") then
		szRecordPlus = szMasterName.." "..szRecord;
	else
		szMasterName = "";
		szRecordPlus = szRecord;
	end
	TONG_ApplyAddHistoryRecord(nTongID, szRecordPlus);	
	TONG_ApplyAddEventRecord(nTongID, szRecordPlus);	
	cTongLog:WriteInfTB("TONG", "build", nTongID, {master = szMasterName})		
	return INIT_R(nTongID)
end
ADD_G_1 = DefFun2
ADD_G_2 = DefFun2
function REMOVE_R(nTongID)
	local tbMsg = {
		membercount	= TONG_GetMemberCount(nTongID),
		retirecount	= TONG_GetMemberCount(nTongID, 4),
		day			= TONG_GetDay(nTongID),
		buildfund	= TONG_GetBuildFund(nTongID),
		warbuildfund= TONG_GetWarBuildFund(nTongID),
	}
	cTongLog:WriteInfTB("TONG", "dismiss", nTongID, tbMsg)
	return 1
end
REMOVE_G_1 = DefFun1
REMOVE_G_2 = DefFun1
aszTongLogXPFileHead = {	
	"Ngµy","Sè tuÇn","Bang héi","§¼ng cÊp kiÕn thiÕt","Ng©n s¸ch kiÕn thiÕt","Ng©n s¸ch chiÕn bÞ","N¹p ®iÓm cèng hiÕn","Sè ng­êi",
	"Sè ng­êi tho¸i Èn","Ng©n s¸ch kiÕn thiÕt hµng tuÇn","Ng©n s¸ch kiÕn thiÕt tiªu hao","Ng©n s¸ch chiÕn bÞ hµng tuÇn","Ng©n s¸ch chiÕn bÞ tiªu hao","Ng©n quü thµnh kiÕn thiÕt","Gãp tiÒn thµnh kiÕn thiÕt","KiÕn thiÕt thµnh chiÕn bÞ",
	"T¸c ph­êng s¶n xuÊt","Tæng sè T¸c Ph­êng","Khu Binh gi¸p ","Khu Thiªn C«ng ","Khu MÆt n¹ ","ThÝ luyÖn ph­êng","Khu Thiªn ý ","Khu LÔ vËt ",
	"Khu ho¹t ®éng ","CÊp T¸c Ph­êng cao nhÊt","§é khã môc tiªu tuÇn","Hoµn thµnh môc tiªu tuÇn","HÖ thèng môc tiªu tuÇn",
}
TongLogXPRecords = 0
function WriteXPLog(nTongID)
	if not tongLogFile then
		if not openfile("Logs/tong/tonglog_xp.log", "r")then
			tongLogFile = openfile("Logs/tong/tonglog_xp.log", "a+")
			if (tongLogFile == nil)then
				return
			end
			local size = getn(aszTongLogXPFileHead);
			for i=1,size-1 do
				write(tongLogFile,aszTongLogXPFileHead[i],'\t')
			end
			write(tongLogFile,aszTongLogXPFileHead[size],'\n')
		else
			tongLogFile = openfile("Logs/tong/tonglog_xp.log", "a+")
		end
	end	
	local aszData = GetTongLogData(nTongID)
	if (not tongLogFile or not aszData)then
		print("errererer\n")
		return	
	end
	write(tongLogFile,date("%Y-%m-%d %H:%M:%S"),'\t')
	local size = getn(aszData);
	for i=1,size-1 do
		write(tongLogFile,aszData[i],'\t')
	end
	write(tongLogFile,aszData[size],'\n')
	TongLogXPRecords = TongLogXPRecords + 1
	if TongLogXPRecords > 20 then
		TongLogXPRecords = 0
		flush(tongLogFile)
	end
end
function WEEKLY_MAINTAIN_R(nTongID)
	WriteXPLog(nTongID)	
	for i = TONGTSK_WEEK_BFADD,TONGTSK_BF2WF do
		TONG_ApplySetTaskValue(nTongID, i, 0)
	end
	TONG_ApplySetTaskValue(nTongID, TONGTSK_HEROLING, 0);
	TONG_ApplySetTaskValue(nTongID, TONGTSK_USEHEROLING, 0);
	local nWeekGoalEvent = TONG_GetWeekGoalEvent(nTongID)
	local nWeekGoalLevel = TONG_GetWeekGoalLevel(nTongID)
	local nWeekGoalValue = TONG_GetWeekGoalValue(nTongID)
	local nWeekGoalTotal = TONG_GetWeekGoalTotal(nTongID)
	local nWeekGoalPlayer = TONG_GetWeekGoalPlayer(nTongID)
	local nWeekGoalPriceTong = TONG_GetWeekGoalPriceTong(nTongID)
	local nWeekGoalPricePlayer = TONG_GetWeekGoalPricePlayer(nTongID)
	TONG_ApplySetLWeekGoalEvent(nTongID, nWeekGoalEvent)
	TONG_ApplySetLWeekGoalLevel(nTongID, nWeekGoalLevel)
	TONG_ApplySetLWeekGoalValue(nTongID, nWeekGoalValue)
	TONG_ApplySetLWeekGoalTotal(nTongID, nWeekGoalTotal)
	TONG_ApplySetLWeekGoalPlayer(nTongID, nWeekGoalPlayer)
	TONG_ApplySetLWeekGoalPriceTong(nTongID, nWeekGoalPriceTong)
	TONG_ApplySetLWeekGoalPricePlayer(nTongID, nWeekGoalPricePlayer)
	if (nWeekGoalTotal > 0 and nWeekGoalValue >= nWeekGoalTotal) then		
		TONG_ApplySetTaskValue(nTongID, TONGTSK_WEEKGOAL_COMPLETE, 1)
		TONG_ApplyAddEventRecord(nTongID, "Môc tiªu bang héi tuÇn tr­íc ®· hoµn thµnh, bang chñ hoÆc tr­ëng l·o cã thÈm quyÒn cã thÓ ®Õn TÕ §µn cña bang ®Ó nhËn th­ëng");	-- °ï»áÊÂ¼þ¼ÇÂ¼
		Msg2Tong(nTongID, "Môc tiªu bang héi tuÇn nµy ®· hoµn thµnh, bang chñ hoÆc tr­ëng l·o cã thÈm quyÒn cã thÓ ®Õn TÕ §µn cña bang ®Ó nhËn th­ëng, bang chóng nµo hoµn thµnh môc tiªu tuÇn c¸ nh©n còng cã thÓ ®Õn TÕ §µn ®Ó nhËn phÇn th­ëng c¸ nh©n. Thêi h¹n lµ 1 tuÇn!")
	else
		TONG_ApplySetTaskValue(nTongID, TONGTSK_WEEKGOAL_COMPLETE, 0)
	end		
	local nTongWeekBuildFund = TONG_GetWeekBuildFund(nTongID)
	local nBuildLevel = TONG_GetBuildLevel(nTongID)
	local nWeekBuildUpper = tongGetWeekBuildUpper(nTongID, nBuildLevel)
	if (nTongWeekBuildFund < nWeekBuildUpper) then
		local nDec = nWeekBuildUpper - nTongWeekBuildFund
		local nStored = TONG_GetStoredBuildFund(nTongID)
		if (nStored < nDec) then
			nDec = nStored
		end
		if (TONG_ApplyAddStoredBuildFund(nTongID, -nDec) == 1) then
			TONG_ApplyAddBuildFund(nTongID, nDec)
			local szMsg = "Ng©n s¸ch kiÕn thiÕt nhËn ®­îc trong tuÇn nµy ch­a ®¹t giíi h¹n, ng©n s¸ch kiÕn thiÕt dù tr÷ chuyÓn"..nDec.." v¹n vµo ng©n s¸ch kiÕt thiÕt"
			Msg2Tong(nTongID, szMsg)
			TONG_ApplyAddEventRecord(nTongID, szMsg)
		end
	end
	TONG_ApplySetWeekBuildFund(nTongID, 0) 
	TONG_ApplySetWeekGoalValue(nTongID, 0)	
	TONG_ApplyAddWeek(nTongID, 1)		
	local nMembers = TONG_GetMemberCount(nTongID, -1)		
	cTongLog:WriteInfTB("TONG", "weeklymaintain", nTongID,
						{
						week = TONG_GetWeek(nTongID),
						membercount = TONG_GetMemberCount(nTongID),
						retirecount	= TONG_GetMemberCount(nTongID, 4),
						buildlevel = nBuildLevel,
						buildfund = TONG_GetBuildFund(nTongID),
						warbuildfund = TONG_GetWarBuildFund(nTongID),
						storedoffer = TONG_GetStoredOffer(nTongID),
						weekbuildfund = nTongWeekBuildFund,
						weekgoalvalue = nWeekGoalValue,
						weekgoaltotal = nWeekGoalTotal,
						}	)
	if (nBuildLevel >= 4) then
		local nStuntID = TONG_GetTaskValue(nTongID, TONGTSK_STUNT_ID)
		if (nStuntID == 6) then
			nStuntID = 0
			TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_ID, nStuntID)
		end
	
		if (nStuntID ~= 0) then
			local nNextStunt = TONG_GetTaskValue(nTongID, TONGTSK_STUNT_SWICTH)
			if (nNextStunt ~= 0 and nNextStunt ~= nStuntID) then
				TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_ID, nNextStunt)
				TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_SWICTH, 0)
				nStuntID = nNextStunt
				local szMsg = "Kü n¨ng bang héi chuyÓn thµnh"..TB_STUNTID_INFO[nStuntID].name
				Msg2Tong(nTongID, szMsg)
				TONG_ApplyAddEventRecord(nTongID, szMsg)
			end
			Maintain_Stunt(nTongID, nStuntID)	
			if (nBuildLevel == 5) then
				local nCitySTID = tong_GetCityStuntID(nTongID)
				if (nCitySTID ~= 0 and TB_STUNTID_INFO[nCitySTID].right == 1) then
					TONG_ApplySetTaskValue(nTongID, TONGTSK_CITYST_MEMLIMIT, TB_STUNTID_INFO[nCitySTID].maxmem)
				else
					TONG_ApplySetTaskValue(nTongID, TONGTSK_CITYST_MEMLIMIT, 0)
				end
			end
		end
	end
	if nMembers < MIN_WEEKGOAL_MEMBER then
		local szMsg = "Nh©n sè Ýt h¬n "..MIN_WEEKGOAL_MEMBER.." ng­êi, môc tiªu tuÇn kh«ng thÓ b¾t ®Çu!"
		Msg2Tong(nTongID, szMsg)
		TONG_ApplyAddEventRecord(nTongID, szMsg);
	else
		local nType = random(getn(TB_WEEKGOAL_TYPE_ID))
		local nLevel = TONG_GetCurWeekGoalLevel(nTongID)
		if (nLevel <= 0) then nLevel = 1 end
		if (nLevel > 2) then
			nLevel = 2
			TONG_ApplySetCurWeekGoalLevel(nTongID, 2)
		end
		local nHourValue = random(150, 170)
		nWeekGoalPlayer = TB_WEEKGOAL_CHANGE[nLevel] * nHourValue 
		nWeekGoalTotal = floor(0.4 * nMembers * nWeekGoalPlayer) 
		nWeekGoalPricePlayer = floor(TB_WEEKGOAL_PRICE_BASE[nLevel] * nHourValue) 
		nWeekGoalPriceTong = floor(TB_WEEKGOAL_PRICE_BASE[nLevel] * nHourValue * 0.4 * nMembers)
		TONG_ApplySetWeekGoalEvent(nTongID, nType)
		TONG_ApplySetWeekGoalLevel(nTongID, nLevel)
		TONG_ApplySetWeekGoalPlayer(nTongID, nWeekGoalPlayer)
		TONG_ApplySetWeekGoalTotal(nTongID, nWeekGoalTotal)
		TONG_ApplySetWeekGoalPricePlayer(nTongID, nWeekGoalPricePlayer)
		TONG_ApplySetWeekGoalPriceTong(nTongID, nWeekGoalPriceTong)	
		TONG_ApplyAddEventRecord(nTongID, "Môc tiªu tuÇn nµy: "..TB_WEEKGOAL_TYPE_NAME[nType]);	
		Msg2Tong(nTongID, "Môc tiªu trong tuÇn cña bang: <color=green>"..TB_WEEKGOAL_TYPE_NAME[nType])
	end
	return 1
end

function Maintain_Stunt(nTongID, nStuntID)
	if (nStuntID == 0) then
		return
	end
	TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_MAINPERIOD, TONG_GetWeek(nTongID))
	TONG_ApplySetTaskValue(nTongID, TONGTSK_MONEYBOX_DROPMAX, 0)
	if (TB_STUNTID_INFO[nStuntID].right == 1) then
		TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_MEMLIMIT, TB_STUNTID_INFO[nStuntID].maxmem)
	else
		TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_MEMLIMIT, 0)
	end
	local nStuntState = TONG_GetTaskValue(nTongID, TONGTSK_STUNT_PAUSE)
	if (TB_STUNT_PAUSESTATE[nStuntState][4] == 3 or TB_STUNT_PAUSESTATE[nStuntState][4] == 1) then
		TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_PAUSE, TB_STUNT_PAUSESTATE[nStuntState][4])
		local nCurFund = TONG_GetWarBuildFund(nTongID)
		if (nCurFund < TB_STUNTID_INFO[nStuntID].consume) then
			local szMsg = "Ng©n s¸ch chiÕn bÞ kh«ng ®ñ ®Ó b¶o tr× Bang héi ®Æc kü. TuÇn nµy t¹m ®ãng chøc n¨ng ®Æc kü!"
			Msg2Tong(nTongID, szMsg)
			TONG_ApplyAddEventRecord(nTongID, szMsg)
			TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_ENABLED, 0)
		else
			TONG_ApplyAddWarBuildFund(nTongID, -TB_STUNTID_INFO[nStuntID].consume)
			if (TONG_GetTaskValue(nTongID, TONGTSK_STUNT_ENABLED) == 0) then
				TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_ENABLED, 1)
				local szMsg = "Ng©n s¸ch chiÕn bÞ ®· ®ñ bï vµo chi phÝ b¶o tr×, bang héi ®Æc kü sÏ tiÕp tôc ho¹t ®éng!"
				Msg2Tong(nTongID, szMsg)
				TONG_ApplyAddEventRecord(nTongID, szMsg)
			else
				if (nStuntState == TB_STUNT_PAUSESTATE[nStuntState][4]) then
					Msg2Tong(nTongID, "Bang héi ®Æc kü tiÕp tôc b¶o tr×"..TB_STUNT_PAUSESTATE[nStuntState][2].."Tr¹ng th¸i ")
					TONG_ApplyAddEventRecord(nTongID, "Bang héi ®Æc kü tiÕp tôc b¶o tr×"..TB_STUNT_PAUSESTATE[nStuntState][2].."Tr¹ng th¸i ")
				else
					Msg2Tong(nTongID, "B¶o tr× bang héi ®Æc kü"..TB_STUNT_PAUSESTATE[nStuntState][2])
					TONG_ApplyAddEventRecord(nTongID, "B¶o tr× bang héi ®Æc kü"..TB_STUNT_PAUSESTATE[nStuntState][2])
				end
			end
		end
	else
		TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_PAUSE, TB_STUNT_PAUSESTATE[nStuntState][4])
	end
end

WEEKLY_MAINTAIN_G_1 = DefFun1
function WEEKLY_MAINTAIN_G_2(nTongID)
	local nMapID = TONG_GetTongMap(nTongID)
	local nMapIdx = SubWorldID2Idx(nMapID)
	if (nMapIdx < 0) then
		return 1
	end
	local nStuntID = TONG_GetTaskValue(nTongID, TONGTSK_STUNT_ID)
	if (nStuntID > 0) then
		for i = 1, getn(TONGTSK_TOTEMINDEX) do
			local nNpcIndex = TONG_GetTaskValue(nTongID, TONGTSK_TOTEMINDEX[i])
			if (nNpcIndex > 0) then
				for j=1, getn(TB_STUNTID_INFO) do
					RemoveNpcSkillState(nNpcIndex, TB_STUNTID_INFO[j].skillid)
				end
				AddNpcSkillState(nNpcIndex, TB_STUNTID_INFO[nStuntID].skillid, 1, 1, 18*60*60*24*30)
			end
		end
	end
	return 1
end

function MAINTAIN_R(nTongID)
	local nDay = TONG_GetDay(nTongID)
	local nWeek = TONG_GetWeek(nTongID)
	local nexweek = nil
	if (nDay == 0 or tonumber(date("%w")) == 1 or 
		nDay >= TONG_GetTaskValue(nTongID, TONGTSK_LAST_WM_DAY) + 7) then
		nexweek = 1
		TONG_ApplySetTaskValue(nTongID, TONGTSK_LAST_WM_DAY, nDay)
	end
	Msg2Tong(nTongID, "Bang héi b­íc vµo ngµy thø <color=white>"..(nDay+1).."<color>, ng©n s¸ch kiÕn thiÕt tr­íc m¾t: <color=gold>"..
		TONG_GetBuildFund(nTongID).."<color> v¹n, ng©n s¸ch chiÕn bÞ: <color=gold>"..TONG_GetWarBuildFund(nTongID)..
		"<color> v¹n")
	cTongLog:WriteInfTB("TONG", "maintain", nTongID,
						{
						day = nDay,
						membercount = TONG_GetMemberCount(nTongID),
						retirecount	= TONG_GetMemberCount(nTongID, 4),
						buildlevel = TONG_GetBuildLevel(nTongID),
						buildfund = TONG_GetBuildFund(nTongID),
						warbuildfund = TONG_GetWarBuildFund(nTongID),
						storedoffer = TONG_GetStoredOffer(nTongID),
						}	)
	local nTongLevel = TONG_GetBuildLevel(nTongID)
	if (nTongLevel > 0)then
		local nWS = TWS_GetFirstWorkshop(nTongID)
		while (nWS ~= 0)do
			if (nexweek)then
				TWS_ApplySetDayOutput(nTongID, nWS, 0)			
				local nUseLevelSet = TWS_GetUseLevelSet(nTongID, nWS)
				local nCurUseLevel = TWS_GetUseLevel(nTongID, nWS)
				if nUseLevelSet > 0 and nUseLevelSet ~= nCurUseLevel and nUseLevelSet <= TWS_GetLevel(nTongID, nWS) 
					and nUseLevelSet <= tongGetWorkshopUpperLevel(nTongID, nTongLevel) then
					TWS_ApplySetUseLevel(nTongID, nWS, nUseLevelSet)
					local nType = TWS_GetType(nTongID, nWS)
					Msg2Tong(nTongID, "<color=green>"..wsGetName(nType).."<color>§¼ng cÊp sö dông ®iÒu chØnh thµnh cÊp<color=blue>"..nUseLevelSet..
						"<color>")
				end
			end
			TWS_ApplyMaintain(nTongID, nWS)
			nWS = TWS_GetNextWorkshop(nTongID, nWS)
		end
		local nCurFund = TONG_GetWarBuildFund(nTongID)
		if (TONG_GetPauseState(nTongID) ~= 0)then
			if (nCurFund >= TONG_GetStandFund(nTongID))then
				TONG_ApplySetPauseState(nTongID, 0)
				TONG_ApplyAddEventRecord(nTongID, "Ng©n s¸ch chiÕn bÞ ®· ®¹t yªu cÇu ng©n s¸ch chiÕn bÞ b¶o tr× hµng tuÇn, tr¹ng th¸i t¹m ngõng cña bang héi ®­îc xãa bá!");	-- °ï»áÊÂ¼þ¼ÇÂ¼
				Msg2Tong(nTongID, "Ng©n s¸ch chiÕn bÞ ®· ®¹t yªu cÇu ng©n s¸ch chiÕn bÞ b¶o tr× hµng tuÇn, tr¹ng th¸i t¹m ngõng cña bang héi ®­îc xãa bá!")
				cTongLog:WriteInfTB("TONG", "unpause", nTongID, {})
			end
		elseif (nCurFund < TONG_GetStandFund(nTongID)) then
			TONG_ApplySetPauseState(nTongID, 1)
			TONG_ApplyAddEventRecord(nTongID, "T¸c ph­êng cña bang bÞ t¹m dõng do ng©n s¸ch chiÕn bÞ kh«ng ®ñ chi phÝ b¶o tr× hµng tuÇn");	
			Msg2Tong(nTongID, "Ng©n s¸ch chiÕn bÞ thÊp h¬n ng©n s¸ch chiÕn bÞ b¶o tr× hµng tuÇn, tr¹ng th¸i cña bang héi lµ <color=red>T¹m dõng!")
			cTongLog:WriteInfTB("TONG", "pause", nTongID, {})
		end	
		
		local nConsume = TONG_GetMaintainFund(nTongID)
		TONG_ApplyAddWarBuildFund(nTongID, -nConsume)		
		TONG_ApplyAddEventRecord(nTongID, "B¶o tr× bang héi ngµy h«m nay, tiªu hao"..nConsume.." v¹n ng©n s¸ch chiÕn bÞ");	
		Msg2Tong(nTongID, "B¶o tr× bang héi ngµy h«m nay, tiªu hao ng©n s¸ch chiÕn bÞ bang héi: <color=gold>"..nConsume.."<color> v¹n")
		TONG_ApplyAddTaskValue(nTongID, TONGTSK_WEEK_WFCONSUME, nConsume)
		nConsume = wsGetAllDayConsume(nTongID)
		nConsume = nConsume + tongGetBaseMaintainFund(nTongID, nTongLevel)
		Msg2Tong(nTongID, "Ng©n s¸ch chiÕn bÞ b¶o tr× hµng ngµy cña bang hiÖn t¹i lµ:  <color=gold>"..nConsume.." v¹n")
		Msg2Tong(nTongID, "Ng©n s¸ch chiÕn bÞ b¶o tr× hµng tuÇn cña bang héi hiÖn t¹i lµ: <color=gold>"..(nConsume * 7).." v¹n")
		local nWarBuildFund = TONG_GetWarBuildFund(nTongID)
		if (TONG_GetPauseState(nTongID) ~= 1 and nWarBuildFund < nConsume * 7)then
			local szMsg = "Ng©n s¸ch chiÕn bÞ thÊp h¬n ng©n s¸ch chiÕn bÞ b¶o tr× hµng tuÇn, tr­íc lÇn b¶o tr× sau sÏ kh«ng cã thay ®æi, t¸c ph­êng bang héi bÞ t¹m dõng!"
			Msg2Tong(nTongID, szMsg)
			TONG_ApplyAddEventRecord(nTongID, szMsg)
		end
		TONG_ApplySetMaintainFund(nTongID, nConsume)
		local nPerStandFund = floor(nConsume * 7 / TONG_GetMemberCount(nTongID, -1))
		TONG_ApplySetPerStandFund(nTongID, nPerStandFund)
	else	
		if (TONG_GetMaintainFund(nTongID) > 0) then
			TONG_ApplySetMaintainFund(nTongID, 0)
		end	
		if (TONG_GetPerStandFund(nTongID) > 0) then
			TONG_ApplySetPerStandFund(nTongID, 0)
		end	
	end
	Master_SelfCommend_Maintain(nTongID);
	if (nexweek) then
		TONG_ApplyWeeklyMaintain(nTongID)
		Msg2Tong(nTongID, "KiÕn thiÕt bang b­íc sang tuÇn thø <color=white>"..(nWeek+1).."<color>.")
	end
	local nStuntID = TONG_GetTaskValue(nTongID, TONGTSK_STUNT_ID)
	local nenabled = TONG_GetTaskValue(nTongID, TONGTSK_STUNT_ENABLED)
	local ndifday = tonumber(date("%w"))
	local nCitySTID = tong_GetCityStuntID(nTongID)
	if (nStuntID == 6) then
		nStuntID = 0
		TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_ID, nStuntID)
	end
	if (nCitySTID ~= 0 and (ndifday >= 1 and ndifday <= 4)) then
		if (TONG_GetTaskValue(nTongID, TONGTSK_CITYST_MEMLIMIT) + TB_STUNTID_INFO[nCitySTID].memper <= TB_STUNTID_INFO[nCitySTID].maxmem) then
			TONG_ApplyAddTaskValue(nTongID, TONGTSK_CITYST_MEMLIMIT, TB_STUNTID_INFO[nCitySTID].memper)
		end
	end
	if (nTongLevel >= 4) then
		if (nStuntID ~= 0 and nenabled ~= 0) then 
			if (ndifday <= 4 and ndifday >= 1) then
				if (TONG_GetTaskValue(nTongID, TONGTSK_STUNT_MEMLIMIT) + TB_STUNTID_INFO[nStuntID].memper <= TB_STUNTID_INFO[nStuntID].maxmem) then
					TONG_ApplyAddTaskValue(nTongID, TONGTSK_STUNT_MEMLIMIT, TB_STUNTID_INFO[nStuntID].memper)
				end
			end
		end
	end
	TONG_ApplyAddDay(nTongID, 1)
	return 1
end
MAINTAIN_G_1 = DefFun1
MAINTAIN_G_2 = DefFun1
function logicTongLevelUp(nTongID)
	local nCurLevel = TONG_GetBuildLevel(nTongID)
	if (nCurLevel >= 5)then
		return 5
	end	
	local nWsCount = TWS_GetWorkshopCount(nTongID)
	local nWsDemand = tongGetUpgradeWorkshopDemand(nTongID, nCurLevel)
	if (nWsCount < nWsDemand)then
		return 1, nWsDemand
	end
	local nLevelHi = tongGetUpgradeHighWorkshopsLevel(nTongID, nCurLevel)
	local nWorkshop = TWS_GetFirstWorkshop(nTongID)
	local nHiNum = 0
	while (nWorkshop > 0) do
		if (TWS_GetLevel(nTongID, nWorkshop) >= nLevelHi)then
			nHiNum = nHiNum + 1
		end
		nWorkshop = TWS_GetNextWorkshop(nTongID, nWorkshop)
	end
	local nHighDemand = tongGetUpgradeHighWorkshopsDemand(nTongID, nCurLevel)
	if (nHiNum < nHighDemand)then
		return 2, nHighDemand, nLevelHi
	end
	local nBFund = TONG_GetBuildFund(nTongID)
	local nCost = tongGetUpgradeCostFund(nTongID, nCurLevel)
	if (nBFund < nCost)then
		return 3, nCost
	end
	local nLastUpgradeDay = TONG_GetTaskValue(nTongID, TASKID_LAST_LEVELUP_DAY)
	if (nLastUpgradeDay + 7 > TONG_GetDay(nTongID))then
		return 4, nLastUpgradeDay
	end
	if (nCurLevel == 2)then
		if (TONG_GetTongMap(nTongID) <= DYNMAP_ID_BASE)then
			return 6
		end
	elseif (nCurLevel == 4)then
		local nCityDay = TONG_GetOccupyCityDay(nTongID)
		if (nCityDay == 0) then
			return 7, nCityDay
		end
	end	
	return 0
end
function UPGRADE_R(nTongID)
	local szExecutorName = TONGM_GetName(nTongID, ExecutorId);
	if (logicTongLevelUp(nTongID) ~= 0)then
		return 0
	end
	local nCurLevel = TONG_GetBuildLevel(nTongID)
	local nCost = tongGetUpgradeCostFund(nTongID, nCurLevel)
	if (TONG_ApplyAddBuildFund(nTongID, -nCost) ~= 1)then
		return 0
	end
	TONG_ApplyAddTaskValue(nTongID, TONGTSK_WEEK_BFCONSUME, nCost)
	local nCurLevel = TONG_GetBuildLevel(nTongID)
	TONG_ApplySetTaskValue(nTongID, TASKID_LAST_LEVELUP_DAY, TONG_GetDay(nTongID))
	local szRecord = "§¼ng cÊp kiÕn thiÕt bang héi t¨ng lªn "..(nCurLevel + 1).."cÊp";
	local szRecordPlus;
	local szExecutorName = TONGM_GetName(nTongID, ExecutorId);
	if (szExecutorName ~= "") then
		szRecordPlus = szExecutorName.." lµm cho"..szRecord;
	else
		szExecutorName = "";
		szRecordPlus = szRecord;
	end
	TONG_ApplyAddHistoryRecord(nTongID, szRecordPlus);	
	TONG_ApplyAddEventRecord(nTongID, szRecordPlus);	
	Msg2Tong(nTongID, szRecordPlus);
	cTongLog:WriteInfTB("TONG", "upgrade", nTongID, {buildlevel = (nCurLevel + 1), day = TONG_GetDay(nTongID)})
	if (nCurLevel == 0)then
		local szMsg = "§¼ng cÊp kiÕn thiÕt cña bang héi th¨ng lªn cÊp 1, chøc n¨ng TÕ §µn ph©n ph¸t ®iÓm cèng hiÕn ®­îc më ra.";
		Msg2Tong(nTongID, szMsg);
		TONG_ApplyAddEventRecord(nTongID, szMsg);	
	end
	if (nCurLevel == 4) then
		local nCitySTID = tong_GetCityStuntID(nTongID)
		local nday = getRelativeDay(nTongID)
		OutputMsg("UPGRade,"..nCitySTID..","..nday)
		if (TONG_GetTaskValue(nTongID, TONGTSK_STUNT_MAINPERIOD) < TONG_GetWeek(nTongID)) then
			TONG_ApplySetTaskValue(nTongID, TONGTSK_STUNT_MAINPERIOD, TONG_GetWeek(nTongID))
		end
		if (nCitySTID ~= 0) then
			if (TB_STUNTID_INFO[nCitySTID].right == 2) then
				TONG_ApplySetTaskValue(nTongID, TONGTSK_CITYST_MEMLIMIT, TB_STUNTID_INFO[nCitySTID].memper)
			else
				TONG_ApplySetTaskValue(nTongID, TONGTSK_CITYST_MEMLIMIT, TB_STUNTID_INFO[nCitySTID].maxmem)
			end
		end
	end
	local nNowLevel = nCurLevel + 1;
	if (nNowLevel == 2 or nNowLevel == 4) then
		local nOrder = gb_GetTask("TONG_LVL_UP_ORDER", nNowLevel) + 1
		gb_SetTask("TONG_LVL_UP_ORDER", nNowLevel, nOrder)
		TONG_ApplySetTaskValue(nTongID, TONGTSK_LUP_ORDER, nOrder)
		TONG_ApplySetTaskValue(nTongID, TONGTSK_LUP_PRICE, -1)	
	end;
	return 1
end
----------------------------------------------------------------------------------------------------------------------
function UPGRADE_G_1(nTongID)
		return 1
end
----------------------------------------------------------------------------------------------------------------------
function UPGRADE_G_2(nTongID)
	local nCurLevel = TONG_GetBuildLevel(nTongID) + 1
	local nMap = TONG_GetTongMap(nTongID)
	local nMapIndex = SubWorldID2Idx(nMap)
	if (nCurLevel < 4) then
		return 0
	else
		if (nMapIndex < 0) then
			return 0
		end
		if (nCurLevel == 4) then
			ClearMapNpcWithName(nMap, "Cét biÓu t­îng bang héi");	
			local nNpcIndex1 = AddNpc(1191, 1, nMapIndex, TB_TOTEMPOLE_POS[1][1] * 32, TB_TOTEMPOLE_POS[1][2] * 32, 1, "Cét biÓu t­îng bang héi")
			TONG_ApplySetTaskValue(nTongID, TONGTSK_TOTEMINDEX[1], nNpcIndex1)
			SetNpcScript(nNpcIndex1, "\\script\\tong\\npc\\tong_totempole.lua")
			local nNpcIndex2 = AddNpc(1192, 1, nMapIndex, TB_TOTEMPOLE_POS[2][1] * 32, TB_TOTEMPOLE_POS[2][2] * 32, 1, "Cét biÓu t­îng bang héi")
			TONG_ApplySetTaskValue(nTongID, TONGTSK_TOTEMINDEX[2], nNpcIndex2)
			SetNpcScript(nNpcIndex2, "\\script\\tong\\npc\\tong_totempole.lua")
			local nStuntID = TONG_GetTaskValue(nTongID, TONGTSK_STUNT_ID)
			if (nStuntID ~= 0) then
				AddNpcSkillState(nNpcIndex1, TB_STUNTID_INFO[nStuntID].skillid, 1, 1, 18*60*60*24*30)
				AddNpcSkillState(nNpcIndex2, TB_STUNTID_INFO[nStuntID].skillid, 1, 1, 18*60*60*24*30)
			end
		elseif (nCurLevel == 5) then
			ClearMapNpcWithName(nMap, "Cét biÓu t­îng bang héi");	
			local nNpcIndex1 = AddNpc(1191, 1, nMapIndex, TB_TOTEMPOLE_POS[1][1] * 32, TB_TOTEMPOLE_POS[1][2] * 32, 1, "Cét biÓu t­îng bang héi")
			TONG_ApplySetTaskValue(nTongID, TONGTSK_TOTEMINDEX[1], nNpcIndex1)
			SetNpcScript(nNpcIndex1, "\\script\\tong\\npc\\tong_totempole.lua")
			local nNpcIndex2 = AddNpc(1192, 1, nMapIndex, TB_TOTEMPOLE_POS[2][1] * 32, TB_TOTEMPOLE_POS[2][2] * 32, 1, "Cét biÓu t­îng thµnh th")
			TONG_ApplySetTaskValue(nTongID, TONGTSK_TOTEMINDEX[2], 0)
			SetNpcScript(nNpcIndex2, "\\script\\tong\\npc\\city_totempole.lua")
			local nStuntID = TONG_GetTaskValue(nTongID, TONGTSK_STUNT_ID)
			if (nStuntID ~= 0) then
				AddNpcSkillState(nNpcIndex1, TB_STUNTID_INFO[nStuntID].skillid, 1, 1, 18*60*60*24*30)
			end
			local nCitySTID = tong_GetCityStuntID(nTongID)
			if (nCitySTID ~= 0) then
				AddNpcSkillState(nNpcIndex2, TB_STUNTID_INFO[nCitySTID].skillid, 1, 1, 18*60*60*24*30)
			end
		end
	end
	return 1
end
function logicTongDegrade(nTongID)
	local nCurLevel = TONG_GetBuildLevel(nTongID)
	if (nCurLevel < 1)then
		return 1, nCurLevel
	end	
	return 0, nCurLevel
end
function DEGRADE_R(nTongID)
	local nRet, nCurLevel = logicTongDegrade(nTongID)
	if (nRet ~= 0)then
		return 0
	end	
	local nWorkshop = TWS_GetFirstWorkshop(nTongID)
	local nWsUpperLevel = tongGetWorkshopUpperLevel(nTongID, nCurLevel - 1)
	while(nWorkshop ~= 0)do
		if (TWS_GetUseLevel(nTongID, nWorkshop) > nWsUpperLevel)then
			TWS_ApplySetUseLevel(nTongID, nWorkshop, nWsUpperLevel)
		end
		nWorkshop = TWS_GetNextWorkshop(nTongID, nWorkshop)
	end
	local szRecord = "§¼ng cÊp kiÕn thiÕt gi¶m xuèng "..(nCurLevel - 1).."cÊp";
	TONG_ApplyAddHistoryRecord(nTongID, szRecord);		
	TONG_ApplyAddEventRecord(nTongID, szRecord);		
	cTongLog:WriteInfTB("TONG", "degrade", nTongID, {buildlevel = (nCurLevel - 1), day = TONG_GetDay(nTongID)})
	return 1
end
function DEGRADE_G_1(nTongID)
	local nRet, nCurLevel = logicTongDegrade(nTongID)
	if (nRet == 0)then
		return 1
	elseif (nRet == 1)then
	end
	return 0
end
function DEGRADE_G_2(nTongID)
	local nCurLevel = TONG_GetBuildLevel(nTongID) - 1
	local nMap = TONG_GetTongMap(nTongID)
	local nMapIndex = SubWorldID2Idx(nMap)
	if (nMapIndex < 0) then
		return 1
	end
	if (nCurLevel == 4) then	
		ClearMapNpcWithName(nMap, "Cét biÓu t­îng bang héi");	
		ClearMapNpcWithName(nMap, "Cét biÓu t­îng thµnh th");	
		local nNpcIndex1 = AddNpc(1191, 1, nMapIndex, TB_TOTEMPOLE_POS[1][1] * 32, TB_TOTEMPOLE_POS[1][2] * 32, 1, "Cét biÓu t­îng bang héi")
		TONG_ApplySetTaskValue(nTongID, TONGTSK_TOTEMINDEX[1], nNpcIndex1)
		SetNpcScript(nNpcIndex1, "\\script\\tong\\npc\\tong_totempole.lua")
		local nNpcIndex2 = AddNpc(1192, 1, nMapIndex, TB_TOTEMPOLE_POS[2][1] * 32, TB_TOTEMPOLE_POS[2][2] * 32, 1, "Cét biÓu t­îng bang héi")
		TONG_ApplySetTaskValue(nTongID, TONGTSK_TOTEMINDEX[2], nNpcIndex2)
		SetNpcScript(nNpcIndex2, "\\script\\tong\\npc\\tong_totempole.lua")
		local nStuntID = TONG_GetTaskValue(nTongID, TONGTSK_STUNT_ID)
		if (nStuntID ~= 0) then
			AddNpcSkillState(nNpcIndex1, TB_STUNTID_INFO[nStuntID].skillid, 1, 1, 18*60*60*24*30)
			AddNpcSkillState(nNpcIndex2, TB_STUNTID_INFO[nStuntID].skillid, 1, 1, 18*60*60*24*30)
		end
	elseif (nCurLevel == 3) then	
		ClearMapNpcWithName(nMap, "Cét biÓu t­îng bang héi");	
	end
	return 1
end
function TONGCLAIMWAR_R(nTongID, nDestTongID)
	local nTimes = TONG_GetTaskValue(nTongID, TONGTSK_CLAIMWAR_TIMES);
	local nCurTimes = nTimes + 1;
	
	local nCostMoneyFund = 0;	
	if (nCurTimes == 1) then
		nCostMoneyFund = 5000;
	elseif (nCurTimes == 2) then
		nCostMoneyFund = 2 * 5000;
	elseif (nCurTimes == 3) then
		nCostMoneyFund = 4 * 5000;
	elseif (nCurTimes > 3) then
		nCostMoneyFund = 4 * 5000;
	end;
		TONG_ApplyAddTaskValue(nTongID, TONGTSK_AntiHackMoney,-(nCostMoneyFund*10000));
	if (TONG_ApplyAddMoney(nTongID, -(nCostMoneyFund*10000)) ~= 1) then	
		TONG_ApplyAddTaskValue(nTongID,TONGTSK_AntiHackMoney,nCostMoneyFund*10000);
		Msg2Player("Bang héi tuyªn chiÕn cÇn giao nép"..nCostMoneyFund.." v¹n lÊy tõ ng©n s¸ch!");
		return 0;
	end;
	TONG_ApplySetTaskValue(nTongID, TONGTSK_CLAIMWAR_TIMES, nCurTimes);
	
	local szDestTongName = GetTongNameByID(nDestTongID);
	local szTongMsg = "Bang chñ  ®· tuyªn chiÕn bang héi"..szDestTongName.." råi";
	Msg2Tong(nTongID, szTongMsg);
	TONG_ApplyAddEventRecord(nTongID, szTongMsg);
	return 1;
end
function TONGCLAIMWAR_G_1(nTongID, nDestTongID)
	if (nTongID == nDestTongID) then
		Msg2Player("Kh«ng thÓ tù tuyªn chiÕn bang héi chÝnh m×nh!");
		return 0;
	end;
	
	local szDoFunc = "/#DO_TONGCLAIMWAR_G_1("..nTongID..","..nDestTongID..")"
	Say("X¸c nhËn muèn tuyªn chiÕn?",2,"X¸c nhËn"..szDoFunc, "§Ó ta suy nghÜ l¹i/cancel")
end
function DO_TONGCLAIMWAR_G_1(nTongID, nDestTongID)
	local nTimes    = 0;
	local nCurTimes = 0;
	local nCurDay = TONG_GetDay(nTongID);
	local nDay = TONG_GetTaskValue(nTongID, TONGTSK_CLAIMWAR_DATE);
	
	if (nCurDay ~= nDay) then
		TONG_ApplySetTaskValue(nTongID, TONGTSK_CLAIMWAR_DATE, nCurDay);
		TONG_ApplySetTaskValue(nTongID, TONGTSK_CLAIMWAR_TIMES, 0);
	elseif (nCurDay == nDay) then
		 nTimes = TONG_GetTaskValue(nTongID, TONGTSK_CLAIMWAR_TIMES);
	end;
	
	nCurTimes = nTimes + 1;	
	local nCostMoneyFund = 0;	
	if (nCurTimes == 1) then
		nCostMoneyFund = 5000;
	elseif (nCurTimes == 2) then
		nCostMoneyFund = 2 * 5000;
	elseif (nCurTimes == 3) then
		nCostMoneyFund = 4 * 5000;
	elseif (nCurTimes > 3) then
		nCostMoneyFund = 4 * 5000;
	end;
	
	if (TONG_GetMoney(nTongID) < nCostMoneyFund * 10000) then
		Msg2Player("Tuyªn chiÕn bang héi cÇn giao nép"..nCostMoneyFund.." v¹n lÊy tõ ng©n s¸ch!");
		return 0;
	end;	
	TongClaimWar(nDestTongID);
	return 1;
end
function cancel()
end
TONGCLAIMWAR_G_2 = DefFun2
function ClaimWar_Death_Process(nAttackerIndex)
	local result = 0;	
	local szTong = 0;
	szTong, result = GetTong();	
	local szAttackPlayer = GetNpcName(nAttackerIndex);
	local szDestTong     = GetNpcTong(nAttackerIndex);	
	local szMsg = format("%s bang héi cña %s ®· tiªu diÖt %s bang héi cña %s", szDestTong, szAttackPlayer, szTong, GetName());
	Msg2SubWorld(szMsg);
end
function CHANGECAMP_R(nTongID, nCamp)
	local szExecutorName = TONGM_GetName(nTongID, ExecutorId);
	local nCurCamp = TONG_GetCurCamp(nTongID);
	if (nCurCamp == nCamp or
		nCurCamp < 1 or
		nCurCamp > 3 or
		nCamp < 1 or
		nCamp > 3) then
		return 0;
	end
	if (TONG_GetUnionID(nTongID) ~= 0) then
		Msg2PlayerByName(szExecutorName, "Kh«ng thÓ thay ®æi phe ph¸i trong liªn minh cña bang héi");
		return 0;
	end
-------------------------------------------------------------------------------------------------------------------------
	local nCostMoneyFund = 100;
	TONG_ApplyAddTaskValue(nTongID,TONGTSK_AntiHackMoney,-(nCostMoneyFund*10000));
	if (TONG_ApplyAddMoney(nTongID, -(nCostMoneyFund*10000)) ~= 1) then
		TONG_ApplyAddTaskValue(nTongID,TONGTSK_AntiHackMoney,nCostMoneyFund*10000);
		local szExecutorName = TONGM_GetName(nTongID, ExecutorId);
		Msg2PlayerByName(szExecutorName, "§æi phe c¸nh cho bang cÇn n¹p phÝ "..nCostMoneyFund.." v¹n lÊy tõ ng©n s¸ch!");
		return 0;
	end
-------------------------------------------------------------------------------------------------------------------------
	Msg2Tong(nTongID, "Bang chñ thay ®æi phe ph¸i cña bæn bang! ");
	cTongLog:WriteInfTB("TONG", "changecamp", nTongID, {camp = nCamp, camp_old = nCurCamp})
	return 1;
end
function CHANGECAMP_G_1(nTongID, nCamp)
	local nCurCamp = TONG_GetCurCamp(nTongID);
	if (nCurCamp == nCamp or
		nCurCamp < 1 or
		nCurCamp > 3 or
		nCamp < 1 or
		nCamp > 3) then
		return 0;
	end
	if (TONG_GetUnionID(nTongID) ~= 0) then
		Msg2Player("Kh«ng thÓ thay ®æi phe ph¸i trong liªn minh cña bang héi");
		return 0;
	end
	local nCostMoneyFund = 100; 
	if (TONG_GetMoney(nTongID) < nCostMoneyFund*10000) then
		Msg2Player("§æi phe c¸nh cho bang cÇn n¹p phÝ "..nCostMoneyFund.." v¹n lÊy tõ ng©n s¸ch!");
		return 0;
	end
	return 1;
end
function Master_SelfCommend_Maintain(nTongID)
	if (TONG_GetTaskValue(nTongID, TONGTSK_OPEN_DATE) == 0) then
		return	
	end	
	local dwIniDayTime = TONG_GetTaskValue(nTongID, TONGTSK_OPEN_DATE);
	local dwCurrTime = GetSysCurrentTime();
	local nOweday = ceil((dwCurrTime - dwIniDayTime)/(24 * 3600 ))
	if (nOweday <= CAST_DURATION) then 
		return
	end	
	Msg2Tong(nTongID, "Thêi gian tù tiÕn cö ®· kÕt thóc");
	TONG_ApplyAddEventRecord(nTongID, "Thêi gian tù tiÕn cö ®· kÕt thóc");
	local bRetireLoop = 0;
	local nMemberID  = TONG_GetFirstMember(nTongID, -1);
	tbForecontributiveness = 
	{ 
		{0, 0, dwCurrTime}, 
		{0, 0, dwCurrTime}, 
		{0, 0, dwCurrTime} 
	} 
	while (nMemberID > 0) do
		local nContributiveness = TONGM_GetTaskValue(nTongID,nMemberID, TONGMTSK_CONTRIBUTIVENESS) 
		local dwContributivenesstime = TONGM_GetTaskValue(nTongID, nMemberID, TONGMTSK_SELFCOMMEND_TIME)
		if (nContributiveness > tbForecontributiveness[3][2] or 
			(nContributiveness == tbForecontributiveness[3][2] and 
			dwContributivenesstime < tbForecontributiveness[3][3] and
			nContributiveness > 0) and
			dwContributivenesstime > dwIniDayTime	
			) then
				tbForecontributiveness[3][1] = nMemberID
				tbForecontributiveness[3][2] = nContributiveness
				tbForecontributiveness[3][3] = dwContributivenesstime
				if ((tbForecontributiveness[3][2] > tbForecontributiveness[2][2]) or
					(tbForecontributiveness[3][2] == tbForecontributiveness[2][2] and
					tbForecontributiveness[3][3] < tbForecontributiveness[2][3])) then
					tbForecontributiveness[2],tbForecontributiveness[3] = tbForecontributiveness[3],tbForecontributiveness[2];
						if ((tbForecontributiveness[2][2] > tbForecontributiveness[1][2]) or
        					(tbForecontributiveness[2][2] == tbForecontributiveness[1][2] and
        					tbForecontributiveness[2][3] < tbForecontributiveness[1][3])) then
        					tbForecontributiveness[1], tbForecontributiveness[2] = tbForecontributiveness[2], tbForecontributiveness[1];
        				end 
        		end 
        end 
		TONGM_ApplySetTaskValue(nTongID, nMemberID, TONGMTSK_MASTERCANDIDATE, 0);
		TONGM_ApplySetTaskValue(nTongID, nMemberID, TONGMTSK_INICONTRIBUTIVENESS, 0);
		TONGM_ApplySetTaskValue(nTongID, nMemberID, TONGMTSK_CONTRIBUTIVENESS, 0);
		TONGM_ApplySetTaskValue(nTongID, nMemberID, TONGMTSK_SELFCOMMEND_TIME, 0);
		if (bRetireLoop == 0) then
			nMemberID = TONG_GetNextMember(nTongID, nMemberID, -1);	
			if (nMemberID == 0) then
				nMemberID = TONG_GetFirstMember(nTongID, 4);		
				bRetireLoop = 1;
			end
		else
			nMemberID = TONG_GetNextMember(nTongID, nMemberID, 4);	
		end
	end  
	for i = 1, 3 do
		if (tbForecontributiveness[i][1] ~= 0 and tbForecontributiveness[i][2] ~= 0) then
			local szMember = TONGM_GetName(nTongID, tbForecontributiveness[i][1])
			local szDateTime = FormatTime2String(tbForecontributiveness[i][3])
			local szMsg = "h¹ng thø "..i.." "..szMember.." Sè tranh cö: "..tostring(tbForecontributiveness[i][2]).." Thêi gian tranh cö: "..szDateTime;
			Msg2Tong(nTongID, szMsg)
			TONG_ApplyAddEventRecord(nTongID, szMsg)
		end
	end 
	if (tbForecontributiveness[1][1] == 0) then
			Msg2Tong(nTongID, "LÇn tranh cö chøc bang chñ nµy kh«ng chän ®­îc ng­êi thÝch hîp.");
	else
		if (TONG_GetFirstMember(nTongID, 0) == tbForecontributiveness[1][1] or
			SetTongMaster(nTongID, tbForecontributiveness[1][1]) == 1) then
			local szMember = TONGM_GetName(nTongID, tbForecontributiveness[1][1]);
			Msg2Tong(nTongID, "Bang chñ nhiÖm vÞ míi cña bang sÏ lµ "..tostring(szMember).."Sè ®iÓm tranh cö cña bang chñ míi lµ: "..tostring(tbForecontributiveness[1][2]));
			TONG_ApplyAddHistoryRecord(nTongID, "Bang chñ nhiÖm vÞ míi cña bang sÏ lµ "..tostring(szMember).."Sè ®iÓm tranh cö cña bang chñ míi lµ: "..tostring(tbForecontributiveness[1][2]));
		else
			local tbMsg = {
				masterid     = tbForecontributiveness[1][1]
				};
			cTongLog:WriteErrTB("TONG", "master_bidding", nTongID, tbMsg);
		end
	end
	TONG_ApplySetTaskValue(nTongID, TONGTSK_OPEN_DATE, 0);
end
CHANGECAMP_G_2 = DefFun2
else
INIT_C_1 = DefFun1
INIT_C_2 = DefFun1
ADD_C_1 = DefFun2
ADD_C_2 = DefFun2
REMOVE_C_1 = DefFun1
REMOVE_C_2 = DefFun1
WEEKLY_MAINTAIN_C_1 = DefFun1
WEEKLY_MAINTAIN_C_2 = DefFun1
MAINTAIN_C_1 = DefFun1
MAINTAIN_C_2 = DefFun1
UPGRADE_C_1 = DefFun1
UPGRADE_C_2 = DefFun1
DEGRADE_C_1 = DefFun1
DEGRADE_C_2 = DefFun1
CHANGECAMP_C_1 = DefFun2
CHANGECAMP_C_2 = DefFun2
TONGCLAIMWAR_C_1 = DefFun2
TONGCLAIMWAR_C_2 = DefFun2	
end