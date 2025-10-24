if MODEL_GAMESERVER ~= 1 then
	return 
end
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\event\\bingo_machine\\bingo_machine_def.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\event\\bingo_machine\\gambler.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

INT_MAX = 2147483647
INPOOLPENCENT = 0.02
BINGO_MAX_RATE = 10000
-- ≤ªÕ¨–«º∂µƒµ√Ω±∏≈¬ 
BINGO_AWARD_RATE =
{	
	--Change flag rate - Modified By DinhHQ - 20120524
	{2205, 205, 80}, -- 0–«, ≥˝±¶œ‰÷ÆÕ‚∏˜÷÷ŒÔ∆∑µƒ∏≈¬ œ‡Õ¨
	{2100, 150, 10}, -- 1–«, ≥˝…œ¥Œ÷–µƒŒÔ∆∑Õ‚,∆‰À¸ŒÔ∆∑µƒ∏≈¬ œ‡Õ¨
	{2100, 100, 10}, -- ...
	{2400, 100, 10},
	{2500, 100, 1},
	{2750, 7, 	3},
}
--Change box rate - Modified By DinhHQ - 20120524
BINGO_AWARD_BOX_RATE = {15, 25}
BINGO_AWORD_TYPE_COUNT = 3 * 4 + 2 --ŒÔ∆∑÷÷¿‡”–ŒÂ÷÷, æ´¡∂ Ø, ◊∞±∏, æ≠—È, “¯¡Ω, ±¶œ‰

function BingoMachine:GetCurRate(nType, nLevel)
	local tbRate = {}
	if nLevel == 0 then -- ≥ı ºªØµ⁄“ª¥Œµ√Ω±∏≈¬ ±Ì
		for i = 1, 4 do  
			tinsert(tbRate, BINGO_AWARD_RATE[1])
		end
		tinsert(tbRate, BINGO_AWARD_BOX_RATE)
	else -- ≥ı ºªØµ⁄N¥Œµ√Ω±∏≈¬ ±Ì
		local nRate = 0
		local nRow = nLevel + 1 -- µ√µΩ…œ¥Œº∂±À˘∂‘”¶µƒ∏≈¬ À˘‘⁄µƒŒª÷√
		for i = 1, getn(BINGO_AWARD_RATE[nRow]) do
			 nRate = nRate + BINGO_AWARD_RATE[nRow][i]
		end
		nRate = ceil((BINGO_MAX_RATE - nRate) / (BINGO_AWORD_TYPE_COUNT - 3))
		for i = 1, 4 do 
			if i == nType then -- …œ¥Œµ√Ω±µƒŒÔ∆∑
				tinsert(tbRate, BINGO_AWARD_RATE[nRow])
			else
				tinsert(tbRate, {nRate, nRate, nRate})
			end			
		end
		tinsert(tbRate, {nRate, nRate}) -- ±¶œ‰
	end
	return tbRate
end

function BingoMachine:CalcResult(nType, nLevel)	

	if nType < 0 or nType > getn(AWARD_TYPE) then
		return
	end
	
	local tbRate = self:GetCurRate(nType, nLevel)
	if not tbRate then
		WriteLog("BingoMachine:CalcResult is nil")
		return
	end
	
	local rcur = random(1, BINGO_MAX_RATE);
	local rstep = 0;
	for i = 1, getn(tbRate) do
		local tbItemRate = tbRate[i]
		for j = 1, getn(tbItemRate) do
			rstep = rstep + tbItemRate[j];
			if(rcur <= rstep) then
				return i, j
			end
		end
	end
	WriteLog("BingoMachine:CalcResult is  rcur = " .. rcur .. " rstep = " .. rstep)
end

function BingoMachine:ProcProtocol(szName, nOpertion, nParam)
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex <= 0 then
		return
	end
	if nOpertion == C2S_OPERATION_ROTATE then
		CallPlayerFunction(nPlayerIndex, self.OnRotate, self, nParam)
	elseif nOpertion == C2S_OPERATION_AWARD then
		CallPlayerFunction(nPlayerIndex, self.OnGetAward, self, nParam)
	end
