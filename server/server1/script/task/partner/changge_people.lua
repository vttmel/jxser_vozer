-------------------------------------------------------------------------
-- FileName		:	changge_people.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-07-04 14:17:15
-- Desc			:  	¸÷´ó³ÇÊĞ³¤¸èÃÅÃÅÈË
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --µ÷ÓÃ nt_getTask Í¬²½±äÁ¿µ½¿Í»§¶ËµÄÀµ
Include("\\script\\task\\partner\\partner_head.lua") --°üº¬ÁËÍ¼Ïóµ÷ÓÃ
Include("\\script\\task\\partner\\reward\\partner_reward.lua") --°üº¬ÁË½»ĞŞÁ¶ÈÎÎñµÄ½Å±¾
Include("\\script\\task\\partner\\reward\\partner_reward2.lua") 
Include("\\script\\task\\partner\\reward\\partner_reward3.lua") 
Include("\\script\\global\\titlefuncs.lua")  --°üº¬¸ü¸Ä³ÆºÅµÄ½Å±¾
Include("\\script\\task\\partner\\train\\partner_changgejindi.lua")

function main()

	Describe(DescLink_ChangGeMen..": Giang hå m­êi n¨m giã thæi lÖ, c­êi dµi khi ca khæ lµm ngät. N¨m ®ã cñi m«n chñ hiÖp nghÜa t¸n tµi, qu¶ng n¹p thiªn h¹ hµo kiÖt, ta tr­êng ca cöa ra sao chê thŞnh sù. Sau ®ã m«n chñ bŞ kim tÆc giÕt h¹i, chóng ta ng­êi trong còng ch­a tõng mét ngµy bu«ng tha cho thiªn h¹ th­¬ng sinh v× mÊy ®¶m nhiÖm tİn sø. H«m nay tr­êng ca håi sinh, chİnh lµ muèn cßn ng­êi trong thiªn h¹ mét c«ng ®¹o!",7, 
                "NhËn nhiÖm vô gi¸o huÊn B¹n §ång Hµnh/Getpartner_education", 
                "NhiÖm vô tu luyÖn B¹n §ång Hµnh/Getpartner_allpractice", 
                "NhiÖm vô ®Æc thï B¹n §ång Hµnh/Getpartner_especial", 
                "Thuª B¹n §ång Hµnh/Getpartner_paymoney", 
                "Söa ®æi danh hiÖu ng­êi ch¬i/change_title", 
                "§i Tr­êng Ca M«n CÊm §Şa/Goto_jindichangge", 
                "Ta muèn ®i V©n Trung TrÊn cã chót chuyÖn./Goto_townyunzhong", 
                "Ta ch¼ng qua ghĞ th¨m th«i./no")
end

function Getpartner_allpractice()
	Describe(DescLink_ChangGeMen..": Ng­¬i muèn lµm g× cïng b¹n ®ång hµnh tu luyÖn nhiÖm vô ? ",5, 
               "Ta muèn mua B¹n §ång Hµnh tu luyÖn nhiÖm vô./Getpartner_practice", 
               "Ta muèn ®ãng B¹n §ång Hµnh tu luyÖn nhiÖm vô./Getpartner_goonpractice", 
               "Ta lµ tíi hñy bá B¹n §ång Hµnh tu luyÖn nhiÖm vô./Getpartner_finishpractice", 
               "Ta muèn t×m hiÓu râ tu luyÖn nhiÖm vô B¹n §ång Hµnh./Getpartner_knowpractice", 
               "Ta ch¼ng qua ghĞ th¨m ch¬i th«i./no")
end

function Getpartner_goonpractice()
	if ( nt_getTask(1245) >=0 and nt_getTask(1245) <= 3 ) then
		reward_givetask()
	elseif ( nt_getTask(1245) == 4 ) then
		reward_givetask2()
	elseif ( nt_getTask(1245) == 5 ) then
		reward_givetask3()
	end
end

function Getpartner_knowpractice()
Describe(DescLink_ChangGeMen..":<color=yellow> NhiÖm vô b¹n ®ång hµnh tu luyÖn lµ cöa Tr­êng Ca v× thay vâ l©m diÖt trõ nguy h¹i mµ ban bè mét lo¹t nhiÖm vô. Khi ng­¬i mua tu luyÖn quyÓn trôc sau liÒn cã thÓ xóc ph¸t ®i t­¬ng øng ®Şa ph­¬ng  nhiÖm vô giÕt qu¸i. GiÕt tr¸ch quyÓn trôc tr­íc m¾t chia lµm <color=red>50 chØ, 100 chØ, cïng 150 chØ <color> ba lo¹i. Lóc míi b¾t ®Çu ng­¬i chØ cã thÓ mua ®­îc giÕt <color=red>50<color> chØ ®æ thõa quyÓn trôc, h¬n n÷a mçi ngµy nhiÒu nhÊt hoµn thµnh <color=red>5<color> lÇn. Hoµn thµnh sau nµy ng­¬i cïng b¹n ®ång hµnh ng­¬i sÏ lÊy ®­îc <color=red> phong phó håi b¸o <color>. §ång thêi, theo ng­¬i hoµn thµnh nhiÖm vô <color=red> sè lÇn <color> cµng nhiÒu, cöa tr­êng ca sÏ cho ng­¬i <color=red>Thanh Long Vâ SÜ , Thanh Long KiÕm S¸t<color> danh hiÖu. Theo nh÷ng thø nµy t­ c¸ch t¨ng lªn, ng­¬i ®em cã thÓ mua giÕt chÕt nhiÒu h¬n qu¸i vËt quyÓn trôc, ®ång thêi mçi ngµy hoµn thµnh sè lÇn còng ®em nhiÒu h¬n. §èi øng, lÊy ®­îc håi b¸o còng ®em cµng lóc cµng lín. <color>",2,
                     "Trë vÒ/Getpartner_allpractice","Rêi khái/no")
