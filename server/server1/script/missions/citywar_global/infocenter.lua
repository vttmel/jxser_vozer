IncludeLib("LEAGUE")
IncludeLib("TONG")
Include("\\script\\missions\\citywar_arena\\head.lua");
Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_global\\citywar_function.lua");
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\missions\\citywar_global\\ladder.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
MapTab = {};
MapTab[1]= {213, 1633, 3292};
MapTab[2]= {214, 1633, 3292};
MapTab[3]= {215, 1633, 3292};
MapTab[4]= {216, 1633, 3292};
MapTab[5]= {217, 1633, 3292};
MapTab[6]= {218, 1633, 3292};
MapTab[7]= {219, 1633, 3292};
MapTab[8]= {220, 1633, 3292};
MapCount = getn(MapTab);

LGTSK_QINGTONGDING_COUNT = 1;	
LGTSK_CITYWAR_SIGNCOUNT = 2;
LEAGUETYPE_CITYWAR_SIGN = 508;
LEAGUETYPE_CITYWAR_FIRST = 509;
nCityWar_Item_ID_G = 6		
nCityWar_Item_ID_D = 1	
nCityWar_Item_ID_P = 1499		
TIAOZHANLING_TASK_DATE = 1839 
TIAOZHANLING_TASK_COUNT = 1840 

Ctc3tru_TB_CITYWAR_ARRANGE =
 {
	{3,4, "Ph­îng T­êng"},--
	{1,2, "Thµnh §«"},--
	{2,3, "§¹i Lý"},--
	{5,6, "BiÖn Kinh"},--
	{4,5, "T­¬ng D­¬ng"},--
	{0,1, "D­¬ng Ch©u"},--
	{6,0, "L©m An"},--
}	
	
function Ctc3tru_GetNameCityWithnnCan1To7(ncan)
	return Ctc3tru_TB_CITYWAR_ARRANGE[ncan][3];
end
	
function Ctc3tru_WhichWarBegin()
	for i = 1,7 do
		if (HaveBeginWar(i) ~= 0) then
			return i;
		end;
	end;
	return 0;
end;	
	
function OnCancel()
end;

function PreEnterGame()
	TongName, result = GetTong()
	if (TongName ~= "") then
		for i = 0, 7 do
			if (IsArenaBegin(i) == 1) then
				Tong1, Tong2 = GetArenaBothSides(i);
				if (Tong1 == TongName or Tong2 == TongName) then
					EnterBattle(i);
					return
				end;
			end;
		end;
	end;
	EnterGame();
end;

function EnterGame()
	ExtraArenaInfo = {"<#> (Kho¶ng trèng) ", "<#> (Kho¶ng trèng) ", "<#> (Kho¶ng trèng) ", "<#> (Kho¶ng trèng) ", "<#> (Kho¶ng trèng) ", "<#> (Kho¶ng trèng) ", "<#> (Kho¶ng trèng) ", "<#> (Kho¶ng trèng) "};
	for i = 0, 7 do
		if (IsArenaBegin(i) == 1) then
			Tong1, Tong2 = GetArenaBothSides(i);
			ExtraArenaInfo[i + 1] = " ("..Tong1.." vs "..Tong2..") "
		end;
	end;

	Say("B¹n muèn vµo c«ng thµnh chiÕn dù tuyÓn thi ®Êu l«i ®µi kh«ng??", 9, "<#> L«i ®µi 1"..ExtraArenaInfo[1].."/EnterBattle", "<#> L«i ®µi 2"..ExtraArenaInfo[2].."/EnterBattle", "<#> L«i ®µi 3"..ExtraArenaInfo[3].."/EnterBattle", "<#> L«i ®µi 4"..ExtraArenaInfo[4].."/EnterBattle", "<#> L«i ®µi 5"..ExtraArenaInfo[5].."/EnterBattle", "<#> L«i ®µi 6"..ExtraArenaInfo[6].."/EnterBattle", "<#> L«i ®µi 7"..ExtraArenaInfo[7].."/EnterBattle", "<#> L«i ®µi 8"..ExtraArenaInfo[8].."/EnterBattle","Kh«ng ®i n÷a/OnCancel");
end;

function EnterBattle(nBattleId)
	if (IsArenaBegin(nBattleId) ~= 1) then 
		return 
	end;
	SetFightState(0)
	M,X,Y = GetWorldPos();
	SetTask(300, M);
	SetTask(301, X);
	SetTask(302, Y);
	NewWorld(MapTab[nBattleId + 1][1], MapTab[nBattleId + 1][2], MapTab[nBattleId + 1][3]);
end;

function main()
	if NPCCongThanhQuan3Tru ~= 1 then
		return Talk(1, "", "<color=Orange>C«ng thµnh Quan: <color>TÝnh n¨ng nµy t¹m ®ãng, h·y quay l¹i sau!")	
	end
	ArenaMain()
end

function SignupACity(sel)
	CityID = sel + 1;
	if (IsSigningUp(CityID) == 1) then
		SetTaskTemp(15, CityID);
		AskClientForNumber("SignUpFinal", 1000000, 99999999, "Xin nhËp sè tiÒn ®Êu thÇu vµo:");
	else
		Say("<#><"..GetCityAreaName(CityID).."<#> >thµnh, b¸o danh trËn L«i ®µi ch­a b¾t ®Çu ", 0);
	end;
end;

function SignUpTheOne()
	CityID = 0;
	for i = 1, 7 do
		if (IsSigningUp(i) == 1) then
			CityID = i;
		end;
	end;
	if (IsSigningUp(CityID) == 1) then
		SetTaskTemp(15, CityID);
		AskClientForNumber("SignUpFinal", 1000000, 99999999, "Xin nhËp sè tiÒn ®Êu thÇu vµo:");
	else
		Say("<#><"..GetCityAreaName(CityID).."<#> >thµnh, b¸o danh trËn L«i ®µi ch­a b¾t ®Çu ", 0);
	end;
end;

function SignUpFinal(Fee)
	CityID = GetTaskTemp(15);
	SignUpCityWarArena(CityID, Fee);
end;

