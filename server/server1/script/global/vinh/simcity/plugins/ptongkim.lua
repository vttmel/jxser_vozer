IncludeLib("BATTLE")
--Include("\\script\\battles\\battlehead.lua")
--Include("\\script\\battles\\marshal\\head.lua")

SimCityTongKim = {

	playerInTK = {}

}

SimCityTongKim.RANKS = { "Binh S�", "Hi�u �y", "Th�ng L�nh", "Ph� T��ng", "��i T��ng", "Nguy�n So�i" }

SimCityTongKim.ITEM_DROPRATE_TABLE = {
	{ { 6, 1, 156, 1, 0, 0 }, { 0.003, 0.0200, 0.0520, 0.0400, 0.0500, 0.0600 } }, -- ս��
	{ { 6, 1, 157, 1, 0, 0 }, { 0.003, 0.0200, 0.0520, 0.0400, 0.0500, 0.0600 } }, -- ����
	{ { 6, 1, 158, 1, 0, 0 }, { 0.003, 0.0200, 0.0300, 0.0400, 0.0500, 0.0600 } }, -- �Ž�
	{ { 6, 1, 160, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0376, 0.0360 } }, -- ��֮ս��
	{ { 6, 1, 161, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0376, 0.0360 } }, -- ľ֮ս��
	{ { 6, 1, 162, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0376, 0.0360 } }, -- ˮ֮ս��
	{ { 6, 1, 163, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0376, 0.0360 } }, -- ��֮ս��
	{ { 6, 1, 164, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0376, 0.0360 } }, -- ��֮ս��
	{ { 6, 1, 165, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0376, 0.0120 } }, -- ��֮����
	{ { 6, 1, 166, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0376, 0.0120 } }, -- ľ֮����
	{ { 6, 1, 167, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0376, 0.0120 } }, -- ˮ֮����
	{ { 6, 1, 168, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0376, 0.0120 } }, -- ��֮����
	{ { 6, 1, 169, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0376, 0.0120 } }, -- ��֮����
	{ { 6, 1, 170, 1, 0, 0 }, { 0.002, 0.0360, 0.0180, 0.0390, 0.0140, 0.0360 } }, -- ��֮����
	{ { 6, 1, 171, 1, 0, 0 }, { 0.002, 0.0360, 0.0180, 0.0390, 0.0140, 0.0360 } }, -- ľ֮����
	{ { 6, 1, 172, 1, 0, 0 }, { 0.002, 0.0360, 0.0180, 0.0390, 0.0140, 0.0360 } }, -- ˮ֮����
	{ { 6, 1, 173, 1, 0, 0 }, { 0.002, 0.0360, 0.0180, 0.0390, 0.0140, 0.0360 } }, -- ��֮����
	{ { 6, 1, 174, 1, 0, 0 }, { 0.002, 0.0360, 0.0180, 0.0390, 0.0140, 0.0360 } }, -- ��֮����
	{ { 6, 1, 175, 1, 0, 0 }, { 0.002, 0.0200, 0.0400, 0.0390, 0.0140, 0.0120 } }, -- �о���
	{ { 6, 1, 176, 1, 0, 0 }, { 0.002, 0.0200, 0.0400, 0.0390, 0.0140, 0.0120 } }, -- С����
	{ { 6, 1, 177, 1, 0, 0 }, { 0.002, 0.0200, 0.0400, 0.0390, 0.0140, 0.0120 } }, -- �廨¶
	{ { 6, 1, 178, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר��������
	{ { 6, 1, 179, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר���ⶾ��
	{ { 6, 1, 180, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר�������
	{ { 6, 1, 181, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר��������
	{ { 6, 1, 182, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר���ڶ���
	{ { 6, 1, 183, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר���ڱ���
	{ { 6, 1, 184, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר���ڻ���
	{ { 6, 1, 185, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר���ڵ���
	{ { 6, 1, 186, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר�ó�����
	{ { 6, 1, 187, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר�ü�����
	{ { 6, 1, 188, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר�ø�����
	{ { 6, 1, 189, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר�ø�����
	{ { 6, 1, 190, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר�÷�����
	{ { 6, 1, 191, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר���շ���
	{ { 6, 1, 192, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר�ñ�����
	{ { 6, 1, 193, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר���׷���
	{ { 6, 1, 194, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר�û����
	{ { 6, 1, 195, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- �ν�ר�ö�����
	{ { 6, 1, 207, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0360 } }, -- ����֮ѥ
	{ { 6, 1, 209, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0360 } }, -- �׾Ի���
	{ { 6, 1, 210, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, -- ����֮��
	{ { 6, 1, 211, 1, 0, 0 }, { 0.002, 0.0200, 0.0130, 0.0160, 0.0140, 0.0120 } }, -- �ʺ�
	{ { 6, 1, 208, 1, 0, 0 }, { 0.002, 0.0200, 0.0180, 0.0160, 0.0140, 0.0120 } }, --����֮��
	{ { 6, 1, 212, 1, 0, 0 }, { 0.003, 0.0200, 0.0150, 0.0200, 0.0200, 0.0200 } }, --�Ÿ�
	{ { 6, 1, 214, 1, 0, 0 }, { 0.003, 0.0200, 0.0520, 0.0200, 0.0200, 0.0200 } }, --����֮��
}

SimCityTongKim.NPC_RANK_DROPRATE_TABLE = { 1, 1, 2, 3, 4, 5 }

function SimCityTongKim:OnDeath(nNpcIndex, currank, attackerIndex)
	State = GetMissionV(MS_STATE)
	if (State ~= 2) then
		return
	end

	if (PlayerIndex == nil or PlayerIndex == 0) then
		return
	end

	local DeathName = GetNpcName(nNpcIndex)
	self:dropItem(nNpcIndex, currank, PlayerIndex)
	local launchrank = BT_GetData(PL_CURRANK)

	LaunName = GetName();
	--����ɱNpc��Ŀ�����а�
	BT_SetData(PL_KILLPLAYER, BT_GetData(PL_KILLPLAYER) + 1) --��¼���ɱ������ҵ�����
	serieskill = BT_GetData(PL_SERIESKILL) + 1
	BT_SetData(PL_SERIESKILL, serieskill)                 --��¼��ҵ�ǰ����ն��

	if (TAB_SERIESKILL[launchrank] and TAB_SERIESKILL[launchrank][currank] == 1) then
		serieskill_r = GetTask(TV_SERIESKILL_REALY)
		serieskill_r = serieskill_r + 1
		SetTask(TV_SERIESKILL_REALY, serieskill_r)

		if (mod(serieskill_r, 3) == 0) then
			if (deathcamp == 1) then
				local npoint = bt_addtotalpoint(BT_GetTypeBonus(PL_MAXSERIESKILL, 2)) or 0
				mar_addmissionpoint(BT_GetTypeBonus(PL_MAXSERIESKILL, 2))
				Msg2Player("<color=yellow> b�n nh�n ���c �i�m t�ch l�y Li�n tr�m " .. npoint)
			else
				local npoint = bt_addtotalpoint(BT_GetTypeBonus(PL_MAXSERIESKILL, 1)) or 0
				mar_addmissionpoint(BT_GetTypeBonus(PL_MAXSERIESKILL, 1))
				Msg2Player("<color=yellow> b�n nh�n ���c �i�m t�ch l�y Li�n tr�m " .. npoint)
			end
		end
	end
	if (BT_GetData(PL_MAXSERIESKILL) < serieskill) then
		BT_SetData(PL_MAXSERIESKILL, serieskill) -- ͳ����ҵ������ն��
	end

	local rankradio = 1;

	if (RANK_PKBONUS[launchrank] == nil or RANK_PKBONUS[launchrank][currank] == nil) then
		rankradio = 1
		return 1
	else
		rankradio = RANK_PKBONUS[launchrank][currank]
	end
	local earnbonus = 0
	earnbonus = floor(BT_GetTypeBonus(PL_KILLPLAYER, 1) * rankradio)
	pointplayer = bt_addtotalpoint(earnbonus) or 0
	mar_addmissionpoint(earnbonus)
	Msg2Player("<color=yellow> B�n h� g�c ��i ph��ng nh�n v� nh�n d��c <color>" ..
		pointplayer .. " <color=yellow>�i�m t�ch l�y ")

	local rankname = "";
	rankname = tbRANKNAME[currank]
	launchrank = BT_GetData(PL_CURRANK)
	launrankname = tbRANKNAME[launchrank]

	BT_SortLadder();
	BT_BroadSelf();

	str = "Ng��i ch�i " ..
		launrankname ..
		" " .. LaunName .. " h� tr�ng th��ng " .. DeathName .. ", t�ng PK l� " .. BT_GetData(PL_KILLPLAYER);

	Msg2Player("<color=cyan> Ch�c m�ng! B�n �� h� ���c: " .. DeathName .. ", T�ng PK l� " .. BT_GetData(PL_KILLPLAYER))
	Msg2MSAll(MISSIONID, str);


	local nW, nX, nY = CallPlayerFunction(PlayerIndex, GetWorldPos)
	if not self.playerInTK[nW] then
		self.playerInTK[nW] = {}
	end
	self.playerInTK[nW][PlayerIndex] = {
		phe = "T",
		rank = launrankname,
		score = BT_GetData(PL_TOTALPOINT),
		name = LaunName
	}
end;

function SimCityTongKim:dropItem(nNpcIndex, nNpcRank, nBelongPlayerIdx)
	local nItemCount = getn(self.ITEM_DROPRATE_TABLE);
	local nMpsX, nMpsY, nSubWorldIdx = GetNpcPos(nNpcIndex);

	for nDropTimes = 1, self.NPC_RANK_DROPRATE_TABLE[nNpcRank] do
		local nRandNum = random();
		local nSum = 0;
		for i = 1, nItemCount do
			nSum = nSum + self.ITEM_DROPRATE_TABLE[i][2][nNpcRank];
			if (nSum > nRandNum) then
				DropItem(nSubWorldIdx, nMpsX, nMpsY, nBelongPlayerIdx, self.ITEM_DROPRATE_TABLE[i][1][1],
					self.ITEM_DROPRATE_TABLE[i][1][2], self.ITEM_DROPRATE_TABLE[i][1][3],
					self.ITEM_DROPRATE_TABLE[i][1][4], self.ITEM_DROPRATE_TABLE[i][1][5],
					self.ITEM_DROPRATE_TABLE[i][1][6], self.ITEM_DROPRATE_TABLE[i][1][7]);
				break
			end
		end
	end
end

function SimCityTongKim:announceRank(nW, name, newRank)
	Msg2Map(nW, "<color=white>" .. name .. "<color> th�ng c�p <color=yellow>" .. self.RANKS[newRank] .. "<color>")
end

function SimCityTongKim:updateRank(fighter)
	local newRank = 1
	if fighter.fightingScore > 2000 then
		newRank = 2
	end
	if fighter.fightingScore > 5000 then
		newRank = 3
	end
	if fighter.fightingScore > 10000 then
		newRank = 4
	end
	if fighter.fightingScore > 15000 then
		newRank = 5
	end
	if fighter.fightingScore > 20000 then
		newRank = 6
	end

	if (fighter.rank ~= newRank) then
		if newRank > fighter.rank and SearchPlayer(fighter.playerID) == 0 then
			local worldInfo = SimCityWorld:Get(fighter.nMapId)
			if worldInfo.showThangCap == 1 then
				self:announceRank(fighter.nMapId, fighter.hardsetName or SimCityNPCInfo:getName(fighter.nNpcId),
					newRank)
			end
		end
		fighter.rank = newRank
	end
end



function SimCityTongKim:runTongKim(level)
	RemoteExc("\\script\\simcity.lua", "Mo_TongKim", {level})
end

function SimCityTongKim:showBaoDanhTongKim(nW)
	
	local tbSay = createTaskSayChienTranh(nW, "")

	tinsert(tbSay, "M� T�ng Kim s� c�p/#SimCityTongKim:runTongKim(1)")
	tinsert(tbSay, "M� T�ng Kim trung c�p/#SimCityTongKim:runTongKim(2)")
	tinsert(tbSay, "M� T�ng Kim cao c�p/#SimCityTongKim:runTongKim(3)")

	tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
	return 1

end

function SimCityTongKim:mainMenu()
	local nW, nX, nY = GetWorldPos()
	SimCityChienTranh.nW = nW

	if nW == 323 or nW == 324 or nW == 325 then
		self:showBaoDanhTongKim(nW)
	else
		SimCityChienTranh:mainMenu()
	end
	return 1
end


-- Empty function for older Simcity version
function SimCityTongKim:addTongKimNpc()
end

function SimCityTongKim:addTongKimNpcByPlayer(pId)
	PlayerIndex = pId
	local pW, pX, pY = GetWorldPos()
	local worldInfo = SimCityWorld:Get(pW)

	-- Determine camp
	local myCamp = GetCurCamp() 
	local camp1X, camp1Y, camp2X, camp2Y = 0, 0, 0, 0
	local id
	if (myCamp == 1) then
		camp1X = pX
		camp1Y = pY
		id = AddNpc(103, 1, SubWorldID2Idx(pW), (pX+random(-2,2))*32, (pY+random(-2,2))*32, 1, "V� K�")
	else 
		camp2X = pX
		camp2Y = pY
		id = AddNpc(1617, 1, SubWorldID2Idx(pW), (pX+random(-2,2))*32, (pY+random(-2,2))*32, 1, "Tri�u M�n")		
	end
	if id > 0 then
		SetNpcScript(id, "\\script\\global\\vinh\\simcity\\controllers\\tongkim.lua")
	end

	-- Find the nodes
	if worldInfo.nodes then

		local furthestDist = 0
		for k,v in worldInfo.nodes do
			local dist = GetDistanceRadius(v.x, v.y, pX, pY)
			if dist > furthestDist then
				furthestDist = dist
				furthestNode = v
			end
		end

		if (myCamp == 1) then
			camp2X = furthestNode.x
			camp2Y = furthestNode.y
		else 
			camp1X = furthestNode.x
			camp1Y = furthestNode.y
		end		
	end

	-- Finally set it
	worldInfo.camp2TopRight = 0
	if (camp2X ~= 0) and (camp2Y ~= 0) and (camp2X > camp1X) and (camp2Y < camp1Y) then
		worldInfo.camp2TopRight = 1
	end

	worldInfo.camp1X = camp1X
	worldInfo.camp1Y = camp1Y
	worldInfo.camp2X = camp2X
	worldInfo.camp2Y = camp2Y
	local result = SimCityGraphToChienTranh:build(worldInfo, 32) 
	 

	-- Auto added?
	if (result ~= 0) then
		local counter = SimCityChienTranh:countMap(pW)
		
		if STARTUP_AUTOADD_THANHTHI == 1 and counter == 0 then
			SimCityChienTranh:nv_tudo(1)
			SimCityChienTranh:nv_tudo(1)
		end

		-- Add hau doanh
		SimCityChienTranh:taoHauDoanh(1)		
	end
end

function SimCityTongKim:addTongKimOpenNpc()

	local pW, pX, pY = GetWorldPos()
	local id	
	id = AddNpc(1617, 1, SubWorldID2Idx(pW), (pX+random(-2,2))*32, (pY+random(-2,2))*32, 1, "Tri�u M�n")		
	if id > 0 then
		SetNpcScript(id, "\\script\\global\\vinh\\simcity\\controllers\\tongkim.lua")
	end
end

function SimCityTongKim:onPlayerEnterMap(pW)
  	local isBaoDanh = 0 
	if pW == 323 or pW == 324 or pW == 325 then
		isBaoDanh = 1
	end

	-- Check if there is a Trieu Man or Vo Ky in the map
	local fighterList = GetAroundNpcList(isBaoDanh and 32 or 50)

	local tmpFound
	local nNpcIdx
	local didRemove = 0

	for i = 1, getn(fighterList) do
		nNpcIdx = fighterList[i]
		local script = GetNpcScript(nNpcIdx)
		local kind = GetNpcKind(nNpcIdx)

		-- Neu da add roi thi xoa di
		if kind == 3 and script == "\\script\\global\\vinh\\simcity\\controllers\\tongkim.lua" then
			DelNpcSafe(nNpcIdx)
			didRemove = 1
		end

		if kind == 3 then
			if strfind(script, "transport.lua") or strfind(script, "doctor.lua") or strfind(script, "openbox.lua") then
				tmpFound = nNpcIdx
			end
		end
	end

	-- Neu la dia diem bao danh thi them vao Trieu Man va Vo Ky
	if isBaoDanh == 1 then
		return SimCityTongKim:addTongKimOpenNpc()
	end
	
	-- Neu tim thay Quan Nhu Quan thi them vao Trieu Man va Vo Ky
	if tmpFound then
		if didRemove == 0 then
			SimCityChienTranh:removeAll(pW)
		end
		AddTimer(18*2, "SimCityTongKim:addTongKimNpcByPlayer", PlayerIndex)
	end

end

