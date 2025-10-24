---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2010\\config.lua")
Include("\\script\\activitysys\\config\\2010\\head.lua")
Include("\\script\\missions\\basemission\\lib.lua")

tbPoolCount = {
	--[100] = {nCount = 0, szName = "ÖïÏÉO?", nTotal = 0, },

}
tbBossPos =
{
	--[100] = {{1758,3011}, {1675,3053}},

}

--`í¼Ó»î¶¯NPC
function pActivity:AddInitNpc()
	local tbFarmerPos = {
		{100,1643,3145,},
		{153,1639,3187,},
		{174,1622,3202,},
	}
	local tbFarmer = {
		szName = "H»ng Nga", 
		szTitle = "<npc>´º`´µ½ÁË£¬Î?ÏëÔÚ´åÍâÔÙÖÖÐ©ÏÊ»¨",
		nLevel = 95,
		nNpcId = 1594,
		nIsboss = 0,
		szScriptPath = "\\script\\vng_event\\eventpgaming\\thang10\\npc_sukien.lua",
	}
	for _, tbTmpPos in tbFarmerPos do
		local nMapId, nPosX, nPosY = unpack(tbTmpPos)
		%basemission_CallNpc(tbFarmer, nMapId, nPosX*32, nPosY*32)	
	end
end
function pActivity:OnGetMuTong()
	--PlayerFunLib:GetItem({tbProp={6,1,2736,1,0,0},nBindState = -2,nExpiredTime=20500405,},1,"2011Ö²£÷½Ú£¬µAµ½Ä¾Í°")
	WriteLog(format("%s\tAccount:%s[Name:%s]µAµ½1¸öË®Í°.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName())
			);
end

--ÉÏ½»´ß¢óË®µÄÄ¾Í°
function pActivity:OnGiveMuTong()
	
	local nCount = 1 
	if not nCount or 0==nCount then
		print("ÄAµÄË®Í°£uÁ¿²»¶¤")
		return
	end
	--print("OnGiveMuTong")
	--print(nCount)
	
	if not PlayerFunLib:CheckItemInBag({tbProp={6,1,2737,1,0,0},},1,"¸Ï¿×¸øÎ?´ßË®È¥") then
		return
	end
	
	PlayerFunLib:ConsumeEquiproomItem({tbProp={6, 1, 2737, 1, 0, 0},},1)
	self:AddTaskDaily(%nTskIdx_DaylyGiveWater,nCount)
	self:GiveAward("mutong", nCount, "½»×°¢óË®µÄÍ°Á×È¡½±Æ·")
	
	local nTsk = self:GetTask(%nTskIdx_DaylyGiveWater)
	local nDaylyCount = nTsk - floor(nTsk/256) * 256
	WriteLog(format("%s\tAccount:%s[Name:%s] ½»[%d] ¸ö×°¢óË®µÄÍ°£¬½ñ`×»¹?ª¤ö¼Ó[%d] ¸ö.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName(),
				nCount,
				nDaylyCount)
			);
	
	--£u¾UÍ³¼Æ
	--if self:CheckTaskDaily(%nTskIdx_DaylyGiveWater,1,"","==") == 1 then
		--AddStatData("zhishujie_canyurenshu")
	--end
	--AddStatData("zhishujie_dashuicishu")
	
	--print(self:GetTask(%nTskIdx_DaylyGiveWater))
end

--ÉÏ½»Áó?û£¥Ë®
function pActivity:OnGiveLongYinShengShui(nCount)
	
	if not nCount or 0==nCount then
		print("´øµÄÁó?û£¥Ë®£uÁ¿²»¶¤")
		return
	end

	--print("OnGiveLongYinShengShui")
	--print(nCount)
	
	self:GiveAward("longyinshengshui", nCount, "½»Áó?û£¥Ë®µAµ½½±Æ·")

	if self:CheckTask(%nTskIdx_GiveLongYinShengShuiExp,%nMaxExpFromLongYinShengShui,"","<") then	
		local nAddExpBaseCount = %nPerExpFromLongYinShengShui * nCount
		local nExpCur = self:GetTask(%nTskIdx_GiveLongYinShengShuiExp)
		local nMaxExpAdd = %nMaxExpFromLongYinShengShui - nExpCur
		--Èç¹û¤ö¼ÓµÄ¾­ÑÐ³¬¹uÏ~ÖÆ£¬½Ø¶Ï´¦ÀU
		if nAddExpBaseCount > nMaxExpAdd then
			nAddExpBaseCount = nMaxExpAdd
		end
		
		local nExp = nAddExpBaseCount * %nExpBaseFromLongYinShengShui
		self:AddTask(%nTskIdx_GiveLongYinShengShuiExp, nAddExpBaseCount)
		PlayerFunLib:AddExp(nExp, 1, "½»Áó?û£¥Ë®µAµ½½±Æ·")
	end
	if self:CheckTask(%nTskIdx_GiveLongYinShengShuiExp,%nMaxExpFromLongYinShengShui,"",">=") then
		local szMsg = format("Ä·½»Áó?û£¥Ë®µAµ½µÄ¾­ÑÐ?Ñ´ïÉÏÏ~")
		Msg2Player(szMsg)
	end
	
	--£u¾UÍ³¼Æ
	--AddStatData("zhishujie_longyinshengshuicishu")
	
	self:AddTask(%nTskIdx_LastRecordDay, nCount)
	local nTotalCount = self:GetTask(%nTskIdx_LastRecordDay)
	WriteLog(format("%s\tAccount:%s[Name:%s] ½»[%d]Áó?û£¥Ë®£¬½ñ`×?»¹²¤ö¼ÓÁË[%d]¸ö.",
			GetLocalDate("%Y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			nCount,
			nTotalCount)
		);
	
	--print(self:GetTask(%nTskIdx_LastRecordDay))
	--print(self:GetTask(%nTskIdx_GiveLongYinShengShuiExp))
	
	--Í³¼Æ¸÷µØÍ¼Áó?û£¥Ë®£uÁ¿£¬ÅÐ¶Ï£Ç·ñÐ`?ªË¢boss
	self:_AddLongYinShengShuiStat(nCount)
end


--ÅÐ¶ÏÄ¾Í°µÄ×´`¬
function pActivity:CheckMuTong()
	local nCount1 = CalcItemCount(-1, 6, 1, 2736, -1)
	if nCount1 >= 1 then
		Msg2Player("Ä·?Ñ¾­ÓÐÄ¾Í°ÁË£¬²»ÄÜ¤ÙÁ×È¡ÁË")
		return 
	end
	local nCount2 = CalcItemCount(-1, 6, 1, 2737, -1)
	if nCount2 >= 1 then
		Msg2Player("Ä·?Ñ¾­ÓÐ×°¢óË®µÄÍ°ÁË£¬Íª³ÉÈÎÎñºa¤ÙÀ´Á×½±°É")
		return 
	end
	return 1
end

--ÅÐ¶Ï»î¶¯£±¼ä
function pActivity:CheckActivityTime()
	local nDate = tonumber(GetLocalDate("%Y%m%d"))
	if nDate < self.nStartDate/10000 then
		Msg2Player("Ö²£÷½Ú»î¶¯»¹A»ÓÐ¿ª£¼")
		return
	elseif nDate >= self.nEndDate/10000 then
		Msg2Player("Ö²£÷½Ú»î¶¯?Ñ¾­½¸£øÁË")
		return
	end
	return 1
end


function pActivity:_AddLongYinShengShuiStat(nCount)
	local nMapId, nX, nY = GetWorldPos()
	if nCount ~= nil then
		%tbPoolCount[nMapId].nCount = %tbPoolCount[nMapId].nCount + nCount
		%tbPoolCount[nMapId].nTotal = %tbPoolCount[nMapId].nTotal + nCount
	end
	
	--local szMsg = format("%s\t Í³¼ÆÁó?û£¥Ë®:map%d(%s)=%d"
	--	,GetLocalDate("%Y-%m-%d %H:%M:%S")
	--	,nMapId,%tbPoolCount[nMapId].szName, %tbPoolCount[nMapId].nTotal)
	--print(szMsg)
	
	if %tbPoolCount[nMapId].nCount >= %nCall_MuKe_LongYinShengShui_Count then
		self:_CallMuKeBoss(nMapId)
		%tbPoolCount[nMapId].nCount = %tbPoolCount[nMapId].nCount - %nCall_MuKe_LongYinShengShui_Count
	end
end

function pActivity:_CallMuKeBoss(nMapId)
	--local szInfo = format("Ä¾¿Í³öÏÖ¤Ú %s ´å×¯, ¿×È¥´ß°ÜËû", %tbPoolCount[nMapId].szName)
	--local nPosId = random(1,2)
	--local tbNpc = {
	--	szName = "Ä¾¿Í", 
	--	nLevel = 95,
	--	nMapId = nMapId,
	--	nPosX = %tbBossPos[nMapId][nPosId][1]*32,
	--	nPosY = %tbBossPos[nMapId][nPosId][2]*32,
	--	nNpcId = 1670,
	--	nIsboss = 1,
	--	szDeathScript = "\\script\\activitysys\\config\\28\\boss_muke_death.lua",
	--	pCallBack = %AddOnTime,
	--}
	%basemission_CallNpc(tbNpc)
	AddGlobalNews(szInfo)
	AddGlobalNews(szInfo)
	
	local szMsg = format("%s\tmap%d(%s)Í©Aæ(%d,%d) ³öÏÖboss [Ä¾¿Í], ´ËÇøÓß?Ñ¾­½»ÁË[%d]Áó?û£¥Ë®"
		, GetLocalDate("%Y-%m-%d %H:%M:%S")
		, nMapId, %tbPoolCount[nMapId].szName, tbNpc.nPosX, tbNpc.nPosY
		, %tbPoolCount[nMapId].nTotal)
	WriteLog(szMsg)
end