function citywar_CheckVotes()
	local nCityId = getSigningUpCity(1);
	local tbVotes = citywar_tbLadder:GetInfo()
	local szMsg = format("<dec><npc>Bªn d­íi lµ bang héi tham gia ®Êu gi¸ khiªu chiÕn lÖnh thµnh <color=green>%s<color>: <enter>%s%s%s<enter>", Ctc3tru_GetNameCityWithnnCan1To7(nCityId), strfill_center("<color=yellow>STT<color>",4, " "), strfill_center("<color=yellow>       Bang héi<color>", 20, " "), strfill_center("<color=yellow>           Sè l­îng<color>", 20, " "))
	local res = {}
	for i = 1, getn(tbVotes) do
		tinsert(res, strfill_center(i, 4, " "))
		tinsert(res, strfill_center(tbVotes[i].szName, 20, " "))
		tinsert(res, strfill_center(tbVotes[i].nValue, 20, " "))
		tinsert(res, "<enter>")
	end
	PushString(szMsg)
	for i = 1, getn(res) do
		AppendString(res[i])
	end
	szMsg = PopString()
	TaskSayList(szMsg, "C¸m ¬n! Ta ®· râ råi./OnCancel")
end

function ArenaMain()
	local nCityId = getSigningUpCity(1);
	local Ctc3tru_GoCityWarCityID = Ctc3tru_WhichWarBegin();
	if (Ctc3tru_GoCityWarCityID >= 1 and Ctc3tru_GoCityWarCityID <= 7) then
		Ctc3tru_GoCityWarTong1, Ctc3tru_GoCityWarTong2 = GetCityWarBothSides(Ctc3tru_GoCityWarCityID);
		return Say("HiÖn t¹i <color=green>"..Ctc3tru_GetNameCityWithnnCan1To7(Ctc3tru_GoCityWarCityID).."<color> ®ang tiÕn hµnh c«ng thµnh chiÕn,<enter>Bang thñ thµnh lµ: <color=yellow>"..Ctc3tru_GoCityWarTong2.."<color><enter>Bang c«ng thµnh lµ: <color=yellow>"..Ctc3tru_GoCityWarTong1.."<color>.<enter><enter>VÞ nghÜa sÜ cã muèn tham gia kh«ng?", 8,
			"§i ChiÕn tr­êng c«ng thµnh/Ctc3tru_GoCityWarMap",
			"Ta ®Õn giao lÖnh bµi/GiveTiaoZhanLing",
			"Xem t×nh h×nh ®Êu gi¸ khiªu chiÕn lÖnh/citywar_CheckVotes" ,
			"Ta muèn xem sè l­îng khiªu chiÕn lÖnh cña bang/ViewTiaoZhanLing",
			"T×m hiÓu t×nh h×nh c«ng thµnh chiÕn/GameInfo",
			"Sù nghÞ Thµnh chiÕn lÖnh bµi/TokenCard",
			"Mua dông cô hç trî C«ng thµnh chiÕn/AskDeal",
			"Kh«ng muèn g× c¶ /Cancel");
	else
		if (tonumber(GetLocalDate("%H"))>= 18 and tonumber(GetLocalDate("%H")) < 19 and getSignUpState(nCityId) == 1) then
			return Say(format("HiÖn t¹i c«ng thµnh chiÕn thµnh <color=green>%s<color> ®ang cho b¸o danh, ng­¬i muèn ®¨ng ký kh«ng?",Ctc3tru_GetNameCityWithnnCan1To7(nCityId)), 7, 
			"B¸o danh c«ng thµnh chiÕn/SignUpCityWar", 
			"Ta muèn xem t×nh h×nh b¸o danh c«ng thµnh chiÕn/ViewCityWarTong",
			"Ta muèn xem sè l­îng khiªu chiÕn lÖnh cña bang/ViewTiaoZhanLing",
			"T×m hiÓu t×nh h×nh c«ng thµnh chiÕn/GameInfo", 
			"Sù nghÞ Thµnh chiÕn lÖnh bµi/TokenCard", 
			"Mua dông cô hç trî C«ng thµnh chiÕn/AskDeal", 
			"Kh«ng muèn g× c¶ /OnCancel"
			);
		else
			return Say("§©y lµ n¬i nghÞ sù c«ng thµnh chiÕn, ng­¬i ®Õn cã viÖc g×?",7,
			"Ta ®Õn giao lÖnh bµi/GiveTiaoZhanLing",
			"Xem t×nh h×nh ®Êu gi¸ khiªu chiÕn lÖnh/citywar_CheckVotes" ,
			"Ta muèn xem sè l­îng khiªu chiÕn lÖnh cña bang/ViewTiaoZhanLing",
			"T×m hiÓu t×nh h×nh c«ng thµnh chiÕn/GameInfo",
			"Sù nghÞ Thµnh chiÕn lÖnh bµi/TokenCard",
			"Mua dông cô hç trî C«ng thµnh chiÕn/AskDeal",
			"Kh«ng muèn g× c¶ /Cancel");
		end
	end
end;

function Ctc3tru_GoCityWarMap()
	local Ctc3tru_GoCityWarCityID = Ctc3tru_WhichWarBegin();
	if (Ctc3tru_GoCityWarCityID >= 1 and Ctc3tru_GoCityWarCityID <= 7) then
		if (GetSkillState(472) == 1) then
			RemoveSkillState(472);
			Msg2Player("§· xãa hiÖu øng <enter>           [<color=white>Håi m¸u, håi n¨ng l­îng<color>] <enter>           trªn nh©n vËt.")
		end
		Tong1, Tong2 = GetCityWarBothSides(Ctc3tru_GoCityWarCityID);
		str = format("HiÖn t¹i <color=green>"..Ctc3tru_GetNameCityWithnnCan1To7(Ctc3tru_GoCityWarCityID).."<color> ®ang tiÕn hµnh c«ng thµnh chiÕn,<enter>Bang thñ thµnh lµ: <color=yellow>%s<color><enter>Bang c«ng thµnh lµ: <color=yellow>%s<color>.<enter><enter>VÞ nghÜa sÜ cã muèn tham gia Bªn nµo?", Tong2, Tong1);
		Say(str , 3, "Bªn c«ng/GoCityWarAttack", "Bªn thñ /GoCityWarDefend", "Kh«ng bªn nµo hÕt/CancelGoCityWar");
	end;
end;

