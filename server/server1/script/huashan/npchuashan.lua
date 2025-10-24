IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")

function main() 
	-- dofile("script/huashan/npchuashan.lua");
	dialog_main()	
end


function dialog_main()
	local player_Faction = GetFaction()
	if (GetLastFactionNumber() == 5) then		-- ±¾ÃÅ
		Talk(1,"","Tõ l©u nghe tiÕng c¸c c« n­¬ng Thóy Yªn ®Ñp nh­ tiªn n÷, vÞ c« n­¬ng nµy cho ¨n mµy ta Ýt tiÒn uèng r­îu ®­îc ch¨ng?")
		return
	elseif (GetLastFactionNumber() == 4) then				
		Talk(1,"","Xinh ®Ñp nh­ hoa t­¬i mµ h»ng ngµy cø ®èi diÖn víi Thanh §¨ng Cæ PhËt!  Ta kh«ng thÝch c¸c ng­¬i ë ®iÓm nµy! ")
		return
	elseif (GetLastFactionNumber() == 2) then
		Talk(1,"","Hai ph¸i chóng ta liªn minh l¹i, kh«ng cÇn ph¶i ph©n tranh n÷a! Ch¼ng ph¶i lµ hû sù ­?")
		return
	elseif (GetLastFactionNumber() == 3) then
		Talk(1,"","Ta ghÐt nhÊt lµ c¸i bän len lÐn h¹ ®éc h¹i ng­êi!  Êy!  Kh«ng ph¶i ta nãi ng­¬i! ")
		return
	elseif (GetLastFactionNumber() == 1) then
		Talk(1,"","D­¬ng Hå cña Thiªn V­¬ng bang c¸c ng­¬i cßn kÐm xa b¶n m«n cña ta, Thiªn V­¬ng qu¶ nhiªn ch¼ng ra g× hÕt! ")
		return
	elseif (GetLastFactionNumber() == 0) then
		Talk(1,"","Hßa th­îng ®Çu träc sao l¹i ®Õn n¬i th©m s¬n cïng cèc thÕ nµy?! ")
		return
	elseif (GetLastFactionNumber() == 8) then
		Talk(1,"","Quý m«n lÊy hiÖp nghÜa lµm träng, nh­ng kh«ng biÕt §¬n T­ Nam cã biÕt hæ thÑn hay kh«ng mµ cø muèn so tµi víi vâ c«ng cña chóng ta")
		return
	elseif (GetLastFactionNumber() == 9) then
		Talk(1,"","C«n L«n ph¸i ph¸t triÓn thÇn tèc! T¹i h¹ rÊt ng­ìng mé! ")
		return
	elseif (GetLastFactionNumber() == 7) then
		Talk(1,"","Ai lµm hoµng ®Õ th× còng mÆc!  Nh­ng c¸c ng­¬i tµn s¸t sinh linh th× bæn c« n­¬ng kh«ng bá qua! ")
		return
	elseif (GetLastFactionNumber() == 6) then
		Talk(2,"","§¹i hiÖp!  §õng qua ®©y! ","¸! Bä chÐt!!! ")
		return
	elseif (GetLastFactionNumber() == 10) then 
		Say("Cã lêi g× muèn nãi víi bang chñ kh«ng? Hay muèn ta ®­a vÒ Hoa S¬n?",4,"Xin ®­a t¹i h¹ vÒ Hoa S¬n!/return_yes","T×m hiÓu khu vùc luyÖn c«ng/map_help","T×m hiÓu vâ nghÖ bæn m«n/skill_help","Xin chuyÓn dïm lêi hái th¨m s­ phô/no")
		return
	end


	if GetSex() == 1 then
		Talk(2,"","Bæn bang ®· cã danh x­ng Thiªn h¹ ®Ö nhÊt bang, danh chÊn giang hå.Nh©n tµi ngäa Hæ tµng Long, thêi nµo còng cã", "Hoa S¬n ph¸i toµn lµ nam kh«ng tiÕp nhËn ®Ö tö n÷")
	return end

	if GetCamp() == 0 then
		Say("NÕu muèn gia nhËp bæn ph¸i ph¶i thay ®æi t©m tÝnh, chuyÓn t©m tu hµnh, t­¬ng lai cã rÊt nhiÒu c¬ héi chê ®ãn ng­¬i!", 3, "Gia nhËp Hoa S¬n/go", "T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
	end
end

function go()
	if GetLevel()<10 then
		Talk(2,"","Bæn bang ®· cã danh x­ng Thiªn h¹ ®Ö nhÊt bang, danh chÊn giang hå.Nh©n tµi ngäa Hæ tµng Long, thêi nµo còng cã", "Tr­íc tiªn ng­¬i h·y luyÖn tËp l¹i c¨n b¶n, ®¹t ®Õn <color=Red>cÊp 10<color> råi h·y t×m ta!")
	return end
	SetFaction("huashan");
	SetCamp(3);
	SetCurCamp(3);
	SetRank(89);
	SetSeries(2);
	AddMagic(1347)
	AddMagic(1372)
	AddMagic(1349)
	AddMagic(1374)
	AddMagic(1350)
	AddMagic(1375)
	AddMagic(1351)
	AddMagic(1376)
	AddMagic(1354)
	AddMagic(1378)
	AddMagic(1355)
	AddMagic(1379)
	AddMagic(1358)
	AddMagic(1360)
	AddMagic(1380)
	AddMagic(1364,20)
	AddMagic(1382,20)
	--AddMagic(1363,20)
	AddMagic(1365,20)
	AddMagic(1370,20)
	AddMagic(1369,20)
	AddMagic(1384,20)
	--AddMagic(1368,20)
	SetLastFactionNumber(10);
	Msg2Player("Hoan nghªnh b¹n gia nhËp Hoa S¬n ph¸i!")
	Msg2Faction("cuiyan",GetName().." tõ h«m nay gia nhËp Hoa S¬n ph¸i. Xin b¸i kiÕn c¸c vÞ s­ tû. Mong c¸c vÞ quan t©m chØ gi¸o!",GetName())
end

function return_yes()
	NewWorld(987, 1328, 3136)
end;

function no()
end;