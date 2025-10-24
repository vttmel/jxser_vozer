--coding by romandou 2004-12-22
--O½?ÛµÄ±¨AûµaNpc¶Ô»°½Å±¾

IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\battleinfo.lua")

Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\battles\\check_ip_songjin.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

function main()
	if ThamGiaTongKim ~= 1 then
		return Talk(1, "", "<color=Orange>Mé Binh Quan: <color>Tèng Kim ®· t¹m ®ãng, c¸c h¹ h·y quay l¹i sau")	
	end

	local nWorld, _, _ = GetWorldPos() --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)
	bt_setnormaltask2type()
	if (BT_GetGameData(GAME_BATTLEID) == 0 ) then
		Say("§¹i qu©n cña ta vÉn ch­a xuÊt ph¸t! H·y t¹m thêi nghØ ng¬i ®îi tin nhÐ",0)
		SubWorld = nOldSubWorld
		return
	end

	if (GetSkillState(314) > 0) then
		RemoveSkillState(314);
		Msg2Player("§· xãa hiÖu øng <enter>           [<color=white>Håi m¸u, håi n¨ng l­îng<color>] <enter>           trªn nh©n vËt.")
	end
	
-------------------------------------------------------------------	
	wid = SubWorldIdx2ID(SubWorld);
	local pl_level = GetLevel()
	local bt_level = 0;
	
	if (pl_level < 40 ) then
		Say("ChiÕn tr­êng chØ dµnh cho ng­êi tõ cÊp 40 trë lªn, ng­¬i ch­a ®ñ ®iÒu kiÖn. Cè g¾ng tËp luyÖn thªm ®i!",2, "§­îc!/bt_oncancel", "Ta muèn t×m hiÓu th«ng tin chiÕn dÞch./bt_onbattleinfo");
		SubWorld = nOldSubWorld
		return 
	elseif (pl_level < 80) then
		bt_level = 1
	elseif (pl_level < 120) then
		bt_level = 2
	else
		bt_level = 3
	end;
	SubWorld = SubWorldID2Idx(nWorld)
	if (tbGAME_SIGNMAP[bt_level] ~= wid) then
		 local maplevel = bt_map2battlelevel(wid)
		 if ( maplevel == 0) then
		 	print("B¸o danh Tèng Kim, ID cã vÊn ®Ò, xin phËn vËn hµnh kiÓm tra gÊp!");
		 	SubWorld = nOldSubWorld
		 	return 	
		 end
		 Say("Khu vùc nµy lµ <color=yellow>"..szGAME_GAMELEVEL[maplevel].."<color>, §¼ng cÊp cña ng­¬i hiÖn giê chØ cã thÓ ®i <color=green>"..szGAME_GAMELEVEL[bt_level].."<color> ®Ó b¸o danh!", 0)--£¿£¿A»ÓÐ·ÖµÈ¼¶µÄ`áÊ¾ÐÅÏ¢		 
		 SubWorld = nOldSubWorld
		 return
	end

-------------------------------------------------------------------	
	SubWorld = SubWorldID2Idx(nWorld)
	battlemap = SubWorldID2Idx(BT_GetGameData(GAME_MAPID));
	if (battlemap < 0) then
		Say("TiÒn ph­¬ng cã vÊn ®Ò, t¹m thêi kh«ng thÓ tiÕn hµnh tèng kim ®¹i chiÕn", 0 )
		SubWorld = nOldSubWorld
		return
	end

	tempSubWorld = SubWorld;
	SubWorld = battlemap
	state = GetMissionV(MS_STATE);
	if (state == 0) then
		Say("Xin lçi! §¹i chiÕn vÉn ch­a b¾t ®Çu! LÇn sau quay l¹i nhÐ", 0 )
		SubWorld = tempSubWorld;		
		return
	elseif (state == 3) then
		Say("Xin lçi! §¹i chiÕn ®· kÕt thóc! LÇn sau quay l¹i nhÐ", 0)
		SubWorld = tempSubWorld;
		return
	else
		battlename = BT_GetBattleName();
	end;
	SubWorld = tempSubWorld;
	
	SubWorld = SubWorldID2Idx(nWorld)
if (BT_GetGameData(GAME_BATTLEID) ~= BT_GetData(PL_BATTLEID) or BT_GetGameData(GAME_BATTLESERIES) ~= BT_GetData(PL_BATTLESERIES)) then
	if (state ~= 1 and state ~= 2 ) then
		Say("Xin lçi! §¹i chiÕn ®· kÕt thóc! LÇn sau quay l¹i nhÐ", 0)
		SubWorld = nOldSubWorld
		return 
	end

	if (bt_ncamp == 1) then
		Say("["..battlename.."] ChiÕn dÞch ®· b¾t ®Çu, mäi ng­êi h·y v× toµn d©n ®¹i tèng, tôc ng÷ cã c©u: Thiªn hæ h­ng vong, thÊt phu h÷u tr¸ch. Nay ng­êi kim x©m ph¹m bê câi chóng ta, ®©y lµ lóc b¸o hiÕu ®Êt n­íc, chØ cÇn cÊp 40 trë lªn vµ cÇn 2 v¹n l­îng th× cã thÓ b¸o ®¸p quèc gia råi, nµo ng­êi anh em cßn chÇn chõ g× n÷a!", 2, "Ta tham gia! (§iÓm tÝch lòy trë vÒ 0) /bt_joinsong", "§Ó ta suy nghÜ l¹i!/bt_oncancel");
	else
		Say("["..battlename.."] ChiÕn dÞch ®· b¾t ®Çu, hìi c¸c vÞ dòng sü Kim quèc, thêi kh¾c nhÊt thèng thiªn h¹ vµ dÑp bän Tèng quèc nam man c¶n ®­êng cña chóng ta ®· ®Õn. Nay Kim quèc rÊt cÇn sù trî lùc cña c¸c ng­¬i, chØ cÇn cÊp 40 trë lªn vµ cÇn 2 v¹n l­îng lµ cã thÓ ®Òn ®¸p quèc gia råi, nµo ng­êi anh em cßn chÇn chê g× n÷a!", 2, "Ta tham gia! (§iÓm tÝch lòy trë vÒ 0) /bt_joinjin", "§Ó ta suy nghÜ l¹i!/bt_oncancel");
	end
	SubWorld = nOldSubWorld
	return	
end;
	SubWorld = SubWorldID2Idx(nWorld)
--if (BT_GetData(PL_BATTLECAMP) ~= bt_ncamp) then
if (BT_GetGameData(GAME_KEY) == BT_GetData(PL_KEYNUMBER) and BT_GetData(PL_BATTLECAMP) ~= bt_ncamp) then
	if (bt_ncamp == 1) then
		Say("Nh×n ng­¬i m¾t la mµy loÐt, nhÊt ®Þnh lµ Kim quèc gian tÕ Ng­êi ®©u! B¾t lÊy h¾n!",0)
		Msg2Player("Ng­¬i ®· ®Çu qu©n cho Kim quèc, h·y ®Õn gÆp Mé binh quan xin gia nhËp chiÕn tr­êng!")
	else
		Say("Tªn Nam man kia, cã gan th©m nhËp vµo l·nh ®Þa ®¹i Kim, râ rµng lµ tíi t×m c¸i chÕt!",0)
		Msg2Player("Ng­¬i ®· ®Çu qu©n cho Kim quèc, h·y ®Õn gÆp Mé binh quan xin nhËp chiÕn tr­êng!")	
	end;
	SubWorld = nOldSubWorld
	return 
end

----------------------------------------------------------------------
--OuÊ½±¨AûÊ±µÄ`o¼?ÊÇ£¬
--1¡¢?Ñ¾­±¨ÁË±¾´ÎµÄO½?Û
--2¡¢?Ñ¾­ÊÇ±¾·½O½?ÛµÄOóÓªÁË
--3¡¢Óë±¾´ÎO½¾ÖµÄO½¾ÖµÈ¼¶Ïà·ûÁË

