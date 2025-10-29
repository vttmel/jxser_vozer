Include("\\script\\global\\pgaming\\missions\\bosshoangkim\\bossdai\\goldboss_h.lua")
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")

TSK_PLAYER_BOSSKILLED = 2598

function OnDeath(nBossIndex)
	local nW,nX,nY = GetWorldPos();
	local OrgPlayer = PlayerIndex;
	
	local totaldrop = random(15,20);
	local nNpcSeries = GetNpcSeries(nBossIndex);
	
	local szNamePlayer = GetName();
	local szBossName = GetNpcName(nBossIndex)
	
	if NpcName2Replace then
		szBossName = NpcName2Replace(szBossName)
	end

	AddDropItemBlue(nBossIndex,totaldrop,nNpcSeries,random(8,9),GetLuckyPlayer());
	DropQuestItemBoss(nBossIndex,OrgPlayer)
	local szMsgWorld = format("§¹i hiÖp <color=yellow>%s <color>t¹i <color=yellow>%s <color>®· tiªu diÖt thµnh c«ng <color=yellow>%s <color>",szNamePlayer,SubWorldName(SubWorldID2Idx(nW)),szBossName);
	Msg2SubWorld(szMsgWorld);
	AddGlobalNews(szMsgWorld);
	
	PlayerIndex = OrgPlayer
	if GetTeamSize() >= 2 then 
		for k=1,GetTeamSize() do 
			PlayerIndex = GetTeamMember(k);
				AddPlayerExp(20000000);
				Msg2Player("B¹n nhËn ®­îc ®iÓm kinh nghiÖm céng dån "..KinhNghiemGietBoss.." .");
				_LogPlayer("exp","gold_boss",{GetLocalDate("%m/%d/%Y_%H:%M:%S"),KinhNghiemGietBoss," Kinh nghiÖm ®· h¹ gôc tõ boss "..szBossName.." "});
		end
	else
			AddPlayerExp(20000000);
			Msg2Player("B¹n nhËn ®­îc ®iÓm kinh nghiÖm céng dån "..KinhNghiemGietBoss.." .");
			_LogPlayer("exp","gold_boss",{GetLocalDate("%m/%d/%Y_%H:%M:%S"),KinhNghiemGietBoss," Kinh nghiÖm ®· h¹ gôc tõ boss "..szBossName.." "});
	end
		--player near boss 
	local tbplayer = GetPlayerAroundNpc(nBossIndex,50);
	if tbplayer and getn(tbplayer) > 0 then 
		for k=1,getn(tbplayer) do 
			PlayerIndex = tbplayer[k];
			AddPlayerExp(10000000);
			Msg2Player("B¹n nhËn ®­îc ®iÓm kinh nghiÖm céng dån "..KinhNghiemNguoiChoiDungXungQuanh.." .");
			_LogPlayer("exp","gold_boss",{GetLocalDate("%m/%d/%Y_%H:%M:%S"),KinhNghiemNguoiChoiDungXungQuanh,"Kinh nghiÖm ®øng gÇn lóc boss "..szBossName.." bÞ tiªu diÖt."});
		end
	end
	local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh«ng §ñ "..SoLuongRuongTrongNhanThuong.." r­¬ng chøa ®å, kh«ng thÓ nhËn th­ëng")
		return 1
	else
		tbDropTemplet:GiveAwardByList(nBossIndex, OrgPlayer,%tbVnNewItemDropBossAward,format("killed_%s",GetNpcName(nBossIndex)))
	end
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
end

function DropBigBoss_DoPho(nNpcIndex)
	local tbDoPho = 
	{
		[739] = {594,620},--thiªn v­¬ng
		[740] = {576,593},--thiÕu l©m
		[1365] = {576,593},--thiÕu l©m.
		[741] = {657,674},--®­êng m«n.
		[1366] = {657,674},--®­êng m«n
		[742] = {648,656}, --ngò ®éc.
		[743] = {621,629}, --nga my
		[744] = {630,647}, --thuý yªn.
		[567] = {630,647}, --thuý yªn.
		[745] = {675,683}, --c¸i bang.
		[583] = {675,683},--c¸i bang.
		[565] = {684,692},--thiªn nhÈn
		[747] = {702,710}, --c«n l«n.
		[1368] = {702,710}, --c«n l«n
		[1367] = {693,701}, --vâ ®ang.
		[746] = {693,710}, --c«n l«n + vâ ®ang.
		[748] = {675,692}, --c¸i bang + thiªn nhÈn		
		[566] = {594,620},--thiªn v­¬ng
		[568] = {621,629}, --nga my
		[582] = {648,656}, --ngò ®éc.
		[563] = {675,692}, --c¸i bang + thiªn nhÈn
		[562] = {693,701}, --vâ ®ang.
	}
	local nNpcID = GetNpcParam(nNpcIndex,1);
	if tbDoPho[nNpcID] then 
		local nX32,nY32,nSubWorldIdx = GetNpcPos(nNpcIndex); 
		local tb = RandValueTabStartEnd(tbDoPho[nNpcID][1],tbDoPho[nNpcID][2])
		local index  = random(tbDoPho[nNpcID][1],tbDoPho[nNpcID][2])
		AddDropEvent(nNpcIndex,{4,tb[index],1,1,0,0,0})
	end
