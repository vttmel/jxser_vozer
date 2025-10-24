IncludeLib("NPCINFO")
Include("\\script\\lib\\string.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\task\\killmonster\\killmonster.lua")
Include("\\script\\missions\\boss\\bigboss.lua");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\refining_iron\\head.lua")
Include("\\script\\activitysys\\config\\32\\killdailytask.lua")
--tinhpn 20100706: Vo Lam Minh Chu
Include("\\script\\bonusvlmc\\killmonster.lua")
Include("\\script\\activitysys\\functionlib.lua")

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\misc\\eventsys\\eventsys.lua")


function OnGlobalNpcDeath(nNpcIndex, nAttackerIndex, param3, param4, param5)

 	local found = vinh_OnGlobalNpcDeath(nNpcIndex, nAttackerIndex)

	if PlayerIndex and PlayerIndex > 0 then

		local szNpcName = GetNpcName(nNpcIndex)
		if NpcName2Replace then
			szNpcName = NpcName2Replace(szNpcName)
		end
		EventSys:GetType("NpcDeath"):OnEvent(szNpcName, nNpcIndex, nAttackerIndex, PlayerIndex)


		local nTeamSize = GetTeamSize()
		if nTeamSize > 0 then
			for i=1, nTeamSize do
				local nPlayerIndex = GetTeamMember(i)
				if found[nPlayerIndex] == nil then
					lib:DoFunByPlayer(nPlayerIndex, tbKillMonster.KillMonster, tbKillMonster, nNpcIndex)
				end
			end
		else
			tbKillMonster:KillMonster(nNpcIndex)
		end
		tbKillDailyTask:OnKillMonster(nNpcIndex)		
		G_ACTIVITY:OnMessage("NpcOnDeath", nNpcIndex)
		G_TASK:OnMessage("Thóy Yªn", nNpcIndex, "KillNpc")
		G_TASK:OnMessage("Nga Mi", nNpcIndex, "KillNpc")
		G_TASK:OnMessage("§­êng M«n", nNpcIndex, "KillNpc")
		G_TASK:OnMessage("C¸i Bang", nNpcIndex, "KillNpc")
		G_TASK:OnMessage("Ngò §éc", nNpcIndex, "KillNpc")
		G_TASK:OnMessage("Thiªn NhÉn", nNpcIndex, "KillNpc")
		G_TASK:OnMessage("ThiÕu L©m", nNpcIndex, "KillNpc")
		G_TASK:OnMessage("Vâ §ang", nNpcIndex, "KillNpc")
		G_TASK:OnMessage("Thiªn V­¬ng", nNpcIndex, "KillNpc")
		G_TASK:OnMessage("C«n L«n", nNpcIndex, "KillNpc")
		DynamicExecute("\\script\\missions\\tianchimijing\\floor4\\bossdeath.lua", "OnDeath", nNpcIndex, PlayerIndex)
		-- ´³¹Øµ÷Õû 2011.03.03
		DynamicExecute("\\script\\missions\\challengeoftime\\chuangguang30.lua", "ChuangGuan30:OnNpcDeath", nNpcIndex, PlayerIndex)
		-- ×ªÉú4¹ÖÎïËÀÍöµôÂäÅùö¨µ¯
		DynamicExecute("\\script\\task\\metempsychosis\\npcdeath_translife_4.lua", "OnNpcDeath", nNpcIndex, PlayerIndex)
		
		-- Á¶½ð»î¶¯µôÂä
		if NpcFunLib:CheckBoatBoss(nNpcIndex) == 1 and tbRefiningIron:IsCarryOn() == 1 then
			tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, {tbProp={6,1, 2293, 1,0,0,},nExpiredTime=tbRefiningIron.nCloseDate,}, "Thñy tÆc ®Çu lÜnh r¬i ë ho¹t ®éng luyÖn kim", 1)
		end
		
		if (DynamicExecute("\\script\\event\\jiefang_jieri\\201004\\main.lua", "FreedomEvent2010:IsActive1") == 1) then
			DynamicExecute("\\script\\event\\jiefang_jieri\\201004\\soldier\\main.lua", "Soldier2010:MonsterDrop", nNpcIndex, PlayerIndex);
		end
		-- »îÔ¾¶ÈÊÀ½çÊ®´óboss
		DynamicExecute("\\script\\huoyuedu\\worldtop10.lua", "checkworldtop10", nNpcIndex, PlayerIndex)
	end
end



function vCalcExp(Level, Param1, Param2)
	result = Param2 * Level + Param1;
	return result;
end;

