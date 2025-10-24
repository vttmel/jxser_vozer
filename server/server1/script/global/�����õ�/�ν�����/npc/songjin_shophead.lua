IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\task\\system\\task_string.lua");

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\lib\\awardtemplet.lua")

function cutdowntimefix(nWeekDay, nDay, nMonth, nYear, nMonthDay)
	if nDay > nMonthDay then
		nDay = nDay - nMonthDay
		nMonth = nMonth + 1
		if nMonth > 12 then
			nMonth = 1
			nYear = nYear + 1
		end
	end
	return nDay, nMonth, nYear
end

function getcutdowntime(nWeekDay, nCurTime)
	--									1,	2,	3,	4,	5,	6,	7,	8,	9,	10,	11,	12
	local tbMonthDay = {31, 28, 31, 30, 31, 30, 31, 31, 30,	31, 30, 31}
	local nTmp = nCurTime
	local nYear = floor(nTmp/100000000)
	nTmp = mod(nTmp, 100000000)
	local nMonth = floor(nTmp/1000000)
	nTmp = mod(nTmp, 1000000)
	local nDay = floor(nTmp/10000)
	nTmp = mod(nTmp, 10000)
	local nHour = floor(nTmp/100)
	nTmp = mod(nTmp, 100)
	local nMinute = nTmp;
	if ((0 == mod(nYear, 4)) and (0 ~= mod(nYear, 100))) or (0 == mod(nYear, 400)) then
		tbMonthDay[2] = tbMonthDay[2] + 1
	end
	if nWeekDay > 0 then
		nDay = nDay + 7 - nWeekDay
		nDay, nMonth, nYear = cutdowntimefix(nWeekDay, nDay, nMonth, nYear, tbMonthDay[nMonth])
	else
		if nHour < 23 then
		else
			nDay = nDay + 7
			nDay, nMonth, nYear = cutdowntimefix(nWeekDay, nDay, nMonth, nYear, tbMonthDay[nMonth])
		end
	end 
	local nResult = 0
	nResult = nMonth * 1000000 + nDay * 10000 + 2300
	return nResult
end


function wushuangmengjiang()
	Say("V× khen ngîi ng­êi cã c«ng lao ë chiÕn tr­êng, ng­êi nµo cã c«ng ¾t cã th­ëng.", 6, 
		"Ta muèn xem tr­íc c¸c danh hiÖu vµ vßng s¸ng/battles_PreViewTitle", 
		"Xem xÕp h¹ng chiÕn tr­êng cña tuÇn tr­íc/getranklist", 
		"Xem xÕp h¹ng chiÕn tr­êng hiÖn t¹i/getcurranklist", 
		"Ta ®Õn ®Ó nhËn th­ëng/guanghuan_sure", 
		"T×m hiÓu quy t¾c chi tiÕt/getrule", 
		"Ch¼ng qua ta ghÐ ch¬i./no"
		)
end

function getrule()
	Say("Trong 1 tuÇn ph¶i lät vµo Top 10, ng­êi nµo ®¹t ®iÓm cao nhÊt sÏ ®­îc triÒu ®×nh s¾c phong danh hiÖu <color=yellow>V« song m·nh t­íng<color> vµ ®­îc träng th­ëng",2, "Ta muèn t×m hiÓu chuyÖn kh¸c/wushuangmengjiang", "Ch¼ng qua ta ghÐ ch¬i/no");
end

function battles_PreViewTitle()
	Say("Xin chän danh hiÖu cÇn xem!", 4, "S¸t ThÇn ChuyÓn ThÕ/#battles_TitleTop(1)", "Lùc ¸p QuÇn Hïng/#battles_TitleTop(2)", "Qu¶n Ngôc Thiªn V­¬ng/#battles_TitleTop(3)", "Th«i, thø nµy kh«ng dµnh cho ta/OnCanel")
end

