Include("\\script\\global\\baijuwanhead.lua");
Include("\\script\\global\\judgeoffline_limit.lua");	
Include("\\script\\item\\ib\\zimudai.lua");
Include("\\script\\lib\\player.lua")
Include("\\script\\trip\\define.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
IncludeLib("TIMER")
arraymap = 
	{
		["1"] = "Ph­îng T­êng",
		["11"] = "Thµnh §«",
		["37"] = "BiÖn Kinh",
		["80"] = "D­¬ng Ch©u",
		["78"] = "T­¬ng D­¬ng",
		["162"] = "§¹i Lý",
		["176"] = "L©m An",
		["20"] = "Giang T©n Th«n",
		["53"] = "Ba L¨ng huyÖn",
		["54"] = "Nam Nh¹c trÊn",
		["99"] = "VÜnh L¹c trÊn",
		["100"] = "Chu Tiªn trÊn",
		["101"] = "§¹o H­¬ng th«n",
		["121"] = "Long M«n trÊn",
		["153"] = "Th¹ch Cæ trÊn",
		["174"] = "Long TuyÒn th«n",
		["13"] = "Nga Mi",
		["25"] = "§­êng M«n",
		["49"] = "Thiªn NhÉn",
		["81"] = "Vâ §ang",
		["103"] = "ThiÕu L©m",
		["115"] = "C¸i Bang",
		["131"] = "C«n L«n",
		["154"] = "Thóy Yªn",
		["183"] = "Ngò §éc",
		["235"] = "§µo Hoa ®¶o (1) ",
		["236"] = "§µo Hoa ®¶o (2) ",
		["237"] = "§µo Hoa ®¶o (3) ",
		["238"] = "§µo Hoa ®¶o (4) ",
		["239"] = "§µo Hoa ®¶o (5) ",
		["240"] = "§µo Hoa ®¶o (6) ",
		["241"] = "§µo Hoa ®¶o (7) ",
		["835"] = "V« Danh Cèc (1)",
		["836"] = "V« Danh Cèc (2)",
		["837"] = "V« Danh Cèc (3)",
		["838"] = "V« Danh Cèc (4)",
		["839"] = "V« Danh Cèc (5)",
		["840"] = "V« Danh Cèc (6)",
		["586"] = "Khu vùc bang héi chung",
		["587"] = "Khu vùc bang - Thµnh §«",
		["588"] = "Khu vùc bang - §¹i Lý",
		["589"] = "Khu vùc bang - Ph­îng T­êng",
		["590"] = "Khu vùc bang - L©m An",
		["591"] = "Khu vùc bang - T­¬ng D­¬ng",
		["593"] = "Khu vùc bang - D­¬ng Ch©u",
		["594"] = "Khu vùc bang - BiÖn Kinh",
		["595"] = "Khu vùc bang héi chung",
		["596"] = "Khu vùc bang héi chung",
		["597"] = "Khu vùc bang héi chung",
	};

function judgeoffline(player_count, offline_count)
	judgecontion();
	return 0
end

function judgecontion()
	if AllowUyThacBachCauHoan ~= 1 then Say("HiÖn t¹i TÝnh n¨ng ñy th¸c ®ang t¹m ®ãng, sÏ më l¹i tÝnh n¨ng nµy sau khi cã th«ng b¸o!") return 1 end
	local tbSpareTime = {};
	local tbAexpTask = {AEXP_TIANXING_TIME_TASKID,AEXP_SPECIAL_TIME_TASKID,AEXP_TASKID, AEXP_SMALL_TIME_TASKID,
	AEXP_SPECIAL_SKILL_TASKID, AEXP_SKILL_TIME_TASKID, AEXP_SMALL_SKILL_TASKID};
	local btime = 0;
	for i = 1, getn(tbAexpTask) do
		tbSpareTime[i] = {};
		tbSpareTime[i][1] = GetTask(tbAexpTask[i]);
		tbSpareTime[i][2], tbSpareTime[i][3] = getFrame2MinAndSec(tbSpareTime[i][1]);	
		if (tbSpareTime[i][1] >= FRAME2TIME * 60 and btime ~= 1) then
			btime = 1;
		end;
	end;
	if (btime == 1 and IsCharged() == 1) then
		local nSkillExpID = GetTask(AEXP_SKILL_ID_TASKID);
		local szSkillExpName = "";
		if (nSkillExpID ~= 0) then
			szSkillExpName = "<color=yellow>"..GetSkillName(nSkillExpID).."<color>";
		else
			szSkillExpName = "<color=blue>Ch­a chän kü n¨ng<color>";
		end
		local szmsg = format("Thêi gian ñy th¸c rêi m¹ng cßn: Thiªn tinh b¹ch c©u hoµn <color=red>%d<color>tiÕng <color=red>%d<color> phót"..
			"<enter>§¹i B¹ch CÇu Hoµn §Æc BiÖt<color=red>%d<color>giê<color=red>%d<color>phót"..
			"<enter>§¹i B¹ch CÇu Hoµn ñy th¸c<color=red>%d<color>giê<color=red>%d<color>phót"..
			"<enter>B¹ch CÇu Hoµn ñy th¸c<color=red>%d<color>giê<color=red>%d<color>phót"..
			"<enter>§é thuÇn thôc kü n¨ng(%s): §ai B¹ch CÇu Hoµn kü n¨ng ®Æc hiÖu<color=red>%d<color>giê<color=red>%d<color>phót"..
			"<enter>§¹i B¹ch CÇu Hoµn Kü N¨ng<color=red>%d<color>giê<color=red>%d<color>phót"..
			"<enter>Bach CÇu Hoµn Kü N¨ng<color=red>%d<color>giê<color=red>%d<color>phót"..
			"<enter>Khi ñy th¸c nÕu nh­ cã hiÖu qu¶ cu¶ Thiªn Tinh B¹ch CÇu Hoµn, ­u tiªn hiÖu qu¶ cña lo¹i B¹ch cÇu Hoµn nµy vµ kinh nghiÖm vµ sÏ trõ ®i thêi gian hiÖu qu¶ t­¬ng øng.", 
			tbSpareTime[1][2],tbSpareTime[1][3],
			tbSpareTime[2][2],tbSpareTime[2][3],
			tbSpareTime[3][2],tbSpareTime[3][3],
			tbSpareTime[4][2],tbSpareTime[4][3],
			szSkillExpName, tbSpareTime[5][2],tbSpareTime[5][3],
			tbSpareTime[6][2],tbSpareTime[6][3],
			tbSpareTime[7][2],tbSpareTime[7][3]);
		local szSay =
		{	"B¾t ®Çu rêi m¹ng vÉn t¨ng kinh nghiÖm/beginoffline",
			"Chän kü n¨ng rêi m¹ng vÉn t¨ng kinh nghiÖm/#selectofflineskill('judgecontion')",
			"B¾t ®Çu ñy th¸c trªn m¹ng/begin_onlinecommission",
			"Dõng ñy th¸c trªn m¹ng/end_onlinecommission",
			"Rêi m¹ng nhËn th­ëng/offlineaward",
			"§Ó ta suy nghÜ l¹i/donothing"
		};
		Describe(szmsg, getn(szSay), szSay[1], szSay[2], szSay[3], szSay[4], szSay[5], szSay[6]);
	else
		if (IsCharged() ~= 1) then
			Talk(1, "", "V× ng­¬i kh«ng ph¶i lµ tµi kho¶n n¹p thÎ, cho nªn kh«ng thÓ sö dông tÝnh n¨ng rêi m¹ng ñy th¸c, xin h·y n¹p thÎ råi sau ®ã sö dông tÝnh n¨ng nµy nhÐ.");
			return
		end;
		Say("Thêi gian cßn l¹i ñy th¸c kinh nghiÖm B¹ch CÇu Hoµn cña b¹n lµ<color=red>0<color>phót. Ng­¬i cã thÓ sö dông §¹i B¹ch CÇu Hoµn §Æc BiÖt hoÆc lµ §¹i B¹ch CÇu Hoµn ®Ó t¨ng thêi gian ñy th¸c cña m×nh. <enter>hoÆc lµ chän<color=yellow> ñy th¸c rêi m¹ng miÔn phÝ<color>, c¸i nµy chØ cã thÓ nhËn ®­îc mét chót Ýt kinh nghiÖm.",3,
			"Uû Th¸c MiÔn PhÝ/beginoffline",
			"§Ó ta suy nghÜ l¹i/donothing");
	end
end

function begin_onlinecommission()
	local bRet = check_if_can_offline()
	if bRet then
	return bRet end
	local sparetime = getsparetime();
	if (sparetime <= 0) then
		Say("Thêi gian ñy th¸c kinh nghiÖm cña ng­¬i cßn l¹i lµ 0 phót, hoÆc ch­a lùa chän rêi m¹ng ñy th¸c kü n¨ng, xin h·y x¸c nhËn l¹i råi sö dông tÝnh n¨ng nµy nhÐ.", 0);
	return 3 end

	if (GetOnlineCommissionStatus() ~= 0) then
		Msg2Player("HiÖn t¹i ng­¬i ®· ñy th¸c trªn m¹ng råi")
	else
		Msg2Player("B¹n ®· trong tr¹ng th¸i ñy th¸c trªn m¹ng")
		SetOnlineCommissionStatus(1)
		WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tbegin_onlinecommission, last online time:%s",
						GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo()));
	end