function CancelGoCityWar()
	Say("ChiÕn tr­êng §ao KiÕm v« t×nh!  Xin nghÜa sÜ h·y quay vÒ ®Ó b¶o toµn tÝnh m¹ng", 0);
end;

function GoCityWarDefend()
	CityID = Ctc3tru_WhichWarBegin();
	if (CityID == 0 ) then 
		return
	end;
	TongName, result = GetTong()
	Tong1, Tong2 = GetCityWarBothSides(CityID);
	if (Tong2 ~= TongName and GetItemCountEx(CardTab[CityID * 2]) < 1) then 
		if (GetTask(TV_CITYID) ~= CityID or GetTask(TV_VALUE) ~= 1 or GetTask(TV_TASKID) ~= MISSIONID) then
			Say("Th©n phËn nghÜa sÜ ch­a phï hîp!  T¹i h¹ kh«ng d¸m m¹o muéi ®­a vµo!  Xin nghÜa sÜ quay vÒ! ", 0);
			return
		end;
	end;
	if (random(0,1) == 1) then
		NewWorld(222, 1614, 3172);
	else
		NewWorld(222, 1629, 3193);
	end;
end;

function GoCityWarAttack()
	CityID = Ctc3tru_WhichWarBegin();
	if (CityID == 0) then 
		return
	end;
	TongName, result = GetTong()
	Tong1, Tong2 = GetCityWarBothSides(CityID);
	if (Tong1 ~= TongName and GetItemCountEx(CardTab[CityID * 2 - 1]) < 1) then
		if (GetTask(TV_CITYID) ~= CityID or GetTask(TV_VALUE) ~= 2 or GetTask(TV_TASKID) ~= MISSIONID) then
			Say("Th©n phËn nghÜa sÜ ch­a phï hîp!  T¹i h¹ kh«ng d¸m m¹o muéi ®­a vµo!  Xin nghÜa sÜ quay vÒ! ", 0);
			return
		end
	end
	if (random(0,1) == 1) then
		NewWorld(223, 1614, 3172);
	else
		NewWorld(223, 1629, 3193);
	end;
end;

function ViewCityWarTong()
	local caption = nil
	local nCityId = getSigningUpCity(1);
	local nlgID = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId)) 
	local nlgcount = LG_GetMemberCount(nlgID)
	if nlgcount == 0 then
		caption = "<dec>HiÖn tai ch­a cã bang héi nµo b¸o danh c«ng thµnh."	
	else
		caption = "<dec>Bang héi b¸o danh c«ng thµnh chiÕn: \n"
		PushString(caption)
		for nindex=0,nlgcount do
			szTongName = LG_GetMemberInfo(nlgID,nindex)
			AppendString("<color=yellow>")
			AppendString(szTongName)
			AppendString("<color>\t")
		end
		caption = PopString()
	end
	local option = {"Trë vÒ/ArenaMain", "Tho¸t ra/OnCancel"}
	TaskSay(caption, option)
end

function GiveTiaoZhanLing()
	if checkBangHuiLimit() == 0 then
			Say("Xin lçi! §¹i hiÖp ch­a gia nhËp bang héi nµo c¶!",0);
			return 0;
	end
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCount = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCount >= 300) then
			Say("Mçi ngµy giao n¹p tèi ®a 300 lÖnh bµi. H«m nay ng­¬i ®· giao 300 lÖnh bµi råi, ngµy mai h·y tiÕp tôc.",0)
			return 0;
	end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	local szlgname = GetTongName();
	checkCreatLG(szlgname);
	checkJoinLG(szlgname);
	local szTongName, nTongID = GetTongName();
	local nsum = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT)
	if nsum >= 2000000000 then   
		Say("Tæng sè vâ l©m lÖnh ®· ®¹t giíi h¹n. Lóc kh¸c thö l¹i vËy.",0)
		return 0;
	end
	-- GiveItemUI("Giao nép khiªu chiÕn lÖnh", "Khiªu chiÕn lÖnh cã thÓ ®æi 50000 ®iÓm kinh nghiÖm, dïng ®Ó b¸o danh c«ng thµnh chiÕn cho bang héi.", "sure_GiveTiaoZhanLing", "OnCancel");
	GiveItemUI("Giao nép khiªu chiÕn lÖnh", "Khiªu chiÕn lÖnh cã thÓ ®æi 5000 ®iÓm kinh nghiÖm, dïng ®Ó b¸o danh c«ng thµnh chiÕn cho bang héi.", "sure_GiveTiaoZhanLing", "OnCancel");
end

Include("\\script\\missions\\citywar_global\\tasklist.lua")

function sure_GiveTiaoZhanLing(nCount)
	if nCount <= 0 then
		Say("ThËt ®¸ng tiÕc, ng­¬i ch­a giao vËt phÈm nhiÖm vô cho ta",2,"Giao l¹i vËt phÈm/GiveTiaoZhanLing","§Ó ta suy nghÜ l¹i/OnCancel");
		return 0;
	end
	local Ctc3truCountKCL = 0
	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		local g, d, p = GetItemProp(nItemidx);
		if (g ~= nCityWar_Item_ID_G or d ~= nCityWar_Item_ID_D or p ~= nCityWar_Item_ID_P) then
			Say("Ta kh«ng nhËn nh÷ng thø kh¸c, chØ cÇn ®­a ta <color=yellow>Khiªu chiÕn lÖnh<color> lµ ®­îc råi.", 2,"Giao l¹i vËt phÈm/GiveTiaoZhanLing","§Ó ta suy nghÜ l¹i/OnCancel");
			return 0;
		end;
		Ctc3truCountKCL = Ctc3truCountKCL + GetItemStackCount(nItemidx)
	end;
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCountall = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCountall+Ctc3truCountKCL > 300) then
			Say(format("ThËt ®¸ng tiÕc, h«m nay ng­¬i ®· nép vµo %d khiªu chiÕn lÖnh, chØ cÇn nép %d lÖnh bµi n÷a lµ ®­îc råi.",nCountall,300-nCountall),0)
			return 0;
	end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	local nCityId = getSigningUpCity(1);
	local szTongName, nTongID = GetTongName();
	local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT)
	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		RemoveItemByIndex(nItemidx)
	end;
	SetTask(TIAOZHANLING_TASK_COUNT,nCountall+Ctc3truCountKCL);
	LG_ApplyAppendMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName, szTongName, LGTSK_TIAOZHANLING_COUNT, Ctc3truCountKCL, "", "");
	-- nAddExp = Ctc3truCountKCL * 50000
	nAddExp = Ctc3truCountKCL * 5000
	AddOwnExp(nAddExp)
	Msg2Player(format("B¹n ®· nép vµo <color=green>%d<color> khiªu chiÕn lÖnh, nhËn ®­îc <color=yellow>%d<color> ®iÓm kinh nghiÖm",Ctc3truCountKCL,nAddExp))
	Ctc3tru_SetTask(19, Ctc3tru_GetTask(19) + Ctc3truCountKCL)
	Msg2Player("Tæng sè khiªu chiÕn lÖnh c¸c h¹ ®· nép vµo cho bang lµ: <color=yellow>"..Ctc3tru_GetTask(19))
	WriteLog(format("[C«ng thµnh chiÕn_giao khiªu chiÕn lÖnh]Date:%s Account:%s Name:%s Tong:%s Count:%d Exp:%d",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szTongName,Ctc3truCountKCL,nAddExp))
