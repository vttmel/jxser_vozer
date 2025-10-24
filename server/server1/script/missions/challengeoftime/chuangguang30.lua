Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\misc\\eventsys\\eventsys.lua")
Include("\\script\\missions\\challengeoftime\\npc.lua")
Include("\\script\\missions\\challengeoftime\\include.lua")

Include("\\script\\item\\heart_head.lua")
Include("\\script\\item\\forbiditem.lua")

Include("\\script\\activitysys\\g_activity.lua")

ChuangGuan30 = 
{
	tbGroup = {},
	tbPlayer = {},
	tbRegist = {},
	tbMapList = {[CHUANGGUAN30_MAP_ID] = 1,},
	nCount = 0,
	bActive = 0,
	nChuangguan30Timeid = nil
} 

ChuangGuan30.tbForbitItemType =
{
	"TRANSFER","MATE"
}
ChuangGuan30.szMapType = "MËt Phßng cöa ¶i"

--Drop Item when kill final boss - Modified By DinhHQ - 20120312
--Give message to all player in map about the lucky award - Modifed by DinhHQ - 20110510
function AnnounceLuckyAward(strAwardName)		
	local strMsg = format("Tæ ®éi cña <color=yellow>%s<color> ®· tiªu diÖt thµnh c«ng boss %s, giµnh ®­îc phÇn th­ëng ®Æc biÖt lµ <color=yellow>%s<color>", GetName(), "trong MËt Phßng Cöa ¶i", strAwardName)
	Msg2Team(strMsg)			
	Msg2SubWorld(strMsg)
	AddGlobalNews(strMsg)	