function battles_TitleTop(Value)
	local battlesPreTitle
	if Value == 1 then
		battlesPreTitle = "<link=image:\\spr\\skill\\songjin\\weimengwushuang.spr>Danh HiÖu: <link> <color=green>S¸t ThÇn ChuyÓn ThÕ<color>"
	elseif Value == 2 then
		battlesPreTitle = "<link=image:\\spr\\skill\\songjin\\liyaqunxiong.spr>Danh HiÖu: <link> <color=green>Lùc ¸p QuÇn Hïng<color>"
	elseif Value == 3 then
		battlesPreTitle = "<link=image:\\spr\\skill\\songjin\\dubatianxia.spr>Danh HiÖu: <link> <color=green>Qu¶n Ngôc Thiªn V­¬ng<color>"
	end
	CreateNewSayEx(battlesPreTitle, {{"Xem danh hiÖu kh¸c", battles_PreViewTitle}, {"KÕt thóc ®èi tho¹i", OnCanel}})
end

function getranklist()
	local tbNum = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10251, i);
		if szname ~= nil and nrank ~= 0 then
			szranklist = format("%s ®øng hµng%s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s ®øng hµng %s: <%s> %d\n", szranklist, tbNum[i], "Kh«ng", 0);
		end
	end
	local tbOpt = {}
	tinsert(tbOpt, {"Ta muèn t×m hiÓu chuyÖn kh¸c", wushuangmengjiang})
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i"})
	CreateNewSayEx(szranklist, tbOpt)
end

function guanghuan_sure()
	--[dinhhq][20101230]:thay doi phan thuong TKTT
--		local nWeekDay = tonumber(GetLocalDate("%w"));
--		local nCurTime = tonumber(GetLocalDate("%Y%m%d%H%M"));
--		local nCutDownTime = getcutdowntime(nWeekDay, nCurTime)
--		get_wushuangguanghuan(nCutDownTime)
	local szPlayerName = GetName()
	for i = 1, 3 do	
		local szname, nrank, nsect, ngender = Ladder_GetLadderInfo(10251, i);	
		if(szPlayerName == szname and 0 ~= nrank) then		
			local nWeek = tonumber(GetLocalDate("%W"));
			if (GetBitTask(2762, 12, 18) ~= nWeek) then
				SetBitTask(2762, 12, 18, nWeek)
				get_TTTCAward(i)				
			else
				Talk(1, "", "§¹i hiÖp kh«ng ph¶i lµ ®· nhËn th­ëng råi sao?")				
			end
			return		
		end	
	end
	Say("ChØ cã 3 ng­êi ®­îc phÐp nhËn th­ëng, muèn nhËn th­ëng h·y cè g¾ng giÕt giÆc.", 2, "Ta muèn t×m hiÓu chuyÖn kh¸c/wushuangmengjiang", "Ch¼ng qua ta ghÐ ch¬i/no")
end

function get_wushuangguanghuan(nCutDownTime)
do
	 return
end
	AddSkillState(966, 1,2, nCutDownTime, 1)
	AddSkillState(979, 1,2, nCutDownTime, 1)
end

--Change Song Jin Box bind state - Modified By DinhHQ - 20120319
local tbProduct = {szName="Tèng kim bÝ b¶o",tbProp={6, 1, 2741, 1, 0, 0},nBindState=-2}	

function tetan2mibao()
	local G = 6
	local D = 1
	local P = 2740	-- ÌØÌ½±¦ÏäµÄp
	if GetTask(751) < 2000 then 
		Say("§iÓm ngµi tÝch lòy kh«ng ®ñ.", 1, "Kh«ng/no")
		return 
	end
	-- ÅÐ¶¨ÊÇ·ñ´æÔÚÌØÌ½±¦Ïä
	local nCount = CalcItemCount(3, G, D, P, -1) 
	
	if nCount == 0 then
		Say("Kh«ng cã b¶o r­¬ng kh«ng thÓ ®æi.", 1, "Kh«ng/no")
		return
	end
	-- ¼õÈ¥±¦Ïä
	ConsumeItem(3, 1, G, D, P, -1)	-- ÌØÌ½±¦ÏäµÄp
	tbAwardTemplet:GiveAwardByList(%tbProduct, "tetanbaoxiang2songjingmibao", 1)