end

function BingoMachine:OnRotate(nOdds)
	if ODDS2COIN[nOdds] == nil then
		self:SendResult(ROTATE_ERROR_STATUS, nCount, 0, 0)
	end
	
	local nCount = CalcEquiproomItemCount(4,417,1,1)
	if Gambler:GetState() ~= STATE_NORMAL then
		self:SendResult(ROTATE_ERROR_STATUS, nCount, 0, 0)
		return
	end

	if nOdds > 0 and ODDS2COIN[nOdds][2] ~= nil then
		local strLogs = "" .. GetAccount().."\t"..GetName().."\tBingoMachine\tDeduct_refining_count\t" .. ODDS2COIN[nOdds][2]			
		WriteLog(strLogs)
	end
	
	local bFirstTime = Gambler:IsFirstTime()
	if bFirstTime == 1 then
		local nCoin = ODDS2COIN[nOdds][2] * INPOOLPENCENT

		if nCount < ODDS2COIN[nOdds][2] or Gambler:PayCoin(ODDS2COIN[nOdds][2]) ~= 1 then -- ø€≥˝ªÏ‘™¡È¬∂
			self:SendResult(ROTATE_ERROR_PRINING, nCount, 0, 0)
			return 
		else
			self:Add2PrizePool(nCoin)
		end
		Gambler:SetOdds(nOdds)
	end
	BingoMachine:GetCoin(GetName())
		
	local nFinalType, nFinalLevel = Gambler:GetFinalAward()
	local nNewType, nNewLevel = self:CalcResult(nFinalType, nFinalLevel)
	if not nNewType or not nNewLevel then
		local strLogs = "" .. GetAccount().."\t"..GetName().."\tBingoMachine\CalcResult\t failed"			
		WriteLog(strLogs)
		return 
	end
	
	nFinalType, nFinalLevel = Gambler:UpdateAward(nNewType, nNewLevel)
	
	if nFinalType == KING_TYPE then
		Gambler:SetState(STATE_AWARD)
	elseif nFinalLevel == OVERFLOW_LEVEL then
		Gambler:SetState(STATE_AWARD)
	elseif nFinalLevel > OVERFLOW_LEVEL then
		Gambler:SetState(STATE_WAIT)
	else
		Gambler:SetState(STATE_NORMAL)
	end

	if nFinalLevel > OVERFLOW_LEVEL  then
		self:ApplyBigAward(GetName())
	else
		nCount = CalcEquiproomItemCount(4,417,1,1)
		self:SendResult(ROTATE_SUCCESS, nCount, nNewType, nNewLevel)		
	end
end

function BingoMachine:ApplyBigAward(szName)
	local handle = OB_Create()
	ObjBuffer:PushObject(handle, szName)
	RemoteExecute("\\script\\event\\bingo_machine\\prize_pool.lua", 
		"PrizePool:GetBigAward", handle, "BingoMachine:RecvBigAward")
	OB_Release(handle)
end

function BingoMachine:RecvBigAward(nParam, nResultHandle)
	local szName = ObjBuffer:PopObject(nResultHandle)
	local nCoin = ObjBuffer:PopObject(nResultHandle)
	local nTotalCoin = ObjBuffer:PopObject(nResultHandle)
	if type(szName) ~= "string" or type(nCoin) ~= "number" then
		local strLogs = "" .. GetAccount().."\t"..GetName().."\tBingoMachine\RecvBigAward\t type error"			
		WriteLog(strLogs)
		return 
	end	
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex > 0 then
		
		CallPlayerFunction(nPlayerIndex, Gambler.SetBigAward, Gambler, nCoin)
		local strLogs = GetAccount().."\t"..GetName().."\tBingoMachine\tBitAward\t".. nCoin .. "\t" .. nTotalCoin
		WriteLog(strLogs)
		local nType, nLevel = CallPlayerFunction(nPlayerIndex, Gambler.GetResult, Gambler)
		local nCount = CalcEquiproomItemCount(4,417,1,1)
		self:SendResult(ROTATE_SUCCESS, nCount, nType, nLevel)
		Gambler:SetState(STATE_AWARD)
	else
		WriteLog(format("[bingo_machine] %s offline and Award Coin %d", szName, nCoin))
	end