end

function end_onlinecommission()
	if (GetOnlineCommissionStatus() == 0) then
		Msg2Player("HiÖn t¹i ng­¬i kh«ng ñy th¸c trªn m¹ng")
	else
		SetOnlineCommissionStatus(0)
		Msg2Player("Ng­¬i ®· hñy ñy th¸c trªn m¹ng")
		WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tend_onlinecommission, last online time:%s",GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo()));
	end
end

function check_if_can_offline()
	
	local nTripMode = GetTripMode()
	if nTripMode == TRIP_MODE_SERVER then
		Talk(1, "", "Xin ®¹i hiÖp l­îng thø kh«ng thÓ sö dông t×nh n¨ng ñy th¸c t¹i server c«ng céng")
	return 1 end
	
	mapid = SubWorldIdx2MapCopy(SubWorld);
	strmapid = ""..mapid.."";
	if (arraymap[strmapid] == nil) then
		Say("Ng­¬i kh«ng thÓ thùc hiÖn tÝnh n¨ng ñy th¸c t¹i khu vùc nµy, xin h·y ®Õn mét khu vùc t­¬ng øng ( bao gåm tÊt c¶ c¸c thµnh thÞ th«n trÊn ) thùc hiÖn ñy th¸c rêi m¹ng.", 0);
	return 1 end
	if offlineCheckPermitRegion()~=1 then
		Say("§Ó ®õng lµm c¶n trë nh÷ng b­íc ®­êng giang hå hµnh hiÖp cña c¸c anh hïng hµo kiÖt, tèt nhÊt ng­¬i nªn tr¸nh xa nh÷ng n¬i nh­ <color=yellow> Xa Phu, D­îc §iÕm,TiÖm T¹p Hãa hoÆc lµ nh÷ng con ®­êng nhá <color> ®Ó mµ rêi m¹ng ñy th¸c nhÐ!", 0);
	return 1; end;
	if (GetFightState() ~= 0) then 
		Say("HiÖn t¹i ng­¬i ®ang trong tr¹ng th¸i chiÕn ®Êu, kh«ng thÓ ®i vµo tr¹ng th¸i rêi m¹ng ñy th¸c ®­îc, xin h·y trë l¹i tr¹ng th¸i phi chiÕn ®Êu sau ®ã h·y tiÕn hµnh rêi m¹ng ñy th¸c nhÐ.", 0);
	return 2 end
	player_count = GetPlayerCount();
	local nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_LIMIT;
	if (mapid >= 835 and mapid <= 840) then
		nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_SPECIAL;
	end;
	if (player_count > nmax_count_limit) then
		Say("HiÖn t¹i chç nµy ng­êi thËt lµ ®«ng ®óc, hay lµ ng­¬i ®Õn chç kh¸c nh­ c¸c th«n trÊn hay c¸c m«n ph¸i råi tiÕn hµnh ñy th¸c nhÐ.",0);
	return 4 end
