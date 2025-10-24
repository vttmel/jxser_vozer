IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\ÌØÊâÓÃµØ\\ËÎ½ð±¨Ãûµã\\npc\\head.lua")
Include("\\script\\global\\ÌØÊâÓÃµØ\\ËÎ½ð±¨Ãûµã\\npc\\songjin_shophead.lua")
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\battles\\doi_diem_tong_kim.lua")
Include("\\script\\global\\pgaming\\shop\\shoptongkim\\banshoptongkim.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

battlesNpcSongJinShop = "<color=Orange>Qu©n nhu quan<color>: "
battlesNpcSongJinShopExChangeExp = 1234.5679

tbLimit_Exp = {
						[0] = 700000,
						[3] = 800000,
						[4] = 1000000, 
					};
YUEWANGHUN_STONECOUNT = 100
nState = 0;

function main(sel)
	local nWorld, _, _ = GetWorldPos()
	nOldSW = SubWorld
	SubWorld = SubWorldID2Idx(325)
	if (nState == 0) then
		bt_setnormaltask2type()
		nState = 1;
	end
	battlemapid = BT_GetGameData(GAME_MAPID);
	if (battlemapid <= 0) then
			maintalk()
			return 
	end
	SyncTaskValue(747);
	battlemap = SubWorldID2Idx(BT_GetGameData(GAME_MAPID));
	if (battlemap < 0) then
		Msg2Player("error"..battlemap)
		return
	end
	
	tempSubWorld = SubWorld;
	SubWorld = battlemap
	state = GetMissionV(MS_STATE);
	
	if (state == 0 or state == 1) then
		maintalk()
		SubWorld = tempSubWorld;
		return
	else
		Talk(1,"",battlesNpcSongJinShop.."PhÝa tr­íc chiÕn tr­êng ®ang trong giai ®o¹n tranh ®o¹t quyÕt liÖt, c¸c vÞ vui lßng tr¸nh ®i mét xÝu.")
		SubWorld = tempSubWorld;
		return
	end;
	SubWorld = nOldSW;	
end;

function no()
end;

function jinshop_sell()
		Sale(98, 4);
		-- Sale(196, 4);
end;

function maintalk()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	local tbDailog = DailogClass:new(szNpcName)
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	local battlesSongJinszTitleMsg = battlesNpcSongJinShop.."N¬i ®©y lµ chiÕn tr­êng, ng­¬i cÇn ta gióp c¸i g×?"
	local AddOption = {}
	if ShopTongKim == 0 and ScriptShopTongKim == 1 then
	tinsert(AddOption, "Ta muèn mua ®¹o cô/shoptongkim")
	elseif ShopTongKim == 0 then
	else
	tinsert(AddOption, "Ta muèn mua ®¹o cô/jinshop_sell")
	end
	tinsert(AddOption, "T¹i h¹ muèn quy ®æi ®iÓm TÝch lòy sang phÇn th­ëng/#SJ_PointExChange:Main()")
	tinsert(AddOption, "V« song m·nh t­íng chiÕn tr­êng/wushuangmengjiang")
	tinsert(AddOption, "Sö dông nh¹c v­¬ng hån th¹ch luyÖn nh¹c v­¬ng kiÕm/yuewang_want")
	tinsert(AddOption, "KÕt thóc ®èi tho¹i/Oncanel")
	Say(battlesSongJinszTitleMsg, getn(AddOption), AddOption)
end

function xunzhang_exchange()
	if( GetLevel() < 40 ) then
		Talk( 1, "", "Quan TiOp LiÖu : chØ ca 50 cÊp trë lªn ng­êi ch¬i míi ca thÓ nhËn lÊy huy ch­¬ng");
		return 0
	elseif ( GetExtPoint(0)==0 ) then
		Talk( 1, "", "Quan TiOp LiÖu : ChØ ca ®· sung tr~ gi¸ ng­êi ch¬i míi ca thÓ nhËn lÊy huy ch­¬ng");
		return 0
	elseif ( CalcFreeItemCellCount() < 1 ) then
		Talk( 1, "", "Xin mêi chuÈn b~ mét chç trèng tíi ®Ó 1 c¸i huy ch­¬ng");
		return 0;
	else
		Say("Quan TiOp LiÖu : Ng­¬i nghÜ dïng 500 tUch ph©n ®æi lÊy huy ch­¬ng sao?", 2,"§æi lÊy huy ch­¬ng/xunzhang_do", "Kh«ng muèn/no");
	end
end

function xunzhang_do()
	if nt_getTask(747) < 500 then
		Say("§iÓm tUch ph©n ch­a ®ñ 500, kh«ng thÓ nhËn lÊy huy ch­¬ng",0);
		return 0;
	end
	nt_setTask(747, floor(nt_getTask(747) - 500));
	local nidx = AddItem(6,1,1412,1,0,0) 
	WriteLog(format("[GetZhanGongXunZhang]\t date:%s \t Account:%s \t Name:%s \t GetItem:%s Del:500SongJinJiFen\t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(nidx)));
	Say("§· thµnh c«ng nhËn lÊy mét huy ch­¬ng",0);
end

function exp_exchange()
	if( GetLevel() < 40 ) then
		Talk( 1, "", "<color=Orange>Qu©n nhu quan<color>: Ng­¬i kh«ng ca ®¹t tíi 40 cÊp, kh«ng thÓ tham gia.");
	else
		if (GetTiredDegree() == 2) then
			Say(battlesNpcSongJinShop.."H«m nay ta mÖt råi, khi kh¸c h·y ®Õn nhÐ!",0);
		else
			local tbOpt = 
			{
				"500 ®iÓm tÝch lòy/#wantpay(500)", 
				"1000 ®iÓm tÝch lòy/#wantpay(1000)",
				"2000 ®iÓm tÝch lòy/#wantpay(2000)",
				"5000 ®iÓm tÝch lòy/#wantpay(5000)",
				"TÊt c¶ ®iÓm tÝch lòy/#wantpay(9999)",
				"Kh«ng muèn ®æi/no"
			}
			Say(battlesNpcSongJinShop.."Ng­¬i muèn ®æi bao nhiªu ®iÓm tÝch lòy thµnh kinh nghiÖm", getn(tbOpt), tbOpt);
		end;
	end
end;


function wantpayex(mark, nStep)
	
	if GetLevel() < 120 then
		Talk(1, "", format("Yªu cÇu cÇn %d cÊp trë lªn míi ca thÓ ®æi lÊy.", 120))
		return 
	end
	
	if PlayerFunLib:CheckTaskDaily(2645, 1, "NhËn th­ëng mçi ngµy chØ ca thÓ nhËn lÊy mét lÇn.", "<") ~= 1 then
		return
	end
	local nDate = tonumber(GetLocalDate("%Y%m%d"))
				
	if gb_GetTask("songjin butianshi2009", 1) ~= nDate then
		gb_SetTask("songjin butianshi2009", 1, nDate)
		gb_SetTask("songjin butianshi2009", 2, 0)
	end
	
	if gb_GetTask("songjin butianshi2009", 2) >= 10 then
		Talk(1, "", "Mçi ngµy mçi phôc vô khU, nhanh nhÊt m­êi ng­êi míi ca thÓ ®æi lÊy phÇn th­ëng.")
		return 
	end
	
	if( mark > nt_getTask(747) ) then
		Say("Quan TiOp LiÖu : Ngµi tUch l?y ®iÓm ch­a ®ñ, muèn ®¹t ®­îc kinh nghiÖm tr~ gi¸.", 1, "Kh«ng/no");
	elseif (mark == 0) then
		Say("Quan TiOp LiÖu : Kh«ng ca kinh nghiÖm tr~ gi¸ cßn muèn ®æi häc hái kinh nghiÖm nghiÖm tr~ gi¸ a, thËt lµ hoang ®­êng.", 1, "Kh«ng/no");
	else
		local level = GetLevel();
		local bonus = bt_exchangeexp(level, mark)
		
		local tbItem = {szName="Bæ thiªn th¹ch to¸i phiOn ( trung ))", tbProp={6, 1, 1309, 1, 0, 0}}
		if nStep == 1 then
			if (expchange_limit(mark) == 1) then
				nt_setTask(747, floor(nt_getTask(747) - mark))
				AddOwnExp( bonus);
				Add120SkillExp(bonus);
				
				tbAwardTemplet:GiveAwardByList(tbItem, "MidAutumn,GetItemFromSongjin")
				gb_AppendTask("songjin butianshi2009", 2, 1)
				PlayerFunLib:AddTaskDaily(2645, 1)	
				Msg2Player("<#>Ngµi ®· tiªu hao"..mark.."<#>tUch ®iÓm, ®æi lÊy"..bonus .."<#>kinh nghiÖm.");
				WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]:§· tiªu hao"..mark.."tUch ®iÓm, ®æi lÊy"..bonus.."kinh nghiÖm.");
			end
			
			
			
		elseif nStep == 0 then
			Say("Quan TiOp LiÖu : Ngµi ca thÓ ®æi lÊy"..bonus.."§iÓm kinh nghiÖm, x¸c ®~nh ®æi lÊy ph¶i kh«ng?", 2, "§èi víi ta ph¶i thay ®æi/#wantpayex("..mark..",1"..")", "Uh, ®Ó cho ta suy nghÜ l¹i mét chót/no")	
		end
		
	end	
end

function wantpay(mark)
	if (mark == 9999) then		
		mark = nt_getTask(747)
	end
	
	if( mark > nt_getTask(747) ) then
		Say(battlesNpcSongJinShop.."Ngµi ch­a ®ñ ®iÓm, kh«ng thÓ ®æi.", 0);
	elseif (mark == 0) then
		Say(battlesNpcSongJinShop.."§· kh«ng cã ®iÓm tÝch lòy mµ còng ®æi kinh nghiÖm, thËt lµ hoang ®­êng.", 0);
	else
		-- local level = GetLevel();
		-- local bonus = bt_exchangeexp(level, mark)
		local bonus = battles_SongJinExChangeExp(mark)
		Say(battlesNpcSongJinShop.."Ngµi cã thÓ ®æi <color=yellow>"..mark.."<color> ®iÓm tÝch lòy lÊy <color=green>"..floor(bonus).."<color> §iÓm kinh nghiÖm kh«ng thÓ céng dån, x¸c ®Þnh ®æi ph¶i kh«ng?", 2, "§ång ý ®æi/#paymark("..mark..")", "Uh, ®Ó cho ta suy nghÜ l¹i mét chót/no")
	end	
end

function paymark(mark)
	if (mark == 9999) then
		mark = nt_getTask(747)
	end
	
	if( mark > nt_getTask(747) ) then
		Say(battlesNpcSongJinShop.."Ngµi ch­a ®ñ ®iÓm, kh«ng thÓ ®æi.", 0);
	elseif (mark == 0) then
		Say(battlesNpcSongJinShop.."§· kh«ng cã ®iÓm tých lòy mµ còng ®æi kinh nghiÖm, thËt lµ hoang ®­êng.", 0);
	else
		local level = GetLevel();
		-- local bonus = bt_exchangeexp(level, mark)
		local bonus = floor(battles_SongJinExChangeExp(mark))
		if (expchange_limit(mark) == 1) then
			nt_setTask(747, floor(nt_getTask(747) - mark))
			AddOwnExp( bonus);
			-- Add120SkillExp(bonus);
			Msg2Player("Ngµi ®· tèn "..mark.."<#> ®iÓm, ®æi lÊy "..bonus .." kinh nghiÖm.");
			WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: ?ÑÏûºÄ"..mark.."®iÓm, ®æi lÊy"..bonus.." kinh nghiÖm.");
		end
	end
end


function expchange_limit(cost)
	local nNumber = tbVNG2011_ChangeSign:GetTransLife()	
	local Limit_Exp = tbLimit_Exp[nNumber]
	if ( (nt_getTask(1017) + cost) <= Limit_Exp) then
		nt_setTask(1017, nt_getTask(1017) + cost)
		return 1
	else
		Say("Quan TiOp LiÖu : kh«ng muèn nh­ vËy tham lam, trong vßng mét tuÇn lÔ kh«ng thÓ ®æi lÊy v­ît qua<color=red>"..Limit_Exp.."<color> tUch ®iÓm kinh nghiÖm", 0)
		return -1
	end
end

function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) 
end

function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

function person_change()
	Say("Quan TiOp LiÖu : ? <color=yellow> ®øng hµng b×nh luËn b¶ng th­îng <color> ®øng hµng <color=yellow> 5 tªn <color> thø nhÊt nhµ ch¬i ®em ®¹t ®­îc ®Æc biÖt danh hiÖu cïng uy phong h×nh t­îng", 3, "Xem tèng kim nam nh©n vËt h×nh t­îng/title_male","Xem tèng kim n÷ nh©n vËt h×nh t­îng/title_female","Kh«ng muèn xem !/no" )
end;

function title_male()
	Describe("<link=image:\\spr\\npcres\\enemy\\enemy208\\enemy208_at.spr>Tèng kim nam nh©n vËt h×nh t­îng <link> ë ®øng hµng b¶ng trªn ca 5 c¸ tªn ®Uch nam nh©n vËt b×nh luËn ®em ®¹t ®­îc t­¬ng øng h×nh t­îng", 1, "Kh«ng/no" );
end

function title_female()
	Describe("<link=image:\\spr\\npcres\\enemy\\enemy207\\enemy207_at.spr>Tèng kim n÷ nh©n vËt h×nh t­îng <link> ë ®øng hµng b¶ng trªn ca 5 c¸ tªn ®Uch n÷ nh©n vËt b×nh luËn ®em ®¹t ®­îc t­¬ng øng h×nh t­îng", 1, "Kh«ng/no" );
end

function effect_aura()
	Say("Quan TiOp LiÖu : ë <color=yellow> ®øng hµng b×nh luËn b¶ng th­îng <color> ®øng hµng <color=yellow>5 tªn <color> ng­êi thø nhÊt vËt t­ëng ®¹t ®­îc ®Æc biÖt vßng trßn ®Æc hiÖu", 6, "Xem ®~nh n­íc Nguyªn so¸i ®Æc hiÖu/aura_dingguo","Xem an bang §¹i t­íng qu©n ®Æc hiÖu/aura_anbang","Xem phiªu kú t­íng qu©n ®Æc hiÖu/aura_biaoji","Xem trong chèn vâ l©m lang ®Æc hiÖu/aura_yulin","Xem chiªu v? gi¸o óy ®Æc hiÖu/aura_zhaowu","Kh«ng!/no" );
end

function aura_dingguo()
	Describe("<link=image:\\spr\\skill\\others\\title_dg.spr>§~nh n­íc Nguyªn so¸i ®Æc hiÖu <link> nh©n vËt b×nh luËn xOp hµng thø nhÊt nai ®¹t ®­îc vßng trßn ®Æc hiÖu", 1, "Kh«ng/no" );
end

function aura_anbang()
	Describe("<link=image:\\spr\\skill\\others\\title_ab.spr>An bang §¹i t­íng qu©n ®Æc hiÖu <link> nh©n vËt b×nh luËn ®øng hµng thø hai ®em ®¹t ®­îc vßng trßn ®Æc hiÖu", 1, "Kh«ng/no" );
end

function aura_biaoji()
	Describe("<link=image:\\spr\\skill\\others\\title_bj.spr>Phiªu kú t­íng qu©n ®Æc hiÖu <link> nh©n vËt b×nh luËn ®øng hµng thø ba nai ®¹t ®­îc vßng trßn ®Æc hiÖu", 1, "Kh«ng/no" );
end

function aura_yulin()
	Describe("<link=image:\\spr\\skill\\others\\title_yl.spr>Trong chèn vâ l©m lang ®Æc hiÖu <link> nh©n vËt b×nh luËn ®øng hµng thø t­ nai ®¹t ®­îc vßng trßn ®Æc hiÖu", 1, "Kh«ng/no" );
end

function aura_zhaowu()
	Describe("<link=image:\\spr\\skill\\others\\title_zw.spr>Chiªu v? gi¸o óy ®Æc hiÖu <link> nh©n vËt b×nh luËn ®øng hµng thø n¨m nai ®¹t ®­îc vßng trßn ®Æc hiÖu", 1, "Kh«ng/no" );
end

function yuewang_want()
	Say(battlesNpcSongJinShop.."TËp trung tinh hoa cña Nh¹c v­¬ng hån th¹ch cã thÓ chÕ t¹o ra Nh¹c v­¬ng kiÕm, cÇn "..YUEWANGHUN_STONECOUNT.." nh¹c v­¬ng hån th¹ch nhÊt ®Þnh ®æi ph¶i kh«ng?", 2, "Muèn/yuewang_change", "Kh«ng muèn/no")
end

function yuewang_change()
	Say(battlesNpcSongJinShop.."Nh¹c v­¬ng kiÕm chiÕm kh«ng gian <color=yellow>6 (2 X 3)<color> chç trèng, ng­¬i x¸c ®Þnh hµnh trang cßn chç trèng chø?", 2, "Ch¾c råi!/yuewang_sure", "§Ó ta kiÓm tra l¹i/no")
end

function yuewang_sure()
	if (CalcEquiproomItemCount(4, 507, 1, -1) >= YUEWANGHUN_STONECOUNT) then
		ConsumeEquiproomItem(YUEWANGHUN_STONECOUNT, 4, 507, 1, -1)
		AddEventItem(195)
		Say(battlesNpcSongJinShop.."C¸i nµy lµ Nh¹c v­¬ng kiÕm, mét tÝn vËt quan träng cña bang héi ®Êy!", 0)
		Msg2Player("§· nhËn ®­îc Nh¹c v­¬ng kiÕm!")
	else
		Say(battlesNpcSongJinShop.."Ng­¬i kh«ng ®ñ Nh¹c v­¬ng hån th¹ch, mau kiÓm tra l¹i, Nh¹c v­¬ng kiÕm kh«ng ph¶i ai còng cã thÓ së h÷u.", 0)
	end
end

function ore()
	Sale( 102, 4);
end

function goldenitem_menu()
	Sale( 103, 4);
end