end;

function ViewTiaoZhanLing()
		local szTongName, nTongID = GetTongName();
		if (nTongID == 0 or ( GetTongFigure() ~= TONG_MASTER and GetTongFigure() ~= TONG_ELDER)) then
			Say("ThËt ®¸ng tiÕc, chØ cã bang chñ vµ tr­ëng l·o míi cã thÓ xem th«ng tin sè l­îng Khiªu ChiÕn LÖnh.", 0);
			return 0
		end
		checkCreatLG(szTongName);
		checkJoinLG(szTongName);
		local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT)
		Say(format("QuÝ bang ®· nép vµo <color=yellow>%d<color> khiªu chiÕn lÖnh.",nCurCount),0)
end

function TokenCard()
	Say("Thµnh ChiÕn lÖnh bµi dµnh cho nh÷ng ng­êi muèn vµo chi viÖn cho bang héi c«ng thñ thµnh! Xin cho hái môc ®Ých cña nghÜa sÜ?", 4, "Mua Thµnh chiÕn lÖnh bµi/BuyCard", "Thö lÖnh bµi/CheckCard", "Tr¶ l¹i lÖnh bµi/ReturnCard", "Kh«ng lµm g× c¶ /OnCancel");
end;

function BuyCard()
	if (GetName() == GetTongMaster()) then
		TongName, result = GetTong()
		for i = 1, 7 do
			Tong1, Tong2 = GetCityWarBothSides(i);
			if (Tong1 == TongName) then
				SetTaskTemp(15, CardTab[i * 2 - 1]);
				str_format = format("Th× ra ®¹i hiÖp lµ ng­êi khiªu chiÕn thµnh <color=green>%s<color>, lîi h¹i qu¸, ë ®©y cã b¸n lÖnh bµi c«ng thµnh cã hiÖu lùc trong 5 ngµy dµnh liªn minh cña quÝ bang, mçi lÖnh bµi gi¸ <color=yellow>%s l­îng.",Ctc3tru_GetNameCityWithnnCan1To7(i),CardPrice);
				Say(str_format, 2, "Mua mét Ýt/DealBuyCard", "T¹m thêi kh«ng cÇn/OnCancel");
				return
			elseif (Tong2 == TongName) then
				SetTaskTemp(15, CardTab[i * 2]);
				str_format = format("Th× ra ®¹i hiÖp lµ th¸i thó thµnh <color=green>%s<color>, lîi h¹i qu¸, t¹i ®©y cã b¸n lÖnh bµi thñ thµnh cã hiÖu lùc 5 ngµy dµnh cho liªn minh cña quÝ bang, mçi lÖnh bµi gi¸ <color=yellow>%s l­îng.",Ctc3tru_GetNameCityWithnnCan1To7(i),CardPrice);
				Say(str_format, 2, "Mua mét Ýt/DealBuyCard", "T¹m thêi kh«ng cÇn/OnCancel");
				return
			end;
		end;
		Say("B¹n kh«ng cã quan hÖ g× víi c¸c bang ph¸i c«ng thñ thµnh! Kh«ng thÓ sö dông Thµnh chiÕn lÖnh bµi!", 0);
	else
		Say("ChØ cã bang chñ míi ®­îc mua Thµnh ChiÕn lÖnh bµi", 0);
	end;
end;

function DealBuyCard(CardID)
	AskClientForNumber("PayForCard", 1, 30, "B¹n cÇn bao nhiªu?");
end;

function PayForCard(count)
	CardItemID = GetTaskTemp(15);
	if (CardItemID > 0 and count > 0) then
		if (Pay(count * CardPrice) ~= 0) then
			for i = 1,count do
				AddEventItem(CardItemID);
			end;
			Say("Xin h·y gi÷ kü! LÖnh bµi nµy dïng ®Ó kiÓm chøng ®ång minh trªn chiÕn tr­êng! Xin chó ý thêi gian trªn lÖnh bµi, chØ cã hiÖu lùc <color=yellow>5<color> ngµy, nÕu qu¸ thêi gian sÏ kh«ng sö dông ®­îc,cã thÓ quay l¹i ®©y tr¶ l¹i vµ lÊy l¹i phÝ.", 0);
		end;
	end;
end;

function CheckCard()
	count = 0;
	CardItemID = 0;
	for i=1,14 do
		newcount = count + GetItemCountEx(CardTab[i])
		if (newcount > count) then
			CardItemID = CardTab[i];
			count = newcount;
		end;
	end;
	if (count == 0) then
		Say("B¹n kh«ng hÒ cã lÖnh bµi nµo trong ng­êi!", 0);
	elseif (count > 1) then
		Say("B¹n mang qu¸ nhiÒu Thµnh ChiÕn lÖnh bµi, kh«ng biÕt b¹n muèn kiÓm chøng c¸i nµo! Xin chØ mang mét lÖnh bµi th«i!", 0);
	elseif (CardItemID ~= 0) then
		life = GetItemLife(CardItemID);
		if (life < 0) then
			Say("T×nh tr¹ng tÊm lÖnh bµi nµy lµ.......", 0);
		elseif (life < 7200) then
			Say(format("Sè lÖnh bµi c«ng thµnh nµy ®­îc ph¸t tr­íc <color=yellow>%s<color> ngµy, <color=green><enter>hiÖn vÉn cßn hiÖu lùc.",floor(life/1440)), 0)
		else
			Say(format("Sè lÖnh bµi c«ng thµnh nµy ®· ®­îc ph¸t tr­íc <color=yellow>%s<color> ngµy, <color=red><enter>hiÖn ®· qu¸ h¹n, kh«ng cßn hiÖu lùc sö dông.",floor(life/1440)), 0);
		end;
	end;