end

function beginoffline()	
	local bRet = check_if_can_offline()
	if bRet then
	return bRet end
	if (GetOnlineCommissionStatus() ~= 0) then
		Say("Xin h·y t¹m ng­ng ñy th¸c trªn m¹ng råi sau ®ã tiÕn hµnh ñy th¸c rêi m¹ng.", 0)
	return 1 end
	SetTaskTemp(3, GetCurServerTime());
	SetTimer(1*20, 117);	
end

function OnTimer()
	local nTimerOut2 = GetTaskTemp(3);
	local nTime2 = GetCurServerTime();
	local nTimeNow2 = (nTimerOut2 - nTime2) + 5 ;
	if (nTimeNow2 == 0) then
		SetTaskTemp(3, 0)
		local countplayers = GetPlayerCount();
		StopTimer(117);
		OfflineLive(PlayerIndex);
		SetTask(5998,1)
	end
	end

function donothing()
	
end

TASKID_OFFLINELIVE_EXP = {
	AEXP_SMALL_TIME_TASKID,
	AEXP_TASKID,
	AEXP_SPECIAL_TIME_TASKID,
	AEXP_TIANXING_TIME_TASKID
}

TASKID_OFFLINELIVE_SKILL = {
	AEXP_SMALL_SKILL_TASKID,
	AEXP_SKILL_TIME_TASKID,
	AEXP_SPECIAL_SKILL_TASKID
}

function getsparetime()
	local nLeftTime = 0
	for i = 1, getn(TASKID_OFFLINELIVE_EXP) do
		nLeftTime = nLeftTime + GetTask(TASKID_OFFLINELIVE_EXP[i])
	end
	if (GetTask(AEXP_SKILL_ID_TASKID) ~= 0) then
		local nTime = 0
		for i = 1, getn(TASKID_OFFLINELIVE_SKILL) do
			nTime = nTime + GetTask(TASKID_OFFLINELIVE_SKILL[i])
		end
		if (nLeftTime < nTime) then
			nLeftTime = nTime
		end
	end
	return nLeftTime
end

function selectofflineskill()
	local aryExpSkill = getexpskill();
	local nExpSkillCount = getn(aryExpSkill);
	local aryszExpSkill = {};
	local szSayCmd = "Xin lùa chän chøc n¨ng ñy th¸c:";
	for i = 1, nExpSkillCount do
		aryszExpSkill[i] = format("%s/#onSetUpgradeSkill(%d)",aryExpSkill[i][2],aryExpSkill[i][1]);
	end
	tinsert(aryszExpSkill, "Trë l¹i/judgecontion")
	Say(szSayCmd, getn(aryszExpSkill), aryszExpSkill);
end

function onSetUpgradeSkill(nUpgradeSkillID)
	SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID);
	judgecontion();
end

function offlineaward()
	local player = Player:New(PlayerIndex)
	DynamicExecute(
		"\\script\\global\\offlineaward.lua",
		"dlg_offlineaward",
		player)
end
