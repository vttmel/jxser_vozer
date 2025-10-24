Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")
Include("\\script\\missions\\bw\\bwhead.lua");


szCaptainName = {};
function main()
--do Talk(1, "", "L«i ®µi t¹m thêi ch­a më.") return end
	--ÉèÖ··µ»Øµã
	x,y,z = GetWorldPos();
	SetTask(BW_SIGNPOSWORLD, x);
	SetTask(BW_SIGNPOSX, y);
	SetTask(BW_SIGNPOSY, z);
	szCaptainName = bw_getcaptains(); --»ñÈ¡¸½¶Ó¶Ó³¤µÄ·û×Ö£»

	idx = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (idx == -1) then
		ErrorMsg(3) 
		return
	end;
	
	OldSubWorld = SubWorld;
	SubWorld = idx;
	local MemberCount =GetMissionV(MS_MAXMEMBERCOUNT)
	ms_state = GetMissionV(MS_STATE);
	if (ms_state == 0) then 
		Say("§©y lµ ®Êu tr­êng thi ®Êu l«i ®µi, n¬i c¸c nh©n sÜ trªn giang hå ®¬n ®Êu hoÆc tæ chøc thi ®Êu ®éi. HiÖn t¹i ch­a cã ai b¸o danh thi ®Êu, c¸c h¹ cã muèn b¸o danh kh«ng<color=yellow>HiÖn t¹i më miÔn phÝ l«i ®µi<color>", 3, "§­îc th«i/OnRegister", "Quy t¾c thi ®Êu ra sao?/OnHelp", "§Ó suy nghÜ c¸i ®·!/OnCancel");
	elseif (ms_state == 1) then
		Say("§©y lµ diÖn vâ tr­êng, §éi<color=yellow>"..szCaptainName[1].."<color>cïng ®éi<color=yellow>"..szCaptainName[2].."<color> tranh tµi<color=yellow>"..MemberCount.." vs "..MemberCount.."<color>, Ng­¬i cã yªu cÇu g×?",4,"Ta lµ tuyÓn thñ, muèn th­îng l«i ®µi./OnEnterMatch", "Ta lµ kh¸n gi¶, muèn vµo xem thi ®Êu./OnShowKey", "Ta muèn xem thi ®Êu./OnLook", "Ta kh«ng cã høng thó./OnCancel")
	elseif (ms_state == 2) then 
		OnFighting();
	else
		ErrorMsg(2)
	end;
	SubWorld = OldSubWorld;
end;

function OnRegister()
	--±¨·û
	if (GetTeamSize()  ~= 2) then
		Say("Muèn ghi danh ph¶i lµ<color=yellow>§éi tr­ëng<color> §éi cña c¸c h¹ kh«ng ®ñ<color=yellow>2<color>ng­êi.", 0);
		return
	end;

	if (IsCaptain() ~= 1) then 
		ErrorMsg(5)
		return
	end;

	Say("C¸c h¹ muèn ®Êu l«i ®µi, sè ng­êi nhiÒu nhÊt mçi bªn lµ bao nhiªu", 9, "Rêi khái!/OnCancel", "1 vs 1/#SignUpFinal(1)", "2 vs 2/#SignUpFinal( 2 )", "3 vs 3/#SignUpFinal( 3 )","4 vs 4/#SignUpFinal( 4 )","5 vs 5/#SignUpFinal( 5 )","6 vs 6/#SignUpFinal( 6 )","7 vs 7/#SignUpFinal( 7 )","8 vs 8/#SignUpFinal( 8 )");
end;