end;

function ReturnCard()
	count = 0;
	for i=1,14 do
		count = count + GetItemCountEx(CardTab[i]);
	end;
	if (count <= 0) then
		Say("B¹n kh«ng hÒ cã lÖnh bµi nµo trong ng­êi!", 0);
	else
		str_format = format("LÖnh bµi c«ng thµnh ®­îc thu l¹i víi gi¸ <color=yellow>%s l­îng<color>, ng­¬i ®ång ý tr¶ l¹i kh«ng?",count*ReturnCardPrice);
		Say(str_format, 2, "ta muèn tr¶ l¹i /DealReturnCard", "Kh«ng, ta chØ hái chót th«i/OnCancel");
	end;
end;

function DealReturnCard()
	money = 0;
	for i=1,14 do
		count = GetItemCountEx(CardTab[i]);
		if (count > 0) then
			money = money + count * ReturnCardPrice;
			for j=1,count do DelItemEx(CardTab[i]) end;
		end;
	end;
	Earn(money);
end;

function GameInfo()
Say("Muèn t×m hiÓu th«ng tin thµnh thÞ nµo?", 9, Ctc3tru_GetNameCityWithnnCan1To7(1).."/CityInfo", Ctc3tru_GetNameCityWithnnCan1To7(2).."/CityInfo", Ctc3tru_GetNameCityWithnnCan1To7(3).."/CityInfo", Ctc3tru_GetNameCityWithnnCan1To7(4).."/CityInfo", Ctc3tru_GetNameCityWithnnCan1To7(5).."/CityInfo", Ctc3tru_GetNameCityWithnnCan1To7(6).."/CityInfo", Ctc3tru_GetNameCityWithnnCan1To7(7).."/CityInfo", "Trë vÒ/ArenaMain", "Kh«ng cÇn ®©u/OnCancel");
end;

function CityInfo(nSel)
	local nCityId =  nSel + 1;
	SetTaskTemp(245, nCityId);
	if (nCityId < 1 or nCityId > 7) then 
		return
	end;
	Say(format("Muèn t×m hiÓu th«ng tin g× vÒ c«ng thµnh chiÕn <color=green>%s<color>?",Ctc3tru_GetNameCityWithnnCan1To7(nCityId)), 4, 
		"T×nh h×nh b¸o danh/RegisterInfo", 
		"C«ng thµnh chiÕn sù /CityWarInfo", 
		"Trë vÒ/GameInfo", 
		"Kh«ng cÇn ®©u/OnCancel");
end;

function RegisterInfo()
	local nCityId = GetTaskTemp(245);
	if (nCityId < 1 or nCityId > 7) then 
		return
	end;
	local nHour = tonumber(GetLocalDate("%H"));
	if (nHour<18 or nHour>=19) then
		Say("HiÖn t¹i kh«ng ph¶i lµ thêi gian b¸o danh c«ng thµnh chiÕn.", 2, "Trë vÒ/GameInfo", "Kh«ng cÇn ®©u/OnCancel");
		return 0;
	end;
	if (nCityId ~= getSigningUpCity(1) or getSignUpState(nCityId) ~= 1) then
		Say(format("HiÖn t¹i c«ng thµnh chiÕn <color=green>%s<color> kh«ng ë giai ®o¹n b¸o danh.",Ctc3tru_GetNameCityWithnnCan1To7(nCityId)), 2, "Trë vÒ/GameInfo", "Kh«ng cÇn ®©u/OnCancel");
		return 0;
	end;
	local szElector = getCityWarElector(cityid_to_lgname(nCityId))
	if (szElector == "" or szElector == nil) then
		szElector = "<T¹m thêi kh«ng>";
	end;
Say(format("C«ng thµnh chiÕn <color=green>%s<color> ®ang ®­îc chuÈn bÞ, bang héi thi ®ua lÖnh bµi xÕp h¹ng thø nhÊt lµ : <color=yellow>%s<color><color=red><enter>NÕu cã bang nµo cã sè l­îng lÖnh bµi b»ng víi bang xÕp thø 1, th× hÖ thèng sÏ ngÉu nhiªn chän ra bang c«ng thµnh cho ngµy mai.<color>",Ctc3tru_GetNameCityWithnnCan1To7(nCityId),szElector), 2, "Trë vÒ/GameInfo", "Kh«ng cÇn ®©u/OnCancel");
end;

function getCityWarElector(szLeagueName)
	local leagueObj = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLeagueName)
	if (leagueObj == 0) then
		return 
	end;
	local nMem = LG_GetMemberCount(leagueObj);
	if (nMem < 1) then
		return
	end;
	local szMem = "";
	local tbMem = {};
	for i = 0, nMem - 1 do
		szMem = LG_GetMemberInfo(leagueObj, i);
		ncount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, szLeagueName, szMem, LGTSK_QINGTONGDING_COUNT);
		if (getn(tbMem) == 0) then
			tbMem[1] = {szMem, ncount};
		else
			if (ncount == tbMem[1][2]) then
				tbMem[getn(tbMem) + 1] = {szMem, ncount};
			elseif (ncount > tbMem[1][2]) then
				tbMem = {};
				tbMem[getn(tbMem) + 1] = {szMem, ncount};
			end;
		end;
	end;
	return tbMem[random(getn(tbMem))][1];
end;

function ArenaInfo()
	nCityId = GetTaskTemp(245);
	if (nCityId < 1 or nCityId > 7) then 
		return
	end;
	Say(GetArenaSchedule(nCityId), 0);
end;

function AllArenaInfo()
	nCityId = GetTaskTemp(245);
	if (nCityId < 1 or nCityId > 7) then 
		return
	end;