end

function BingoMachine:GetCoin(szName)
	local handle = OB_Create()
	ObjBuffer:PushObject(handle, szName)
	RemoteExecute("\\script\\event\\bingo_machine\\prize_pool.lua", 
		"PrizePool:GetCoin", handle, "BingoMachine:SendCoin")
	OB_Release(handle)
end

function BingoMachine:SendCoin(nParam, nResultHandle)
	local szName = ObjBuffer:PopObject(nResultHandle)
	local nCoin = ObjBuffer:PopObject(nResultHandle)
	if type(szName) ~= "string" or type(nCoin) ~= "number" then
		return 
	end	

	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex > 0 then
		local nBigAward = CallPlayerFunction(nPlayerIndex, Gambler.GetBigAward, Gambler)
		local handle = OB_Create()
		
		ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nCoin)
		ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nBigAward)
		ScriptProtocol:SendData("emSCRIPT_PROTOCOL_BINGO_COIN", handle)
		OB_Release(handle)
	end
end

function BingoMachine:SendResult(nResult, nRefiningCount, nNewType, nNewLevel)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nResult)
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nRefiningCount)
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nNewType)
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nNewLevel)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_BINGO_MACHINE", handle)
	OB_Release(handle)
end

function BingoMachine:OnGetAward(nSelType)
	local nState = Gambler:GetState()
	if nState == STATE_ROTATE then
		self:SendGetAwardResult(S2C_GET_AWARD_ERR_OTHER, 0)
		return
	end
	local nFinalType, nFinalLevel = Gambler:GetFinalAward()
	if not AWARD_TYPE[nFinalType] then
		self:SendGetAwardResult(S2C_GET_AWARD_ERR_OTHER, 0)
		return
	end
	
	if nFinalLevel > 6 then
		nFinalLevel = 6
	end

	local nOdds = Gambler:GetOdds()
	local nCoin = Gambler:GetBigAward()
	local strAwardDesc = ""
	local strAward = ""
	if nSelType == 1 then -- œ‡”¶µ»º∂µƒΩ±¿¯
		-- ±≥∞¸ø’º‰ºÏ≤È
		local nWidth = tbBingoMachineAwardSpace[nFinalType].nWidth
		local nHeight = tbBingoMachineAwardSpace[nFinalType].nHeight
		local nCount = tbBingoMachineAward[nFinalType][1][nFinalLevel].nCount * ODDS2COIN[nOdds][1]
			
		if nWidth > 0 and nHeight > 0  then
			local nFreeItemCellLimit = tbBingoMachineAwardSpace[nFinalType].nFreeItemCellLimit * nCount

			if CountFreeRoomByWH(nWidth, nHeight) < nFreeItemCellLimit then
				-- ∑µªÿ±≥∞¸ø’º‰≤ª◊„
				self:SendGetAwardResult(S2C_GET_AWARD_ERR_NO_SPACE, 0)
				return
			end
		end
	
	  local tbAward = {tbProp=tbBingoMachineAward[nFinalType][1][nFinalLevel].tbProp}
	  --set award expired time if necessary - Modified By DinhHQ - 20120419
	  if tbBingoMachineAward[nFinalType][1][nFinalLevel].nExpiredTime then
	  	tbAward.nExpiredTime = tbBingoMachineAward[nFinalType][1][nFinalLevel].nExpiredTime
	  end
		PlayerFunLib:GetItem(tbAward,nCount,"","")
		strAwardDesc = nCount .. "c∏i" .. tbBingoMachineAward[nFinalType][1][nFinalLevel].szName
		strAward = "Equip\t" .. nCount .. "x" .. tbBingoMachineAward[nFinalType][1][nFinalLevel].szName
	  if nFinalType == 5 then -- ±¶œ‰
			local _,nTongID = GetTongName()
			if (nTongID ~= 0)then
				Msg2Tong(nTongID, format("Thµnh vi™n bang hÈi %s Phong V©n B∂o ßi÷n nhÀn Æ≠Óc mÈt b∂o r≠¨ng Æ˘ng Æ«y b∂o vÀt!", GetName()))
			end			
		end
	else  -- ªÏ‘™¡È¬∂
		local nCount = tbBingoMachineAward[nFinalType][2][nFinalLevel] * ODDS2COIN[nOdds][1]
		local nFreeItemCellLimit = ceil(nCount / 200)
		if nCoin > 0 then
			nFreeItemCellLimit = nFreeItemCellLimit + 1
		end
		if CountFreeRoomByWH(1, 1) < nFreeItemCellLimit then
			-- ∑µªÿ±≥∞¸ø’º‰≤ª◊„
			self:SendGetAwardResult(S2C_GET_AWARD_ERR_NO_SPACE, 0)
			return
		end
		local tbAward = {szName = "Ti“n ßÂng", tbProp = {4,417,1,1,0,0}}
		PlayerFunLib:GetItem(tbAward, nCount, "", "")
		strAwardDesc = nCount .. "Ti“n ßÂng"
		strAward = "Refining\t" .. nCount
	end

	local strLogs = GetAccount().."\t"..GetName().."\tBingoMachine\tGetAward\t".. strAward
	WriteLog(strLogs)
	
	if nCoin > 0 then
		local nItemIndex = AddItem(4,417,1,1,0,0);	
		SetSpecItemParam(nItemIndex, 1, nCoin)
		SyncItem(nItemIndex)	
		Say(format("Ng≠¨i nhÀn Æ≠Óc 1 L‘ Bao ch¯a %d Ti“n ßÂng!", nCoin), 0);			
		AddGlobalNews(format("Ng≠Íi ch¨i:  <color=green>%s<color> nhÀn Æ≠Óc %d Ti“n ßÂng trong Th∏i Kim Tr◊ cÒa Vﬂng Quay May Mæn !!!", GetName(), nCoin))
		Msg2SubWorld(format("Ng≠Íi ch¨i:  <color=green>%s<color> nhÀn Æ≠Óc %d Ti“n ßÂng trong Th∏i Kim Tr◊ cÒa Vﬂng Quay May Mæn !!!", GetName(), nCoin))
	end
	Gambler:SetBigAward(0)
	Gambler:SetState(STATE_NORMAL)
	Gambler:SetFinalAward(0, 0)
	local nCount = CalcEquiproomItemCount(4,417,1,1)
	self:SendGetAwardResult(S2C_GET_AWARD_SUCCESS, nCount)
end

function BingoMachine:SendGetAwardResult(nResult, nRefiningCount)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nResult)
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nRefiningCount)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_BINGO_GET_AWARD_RESULT", handle)
	OB_Release(handle)
end
function BingoMachine:Add2PrizePool(nCoin)
	local handle = OB_Create()
	ObjBuffer:PushObject(handle, nCoin)
	RemoteExecute("\\script\\event\\bingo_machine\\prize_pool.lua", 
		"PrizePool:AddCoin", handle)
	OB_Release(handle)
end

function OpenBingoMachine()
	local nCount = CalcEquiproomItemCount(4,417,1,1)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, Gambler:GetState())
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, Gambler:GetOdds())
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, Gambler:GetAword())
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, Gambler:GetCurAword())
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, Gambler:GetTime())
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nCount)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_BINGO_OPENWINDOW", handle)
	OB_Release(handle)
end
-- pEventType:Reg("L‘ Quan", "Phong V©n B∂o ßi÷n", OpenBingoMachine, {})
