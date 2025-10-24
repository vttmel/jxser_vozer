--Youtube PGaming----
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\tong\\tong_award_head.lua")
Include("\\script\\lib\\awardtemplet.lua");	
Include("\\script\\task\\tollgate\\killer\\mibao_head.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
-------------PhÇn Th­ëng Ho¹t §éng-----------------------
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
----------------------------------------------------------

function SetMemberTask(myTaskNumber,myOrgValue,myTaskValue,fnCallback, series)

	local nPreservedPlayerIndex = PlayerIndex
	local nMemCount = GetTeamSize()
	local myMemberTask
	local myChangeMember = 0
	local Uworld1217 = nt_getTask(1217);
	--DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "shashourenwu")
	if (nMemCount == 0 ) then
		myMemberTask = GetTask(myTaskNumber)
		if (myMemberTask == myOrgValue) then
			add_shashouling(myOrgValue, series)			
			nt_setTask(TSKID_KILLERMAXCOUNT, GetTask(TSKID_KILLERMAXCOUNT) + 1);			
			tongaward_killer()
			nt_setTask(myTaskNumber,myTaskValue);			
			fnCallback()
		end		
	else
		myMemberTask = GetTask(myTaskNumber)
		if (myMemberTask == myOrgValue) then
			tongaward_killer()
		end
		for i = 1, nMemCount do
			PlayerIndex = GetTeamMember(i)
			myMemberTask = GetTask(myTaskNumber)
			if (myMemberTask == myOrgValue) then		
				add_shashouling(myOrgValue, series)				
				nt_setTask(TSKID_KILLERMAXCOUNT, GetTask(TSKID_KILLERMAXCOUNT) + 1);				
				nt_setTask(myTaskNumber,myTaskValue)
				myChangeMember = myChangeMember + 1
				fnCallback();
			end			
		end		
		PlayerIndex = nPreservedPlayerIndex;		
	end	
end;

function add_shashouling(nvalue, series)
	if ( nvalue >= 1 ) and ( nvalue<= 20  ) then
		bosssatthu2x()
		AddItem(6,1,399,20,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 20")
	elseif ( nvalue >= 21 ) and ( nvalue<= 40  ) then
		bosssatthu3x()
		AddItem(6,1,399,30,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 30")
	elseif ( nvalue >= 41 ) and ( nvalue<= 60  ) then
		bosssatthu4x()
		AddItem(6,1,399,40,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 40")
	elseif ( nvalue >= 61 ) and ( nvalue<= 80  ) then
		bosssatthu5x()
		AddItem(6,1,399,50,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 50")
	elseif ( nvalue >= 81 ) and ( nvalue<= 100  ) then
		bosssatthu6x()
		AddItem(6,1,399,60,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 60")
	elseif ( nvalue >= 101 ) and ( nvalue<= 120  ) then
		bosssatthu7x()
		AddItem(6,1,399,70,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 70")
	elseif ( nvalue >= 121 ) and ( nvalue<= 140  ) then
		bosssatthu8x()
		AddItem(6,1,399,80,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 80")
	elseif ( nvalue >= 141 ) and ( nvalue<= 160  ) then
		bosssatthu9x()
		AddItem(6,1,399,90,series,0)
		Msg2Player("B¹n nhËn ®­îc 1 s¸t thñ lÖnh cÊp 90")
	end
end

function jiefangri_award()
	local nLevel = 150
	
	if PlayerFunLib:CheckTotalLevel(nLevel, "", ">=") ~= 1 then
		return
	end

	local tbItem = {
		[1]={szName="Huy Ch­¬ng ChiÕn C«ng",tbProp={6,1,2823,1,0,0},nExpiredTime=20110523},
		[2]={szName="C©y Bót",tbProp={6,1,2825,1,0,0},nExpiredTime=20110523},
		[3]={szName="Phï HiÖu",tbProp={6,1,2826,1,0,0},nExpiredTime=20110523},
	}
	
	local tbshashou = {
		[1] = 2,
		[2] = 1,
		[3] = 2,
	}	
	local tbStartDate = {
		[1] = 201104210000,
		[2] = 201105020000,
		[3] = 201105160000,
		}
		
	local tbMaiDian = {
		[1] = "jiefangri_shashouchanchuzhangongjiangzhang",
		[2] = "jiefangri_shashouchanchuzhibi",
		[3] = "jiefangri_shashouchanchujianzhang",
		}	
	local nEndDate = 201105230000
	local ndate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	
	for i=1,getn(tbStartDate) do
		if ndate >= tbStartDate[i] and ndate <= nEndDate then
			tbAwardTemplet:Give(tbItem[i], tbshashou[i], {"EventChienThang042011", "NhanDuocNguyenLieuTuBossSatThu"})
			AddStatData(tbMaiDian[i], tbshashou[i])
		end
	end
end