end;

function CityWarInfo()
	local nCityId = GetTaskTemp(245);
	if (nCityId < 1 or nCityId > 7) then 
		return
	end;
	local str_format = format("C«ng thµnh chiÕn <color=green>%s<color> ngµy mai: ",Ctc3tru_GetNameCityWithnnCan1To7(nCityId));
	local str1, str2 = GetCityWarBothSides(nCityId);
	if (str1 ~= "" and str2 ~= "" ) then
		if (nCityId == getSigningUpCity(2)) then
			str_format = format("C«ng thµnh chiÕn <color=green>%s<color> h«m nay: ",Ctc3tru_GetNameCityWithnnCan1To7(nCityId));
			if (HaveBeginWar(nCityId) == 1) then 
				str_format = format("Tr­íc m¾t <color=green>%s<color> ®ang ë giai ®o¹n c«ng thµnh chiÕn: ",Ctc3tru_GetNameCityWithnnCan1To7(nCityId));
			end;
		end;
		str_format = format("%s <enter>Phe thñ lµ <color=yellow>%s<color> <enter>Phe c«ng lµ <color=yellow>%s<color>",str_format,str2,str1);
		Say(str_format , 2, "Trë vÒ/GameInfo", "Kh«ng cÇn ®©u/OnCancel");
	else
		Say(format("Tr­íc m¾t <color=green>%s<color> ch­a b­íc vµo giai ®o¹n c«ng thµnh chiÕn!",Ctc3tru_GetNameCityWithnnCan1To7(nCityId)) , 2, "Trë vÒ/GameInfo", "Kh«ng cÇn ®©u/OnCancel");
	end;
end;

	function checkIsTakeQingtongDing(szTongName, nTongID, nCityId)
		if (nTongID == 0 or GetTongMaster()~= GetName()) then
			Say("ChØ cã bang chñ bang b¸o danh c«ng thµnh vµ bang thÊt b¹i trong cuéc thi thè lÖnh bµi míi cã thÓ nhËn l¹i tÝn vËt.", 0);
			return 0;
		end;
		if (nCityId < 1 or nCityId > 7) then
			return 0;
		end;
		local nHour = tonumber(GetLocalDate("%H"));
		if (nHour < 19) then
			Say("Thêi gian nhËn l¹i tÝn vËt c«ng thµnh chiÕn ®· hÕt, trong kho¶ng thêi gian tõ 19h00 ®Õn 24h00 mçi ngµy, bang héi tranh ®ua lÖnh bµi thÊt b¹i cã thÓ ®Õn chç ta ®Ó nhËn l¹i khiªu chiÕn lÖnh.", 0)
			return 0;
		end;
		if (getSignUpState(nCityId) == 1) then
			Say(format("B¸o danh tham gia tranh ®ua lÖnh bµi thµnh %s cho ngµy mai vÉn ch­a kÕt thóc, h·y tiÕp tôc tham gia.",GetCityAreaName(nCityId)), 0);
			return 0;
		end;
		local szChallenger = GetCityWarBothSides(nCityId);
		if (szChallenger == szTongName) then
			Say(format("QuÝ bang ®· trë thµnh bang c«ng thµnh %s vµo ngµy mai, tÝn vËt c«ng thµnh ta ®· giao l¹i cho th¸i thó råi.",GetCityAreaName(nCityId)), 0);
			return 0;
		end;
		local szChallenger = GetCityOwner(nCityId);
		if (szChallenger == szTongName) then
			Say(format("Ng­¬i ®· lµ th¸i thó thµnh %s, kh«ng cÇn ph¶i nhËn tÝn vËt c«ng thµnh n÷a.",GetCityAreaName(nCityId)), 0);
			return 0;
		end;
		local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName);
		if (FALSE(nlid)) then
			Say("Ch­a b¸o danh tham gia c«ng thµnh chiÕn ngµy mai, ë ®©y kh«ng cã tÝn vËt cña ng­¬i.", 0);
			return 0;
		end;
		return 1;
	end;
	
	function getSignUpState(nCityId)
		return LG_GetLeagueTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), 1);
	end;
	
function TakeQingtongDing()
	local szTongName, nTongID = GetTongName();
	local nCityId = getSigningUpCity(1);
	if (checkIsTakeQingtongDing(szTongName, nTongID, nCityId) ~= 1) then
		return 0
	end;
	local ncount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT);
	if (ncount < 1) then
		Say("TÝn vËt b¸o danh c«ng thµnh ta ®· tr¶ l¹i hÕt cho ng­¬i råi.", 0);
	else
		Say(format("Ng­¬i cã %s khiªu chiÕn lÖnh, h·y s¾p xÕp l¹i hµnh trang tr­íc khi nhËn l¹i lÖnh bµi.",ncount), 3, "Ta muèn nhËn l·nh/#sure_takeQingtongDing("..ncount..")", "Trë vÒ/ArenaMain", "L¸t n÷a quay l¹i /OnCancel");
	end;
end;

function sure_takeQingtongDing(ncount)
	local szTongName, nTongID = GetTongName();
	local nCityId = getSigningUpCity(1);
	if (checkIsTakeQingtongDing(szTongName, nTongID, nCityId) == 1) then
		local nFree = CalcFreeItemCellCount();
		if (nFree > 6) then
			local szMsg = format("§©y lµ <color=yellow>%s<color> khiªu chiÕn lÖnh cña ng­¬i.",ncount);
			if (nFree < ncount) then
				szMsg = format("Ng­¬i cã <color=yellow>%s<color> khiªu chiÕn lÖnh, v× hµnh trang kh«ng ®ñ, ta tr¶ l¹i tr­íc %s c¸i. VÉn cßn <color=yellow>%s<color> c¸i ch­a nhËn, h·y nhËn tr­íc 24h00 ngµy h«m nay!",ncount,nFree,(ncount - nFree));
				ncount = nFree;
			end;
			for i =1, ncount do
				AddItem(nCityWar_Item_ID_G,nCityWar_Item_ID_D,nCityWar_Item_ID_P,1,1,1);
			end;
			LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT, -nFree);
			WriteLog(format("[Tranh ®ua c«ng thµnh chiÕn]%s Name:%s Account:%s Tong:%s Thµnh thÞ: %s NhËn l¹i khiªu chiÕn lÖnh %s",date(),GetName(),GetAccount(),szTongName,cityid_to_lgname(nCityId),ncount));
			Say(szMsg, 0);
		else
			Say("Hµnh trang kh«ng ®ñ chç trèng. Chó ý lµ tr­íc 24h00 ph¶i ®Õn nhËn l¹i tÝn vËt, nÕu kh«ng sÏ kh«ng thÓ nhËn l¹i n÷a.", 0);
		end;
	end;