end

function Getpartner_education()    --ÎÒÏë×öÁìÈ¡Í¬°éµÄ½ÌÓıÈÎÎñ
	Describe(DescLink_ChangGeMen..": Tèt, nÕu nh­ ng­¬i nghÜ lµm tho¹i, nh­ vËy ®Õn V©n Trung TrÊn sau nµy t×m kiÕm Hoµng §å §Ö ®èi tho¹i, h¾n sÏ chØ dÉn cho ng­¬i.",2, 
           "Tèt, ta ®· râ rµng. §Ó cho ta ®i V©n Trung TrÊn. /Goto_townyunzhong", 
           "Cho ta suy nghÜ l¹i chót/no")
end


function Getpartner_paymoney()
	Describe(DescLink_ChangGeMen..": ThËt xin lçi, nhãm lín tinh nhuÖ vâ sÜ cßn ë trong khi huÊn luyÖn, tr­íc m¾t kh«ng cã cã thÓ cung ng­¬i thuª b¹n ®ång hµnh, xin mêi sau nµy trë l¹i. C¸m ¬n. ",1," KÕt thóc ®èi tho¹i/no")
end

function Getpartner_especial()
	Describe(DescLink_ChangGeMen..": H¾c H¾c, nh÷ng thø kia kiÕm thuËt thÇn th«ng b¹n ®ång hµnh còng kh«ng ph¶i lµ dÔ dµng liÒn cã thÓ ®¹t ®­îc. Ng­¬i cÇn n÷a häc hái kinh nghiÖm, chót n÷a trë l¹i ®i. ",1,"KÕt thóc ®èi tho¹i /no")
end

function Goto_townyunzhong()
	local i = random(8);
	local pos = {{1682,3290},{1694,3306},{1669,3320},{1655,3332},{1650,3340}};
	local j = random(5);
	if (random(2) == 1) then
		i = -i;
	end
	NewWorld(512,pos[j][1] + i,pos[j][2])   --È¥ÔÆÖĞÕò£¿£¿£¿
	--blackScreen();
end

function blackScreen()
	if(GetGameTime() <= 1800) then
		Say("Quan Ph­¬ng §Ò Kú : NÕu nh­ ng­¬i ®Õn V©n Trung TrÊn b¶n ®å bŞ ®en, xin h·y vµo <enter><color=yellow>http://jx.kingsoft.com/zt1/2ye/2005/09/08/64217.shtml<color> kÕ tiÕp thø ba tµi liÖu phiÕn. NÕu nh­ ®èi víi ®ång b¹n hÖ thèng cã bÊt kú ı kiÕn cïng ı t­ëng, mêi ®­îc <color=yellow>bbs.jx.kingsoft.com<color> ph¸t biÓu.",0);
	end
end

function Getpartner_practice()
	local Name = GetName()
	Describe(DescLink_ChangGeMen..":"..Name.."§¹i nh©n, ng­¬i nghÜ mua lo¹i nµo tu luyÖn quyÓn trôc ®©y ? ",4, 
            "GiÕt qu¸i 50 chØ /practice_kill50", 
            "GiÕt qu¸i 100 chØ /practice_kill100", 
            "GiÕt qu¸i 150 chØ /practice_kill150", 
            "Chót n÷a ta trë l¹i/no")
end


function practice_kill50()
	if ( SubWorldIdx2ID( SubWorld ) == 1 ) then
		Sale(110)
	elseif ( SubWorldIdx2ID( SubWorld ) == 11 ) then
		Sale(113)
	elseif ( SubWorldIdx2ID( SubWorld ) == 37 ) then
		Sale(116)
	elseif ( SubWorldIdx2ID( SubWorld ) == 78 ) then
		Sale(119)
	elseif ( SubWorldIdx2ID( SubWorld ) == 80 ) then
		Sale(122)
	elseif ( SubWorldIdx2ID( SubWorld ) == 162 ) then
		Sale(125)
	elseif ( SubWorldIdx2ID( SubWorld ) == 176 ) then
		Sale(128)
	end
end