end
tbVnItemAwardEx = {
	[1]={{szName="§å Phæ Kim ¤ Kh«i",tbProp={6,1,2982,1,0,0},nCount=1,nRate=0.5},},
	[2]={{szName="§å Phæ Kim ¤ Y",tbProp={6,1,2983,1,0,0},nCount=1,nRate=0.5},},
	[3]={{szName="§å Phæ Kim ¤ Hµi",tbProp={6,1,2984,1,0,0},nCount=1,nRate=0.5},},
	[4]={{szName="§å Phæ Kim ¤ Yªu §¸i",tbProp={6,1,2985,1,0,0},nCount=1,nRate=0.5},},
	[5]={{szName="§å Phæ Kim ¤ Hé UyÓn",tbProp={6,1,2986,1,0,0},nCount=1,nRate=0.5},},
	[6]={{szName="§å Phæ Kim ¤ H¹ng Liªn",tbProp={6,1,2987,1,0,0},nCount=1,nRate=0.5},},
	[7]={{szName="§å Phæ Kim ¤ Béi",tbProp={6,1,2988,1,0,0},nCount=1,nRate=0.5},},
	[8]={{szName="§å Phæ Kim ¤ Th­îng Giíi",tbProp={6,1,2989,1,0,0},nCount=1,nRate=0.3},},
	[9]={{szName="§å Phæ Kim ¤ H¹ Giíi",tbProp={6,1,2990,1,0,0},nCount=1,nRate=0.3},},
	[10]={{szName="§å Phæ Kim ¤ KhÝ Giíi",tbProp={6,1,2991,1,0,0},nCount=1,nRate=0.2},},
	[11]={{szName="Kim ¤ LÖnh",tbProp={6,1,2349,1,0,0},nCount=1,nRate=0.2},},
	[12]={{szName="B¶o R­¬ng Kim ¤ Kh«i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate=0.01, CallBack = function(nItemIdx, nPlayerIdx)AnnounceLuckyAward("B¶o R­¬ng Kim ¤ Kh«i") end},},
	[13]={{szName="B¶o R­¬ng Kim ¤ Th­îng Giíi",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.013, CallBack = function(nItemIdx, nPlayerIdx)AnnounceLuckyAward("B¶o R­¬ng Kim ¤ Th­îng Giíi") end},},
	[14]={{szName="B¶o R­¬ng Kim ¤ Hµi",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.01, CallBack = function(nItemIdx, nPlayerIdx)AnnounceLuckyAward("B¶o R­¬ng Kim ¤ Hµi") end},},
	[15]={{szName="B¶o R­¬ng Kim ¤ Yªu §¸i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.0125, CallBack = function(nItemIdx, nPlayerIdx)AnnounceLuckyAward("B¶o R­¬ng Kim ¤ Yªu §¸i") end},},
	[16]={{szName="B¶o R­¬ng Kim ¤ Hé UyÓn",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.008, CallBack = function(nItemIdx, nPlayerIdx)AnnounceLuckyAward("B¶o R­¬ng Kim ¤ Hé UyÓn") end},},
	[17]={{szName="§å Phæ B¹ch Hæ Kh«i",tbProp={6,1,3173,1,0,0},nCount=1,nRate=0.2},},
	[18]={{szName="§å Phæ B¹ch Hæ Béi",tbProp={6,1,3179,1,0,0},nCount=1,nRate=0.2},},
	[19]={{szName="B¹ch Hæ LÖnh",tbProp={6,1,2357,1,0,0},nCount=1,nRate=0.05},},
	[20]={{szName="Long HuyÕt Hoµn",tbProp={6,1,2117,1,0,0},nCount=1,nRate=3,nExpiredTime=20160},},
	[21]={{szName="S¸t Thñ Gi¶n lÔ hép",tbProp={6,1,2339,1,0,0},nCount=1,nRate=5,nExpiredTime=10080},},
	[22]={{szName="§¹i lùc hoµn lÔ bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=8,nExpiredTime=20160},},
	[23]={{szName="Thiªn Long LÖnh",tbProp={6,1,2256,1,0,0},nCount=1,nRate=7.5},},
}

function ChuangGuan30:Init()
	self.tbGroup = {}
	self.tbPlayer = {}
	self.tbRegist = {}
	self.bActive = 0
end

function ChuangGuan30:Regist(szType, pFun, ...)
	local nRegId = EventSys:GetType(szType):Reg(CHUANGGUAN30_MAP_ID, pFun, unpack(arg))
	self.tbRegist[szType] = self.tbRegist[szType] or {}
	tinsert(self.tbRegist[szType], nRegId)
end

function ChuangGuan30:RegistAll()
	self:Regist("EnterMap", self.OnEnterMap, self)
	self:Regist("LeaveMap", self.OnLeaveMap, self)
end

function ChuangGuan30:Unregist()
	if self.tbRegist then
		for szType, tbId in self.tbRegist do
			for i=1, getn(tbId) do
				EventSys:GetType(szType):UnReg(CHUANGGUAN30_MAP_ID, tbId[i])
			end
		end
	end
end

function ChuangGuan30:SetState()
	SetTaskTemp(200,1)
	SetFightState(0)
	SetLogoutRV(1)
	SetPunish(0)
--Cho phÐp tæ ®éi trong map 30 - Modified by DinhHQ - 20110508
	SetCreateTeam(1)
	SetPKFlag(1)
	ForbidChangePK(1)
	DisabledUseTownP(1)
	ForbidEnmity(1)
end

function ChuangGuan30:OnEnterMap()
	if self.bActive == 1 then
		self.KickOut()
	end

	local nMapId = GetTask(PLAYER_MAP_TASK)
	local szName = GetName()
	self.tbGroup[nMapId] = self.tbGroup[nMapId] or {}
	tinsert(self.tbGroup[nMapId],szName)
	self.tbPlayer = self.tbPlayer or {}
	self.tbPlayer[szName] = 1
	self.nCount = self.nCount + 1
	SetDeathScript("\\script\\missions\\challengeoftime\\chuangguang30.lua")
	WriteLog("TiÕn vµo b¶n ®å, ng­êi ch¬i lµ" .. szName)
	SetTmpCamp(nMapId) -- ÉèÖÃplayerµÄÕóÓª
	self:SetState()
end
--Add exp award - Modified By DinhHQ - 20120313
function ChuangGuan30:GiveAward(nGroupId, nCount)
	if GetTask(PLAYER_MAP_TASK) == nGroupId then
		local tbPro = {			
			{szName="§iÓm Kinh NghiÖm",nExp = 10e6},
		}
		tbAwardTemplet:GiveAwardByList(tbPro, "jixuchuangguang award", 1)
		tbAwardTemplet:GiveAwardByList(tbVnItemAwardEx, "jixuchuangguang item award", 1)
	end
end

function ChuangGuan30:KickOut()
	SetLogoutRV(0)
	NewWorld(11,3207,4978)
end

function ChuangGuan30:OnLeaveMap()
	local szName = GetName()
	self.tbPlayer[szName] = 0
	self.nCount = self.nCount - 1
	SetCurCamp(GetCamp())
	SetTmpCamp(0)
	SetTaskTemp(200,0)
	SetFightState(0)
	SetPunish(1)
	SetCreateTeam(1)
	SetPKFlag(0)
	ForbidChangePK(0)
	SetTask(PLAYER_MAP_TASK,0)
	SetDeathScript("")
	ForbidEnmity(0)
	
end

function OnDeath(nPlayerIndex)
	ChuangGuan30:KickOut()
end
function ChuangGuan30:OnNpcDeath(nNpcIndex, nPlayerIndex)
	local _,_, nMapIndex = GetNpcPos(nNpcIndex)
	local nMapId = SubWorldIdx2ID(nMapIndex)
	if nMapId ~= CHUANGGUAN30_MAP_ID then
		return 
	end
	local nNpcId = GetNpcSettingIdx(nNpcIndex)
	if nNpcId < map_new_Ncp[2].nNpcId and nNpcId > map_new_Ncp[11].nNpcId then
		return 
	end

	local nGroup = CallPlayerFunction(nPlayerIndex, GetTask, PLAYER_MAP_TASK)
	local nMemberNumber = 0
	local nCount = AWARD_COUNT	

	for _, szName in(self.tbGroup[nGroup]) do
		if self.tbPlayer[szName] == 1 then
			local nPlayerIndex = SearchPlayer(szName)
			if nPlayerIndex > 0 then
				local nNowCount = random(0, nCount)
				if nMemberNumber == 1 then
					nNowCount = nCount
				end
				--CallPlayerFunction(nPlayerIndex, self.GiveAward, self, nGroup, nNowCount)
				CallPlayerFunction(nPlayerIndex, self.GiveAward, self, nGroup, 2)
			
				nCount = nCount - nNowCount	
				nMemberNumber = nMemberNumber - 1
			end
		end
	end
	
	self:OnMessage(nGroup)
	self:KickOutAll()
end


function ChuangGuan30:OnMessage(nGroup)
	local tbAllPlayer = {}
	local batch = 30
	local n_level = 1
	for _, szName in(self.tbGroup[nGroup]) do
		if self.tbPlayer[szName] == 1 then
			local nPlayerIndex = SearchPlayer(szName)
			if nPlayerIndex > 0 then
				tbAllPlayer[getn(tbAllPlayer)+1] = nPlayerIndex;
			end
		end
	end
	G_ACTIVITY:OnMessage("Chuanguan", batch, tbAllPlayer, n_level);
end

function ChuangGuan30:KickOutAll()
	for szName, bFlag in self.tbPlayer do
		if bFlag == 1 then
			local nPlayerIndex = SearchPlayer(szName)
			CallPlayerFunction(nPlayerIndex, self.KickOut, self)
		end
	end
	self.bActive = 0
	self.tbGroup = {}
end

function ChuangGuan30:OnAddBoss()
	local nBossid = random(2,11)
	local szFile = "\\settings\\maps\\liandandong\\npc_3.txt"
	local x,y = get_file_pos(szFile, random(2,50), 1)
	basemission_CallNpc(map_new_Ncp[nBossid], CHUANGGUAN30_MAP_ID, x, y)
	local Msg = format("%s xuÊt hiÖn råi, c¸c ch­ vÞ anh hïng h·y nhanh chãng hµnh ®éng !",map_new_Ncp[nBossid].szName)
	Msg2Player(Msg)
	self.bActive = 1
end

function ChuangGuan30:FightState()
	for szName, bFlag in self.tbPlayer do
		if bFlag == 1 then
			local nPlayerIndex = SearchPlayer(szName)
			CallPlayerFunction(nPlayerIndex, SetFightState, 1)
		end
	end
end

function ChuangGuan30:GameTime()
	if self.nCount == 0 then
		return 0
	end
	self:OnAddBoss()
	self:FightState()
	return 0
end

function ChuangGuan30:SetForbitItem()
	local szMapType = self.szMapType
	set_MapType(CHUANGGUAN30_MAP_ID, szMapType)
	
	for i=1, getn(self.tbForbitItemType) do
		if self.tbForbitItemType[i] == "MATE" then
			FORBITMAP_LIST[CHUANGGUAN30_MAP_ID] = 1
		end
		
		tb_MapType[szMapType] = tb_MapType[szMapType] or {}
		tinsert(tb_MapType[szMapType], self.tbForbitItemType[i])
	end
end

function ChuangGuan30:AddTime()
	local nTimeOut = CHUANGGUAN30_TIME_LIMIT + LIMIT_SIGNUP + 60;
	local nId = SubWorldID2Idx(CHUANGGUAN30_MAP_ID)
	if (SubWorldID2Idx(CHUANGGUAN30_MAP_ID) >= 0) then
		if self.nChuangguan30Timeid then
			DelTimer(self.nChuangguan30Timeid)		
		end
		self.nChuangguan30Timeid = AddTimer(nTimeOut * 18,"ChuangGuan30:GameTime",0)
	end
end


ChuangGuan30:Unregist()
ChuangGuan30:SetForbitItem()
ChuangGuan30:Init()
ChuangGuan30:RegistAll()