end;

function SignUpCityWar()
	local nCityId = getSigningUpCity(1);
	local szTongName, nTongID = GetTongName();
	if (checkSignUpCityWar(szTongName, nTongID, nCityId) ~= 1) then
		return 0;
	end;
	local szMsg = format("<dec>HiÖn t¹i ®ang tiÕn hµnh b¸o danh thµnh <color=green>%s<color>.",Ctc3tru_GetNameCityWithnnCan1To7(nCityId));
	local szElector = getCityWarElector(cityid_to_lgname(nCityId))--"<ÔÝÎÞ>"
	if (szElector == "" or szElector == nil) then
		szElector = "<T¹m thêi ch­a cã>";
	end
	local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName);
	if (FALSE(nlid)) then
		szMsg = szMsg.."ChØ cÇn cã 'Khiªu chiÕn lÖnh' th× cã thÓ tham gia tranh ®ua. Qui t¾c tranh ®ua: Bang héi <color=yellow>ch­a chiÕm thµnh<color> cÊp <color=yellow>5<color> trë lªn cã thÓ sö dông '<color=yellow>Khiªu chiÕn lÖnh<color>' ®Ó tham gia tranh ®ua. Thêi gian tranh ®ua lµ <color=yellow>18h00 ®Õn 19h00 mçi ngµy<color>. Tr­íc 19h00, bang héi nµo ®Æt vµo sè l­îng khiªu chiÕn lÖnh <color=yellow>nhiÒu nhÊt<color> sÏ nhËn ®­îc quyÒn c«ng thµnh chiÕn ngµy mai.<color=red><enter>NÕu cã bang héi cã cïng sè lÖnh bµi víi bang xÕp thø 1 th× hÖ thèng sÏ ngÉu nhiªn chän ra mét bang c«ng thµnh cho ngµy mai.<color><enter>Bang héi hiÖn t¹i xÕp thø 1 lµ: "..szElector
	else
		local nCount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT);
		szMsg = format("%sQui t¾c tranh ®ua : Bang héi <color=yellow>ch­a chiÕm thµnh<color> cÊp <color=yellow>5<color> trë lªn cã thÓ sö dông '<color=yellow>Khiªu chiÕn lÖnh<color>' ®Ó tham gia tranh ®ua. Thêi gian tranh ®ua lµ <color=yellow>18h00 ®Õn 19h00<color> mçi ngµy. Tr­íc 19h00, bang héi nµo ®Æt vµo sè l­îng khiªu chiÕn lÖnh <color=yellow>nhiÒu nhÊt<color> sÏ nhËn ®­îc quyÒn c«ng thµnh chiÕn ngµy mai.<color=red><enter>NÕu cã bang héi cã cïng sè lÖnh bµi víi bang xÕp thø 1 th× hÖ thèng sÏ ngÉu nhiªn chän ra mét bang c«ng thµnh cho ngµy mai.<color><enter><color=yellow>Bang héi hiÖn t¹i xÕp thø 1 lµ<color>: <color=green>%s<color><enter><color=yellow>Sè l­îng khiªu chiÕn lÖnh tranh ®ua <color=green>%s <color=yellow>cña quÝ bang lµ:<color> %s",szMsg,szElector,szTongName,nCount)
	end;
	TaskSayList(szMsg, "Ta muèn tranh ®ua lÖnh bµi/want_signupcitywar", "Trë vÒ/ArenaMain", "§Ó ta suy nghÜ l¹i/OnCancel");
end;

function want_signupcitywar()
	local szTongName, nTongID = GetTongName();
	local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT)
	if nCurCount <= 0 then
		Say("QuÝ bang kh«ng cã khiªu chiÕn lÖnh, kh«ng thÓ giao nép, h·y thu thËp khiªu chiÕn lÖnh råi h·y ®Õn t×m ta.",0)
		return 0
	end
	if nCurCount > 1000000 then
		nCurCount = 1000000
	end
	AskClientForNumber("sure_signupcitywar", 0,nCurCount,"Giao nép khiªu chiÕn lÖnh")
end;

function sure_signupcitywar(nCount)
	local nCityId = getSigningUpCity(1);
	if not (tonumber(GetLocalDate("%H"))>= 18 and tonumber(GetLocalDate("%H")) < 19 and getSignUpState(nCityId) == 1) then
		Talk(1, "", "HiÖn t¹i kh«ng ph¶i lµ thêi gian b¸o danh c«ng thµnh chiÕn.")
		return 1
	end
	local szTongName, nTongID = GetTongName();
	local nTongCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName,szTongName,LGTSK_TIAOZHANLING_COUNT)
	if nCount > nTongCurCount or nCount > 1000000 then
		Say("Khiªu chiÕn lÖnh kh«ng ®ñ, kh«ng thÓ giao nép, xin h·y thu thËp tiÕp råi quay l¹i.",0)
		return 1
	end
	local nCityId = getSigningUpCity(1);
	local nlg = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId));
	local nlid = LG_GetLeagueObjByRole(LEAGUETYPE_CITYWAR_SIGN, szTongName);
	if (FALSE(nlid)) then
			local nMemberID = LGM_CreateMemberObj() 
			LGM_SetMemberInfo(nMemberID, szTongName, 0, LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId));
			LG_AddMemberToObj(nlg, nMemberID);
			local ret = LGM_ApplyAddMember(nMemberID, "", "")
			LGM_FreeMemberObj(nMemberID)
	end;
	local nCurCount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, cityid_to_lgname(nCityId), szTongName, LGTSK_QINGTONGDING_COUNT);
	citywar_tbLadder:AddOneInGameServer(nTongID, cityid_to_lgname(nCityId), szTongName, nCount)
	LG_ApplyAppendMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName, szTongName, LGTSK_TIAOZHANLING_COUNT, -nCount, "", "");
	WriteLog(format("[Tranh ®ua c«ng thµnh chiÕn]%s Name:%s Account:%s TongName:%s Thµnh thÞ: %s Sè l­îng tranh ®ua c«ng thµnh: %s",date(),GetName(),GetAccount(),szTongName,cityid_to_lgname(nCityId),(nCount + nCurCount)));
	local szFirstTong = checkFirstSignUpChallenger(cityid_to_lgname(nCityId), szTongName, nCount + nCurCount);
	if (szFirstTong == szTongName) then
		Say(format("Sè l­îng khiªu chiÕn lÖnh bang <color=green>%s<color> hiÖn t¹i lµ: <color=yellow>%s<color> c¸i, t¹m thêi xÕp thø 1, tuy nhiªn, h·y lu«n theo dâi t×nh h×nh biÕn ®éng.",szTongName,(nCount + nCurCount)), 0);
	else
		Say(format("Sè l­îng khiªu chiÕn lÖnh bang <color=green>%s<color> hiÖn t¹i lµ: <color=yellow>%s<color> c¸i. Bang héi xÕp thø 1 lµ <color=green>%s<color>, quÝ bang h·y tiÕp tôc nç lùc.",szTongName,(nCount + nCurCount),szFirstTong), 0);
	end;