end

function jifen2mibao()
	local nEnergyMark = 100
	local nJifenMark = 500
	local nEnergy = GetEnergy()
	if nEnergy < nEnergyMark then
		Say("Ngµi ®Ých tinh luyÖn th¹ch kh«ng ®ñ, lÇn sau trë l¹i ®i", 1, "Kh«ng/no")
		return
	end
	
	local nJifen = nt_getTask(747)
	if nJifen < nJifenMark then
		Say("§iÓm ngµi tÝch lòy kh«ng ®ñ.", 1, "Kh«ng/no")
		return
	end
	
	ReduceEnergy(nEnergyMark)	-- ¿Ûµô¾«Á¶Ê¯
	nt_setTask(747, floor(nt_getTask(747) - nJifenMark)) -- ¿Ûµô»ý·Ö
	tbAwardTemplet:GiveAwardByList(%tbProduct, "jifenjingli2songjingmibao", 1)
	Jilu_jinglixiaohao(nEnergyMark)	-- Êý¾Ý¢ñµãµÚÒ»ÆÚ
end

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 0.02

function duihuangmibao()
	local szMsg = format("Lùa chän ®æi lÊy h×nh thøc :")
	local tbOpt = {}
	
	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("V× b¶o vÖ vËt phÈm an toµn, xin mêi b¶o ®¶m trang bÞ cßn l¹i 1 %dx%d", nWidth, nHeight))
		return 
	end
	
	tinsert(tbOpt, {"§Æc thï b¶o r­¬ng", tetan2mibao})
	tinsert(tbOpt, {"§iÓm tÝch lòy cïng tinh luyÖn th¹ch", jifen2mibao})
	CreateNewSayEx(szMsg, tbOpt)	
end

function Jilu_jinglixiaohao(nCount)
	AddStatData("jlxiaohao_duihuansongjinmibao", nCount)
end

function getcurranklist()
	local tbNum = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10250, i);
		if szname ~= nil and nrank ~= 0 then
			szranklist = format("%s ®øng hµng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s ®øng hµng %s: <%s> %d\n", szranklist, tbNum[i], "Kh«ng", 0);
		end
	end
	local tbOpt = {}
	tinsert(tbOpt, {"Ta muèn t×m hiÓu chuyÖn kh¸c", wushuangmengjiang})
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i"})
	CreateNewSayEx(szranklist, tbOpt)
end

function get_TTTCAward(nRank)
	local battlesAwardTitle
	if nRank == 1 then
		battlesAwardTitle = 324
	elseif nRank == 2 then
		battlesAwardTitle = 325
	elseif nRank == 3 then
		battlesAwardTitle = 326
	end
	battles_TitleAwardApply(battlesAwardTitle)
	local tbExp =
		 {
			-- {nExp =400e6},
			-- {nExp =300e6},
			-- {nExp =200e6}
			
			-- {nExp =40000000},
			-- {nExp =30000000},
			-- {nExp =20000000}		
			
			{nExp =6000000},
			{nExp =4000000},
			{nExp =2000000}								
		};
	local szLog = format("Tèng kim thiªn tö tham chiÕn nhËn th­ëng %d", nRank)
	tbAwardTemplet:GiveAwardByList(tbExp[nRank], szLog)
end

function battles_TitleAwardApply(TitleID)
	local nServerTime = GetCurServerTime()+ (7*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(TitleID, 2, nTime)
	Title_ActiveTitle(TitleID)
	SetTask(1122, TitleID)
	Msg2Player("Chóc mõng T­íng qu©n ®· nhËn vµ kÝch ho¹t danh hiÖu <color=yellow>"..Title_GetTitleName(TitleID).."<color> trong <color=green>7<color> ngµy")
end