--OuÊ½¿É?Ô±¨AûÁË

	--Storm ¼ÓÈë`ôO½
	say_index = 1
	storm_ask2start(1)
end;

--Ou³£µÄËÎ½d´óO½¶Ô»°
function storm_goon_start()
	local nWorld,_,_ = GetWorldPos(); --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)
	say_index = 1
	local mem_song, mem_jin = bt_checkmemcount_balance()
	if (mem_song == nil or mem_jin == nil) then
		return
	end
	
	local tb_words = {
		"Trèng trËn ®· rÒn vang! Sao ng­¬i ch­a tham gia chiÕn?",
		"Chóc mõng b¹n ®· chÝnh thøc trë thµnh t­íng sü cña ®¹i Tèng! H·y chøng tá b¶n lÜnh cña m×nh ®i!",
		"Chóc mõng b¹n ®· chÝnh thøc trë thµnh t­íng sü cña ®¹i Kim! H·y chøng tá b¶n lÜnh cña m×nh ®i!"
	}
	local szMsg = "HiÖn thêi qu©n sü 2 bªn lµ <enter><enter><color=yellow>Qu©n sè bªn Tèng lµ <color><color=green>"..mem_song.." <color><color=yellow>ng­êi <enter>Qu©n sè bªn Kim lµ <color><color=green>"..mem_jin.." <color><color=yellow>ng­êi<color>"
	Say(szMsg, 2, "H·y cho ta tham gia/bt_enterbattle", "§Ó ta suy nghÜ l¹i!/bt_oncancel");
	if (bt_getgn_awardtimes() ~= 1) then
		Msg2Player("ChiÕn dÞch lÇn nµy lµ <color=yellor>Cuèi TuÇn <color>, phÇn th­ëng gÊp ®«i so víi b×nh th­êng! C¬ héi kh«ng nªn bá qua!")
	end
	SubWorld = nOldSubWorld
end

function bt_enterbattle()
	if battlesSongJinCheck:FuncCheckIP(bt_ncamp) then return end ---chÆn trïng ip
	local nWorld,_,_ = GetWorldPos(); --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)
	local nWeekDay = tonumber(GetLocalDate("%w"))
	
	if nWeekDay == 2 or nWeekDay == 4 or nWeekDay == 6 then
		local nHour = tonumber(GetLocalDate("%H%M"))
		if( nHour >= 2045 and nHour < 2300)then
			local nNpcIndex = GetLastDiagNpc()
			local szNpcName = GetNpcName(nNpcIndex)
			local szTong = GetTong()
			if szTong ~= nil and szTong ~= "" then
				if 2 == bt_ncamp then
					if GetCityOwner(4) ~= szTong and GetCityOwner(7) == szTong then--4ÊÇaê¾©£¬7ÊÇÁÙ°², 2ÊÇ½d·½
						Msg2Player("Bang héi chiÕm thµnh L©m An chØ ®­îc b¸o danh bªn Tèng!")
						SubWorld = nOldSubWorld
						return
					end
				elseif 1 == bt_ncamp then
					if GetCityOwner(4) == szTong and GetCityOwner(7) ~= szTong then--4ÊÇaê¾©£¬7ÊÇÁÙ°²£¬1ÊÇËÎ·½
						Msg2Player("Bang héi chiÕm thµnh BiÖn Kinh chØ ®­îc b¸o danh bªn Kim!")
						SubWorld = nOldSubWorld
						return
					end
				else
					SubWorld = nOldSubWorld
					return
				end
			end
		end
	end
	
	local mem_song, mem_jin = bt_checkmemcount_balance()
	if (mem_song == nil or mem_jin == nil) then
		SubWorld = nOldSubWorld
		return
	end
	
	if	bt_checkmem_for_guozan() == 0 then
		SubWorld = nOldSubWorld
		return
	end
	
	MapId = BT_GetGameData(GAME_MAPID);
	
	if (MapId > 0) then
		idx = SubWorldID2Idx(MapId);
		
		if (idx < 0) then
			Say("Xin lçi,tiÒn tuyÕn cã vÊn ®Ò, t¹m thêi kh«ng thÓ tiÕn vµo chiÕn tr­êng.",0)
			SignMapId = SubWorldIdx2ID(SubWorld);
			BattleId = BT_GetGameData(GAME_BATTLEID);
			print("ERROR !!!Battle[%d]Level[%d]'s BattleMap[%d] and SignMap[%d] Must In Same Server!", BattleId, BT_GetGameData(GAME_LEVEL),MapId, SignMapId); 
			SubWorld = nOldSubWorld
			return
		end
		--tinhpn20100804: IPBonus
		if (GetTask(TASKID_COUNT_X2TONGKIM) == 1) then
			SetTask(TASKID_COUNT_X2TONGKIM, 0)
			SetTask(TASKID_RECIEVE_BONUS_TK, 1)
		else
			SetTask(TASKID_RECIEVE_BONUS_TK, 0)
		end
		
		--By: NgaVN
		--Kiem tra nguoi choi truoc khi join vao mission
		local nRet = tbVNG2011_ChangeSign:CheckChangeSign();
		local nTimeNow = tbVNG2011_ChangeSign:GetTimeNow()
		if ( nRet ~= 1 ) then
			Say(format("ChiÕn tr­êng cßn <color=red>%d <color=red>phót n÷a cã thÓ b¸o danh", nTimeNow));
			SubWorld = nOldSubWorld
			return
		end

		SubWorld = idx;
		BT_SetData(PL_SERIESKILL, 0)
		SetTask(TV_SERIESKILL_REALY,0)
		BT_SetData(PL_BATTLECAMP, bt_ncamp)
		JoinMission(BT_GetGameData(GAME_RULEID), bt_ncamp)
		local SubWorld = OldSubWorld;
		SubWorld = nOldSubWorld
		return
	else
		Say("Xin lçi! TiÒn ph­¬ng cã vÊn ®Ò, t¹m thêi kh«ng thÓ tiÕn vµo chiÕn tr­êng", 0);
	end
	SubWorld = nOldSubWorld
end;

function bt_wantjin()
		Say("Ng­¬i x¸c ®Þnh ®Çu qu©n cho Kim quèc? NÕu ®· gia nhËp, néi trong 1 tuÇn ng­¬i sÏ lµ ng­êi cña chóng ta. Muèn thay ®æi, ph¶i ®îi tuÇn sau!",2, "Ta nhÊt ®Þnh gia nhËp Kim quèc/bt_joinjin", "§Ó ta suy nghÜ l¹i ®·!/bt_oncancel");
end;

function bt_wantsong()
		Say("Ng­¬i x¸c ®Þnh ®Çu qu©n cho Tèng quèc? NÕu ®· gia nhËp, néi trong 1 tuÇn ng­¬i sÏ lµ ng­êi cña chóng ta. Muèn thay ®æi, ph¶i ®îi tuÇn sau!",2, "Ta nhÊt ®Þnh gia nhËp Tèng quèc/bt_joinsong", "§Ó ta suy nghÜ l¹i ®·!/bt_oncancel");
end;

function bt_joinsong()
	local nWorld,_,_ = GetWorldPos(); --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)	
	BT_SetData(PL_BATTLEID, BT_GetGameData(GAME_BATTLEID))
	BT_SetData(PL_BATTLESERIES, BT_GetGameData(GAME_BATTLESERIES))
	BT_SetData(PL_ROUND,BT_GetGameData(GAME_ROUND))
	BT_SetData(PL_KEYNUMBER, 0)
	BT_SetData(PL_BATTLEPOINT, 0)
	SetTask(1017, 0)
	SetTask(TV_SERIESKILL_REALY,0)
	BT_SetData(PL_BATTLECAMP, 0)
	Msg2Player("C«ng c¸o:®· b¾t ®Çu chiÕn dÞch míi, ®iÓm tÝch lòy hiÖn giê sÏ lµ 0!")
	Msg2Player("Hoan nghªnh! Hoan nghªnh! Ng­êi Tèng lu«n lµ anh hïng!")

	--Storm ¼ÓÈë`ôO½
	say_index = 2
	storm_ask2start(1)
	SubWorld = nOldSubWorld