end;

function checkSignUpCityWar(szTongName, nTongID, nCityId)
	local nHour = tonumber(GetLocalDate("%H"));
	if (nTongID == 0 or GetTongMaster() ~= GetName()) then
		Say("Ng­¬i kh«ng ph¶i lµ bang chñ. Trong kho¶ng thêi gian tõ 18h00 ®Õn 19h00, bang chñ bang héi ch­a chiÕm thµnh cã thÓ ®Õn b¸o danh tham gia c«ng thµnh chiÕn cho ngµy h«m sau.", 0);
	elseif (nHour < 18 or nHour >= 19) then
		Say("HiÖn t¹i kh«ng ph¶i lµ thêi gian b¸o danh c«ng thµnh chiÕn. Mçi ngµy tõ <color=yellow>18h00 ®Õn 19h00<color>, bang héi ch­a chiÕm thµnh cã thÓ ®Õn ®©y b¸o danh tham gia c«ng thµnh chiÕn cho ngµy h«m sau.", 0);
	-- elseif (TONG_GetExpLevel(nTongID) < 5) then
		-- Say("§ßi hái ®¼ng cÊp bang héi ®¹t cÊp <color=yellow>5<color> trë lªn míi cã thÓ b¸o danh c«ng thµnh chiÕn cho ngµy h«m sau.", 0);
	elseif (checkCityOwner(szTongName) ~= 0) then
		Say("Ng­êi ®· lµ chñ thµnh <color=yellow>"..Ctc3tru_GetNameCityWithnnCan1To7(checkCityOwner(szTongName)).."<color>, h·y lo gi÷ thµnh cña ngµi tr­íc ®·.", 0);
	elseif (checkCItyChallenger(szTongName) ~= 0) then
			Say(format("Ng­¬i ®· lµ phe khiªu chiÕn thµnh <color=green>%s<color>, kh«ng thÓ tranh ®ua lÖnh bµi trong ngµy h«m nay.",Ctc3tru_GetNameCityWithnnCan1To7(nCityId)));
	elseif (getSignUpState(nCityId) ~= 1) then
		Say("HiÖn t¹i b¸o danh c«ng thµnh vÉn ch­a b¾t ®Çu, h·y chuÈn bÞ tinh thÇn s½n sµng", 0);
	else
		return 1;
	end;
	return 0;
end;

function checkCityOwner(szTongName)
	-- for i=1, 7 do
		-- if (GetCityOwner(i) == szTongName) then
			-- return i;
		-- end;
	-- end;
	-- return 0;
	
	-- nay 1 bang cã thÓ thèng lÜnh nhiÒu thµnh thÞ
	local nCityId = getSigningUpCity(1);
	if (GetCityOwner(nCityId) == szTongName) then
		return nCityId
	end
	return 0;
end;

function checkCItyChallenger(szTongName)
	for i=1, 7 do
		if (GetCityWarBothSides(i) == szTongName) then
			return i;
		end;
	end;
	return 0;
end;

function checkFirstSignUpChallenger(szLeagueName, szTongName, nCurCount)
	local szFirstTong = getCityWarElector(szLeagueName)
	local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLeagueName)
	if (FALSE(szFirstTong)) then
		local nMemberID = LGM_CreateMemberObj() 
		LGM_SetMemberInfo(nMemberID, szTongName, 0, LEAGUETYPE_CITYWAR_FIRST, szLeagueName);
		LG_AddMemberToObj(nlid, nMemberID);
		local ret = LGM_ApplyAddMember(nMemberID, "", "") ;
		LGM_FreeMemberObj(nMemberID);
		if (ret == 1) then
			LG_ApplyAppendMemberTask(LEAGUETYPE_CITYWAR_FIRST, szLeagueName, szTongName, LGTSK_QINGTONGDING_COUNT, nCurCount);
		end;
		return szTongName;
	end;
	nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szLeagueName);
	local nCount = LG_GetMemberCount(nlid);
	local szTemTong = szFirstTong;
	for i = 0, nCount - 1 do
		local szMem = LG_GetMemberInfo(nlid, i);
		if (szMem == szFirstTong) then
			local nMemCount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, szLeagueName, szMem, LGTSK_QINGTONGDING_COUNT);
			if (nMemCount <= nCurCount) then
				szTemTong = szTongName;
				break
			end;
		end;
	end;
	nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLeagueName);
	if (szTemTong ~= szFirstTong) then
		local nMemberID = LGM_CreateMemberObj() 
		LGM_SetMemberInfo(nMemberID, szTemTong, 0, LEAGUETYPE_CITYWAR_FIRST, szLeagueName);
		LG_AddMemberToObj(nlid, nMemberID);
		local ret = LGM_ApplyAddMember(nMemberID, "", "") ;
		LGM_FreeMemberObj(nMemberID);
	end;
	return getCityWarElector(szLeagueName);
end;