function vGetNpcExp(Level)
	if (Level <= 10) then
		DataPara1 = 40
		DataPara2 = 5
		return vCalcExp(Level, DataPara1, DataPara2)
	end;

	if (Level <= 20) then
		DataPara1 = 120
		DataPara2 = 5
		return vCalcExp(Level - 10, DataPara1, DataPara2)
	end;

	if (Level <= 30) then
		DataPara1 = 240
		DataPara2 = 5
		return vCalcExp(Level - 20, DataPara1, DataPara2)
	end;

	if (Level <= 40) then
		DataPara1 = 360
		DataPara2 = 5
		return vCalcExp(Level - 30, DataPara1, DataPara2)
	end;

	if (Level <= 50) then
		DataPara1 = 480
		DataPara2 = 5
		return vCalcExp(Level - 40, DataPara1, DataPara2)
	end;

	if (Level <= 60) then
		DataPara1 = 600
		DataPara2 = 5
		return vCalcExp(Level - 50, DataPara1, DataPara2)
	end;

	if (Level <= 70) then
		DataPara1 = 720
		DataPara2 = 5
		return vCalcExp(Level - 60, DataPara1, DataPara2)
	end;

	if (Level <= 80) then
		DataPara1 = 800
		DataPara2 = 5
		return vCalcExp(Level - 70, DataPara1, DataPara2)
	end;

	if (Level <= 90) then
		DataPara1 = 900
		DataPara2 = 5
		return vCalcExp(Level - 80, DataPara1, DataPara2)
	end;


	DataPara1 = 1000
	DataPara2 = 5
	return vCalcExp(Level - 90, DataPara1, DataPara2)
end;


function vinh_OnGlobalNpcDeath(nNpcIndex, nAttackerIndex)
	local found = {}
	local npcType = GetNpcPowerType(nNpcIndex)

	-- Neu la SimCity bi chet thi dung rot gi ca
	local param4 = GetNpcParam(nNpcIndex, 4)
	if param4 and (param4 == 1 or param4 == 2) then
		return 1
	end

	-- Them diem cho Thanh Vien Bang dung gan
	if PlayerIndex and PlayerIndex > 0 then		

		local npcLevel = NPCINFO_GetLevel(nNpcIndex)
		local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
		local myTong = GetTong()
		found[PlayerIndex] = true
		for i = 1, nCount do
			local nPlayerIndex = tbRoundPlayer[i]
			if nPlayerIndex ~= PlayerIndex then
				local nPlayerTong = CallPlayerFunction(nPlayerIndex, GetTong)
				if nPlayerTong == myTong then
					local nPlayerLevel = CallPlayerFunction(nPlayerIndex, GetLevel)
					local rate = 1 + (nPlayerLevel - (10 * floor(nPlayerLevel / 10))) / 10

					if not npcType and (npcType > 1) then
						rate = rate * random(4,10)
					end
					local AddExpAmount = vGetNpcExp(min(npcLevel, nPlayerLevel))

					lib:DoFunByPlayer(nPlayerIndex, tbKillMonster.KillMonster, tbKillMonster, nNpcIndex)
					CallPlayerFunction(nPlayerIndex, AddOwnExp, floor(AddExpAmount * rate))

					found[nPlayerIndex] = true
				end
			end
		end
		return found
	end

	-- Keoxe: them EXP
	local npcLevel = NPCINFO_GetLevel(nNpcIndex)
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 10);
	for i = 1, nCount do
		local nPlayerIndex = tbRoundPlayer[i]
		if (not found[nPlayerIndex]) then
			local nPlayerLevel = CallPlayerFunction(nPlayerIndex, GetLevel)
			local rate = 1 + (nPlayerLevel - (10 * floor(nPlayerLevel / 10))) / 10
			if not npcType and (npcType > 1) then
				rate = rate * random(4,10)
			end
			local AddExpAmount = vGetNpcExp(min(npcLevel, nPlayerLevel))
			lib:DoFunByPlayer(nPlayerIndex, tbKillMonster.KillMonster, tbKillMonster, nNpcIndex)
			CallPlayerFunction(nPlayerIndex, AddOwnExp, floor(AddExpAmount * rate))
			found[nPlayerIndex] = true
		end
	end

	-- Keoxe: them tien + vat pham
	local _, _, nMapIndex = GetNpcPos(nNpcIndex)
	local mapDropFile = GetMapDropRateFile(nMapIndex)
	local npcLevel = 10*floor(NPCINFO_GetLevel(nNpcIndex) / 10)
	local levelDropFile = format("\\settings\\droprate\\npcdroprate%d.ini", npcLevel)
	local npcDropFile = GetNpcDropRateFile(nNpcIndex)
	local finalDropFile

	-- Map as priority
	if mapDropFile then
		finalDropFile = mapDropFile
	elseif levelDropFile then
		finalDropFile = levelDropFile
	else
		finalDropFile = npcDropFile
	end

	local rate = random(1,10)
	if (npcType > 1) then
		rate = random((npcType+0)*100, (npcType+1)*100)
	end

	if finalDropFile then
		ITEM_DropRateItem(nNpcIndex, rate, finalDropFile, 1, 100, GetNpcSeries(nNpcIndex));
	end

	
	return found
end
