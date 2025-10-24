Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\bonus_onlinetime\\head.lua")
Include("\\script\\task\\random\\task_head.lua");
Include("\\script\\baoruongthanbi\\head.lua");

tbRandomTask =
{
	211,
	212,
	213,
	214,
	215,
	216,
	222,
	224,
	225,
	226,
	227,
	228,
}
--
--
tbOnlineAwardExp =
{
	{szName = "»ý·Ö", nExp_tl = 15000000},
}

tbOnlineAwardHuyenTinh =
{
	{szName="Ðþ¾§¿óÊ¯", tbProp={6,1,147,2,0,0}, nCount=10},
	{szName="Ðþ¾§¿óÊ¯", tbProp={6,1,147,3,0,0}, nCount=10},
	{szName="Ðþ¾§¿óÊ¯", tbProp={6,1,147,4,0,0}, nCount=10},
}
--
function IsActiveGetHuyenTinh()
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	if (nCurDate <= 20201110) then
		return 1
	else
		return 0
	end
end

function OnlineAward()

	 OnlineAward_ResetStillOnlineNewDay()
	
	local tbOpt = {};
		local szTitle = format("Xin ®¹i hiÖp lùa chän:");
		tbOpt = 
		{
			"Lùa chän ñy th¸c online/OnlineAward_GetBonus",
			"KiÓm tra thêi gian ñy th¸c/OnlineAward_ShowTimeNow",
			"KÕt thóc/Cancel",
		}
	tinsert(tbOpt, 1, szTitle)
	CreateTaskSay(tbOpt);
end

function OnlineAward_GetBonus()
--	if CheckIPBonus() == 0 then
--		Say("Ä¿Ç°´óÏµ²»ÄÜ¸ì½±µø£¬ÉÔºòÔïÊÔ!",0)
--		return
--	end
	if OnlineAward_Check_TransferLife() ~= 1 then
		Say("HiÖn t¹i ®¹i hiÖp kh«ng thÓ xem ®­îc th«ng tin. Xin thö l¹i!",0)
		return		
	end

	OnlineAward_SummaryOnlineTime()
	OnlineAward_StartTime()
	
	local nHour, nMin, nSec = OnlineAward_ShowTime()
	if nHour < 1 then
		Say("§¹i hiÖp ñy th¸c ch­a ®­îc 1 canh giê!",0)
		return
	end
	
	if (PlayerFunLib:CheckTaskDaily(BNCQ_TASKID_GET_TIMES,6,"H«m nay ®¹i hiÖp ®· nhËn phÇn th­ëng 6 lÇn, ngµy mai quay l¹i ®i.","<") ~= 1) then
			return
	end
	
	if CalcFreeItemCellCount() < 1 then
		Say("§¹i hiÖp kh«ng cßn ®ñ chç trèng!",0)
		return
	end
	
	local tbOpt = {};
		local szTitle = format("§¹i hiÖp, xin mêi lùa chän phÇn th­ëng:");
		tbOpt = 
		{
			"NhËn phÇn th­ëng ®Æc biÖt/#OnlineAward_ConfirmBonus()",
			"¸ì2µÈ½±Æ·/#OnlineAward_ConfirmBonus(2)",
			"KÕt thóc/Cancel",
		}
	tinsert(tbOpt, 1, szTitle)
	CreateTaskSay(tbOpt);
	
	
--	if OnlineAward_PayTime(1*60*60) == 1 then	
--		PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
--		for i = 1, 10 do AddLenhBaiBH() end
--		for i = 1, 10 do AddMocNhan() end
--		tbAwardTemplet:GiveAwardByList({szName = "ÐþÌì´¸", tbProp={6,1,2348,1,0,0}, nExpiredTime = 10080, nBindState = -2, nCount = 2}, "Online¸ì½±");
--	end
	
end


function OnlineAward_ConfirmBonus()
	if (nType == 1) then
		if OnlineAward_PayTime(1*60*60) == 1 then	
			PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
			for i = 1, 10 do AddLenhBaiBH() end
			for i = 1, 10 do AddMocNhan() end
			if (IsActiveGetHuyenTinh() == 1) then
				tbAwardTemplet:GiveAwardByList(tbOnlineAwardHuyenTinh, "Online¸ì½±");
			end
			local tbAward = {szName="Tèng tö",tbProp={6,1,30086,1,0,0},nCount=10,nExpiredTime=20110220}
			tbAwardTemplet:GiveAwardByList(tbAward, "[VNG][Lunar Year 2011][Online¸ì½±]");
		end
	else
		if OnlineAward_PayTime(1*60*60) == 1 then	
			PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
			tbAwardTemplet:GiveAwardByList(tbOnlineAwardExp[1], "Online ¸ì½±");
			if (IsActiveGetHuyenTinh() == 1) then
				tbAwardTemplet:GiveAwardByList(tbOnlineAwardHuyenTinh, "Online nhËn th­ëng");
			end
		end
	end
end


function OnlineAward_ShowTimeNow()
	if OnlineAward_Check_TransferLife() ~= 1 then
		Say("HiÖn t¹i kh«ng thÓ xem ®­îc th«ng tin. Xin thö l¹i!",0)
		return		
	end
	OnlineAward_SummaryOnlineTime()	
	local nHour, nMin, nSec = OnlineAward_ShowTime()
	local strMsg = format("Thêi gian ñy th¸c rêi m¹ng \n\t<color=yellow> %d <color> giê <color=yellow> %d <color> phót <color=yellow> %d <color> gi©y.",nHour, nMin, nSec)
	OnlineAward_StartTime()
	Talk(1,"Online ®­îc",strMsg)
end

function AddLenhBaiBH()
do return end
	--local nRandomTaskID = createRandomTask();
	local nRandomIndex = random(1, getn(tbRandomTask))
	local nRandomTaskID = tbRandomTask[nRandomIndex]
	
	nRandomItemIndex = AddItem(6, 2, 1020, 0, 1, 0, 0);
	SetItemMagicLevel(nRandomItemIndex, 1, nRandomTaskID);
	nExpiredTime = BNCQ_OneDayTime
	ITEM_SetExpiredTime(nRandomItemIndex, nExpiredTime);
	SetItemBindState(nRandomItemIndex, -2);
	SyncItem(nRandomItemIndex);
	local strItem = GetItemName(nRandomItemIndex)
	Msg2Player("Ng­¬i nhËn ®­îc "..strItem)
	WriteLog(date("%Y%m%d %H%M%S").."\t".." Online ÊÕ½±"..GetAccount().."\t"..GetName().."\t".." Online ¸ì½±µ·µ½"..strItem)
end

function AddMocNhan()
do return end
		local ndx = AddItem(6,1,1085,1,0,0)
		SetSpecItemParam(ndx, 2, 9)
		nExpiredTime = BNCQ_OneDayTime
		ITEM_SetExpiredTime(ndx, nExpiredTime);
		SetItemBindState(ndx, -2);
		SyncItem(ndx)
		local strItem = GetItemName(ndx)
		Msg2Player("Ng­¬i nhËn ®­îc "..strItem)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." Online ÊÕ½± "..GetAccount().."\t"..GetName().."\t".." Online ¸ì½±"..strItem)
end

function Cancel()
end
