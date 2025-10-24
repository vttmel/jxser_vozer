---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2002\\phongphaodai\\head.lua")
Include("\\script\\activitysys\\config\\2002\\phongphaodai\\variables.lua")
Include("\\script\\activitysys\\config\\2002\\phongphaodai\\data.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("TITLE")

local szRemoteScript = "\\script\\event\\2012april_zhushuai\\event.lua"
pActivity.tbStartDay = {2012,3,29,10,0} 
pActivity.nTempTime = 7 * 24 * 60 * 60	

function pActivity:InitAddNpc()
	tbNpc = %tbActivityNpc
	tbPos = %tbActivityNpcPos
	for i=1, getn(tbNpc) do
		local tbNpcPos = tbPos[i]
		for j=1,getn(tbPos[i]) do
			local nMapId, nPosX, nPosY = unpack(tbNpcPos[j])
			basemission_CallNpc(tbNpc[i], nMapId, nPosX * 32, nPosY * 32)	
		end
	end
	
	self:InitHandInCompose()
	self:InitUpdateCompose()
end

function pActivity:GetCurrentDateTime()
	local nCurrDate = tonumber(GetLocalDate("%Y%m%d"))
	local nCurrTime = tonumber(GetLocalDate("%H%M"))
	return nCurrDate, nCurrTime
end

function pActivity:UpdateLastLoginTime()
do return end
	local nLastDate = self:GetTask(%TSK_LAST_ONLINEDATE)
	local nLastTime = self:GetTask(%TSK_LAST_ONLINETIME)
	local nCurrDate, nCurrTime = self:GetCurrentDateTime()
	
	if nLastDate ~= nCurrDate then
		nLastDate = nCurrDate
		nLastTime = %NUM_ONLINE_START_TIME
	end
	
	if nLastTime < %NUM_ONLINE_START_TIME then
		nLastTime = %NUM_ONLINE_START_TIME
	end
	
	self:SetTask(%TSK_LAST_ONLINEDATE, nLastDate)
	self:SetTask(%TSK_LAST_ONLINETIME, nLastTime)
end

function pActivity:GetOnLineAward()
	local nDate = self:GetTask(%TSK_LAST_ONLINEDATE)
	local nNowDate = tonumber(GetLocalDate("%Y%m%d"))
	local nHour = 0
	local nCurrentOnLineTime = 0
	local nLastOnLineTime = 0
	local nCount = 0
	if nDate == nNowDate then
		nLastOnLineTime = self:GetTask(%TSK_LAST_ONLINETIME)
		nCurrentOnLineTime = GetGameTime()	
		nHour = floor((nCurrentOnLineTime - nLastOnLineTime) / 60 / 60)
		nCurrentOnLineTime = nLastOnLineTime + nHour * 60 * 60
	else
		local nCurrentH = tonumber(GetLocalDate("%H"))
		local nCurrentM = tonumber(GetLocalDate("%M"))
		local nCurrentS = tonumber(GetLocalDate("%S"))
		nHour = nCurrentH 
		nCurrentOnLineTime = GetGameTime() - nCurrentM * 60 - nCurrentS		
	end
	nCount = nHour	
	if nCount <= 0 then
		Msg2Player("Kho¶ng c¸ch nhËn lÇn tr­íc, thêi gian trªn m¹ng cña ng­¬i ch­a ®ñ 1 gi? kh«ng th?nhËn")
		return 
	end
	local nMaxCount = %MAX_DAILY_LOGIN_MEDAL -  PlayerFunLib:GetTaskDailyCount(%TSK_DAILY_LOGIN_MEDAL)
	nMaxCount = min(nMaxCount, nCount)
	if nMaxCount <= 0 then
		Msg2Player("H«m nay ng­¬i kh«ng th?nhËn n÷a, ngµy mai h·y quay l¹i.")
		return 
	end
	
	if PlayerFunLib:CheckFreeBagCell(1,"default") ~= 1 then
		return
	end
		
	self:SetTask(%TSK_LAST_ONLINETIME,nCurrentOnLineTime)
	self:SetTask(%TSK_LAST_ONLINEDATE,nNowDate)

	PlayerFunLib:GetItem(%ITEM_MEDAL_1,nMaxCount*3, %EVENT_LOG_TITLE, "NhanHuyHieuCap1TaiNPCThoMay")
	PlayerFunLib:AddTaskDaily(%TSK_DAILY_LOGIN_MEDAL, nMaxCount)	
end
function pActivity:PlayerOnLogin()
	local nDate = self:GetTask(%TSK_LAST_ONLINEDATE)	
	local nNowDate = tonumber(GetLocalDate("%Y%m%d"))
	local nCount = 0	
	if nDate ~= nNowDate then
		nCurrentOnLineTime = GetGameTime()		
		self:SetTask(%TSK_LAST_ONLINETIME,nCurrentOnLineTime)
		self:SetTask(%TSK_LAST_ONLINEDATE,nNowDate)		
	end
end

function pActivity:GetDateFromBuffer(ResultHandle, nCount)
	local tbResult = {}
	for i=1,nCount do
		tbResult[i] = ObjBuffer:PopObject(ResultHandle)
	end
	return unpack(tbResult)
end
function pActivity:IsZhuShuai(ResultHandle)
	local nResult = 1
	local szName, nMark, szPlayerName, nParam = self:GetDateFromBuffer(ResultHandle, 4)
	local nPlayerIndex = SearchPlayer(szPlayerName)
	
	if nPlayerIndex <= 0 then
		return 0, 0, nParam
	end
	
	if not szName or szName ~= szPlayerName then
		nResult = 0
	end
	return nPlayerIndex, nResult, nParam
end


function pActivity:CheckPerson(szFun, nParam)
	nParam = nParam or 0
	local obj = ObjBuffer:New()
	obj:Push(GetName())
	obj:Push(nParam)
	DynamicExecute("\\script\\activitysys\\config\\2002\\extend.lua",
		"RemoteExecute", %szRemoteScript, "tbZhuShuai:g2s_PreZhuShuai", obj.m_Handle, szFun, 0)
	obj:Destroy()
end


function pActivity:GetTitle_1()
	self:IsClearMark()
	self:CheckPerson("pActivity:GetTitle_2")
end


function pActivity:GetTitle_2(nParam, ResultHandle)
	local nPlayerIndex,nResult,_ = self:IsZhuShuai(ResultHandle)
	if nPlayerIndex <= 0 then
		return
	end
	local szMsg = format("Ng­¬i kh«ng ph¶i ch?so¸i cña tuÇn nµy, kh«ng th?nhËn %s nµy","danh hiÖu")
	if nResult == 0 then
		CallPlayerFunction(nPlayerIndex, Say, szMsg)
		return 
	end
	CallPlayerFunction(nPlayerIndex, self.GetTitle, self)
end


function pActivity:GetTitle()
	local n_title = 246
	local nDay = 6
	local nHour = GetLocalDate("%H")
	local nMinute = GetLocalDate("%M")
	local nTime = ((24-nHour) * 60 - nMinute) + nDay * 24 * 60 + 10 * 60 
	nTime = nTime * 60 
	nTime	= mod(FormatTime2Number(GetCurServerTime()+nTime), 100000000)
	local TSK_ACTIVE_TITTLE = 1122

	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
	SetTask(TSK_ACTIVE_TITTLE, n_title)	

	%tbLog:PlayerAwardLog(%EVENT_LOG_TITLE, "NhanDanhHieuChuSoai")
	self:AddTaskDaily(%TSK_DAILY_GET_TITLE, 1)
	Msg2Player("Chóc mong ®¹i hiÖp nhËn ®­îc danh hiÖu §Ö NhÊt Ch?So¸i")
end

function pActivity:GetZhuShuaiAward_1()
	self:IsClearMark()
	self:CheckPerson("pActivity:GetZhuShuaiAward_2")
end

function pActivity:GetZhuShuaiAward_2(nParam, ResultHandle)
	local nExp = 5000000
	local nPlayerIndex,nResult,_ = self:IsZhuShuai(ResultHandle)
	if nResult == 0 then
		CallPlayerFunction(nPlayerIndex,Say,format("Ng­¬i kh«ng ph¶i ch?so¸i cña tuÇn nµy, kh«ng th?nhËn %s nµy","PhÇn th­ëng"))
		return 
	end
	CallPlayerFunction(nPlayerIndex, PlayerFunLib.AddExp, PlayerFunLib, nExp, 1, %EVENT_LOG_TITLE, "NhanPhanThuongChuSoai")
	CallPlayerFunction(nPlayerIndex, self.AddTaskDaily, self, %TSK_DAILY_EXP_AWARD, 1)
end

function pActivity:ActiveFunction_1(nType)
	self:IsClearMark()
	self:CheckPerson("pActivity:ActiveFunction_2", nType)
end

function pActivity:DoActiveFunction(nParam)
	local nJxb = 10000000
	if GetCash() < nJxb then
		Msg2Player(format("KUch ho¹t tUnh n¨ng nµy cÇn ph¶i c?%d ng©n l­îng, h·y chuÈn b?k?råi quay l¹i",nJxb))
		return
	end
	Pay(nJxb)
	self:AddTaskDaily(%TSK_TB_DAILY_ACTIVE[nParam], 1)
	self:AddTaskDaily(%TSK_DAILY_ACTIVE, 1)
	%tbLog:PlayerAwardLog(%EVENT_LOG_TITLE, %tbActivLog[nParam])
	Msg2Player("Ng­¬i ®· kUch ho¹t tUnh n¨ng nµy thµnh c«ng")
end

function pActivity:ActiveFunction_2(nParam, ResultHandle)
	local nPlayerIndex, nResult, nParam = self:IsZhuShuai(ResultHandle)
	if nResult ~= 1 then
		CallPlayerFunction(nPlayerIndex,Say,"Ng­¬i kh«ng ph¶i ch?so¸i cña tuÇn nµy, kh«ng th?kUch ho¹t tUnh n¨ng nµy")
		return
	end
	CallPlayerFunction(nPlayerIndex, self.DoActiveFunction, self, nParam)
end

function pActivity:UpdateNextClearTime()
	local nCurrTime = GetCurrentTime()
	local nTime = Tm2Time(unpack(self.tbStartDay))

	local nCount = floor( (nCurrTime - nTime)/self.nTempTime) + 1
	nNextSortTime = nTime + nCount * self.nTempTime
	if nNextSortTime <= nCurrTime then
		nNextSortTime = nNextSortTime + self.nTempTime
	end
	self:SetTask(%TSK_NEXT_CLEAR_TIME, nNextSortTime)
	return nNextSortTime
end


function pActivity:IsClearMark()
	local nNextSortTime = self:GetTask(%TSK_NEXT_CLEAR_TIME)
	
	if nNextSortTime == 0 then
		nNextSortTime = self:UpdateNextClearTime()
	end
	
	local nCurrTime = GetCurrentTime()
	if nCurrTime <= nNextSortTime then
		return 0
	end
	self:SetTask(%TSK_MARK,0)
	self:UpdateNextClearTime()
	return 1
end

function pActivity:QueryMark_1()
	self:IsClearMark()
	local obj = ObjBuffer:New()
	obj:Push(GetName())
	DynamicExecute("\\script\\activitysys\\config\\2002\\extend.lua",
		"RemoteExecute", %szRemoteScript, "tbZhuShuai:g2s_NowZhuShuai", obj.m_Handle, "pActivity:QueryMark_2", 0)
	obj:Destroy()
	
end

function pActivity:QueryMark_2(nParam, ResultHandle)
	local szName, nMaxMark, szPlayerName = self:GetDateFromBuffer(ResultHandle, 3)
	local nPlayerIndex = SearchPlayer(szPlayerName)
	if nPlayerIndex <= 0 then
		return
	end
	
	CallPlayerFunction(nPlayerIndex, self.IsClearMark, self)
	local nPlayerMark = CallPlayerFunction(nPlayerIndex, self.GetTask, self, %TSK_MARK)
	CallPlayerFunction(nPlayerIndex, Say, format("TUch l?y danh hiÖu hiÖn t¹i cña c¸c h?l?%d, ®iÓm tUch l?y cao nhÊt hiÖn t¹i l?%d", nPlayerMark, nMaxMark))
end

function pActivity:HandInMedal(nType, nCount)
	self:IsClearMark()
	
	for k=1,nCount do
		local nRate = random(1, 100)
		local nTotalRate = 0
		tbHandInMedal = %tbHandInMedal[nType]
		local tbMark = tbHandInMedal.tbMark
		for i=1,getn(tbMark)do
			nTotalRate = nTotalRate + tbMark[i].nRate
			if nRate <= nTotalRate then
				self:AddTask(%TSK_MARK, tbMark[i].nMark)
				Msg2Player(format("Danh hiÖu v?tUch l?y cña ng­¬i ®· t¨ng lªn %d",tbMark[i].nMark))
				break
			end
		end
		PlayerFunLib:AddExp(tbHandInMedal.nExp_tl, 1, %EVENT_LOG_TITLE,format("HandIn_Medal_%d",nType))
	end
	
	self:UpdateMaxMark()
	self:AddTaskDaily(%TSK_DAILY_MEDAL, nCount)
	
	local nHandinCount = self:GetTaskDaily(%TSK_DAILY_MEDAL)
	if nHandinCount == %MAX_DAILY_HANDIN_MEDAL then
		%tbLog:PlayerAwardLog(%EVENT_LOG_TITLE, "Nop100HuyHieuMoiNgay")
	end
end


function pActivity:UpdateMaxMark()
	local szName = GetName()
	local nMark = self:GetTask(%TSK_MARK)
	local obj = ObjBuffer:New()
	obj:Push(szName)
	obj:Push(nMark)
	RemoteExecute(%szRemoteScript, "tbZhuShuai:s2g_AddDate", obj.m_Handle)
	obj:Destroy()
end

function pActivity:PlayerSignUp(nType)
	self:SetTask(%TSK_TB_NOW_DAILY_ACTIVE[nType], 0)
	
	if PlayerFunLib:CheckTotalLevel(150,"",">=") ~= 1 then
		return
	end
	local bResult = 1
	if nType == NUM_SONGJIN and self:CheckSongJinTime() == 0 then
		bResult = 0
	end
	
	if bResult == 0 then
		return
	end
	
	local nCount = self:GetTaskDaily(%TSK_TB_DAILY_ACTIVE[nType])
	if nCount > 0 then
		self:AddTaskDaily(%TSK_TB_NOW_DAILY_ACTIVE[nType], 1)
		self:AddTaskDaily(%TSK_TB_DAILY_ACTIVE[nType], -1)
	end
end

function pActivity:DoubleExp_YDBZ(nPoint)
	local nTask = %TSK_TB_NOW_DAILY_ACTIVE[%NUM_YDBZ]
	if self:GetTaskDaily(nTask) == 1 then
		nPoint = nPoint * 2
	end
	return nPoint
end

function pActivity:DoubleExp_ChuangGuan(nPoint)
	local nTask = %TSK_TB_NOW_DAILY_ACTIVE[%NUM_CHUANGGUAN]
	if self:GetTaskDaily(nTask) == 1 then
		nPoint = nPoint * 2
	end
	return nPoint
end

function pActivity:CheckSongJinTime()
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nHour = tonumber(GetLocalDate("%H"))
	local tbWeek = {1,2,4,6}
	local tbFuncHour = {20,21}
	local nAvai = 1
	for i=1, getn(tbWeek) do
		if nWeekDay == tbWeek[i] and (nHour == tbFuncHour[1] or nHour == tbFuncHour[2]) then
			nAvai = 0
		end
	end
	return nAvai
end

function pActivity:DoubleExp_Songjin(nPoint)
	local nTask = %TSK_TB_NOW_DAILY_ACTIVE[%NUM_SONGJIN]
	
	local nAvai = 1
	if self:GetTaskDaily(nTask) == 1 and self:CheckSongJinTime() == 1 then
		nPoint = nPoint * 2
	end
	return nPoint
end

function pActivity:ResetTSKNowActive(nType)
	self:SetTask(%TSK_TB_NOW_DAILY_ACTIVE[nType], 0)
end

pActivity.nPak = curpack()