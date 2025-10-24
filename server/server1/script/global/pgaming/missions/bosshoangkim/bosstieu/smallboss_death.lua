Include("\\script\\global\\pgaming\\missions\\bosshoangkim\\bosstieu\\smallboss_h.lua")
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

function OnDeath(nBossIndex)
	local nW,nX,nY = GetWorldPos();
	local OrgPlayer = PlayerIndex;
	local szNamePlayer = GetName();
	local szBossName = GetNpcName(nBossIndex)
	
	if NpcName2Replace then
		szBossName = NpcName2Replace(szBossName)
	end
	
	PlayerIndex = OrgPlayer;
	local totaldrop = random(15,20);
	local nNpcSeries = GetNpcSeries(nBossIndex);
	AddDropItemBlue(nBossIndex,totaldrop,nNpcSeries,random(5,8),GetLuckyPlayer());
	DropQuestItemBoss(nBossIndex,PlayerIndex)
	local szMsgWorld = format("§¹i hiÖp <color=yellow>%s <color>t¹i <color=yellow>%s <color>®· tiªu diÖt thµnh c«ng <color=yellow>%s <color>",szNamePlayer,SubWorldName(SubWorldID2Idx(nW)),szBossName);
	Msg2SubWorld(szMsgWorld);
	AddGlobalNews(szMsgWorld);
	
	if GetTeamSize() >= 2 then
		szNamePlayer = GetName(); 
		for k=1,GetTeamSize() do 
			PlayerIndex = GetTeamMember(k);
			if PlayerIndex and PlayerIndex > 0 then 
					AddPlayerExp(KinhNghiemGietBossTieu);
					Msg2Player("B¹n nhËn ®­îc ®iÓm kinh nghiÖm céng dån "..KinhNghiemGietBossTieu.." .");
					_LogPlayer("exp","gold_boss",{GetLocalDate("%m/%d/%Y_%H:%M:%S"),KinhNghiemGietBossTieu," Kinh nghiÖm ®· h¹ gôc tõ boss "..szBossName.." "});
			end
		end
	else
		szNamePlayer = GetName();
			AddPlayerExp(KinhNghiemGietBossTieu);
			Msg2Player("B¹n nhËn ®­îc ®iÓm kinh nghiÖm céng dån "..KinhNghiemGietBossTieu.." .");
			_LogPlayer("exp","gold_boss",{GetLocalDate("%m/%d/%Y_%H:%M:%S"),KinhNghiemGietBossTieu," Kinh nghiÖm ®· h¹ gôc tõ boss "..szBossName.." "});
	end
end

function DropQuestItemBoss(nNpcIndex,OrgPlayer)
	local item = SMALLBOSS_AWARD[GetNpcParam(nNpcIndex,1)];
	local szBossName = GetNpcName(nNpcIndex);
	if not szBossName then 
		szBossName = ""
	end
	
	if type(item) == "table" then 
		local nX32,nY32,nSubWorldIdx = GetNpcPos(nNpcIndex); 
		local rloop = random(item.nCount);
		local orgplayer = PlayerIndex
		for k=1,item.nCount do 
			local itemindex = random(getn(item.szName));
			PlayerIndex = orgplayer
			DropItemEx(SubWorld ,nX32,nY32,OrgPlayer,4,0,0,item.nProp[itemindex][1],item.nProp[itemindex][2],item.nProp[itemindex][3],item.nProp[itemindex][4],0,0,0,0,0,0,0,0,0);
			_LogPlayer("award","gold_boss",{GetLocalDate("%m/%d/%Y_%H:%M:%S"),format("%s r¬i ra tõ boss %s",item.szName[itemindex],szBossName),format("t¹i map: %s to¹ ®é (%d,%d)",SubWorldName(SubWorld),floor((nX32/32)/8),floor( (nY32/32) / 16) )});
		end
	end
end

function OnTimer(nNpcIndex,nTimeOut)
	DelNpc(nNpcIndex);
end