end

function DropQuestItemBoss(nNpcIndex,OrgPlayer)
	playername = GetName();
	PlayerIndex = OrgPlayer;
	
	local item = BIGBOSS_AWARD[GetNpcParam(nNpcIndex,1)];
	local szBossName = GetNpcName(nNpcIndex);
	if not szBossName then 
		szBossName = ""
	end
	
	if type(item) == "table" then 
		local nX32,nY32,nSubWorldIdx = GetNpcPos(nNpcIndex); 
		local rloop = random(item.nCount);
		for k=1,rloop do 
			local itemindex = random(getn(item.szName));
			DropItemEx(nSubWorldIdx,nX32,nY32,OrgPlayer,4,0,0,item.nProp[itemindex][1],item.nProp[itemindex][2],item.nProp[itemindex][3],item.nProp[itemindex][4],0,0,0,0,0,0,0,0,0);
			_LogPlayer("award","gold_boss",{GetLocalDate("%m/%d/%Y_%H:%M:%S"),format("%s r¬i ra tõ boss %s",item.szName[itemindex],szBossName),format("t¹i map: %s to¹ ®é (%d,%d)",SubWorldName(SubWorld),floor((nX32/32)/8),floor( (nY32/32) / 16) )});
		end
	
		local rdrop = random(1,100);
		local nRateDropDoPho = TyLeRotDoPho;
		if rdrop <= nRateDropDoPho then 
			local itemindex = random(getn(item.szNameDoPho));
			DropItemEx(nSubWorldIdx,nX32,nY32,OrgPlayer,4,0,0,item.tbPropDoPho[itemindex][1],item.tbPropDoPho[itemindex][2],item.tbPropDoPho[itemindex][3],item.tbPropDoPho[itemindex][4],0,0,0,0,0,0,0,0,0);
			_LogPlayer("award","gold_boss",{GetLocalDate("%m/%d/%Y_%H:%M:%S"),format("%s r¬i ra tõ boss %s",item.szNameDoPho[itemindex],szBossName),format("t¹i map: %s to¹ ®é (%d,%d)",SubWorldName(SubWorld),floor((nX32/32)/8),floor( (nY32/32) / 16) )});
		end

		PlayerIndex = OrgPlayer;
		local rate_drop_item_time = random(1,100);
		local nRateDropAnBangThoiGian = 5;
		local nRateDropTrangBiHK = TyLeRotTrangBiHoangKim;
		if rate_drop_item_time <= nRateDropTrangBiHK then 
			local tbItem = RandValueTabStartEnd(1,getn(item.tbItemIDTime));
			local idxitem = random(getn(item.tbItemIDTime));
			local goldid = item.tbItemIDTime[idxitem];
			local itemidx = AddDropGoldItem(nNpcIndex,{0,goldid})
			Msg2SubWorld(playername.." <color=green>may m¾n h¹ ®­îc "..szBossName.." ®¸nh r¬i ra 1 trang bÞ <color=yellow>"..GetItemName(itemidx).."<color>.")
			_LogPlayer("award","gold_boss",{GetLocalDate("%m/%d/%Y_%H:%M:%S"),format("%s r¬i ra tõ boss %s",GetItemName(itemidx),szBossName),format("t¹i map: %s to¹ ®é (%d,%d)",SubWorldName(SubWorld),floor((nX32/32)/8),floor( (nY32/32) / 16) )});
		end
	end
end

function removetiendong()
	--drop tiÒn ®ång.
		local rdropcoin = random(1,50);
		local nMaxXu = 0;
		
		if rdropcoin > 60 then 
			nMaxXu = 2;
		elseif rdropcoin > 10 and rdropcoin < 60 then 
			nMaxXu = 4;
		else
			nMaxXu = 8;
		end

		if nMaxXu == 0 then return end;
		for k=1,nMaxXu do 
			DropItemEx(nSubWorldIdx,nX32,nY32,playerindex,4,0,0,4,417,1,1,0,0,0,0,0,0,0,0,0);
		end
		_LogPlayer("award","gold_boss",{GetLocalDate("%m/%d/%Y_%H:%M:%S"),format("%s r¬i ra tõ boss %s",format("%d TiÒn §ång",nMaxXu),GetNpcName(nNpcIndex)),format("t¹i map: %s to¹ ®é (%d,%d)",SubWorldName(SubWorld),floor((nX32/32)/8),floor( (nY32/32) / 16) )});

end



function OnTimer(nNpcIndex,nTimeOut)
	DelNpc(nNpcIndex);
end