end;

function bt_joinjin()
	local nWorld,_,_ = GetWorldPos(); --***
	local nOldSubWorld = SubWorld
	SubWorld = SubWorldID2Idx(nWorld)	
	BT_SetData(PL_BATTLEID, BT_GetGameData(GAME_BATTLEID))
	BT_SetData(PL_BATTLESERIES, BT_GetGameData(GAME_BATTLESERIES))
	BT_SetData(PL_ROUND,BT_GetGameData(GAME_ROUND))
	BT_SetData(PL_KEYNUMBER, 0)
	BT_SetData(PL_BATTLEPOINT, 0)
	SetTask(1017, 0)
	SetTask(TV_SERIESKILL_REALY,0)
	BT_SetData(PL_BATTLECAMP, 0)
	Msg2Player("C«ng c¸o:®· b¾t ®Çu chiÕn dÞch míi, ®iÓm tÝch lòy hiÖn giê sÏ lµ 0!")
	Msg2Player("Hoan nghªnh! Hoan nghªnh! Kim quèc kh«ng thiÕu anh tµi!")

	--Storm ¼ÓÈë`ôO½
	say_index = 3
	storm_ask2start(1)
	SubWorld = nOldSubWorld
end;

function bt_oncancel()

end

function bt_checkmemcount_balance()
	local mapid = BT_GetGameData(GAME_MAPID);
	if (mapid > 0) then
		if (SubWorldID2Idx(mapid) >= 0) then
			oldSubWorld = SubWorld
			SubWorld = SubWorldID2Idx(mapid)
			local mem_song = GetMSPlayerCount(BT_GetGameData(GAME_RULEID), 1)
			local mem_jin = GetMSPlayerCount(BT_GetGameData(GAME_RULEID), 2)
			SubWorld = oldSubWorld
			
			-- ¹úO½ËÎ½d `ØÊâµÄÈËÊuÆ½ºâ´¦Àí		
			if BT_GetGameData(GAME_BATTLEID) == 2 then
				if (bt_ncamp == 1 and mem_song >= BALANCE_GUOZHAN_MAXCOUNT) or (bt_ncamp == 2 and mem_jin >= BALANCE_GUOZHAN_MAXCOUNT) then
					 -- ÈËÊu³¬¹u100ÈËÏ~ÖÆ£¬¼`ÐøÍùÏÂÖ´ÐÐ£¬Ï~ÖÆÈËÊu²î5ÈË
				else
					 -- ÈËÊuÎ´³¬¹uÏ~ÖÆ£¬ºöÂÔ5ÈË²î¶î£¬Ö±½ÓÔÊÐí½øÈë
					return mem_song, mem_jin
				end
			end
			
			if (bt_ncamp == 1 and (mem_song - mem_jin) >= BALANCE_MAMCOUNT ) then
				Say("HiÖn t¹i binh lùc phe ta lµ <color=yellow>"..mem_song.." ng­êi<color>, ®Þch ph­¬ng lµ <color=yellow>"..mem_jin.." ng­êi<color>, c¸ch biÖt <color=red>"..BALANCE_MAMCOUNT.." ng­êi<color>. Qu©n lùc cña ta hiÖn giê ®· d­ søc tiªu diÖt Kim binh! Tr¸ng sü xin ®îi trËn sau nhÐ", 0)
				return
			elseif (bt_ncamp == 2 and (mem_jin - mem_song) >= BALANCE_MAMCOUNT ) then
				Say("HiÖn t¹i binh lùc phe ta lµ <color=yellow>"..mem_jin.." ng­êi<color>, ®Þch ph­¬ng lµ <color=yellow>"..mem_song.." ng­êi<color>, c¸ch biÖt <color=red>"..BALANCE_MAMCOUNT.." ng­êi<color>. Qu©n lùc cña ta hiÖn giê ®· d­ søc tiªu diÖt Tèng qu©n. Tr¸ng sü xin ®îi trËn sau nhÐ", 0)
				return
			else
				return mem_song, mem_jin
			end
		end
	end
	Say("Xin lçi! TiÒn ph­¬ng cã vÊn ®Ò, T¹m thêi kh«ng thÓ tiÕn vµo chiÕn tr­êng", 0);
	return nil
end

-- ¹úO½ËÎ½d¶Ô½øÈëµÄÍæ¼?×ö½ø?»²½µÄ¼´²é 1:·ÅÐÐ 0:²»ÈA½øÈë
function bt_checkmem_for_guozan()
	
	-- ·Ç¹úO½ËÎ½dÖ±½Ó·ÅÐÐ
	if BT_GetGameData(GAME_BATTLEID) ~= 2 then
		return 1;
	end
	
	-- Ö®Ç°?Ñ¾­Í¨¹u¼´²é£¬²Î¼ÓÁËO½?Û£¬²»±ØÔÙ¼´²éÁË
--	if (BT_GetGameData(GAME_KEY) == BT_GetData(PL_KEYNUMBER) and BT_GetData(PL_BATTLECAMP) == bt_ncamp) then
--		return 1;
--	end
	
	local szCityOwner_LinAn		= GetCityOwner(7);	-- ÁÙ°²µÄO¼Á´°ï»á
	local szCityOwner_Bianjin	= GetCityOwner(4);	-- aê¾©µÄO¼Á´°ï»á
	local szMyTong				= GetTongName();	-- ×Ô¼ºµÄ°ï»á
	
	-- O¼³Ç°ï»áÊu¾U´íÎó
	if szCityOwner_LinAn == "" or szCityOwner_Bianjin == "" or szCityOwner_LinAn == szCityOwner_Bianjin then
		Say("LÇn quèc chiÕn Tèng Kim nµy kh«ng ®­îc phÐp më", 0);
		return 0;
	end
	
	-- Í¨¹u°ï»áµÄÉí·U½øÈë
	if (szMyTong == szCityOwner_LinAn and bt_ncamp == 1) or (szMyTong == szCityOwner_Bianjin and bt_ncamp == 2) then
		return 1;
	end

	-- ¼éÏ¸
	if (szMyTong == szCityOwner_LinAn and bt_ncamp == 2) or (szMyTong == szCityOwner_Bianjin and bt_ncamp == 1) then
		Say("Gian tÕ cña ®Þch ®· chui vµo ®¹i doanh råi, h·y mau mau b¾t!", 0);
		return 0;
	end
	
	-- ¼´²éÉíÉÏµÄÁîÅÆ
	local nCount_song = CalcItemCount(3, 6, 1, 2057, -1);
	local nCount_jin  = CalcItemCount(3, 6, 1, 2058, -1);
	
	if nCount_song == 0 and nCount_jin == 0 then
		Say("Hai quèc giao tranh, cÇn ph¶i cã quèc chiÕn lÖnh bµi cña mçi bªn míi ®­îc tiÕn vµo.", 0);
		return 0;
	end
	
	-- ÉíÉÏÓÐ±d¹úµÄÁîÅÆ
	if (nCount_jin ~= 0 and bt_ncamp == 1) or (nCount_song ~= 0 and bt_ncamp == 2) then
		Say("Gian tÕcña ®Þch ®· chui vµo ®¹i doanh råi, h·y mau mau b¾t!", 0);
		return 0;
	end
	
	-- ¼´²é½dÇ®

	
	-- ¿Û³uÁîÅÆ
	local bPay = 0;
	
	if bt_ncamp == 1 then
		bPay = ConsumeItem(3, 1, 6, 1, 2057, -1); 
	elseif bt_ncamp == 2 then
		bPay = ConsumeItem(3, 1, 6, 1, 2058, -1); 
	end
	
	if bPay ~= 1 then
		Msg2Player("KhÊu trõ lÖnh bµi thÊt b¹i");
		return 0;
	end
	
	-- ÔÊÐíÍ¨¹u
	return 1;
end