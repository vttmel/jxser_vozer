IncludeLib("LEAGUE")
IncludeLib("TASKSYS");
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
-------------PhÇn Th­ëng Ho¹t §éng-----------------------
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
----------------------------------------------------------

function battle_rank_sort_Point(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_TOTALPOINT)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_TOTALPOINT)
	return nTotalPointA > nTotalPointB
end

function battle_rank_sort_PK(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_KILLPLAYER)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_KILLPLAYER)
	return nTotalPointA > nTotalPointB
end

function battle_rank_sort_NPC(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_KILLNPC)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_KILLNPC)
	return nTotalPointA > nTotalPointB
end

function battle_rank_sort_SER(nPlayerIndexA, nPlayerIndexB)
	local nTotalPointA = doFunByPlayer(nPlayerIndexA, BT_GetData, PL_MAXSERIESKILL)
	local nTotalPointB = doFunByPlayer(nPlayerIndexB, BT_GetData, PL_MAXSERIESKILL)
	return nTotalPointA > nTotalPointB
end



function battle_rank_activity(nBattleLevel)
	
	local tbCmpFun = 
	{
		battle_rank_sort_Point,
		battle_rank_sort_PK,
		battle_rank_sort_NPC,
		battle_rank_sort_SER
	}
	
	G_ACTIVITY:OnMessage("SongJinRank",nBattleLevel, battle_rank_GetSortPlayer0808, tbCmpFun, {})
end

function battle_GiveHuanHuanByIndex()
	local tbItem = {szName="Vßng Hoa ChiÕn Th¾ng",tbProp={6,1,2824,1,0,0},nExpiredTime=20110530}
	tbAwardTemplet:Give(tbItem, 1, {"EventChienThang042011", "zhanshenghuahuan"})
	AddStatData("jiefangri_songjinchanchuzhanshenghuahuan", 1)
end

function battle_GiveHuahuan(tbPlayerAll)
	local ndate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	local nStartDate = 201104280000
	local nEndDate = 201105300000
	if ndate < nStartDate or ndate > nEndDate then
		return
	end 
	
	local nCount = 10	
	local nNumber = getn(tbPlayerAll)
	local nSplit = 1
	if nNumber > nCount then
		nSplit = (nNumber - mod(nNumber,nCount)) / nCount
	end
	
	for i=1,nNumber,nSplit do
		if nCount == 0 then
			break
		end
		nCount = nCount - 1
		nPlayerIndex = tbPlayerAll[i]
		if nPlayerIndex > 0 then
			CallPlayerFunction(nPlayerIndex, battle_GiveHuanHuanByIndex)
		end
	end
end

function battle_finish_activity(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)

	
	Activity_EnBattle_2(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)

end
--=============================================================================================
function Activity_EnBattle_2(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)
	local a = PlayerIndex
	local b, c, d, e = 0, tonumber(GetLocalDate("%H")), 0, 1773
	local Tdate = floor(FormatTime2Number(GetCurServerTime()+24*60*60)/10000)
	
	for _i = 1, getn(tbPlayerWin) do
		PlayerIndex = tbPlayerWin[_i]
		b = BT_GetData(1)
		
		if c >= 21 and c < 23 and nBattleLevel >= 2 then
			e = 1773
		end
		
		if b >= 1000 then
			d = AddItem(6,1,e,1,0,0)
			SetSpecItemParam(d, 1,floor(Tdate/10000)+2000);
			SetSpecItemParam(d, 2,floor(mod(Tdate,10000)));
			SyncItem(d)
			SetItemBindState(d, -2);
			Msg2Player("B¹n nhËn ®­îc 1 Hu©n c«ng bµi Tèng Kim")
		end
	end
	
	if c >= 21 and c < 23 and nBattleLevel >= 2 then
		for _i = 1, getn(tbPlayerLos) do
			PlayerIndex = tbPlayerLos[_i]
			b = BT_GetData(1)
			
			if b >= 3000 then
				d = AddItem(6,1,e,1,0,0)
				SetSpecItemParam(d, 1,floor(Tdate/10000)+2000);
				SetSpecItemParam(d, 2,floor(mod(Tdate,10000)));
				SyncItem(d)
				SetItemBindState(d, -2);
				Msg2Player("B¹n nhËn ®­îc 1 Hu©n c«ng bµi Tèng Kim")
			end
		end
	end
	
	PlayerIndex = a

end
--==================================================================================================================