function SignUpFinal(MemberCount)
	if (GetTeamSize()  ~= 2) then
		Say("Muèn ghi danh ph¶i lµ <color=yellow>§éi tr­ëng<color> §éi cña c¸c h¹ kh«ng ®ñ<color=yellow>2<color> ng­êi.", 0);
		return
	end;
	
	if (MemberCount <= 0 or MemberCount > 8) then
		return
	end
	
	local OldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(BW_COMPETEMAP[1]);
	ms_state = GetMissionV(MS_STATE);

	if (ms_state ~= 0) then 
		ErrorMsg(8)
		return
	end
	OpenMission(BW_MISSIONID);
	local x = GetTask(BW_SIGNPOSWORLD);
	if x == 80 then
		SetMissionS(CITYID,"ÑïÖÝ")
	elseif x == 78 then
		SetMissionS(CITYID,"ÏåÑô")
	else
		SetMissionS(CITYID,"³É¶¼")
	end;
	
	local key = {};
	key = bw_getkey();
	SetMissionV(MS_TEAMKEY[1], key[1]);
	SetMissionV(MS_TEAMKEY[2], key[2]);
	
	OldPlayerIndex = PlayerIndex;
	for i = 1, 2 do 
		PlayerIndex = GetTeamMember(i);
		SetMissionS(i, GetName());
		szCaptainName = bw_getcaptains(); --»ñÈ¡¸½¶Ó¶Ó³¤µÄ·û×Ö£»
		if (MemberCount > 1) then
			Msg2Player("C¸c h¹ muèn thi ®Êu víi ®éi h×nh: <color=yellow> ["..key[i].."]<color>, sè thµnh viªn. Thµnh viªn ®­îc C«ng B×nh Tö ®­a vµo DiÖn vâ tr­êng lµ sÏ ®­îc thi ®Êu.");			
			local szMsg = format("C«ng b×nh tö: ë ®©y %s cïng %s ghi danh tranh tµi , nhanh vµo DiÖn vâ tr­êng , trËn ®Êu %d phót sau chÝnh thøc b¾t ®Çu . TrËn thi ®Êu sè :",MemberCount, MemberCount, floor(GO_TIME/3),key[i])
			Say(szMsg,0)
			
		end
		branchTask_BW1()	--ºÝÈÎÎñÏµ¹Ø£¬²Î¼Ó¸Ë±ÈÈü½øÐÐ¼ÆÊý
	end;
	
	PlayerIndex = OldPlayerIndex;
	SetMissionV(MS_MAXMEMBERCOUNT, MemberCount)
	SubWorld = OldSubWorld;
	str = "<#> B©y giê"..GetMissionS(CITYID)..szCaptainName[1].."§éi<#> tranh tµi cïng"..szCaptainName[2].."§éi<#>, L«i ®µi chuÈn bÞ b¾t ®Çu, hai ®éi tr­ëng lµ"..szCaptainName[1].."<#>cïng"..szCaptainName[2].."<#>. L«i ®µi më cöa miÔn phÝ, xin mêi c¸c vÞ h¶o höu ®Õn xem.";
	--AddGlobalNews(str);
	local szMsg = format("C¸c thµnh viªn ®· ghi danh ë %s cïng %s tranh tµi , nhanh chãng vµo l«i ®µi , %d phót sau tranh tµi chÝnh thøc b¾t ®Çu.",MemberCount, MemberCount, floor(GO_TIME/3))
	Msg2Team(szMsg);
end;

function bw_getkey()
	local key = {};
	key[1] = random(1, 9999)
	key[2] = random(1, 9999)
	
	--±£Ö¤key1 key2>0, key1 ~= key2
	if (key[2] == key[1]) then
		if (key[1] < 9996) then
			key[2] = key[1] + 3
		else
			key[2] = key[1] - 3;
		end
	end
	return key;
end;



function OnHelp()
	Talk(5, "",	"L«i ®µi lµ n¬i ®Ó häc hái kinh nghiÖm lÉn nhau.",	"Muèn tham gia l«i ®µi, tr­íc hÕt ph¶i ®Õn chç ta ghi danh.",	"ghi danh tham gia l«i ®µi tranh tµi liÒn hoµn thµnh , bëi v× cuéc so tµi cã giíi h¹n , ®ang cã ng­êi thi ®Êu, c¸c h¹ kh«ng thÓ ghi danh!",	format("Ghi danh sau thµnh c«ng, cã thÓ ®Õn chuÈn bÞ khu , chuÈn bÞ thêi gian lµ <color=yellow>%d<color> ·Ö, ×¼±¸Ê±¼ä½áÊøºó£¬±ÈÈü½«ÕýÊ½¿ªÊ¼!", floor(GO_TIME/3)) , 	format("¹«Æ½Ë¾: ±ÈÈüÊ±¼äÊÇ<color=yellow>%d<color> ·Ö, Èç¹ûÔó %d·ÖÖÓ»¹·»ÓÐÈ·¶¨Ó®µÄ¶Ó£¬±ÈÈüÎªºÝ¾Ö.", floor(TIMER_2/(60*FRAME2TIME))-floor(GO_TIME/3), floor(TIMER_2/(60*FRAME2TIME))-floor(GO_TIME/3) ));
end;

function OnEnterMatch()
	local OldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (SubWorld < 0) then
		return
	end;
	
	if ((GetName() == szCaptainName[1]) or (GetName() == szCaptainName[2])) then 
		OnJoin(0)	--ÕâµïºÅ¢ëÊ²·´¶¼¿ÉÒÔ the only param stand for the group ID;
	else
		Say("Xin mêi nhËp sè lÇn thi ®Êu",2, "H·y khoan,cho ta lªn/OnEnterKey", "Ta kh«ng nhí, chê mét chót ®Ó ta hái §éi tr­ëng/OnCancel")
	end;
	SubWorld = OldSubWorld;
end

function OnEnterKey()
	AskClientForNumber("OnEnterKey1", 0, 10000, "Xin mêi nhËp sè thø tù:");