function practice_kill100()
	if ( nt_getTask(1245) < 2 ) then
		Describe(DescLink_ChangGeMen..": ThËt xin lçi, ngµi tr­íc m¾t danh hiÖu cßn kh«ng cã ®¹t tíi <color=red>Thanh Long Vâ SÜ<color> tíi c¶nh giíi, kh«ng c¸ch nµo mua giÕt <color=red>100<color> chØ tíi quyÓn trôc. Ph¶i lÊy gäi ®­îc Thanh Long Vâ SÜ, nhÊt ®Şnh ph¶i İt nhÊt ë <color=red>5<color> ngµy bªn trong hoµn thµnh mçi ngµy tÊt c¶ tu luyÖn nhiÖm vô. Mçi ngµy tÊt c¶ tu luyÖn nhiÖm vô sè lÇn v× <color=red>5<color> lÇn. ",2,"Trë vÒ/Getpartner_practice","KÕt thóc ®èi tho¹i/no")
	elseif ( nt_getTask(1245) >= 2 ) then
		if ( SubWorldIdx2ID( SubWorld ) == 1 ) then
			Sale(111)
		elseif ( SubWorldIdx2ID( SubWorld ) == 11 ) then
			Sale(114)
		elseif ( SubWorldIdx2ID( SubWorld ) == 37 ) then
			Sale(117)
		elseif ( SubWorldIdx2ID( SubWorld ) == 78 ) then
			Sale(120)
		elseif ( SubWorldIdx2ID( SubWorld ) == 80 ) then
			Sale(123)
		elseif ( SubWorldIdx2ID( SubWorld ) == 162 ) then
			Sale(126)
		elseif ( SubWorldIdx2ID( SubWorld ) == 176 ) then
			Sale(129)
		end
	end
end

function practice_kill150()
	if ( nt_getTask(1245) < 3 ) then
		Describe(DescLink_ChangGeMen..": ThËt xin lçi, ngµi tr­íc m¾t danh hiÖu cßn kh«ng cã ®¹t tíi <color=red> Thanh Long kiÕm s¸t <color> ®İch c¶nh giíi, kh«ng c¸ch nµo mua <color=red>150<color> chØ ®æ thõa ®İch quyÓn trôc. Ph¶i lÊy gäi ®­îc Thanh Long kiÕm s¸t, nhÊt ®Şnh ph¶i İt nhÊt ë <color=red>20<color> ngµy bªn trong hoµn thµnh mçi ngµy tÊt c¶ tu luyÖn nhiÖm vô. Mçi ngµy tÊt c¶ tu luyÖn nhiÖm vô sè lÇn v× <color=red>5<color> lÇn. ",2,"Trë vÒ/Getpartner_practice","KÕt thóc ®èi tho¹i /no")
	elseif ( nt_getTask(1245) >= 3 ) then
		if ( SubWorldIdx2ID( SubWorld ) == 1 ) then
			Sale(112)
		elseif ( SubWorldIdx2ID( SubWorld ) == 11 ) then
			Sale(115)
		elseif ( SubWorldIdx2ID( SubWorld ) == 37 ) then
			Sale(118)
		elseif ( SubWorldIdx2ID( SubWorld ) == 78 ) then
			Sale(121)
		elseif ( SubWorldIdx2ID( SubWorld ) == 80 ) then
			Sale(124)
		elseif ( SubWorldIdx2ID( SubWorld ) == 162 ) then
			Sale(127)
		elseif ( SubWorldIdx2ID( SubWorld ) == 176 ) then
			Sale(130)
		end
	end
end

function Getpartner_finishpractice()
	local Uworld1237 = nt_getTask(1237)
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
	local NpcCount = PARTNER_Count()
	
	if ( NpcCount == 0 ) then
		Msg2Player("Ng­¬i kh«ng cã mang b¹n ®ång hanh, kh«ng thÓ hñy nhiÖm vô ?")
	end
	
	if ( Uworld1237 ~= 0 ) then
		if ( PARTNER_GetTaskValue(partnerindex, 2) ~= 0  )  then
			RemovePlayerEvent(Uworld1237) --È¡Ïû¸ÃÊ¢¼ş
			nt_setTask(1237,0)
			PARTNER_SetTaskValue(partnerindex,2,0) 
			Msg2Player("Ng­¬i ®· hñy bá nhiÖm vô tu luyÖn.")
		elseif ( PARTNER_GetTaskValue(partnerindex, 2) == 0  ) then
			local j = 0
			for i=1, NpcCount do
				if (PARTNER_GetTaskValue(i,2) ~= 0 ) then
					Msg2Player("Ng­¬i mang theo lµm tu luyÖn nhiÖm vô lµ thø "..i.." sè b¹n ®ång hµnh. ")
					j = j+1
				end
			end
			if ( j == 0 ) then
				RemovePlayerEvent(Uworld1237) --È¡Ïû¸ÃÊ¢¼ş
				nt_setTask(1237,0)
				nt_setTask(1244,0)
				Msg2Player("Ng­¬i ®· hñy bá nhiÖm vô tu luyÖn.")
			end
		end
	else
		Describe(DescLink_ChangGeMen..": Ng­¬i kh«ng cã b¾t ®Çu tu luyÖn nhiÖm vô, thÕ nµo hñy bá ®©y ?",1,"KÕt thóc ®èi tho¹i/no")
	end
end

function no()
end