function battle_rank_award0808(nBattleLevel)
	local tbPlayer = {}
	battle_rank_GetSortPlayer0808(tbPlayer, 0, battle_rank_sort_Point)
	for i=1, 20 do
		if tbPlayer[i] and tbPlayer[i] > 0 then
			Msg2MSAll(MISSIONID, format("<color=green>H¹ng %d<color>: <color=yellow>%s<color>", i, doFunByPlayer(tbPlayer[i],GetName)))
		end
	end
	for i = 1, 20 do
	local szName = doFunByPlayer(tbPlayer[i],GetName)
		if szName ~= nil and szName ~= "" then
		local nTopPlayerIdx = SearchPlayer(szName);
			if (nTopPlayerIdx > 0) then
				doFunByPlayer(nTopPlayerIdx, AddAward,i)
			end
		end
	end;		
end

Include("\\script\\lib\\objbuffer_head.lua")
_Message =  function (nItemIndex, strBoxName)
	local handle = OB_Create()
	local msg = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc <color=yellow><%s><color=green> tõ <color=yellow><%s><color>" ,GetName(),GetItemName(nItemIndex),strBoxName)
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
function AddAward(nRank)
	if not nRank then
	return
	end
	local tbThuongTop = 
	{
		[1]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=3},
		},
		[2]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=2},		      
		},
		[3]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
		[4]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
		[5]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
		[6]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
		[7]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
		[8]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
		[9]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
		[10]={
		                   {szName="TTK", tbProp={6,1,22,1,0,0,0},nCount=1},
		},
	}
	
	local slog = format("ThuongTop%dTongKim", nRank)
	local tbAward1 = tbThuongTop21[nRank]
	--local tbAward2 = tbThuongTop[nRank]
	local tbAward3 = tbThuongTopT7[nRank]
	local nWeekDay = tonumber(GetLocalDate("%w"));
	local nHour = tonumber(GetLocalDate("%H%M"))
                                                                             if nRank == 1 and ( nHour >= 2049 and nHour < 2201) then
											if VongSangTopTongKim9h == 1 then
                                                                             vongsangtop1()
											else
											end
                                                                             end
                                                                             if nRank == 2 and ( nHour >= 2049 and nHour < 2201) then
											if VongSangTopTongKim9h == 1 then
                                                                             vongsangtop2()
											else
											end
                                                                             end
                                                                             if nRank == 3 and ( nHour >= 2049 and nHour < 2201) then
											if VongSangTopTongKim9h == 1 then
                                                                             vongsangtop3()
											else
											end
                                                                             end
if ThuongTopTongKimTuDong9h == 1 then
		if( nHour >= 2049 and nHour < 2201) and nWeekDay == 6 then
		local nRuong = CalcFreeItemCellCount() 
			if nRuong < SoLuongRuongTrongNhanThuong then
			Talk(1,"","Kh«ng §ñ "..SoLuongRuongTrongNhanThuong.." r­¬ng chøa ®å, kh«ng thÓ nhËn th­ëng")
			return 1
		else
		tbAwardTemplet:Give(tbAward3, 1, {slog,slog})
		end
             	end
		if( nHour >= 2049 and nHour < 2201)then
		local nRuong = CalcFreeItemCellCount() 
			if nRuong < SoLuongRuongTrongNhanThuong then
			Talk(1,"","Kh«ng §ñ "..SoLuongRuongTrongNhanThuong.." r­¬ng chøa ®å, kh«ng thÓ nhËn th­ëng")
			return 1
		else
		tbAwardTemplet:Give(tbAward1, 1, {slog,slog})	
		end
		end
end
end


 
function battle_rank_GetSortPlayer0808(tbPlayer, nCamp, pCompare)
	tbPlayer= tbPlayer or {}
	local idx = 0;
	
	for i = 1 , GetMSPlayerCount(MISSIONID, nCamp) do
		idx, pidx = GetNextPlayer(MISSIONID, idx, nCamp)
		if (pidx and  pidx > 0) then
			tinsert(tbPlayer, pidx)
		end
		if (idx <= 0) then 
			break
		end;
	end
	
	sort(tbPlayer, pCompare)
	return tbPlayer
end

function battle_rank_doFun0808(nRank, nSortType, pfun, ...)
	
	local szName,nTotalPoint = BT_GetTopTenInfo(nRank, nSortType);
	
	if szName ~= nil and szName ~= "" then
			local nTopPlayerIdx = SearchPlayer(szName);
			
			if (nTopPlayerIdx > 0) then
				doFunByPlayer(nTopPlayerIdx, pfun,unpack(arg))
			end
		end
end