end

function OnEnterKey1(Key)
	local OldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (SubWorld < 0) then
		SubWorld = OldSubWorld;
		return
	end;
	if (Key == GetMissionV(MS_TEAMKEY[1])) then
		OnJoin(1)
	elseif (Key == GetMissionV(MS_TEAMKEY[2])) then
		OnJoin(2)
	else
		Say("C¸c h¹ ®· nhËp sai, hoÆc hái §éi tr­ëng ®Ó x¸c ®Þnh l¹i, xin c¸m ¬n!",0)
	end
	SubWorld = OldSubWorld;
end

function OnLook()
	idx = SubWorldID2Idx(BW_COMPETEMAP[1]);
	OldSubWorld = SubWorld;
	SubWorld = idx;
	local str = szCaptainName[1].."§éi<#> ºÝ "..szCaptainName[2].."§éi <#> §· s½n sµng thi ®Êu, ai sÏ lµ ng­êi chiÕn th¾ng cuèi cïng kh«ng?";
	local str1 = "Ta muèn vµo l«i ®µi<#> xem/onwatch";
	Say(str, 2, str1, "Kh«ng ph¶i l­ît cña ta,ta kh«ng vµo/OnCancel");
	SubWorld = OldSubWorld;
end;

function onwatch()
	OldSubWorld = SubWorld;
	local idx = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (idx == -1) then
		return
	end;
	SubWorld = idx;
	if (GetName() == szCaptainName[1]) or (GetName() == szCaptainName[2]) then 
		SubWorld = OldSubWorld
		OnJoin(0)	--¶Ó³¤²»ÄÜ½øÐÐ¹ÛÕ½
	else
		OnJoin(3);	--¼ÓÈëµ½¹ÛÖóµÄ
	end;
end

--to join in a fight group	group --×é
function OnJoin(group)
	idx = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (idx < 0) then
		return
	end;
	OldSubWorld = SubWorld;
	SubWorld = idx;
	if (GetName() == szCaptainName[1]) then 
		JoinCamp(1)
	elseif (GetName() == szCaptainName[2]) then 
		JoinCamp(2)
	elseif (group == 1 or group == 2) then
		local masteridx = SearchPlayer(GetMissionS(group))
		local masternum = 0
		if (masteridx > 0) then
			if (PIdx2MSDIdx(BW_MISSIONID, masteridx) > 0) then
				masternum = 1
			end
		end
		if (GetMSPlayerCount(BW_MISSIONID, group) - masternum < GetMissionV(MS_MAXMEMBERCOUNT) - 1) then
			JoinCamp(group)
		else
			ErrorMsg(10)
		end;
	elseif (group == 3) then
		JoinCamp(3);
	else
		ErrorMsg(4)
	end;
	SubWorld=OldSubWorld;
end;

function OnFighting()
	str = "<#> HiÖn thêi"..szCaptainName[1].."§éi<#> vµ"..szCaptainName[2].."§éi<#> ®ang thi ®Êu. ";
	Say(str, 1, "Quay l¹i sau. /OnCancel");
end;

function OnCancel()
end;

function ErrorMsg(ErrorId)
	if (ErrorId == 1) then 
		Say("Muèn b¸o danh ph¶i häp thµnh ®éi sau ®ã míi cã thÓ b¸o danh",0)
	elseif (ErrorId == 2) then 
		Say("Tham gia thi ®Êu ph¶i mang ®ñ ng©n l­îng",0)
	elseif (ErrorId == 3) then 
		Say("B¸o danh bÞ lçi, xin mêi liªn hÖ GM!",0);
	elseif (ErrorId == 4) then 
		Say("C¸c h¹ kh«ng ph¶i lµ tuyÓn thñ ®· b¸o danh v× vËy kh«ng thÓ vµo l«i ®µi, xin h·y ®øng ngoµi xem", 0);
	elseif (ErrorId == 5) then 
		Say("Ng­êi b¸o danh ph¶i lµ §éi tr­ëng",0);
	elseif (ErrorId == 6) then 
		Say("Ng­¬i mang kh«ng ®ñ ng©n l­îng",0);
	elseif (ErrorId == 7) then 
		Say("Kh«ng ®­îc, c¸c h¹ cßn ®ang tham gia tranh tµi!",0);
	elseif (ErrorId == 8) then
		Say("²Kh«ng ®­îc, ®· cã ng­êi ghi danh thi ®Êu!",0);
	elseif (ErrorId == 9) then 
		Say("Kh«ng ®­îc, l«i ®µi ®· b¾t ®Çu, c¸c h¹ kh«ng thÓ ®ãng phÝ!",0);
	elseif (ErrorId == 10) then 
		Say("Sè ng­êi thi ®Êu ®· ®ñ!",0);
	else
		
	end;
	return
end;
