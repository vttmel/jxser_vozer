-------------------------------------------------------------------------
-- FileName		:	sworldking_peolle.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-07-04 16:17:15
-- Desc			:  	½£»Ê³şÆÛÌìµÄµÜ×Ó
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --µ÷ÓÃ nt_getTask Í¬²½±äÁ¿µ½¿Í»§¶ËµÄÀµ
Include("\\script\\task\\partner\\partner_head.lua") --°üº¬ÁËÍ¼Ïóµ÷ÓÃ
Include("\\script\\task\\partner\\partner_problem.lua") --µ÷ÓÃ nt_getTask Í¬²½±äÁ¿µ½¿Í»§¶ËµÄÀµ
IncludeLib("PARTNER")
IncludeLib("RELAYLADDER");	--ÅÅĞĞ°ñ

function partner_finishanswer(nChange)
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
	if (partnerindex <= 0) then
		Msg2Player("Ng­¬i kh«ng cã b¹n ®ång hµnh,xin h·y kiÕm b¹n ®ång hµnh.")
		partner_givetodo()
	elseif (partnerstate ~= 1) then
		Msg2Player("Xin mêi ®em b¹n ®ång hµnh ra míi cã thÓ nhËn th­ëng.")
	elseif ( PARTNER_GetLevel(partnerindex) < 10) then
		if ( nChange == 1 ) then
			PARTNER_AddExp(partnerindex ,100) --»Ø´ğ¶ÔÎÊÌâÇÒÍ¬°éµÈ¼¶<10¼¶Ê±¸ø¼Ó100¾­Ñé¡£
			Msg2Player("Chóc mõng b¹n ®ång hµnh cña ng­¬i thu ®­îc 100 chót kinh nghiÖm")
		else
			Msg2Player("ThËt xin lçi ng­¬i tr¶ lêi ch­a chİnh x¸c yªu cÇu, kh«ng thÓ nhËn th­ëng")
		end
	else
		Msg2Player("Kinh nghiÖm nhËn th­ëng chØ ë b¹n ®ång hµnh cÊp thÊp h¬n 10")
	end
end

function partner_jianhuangdz_fajiang1(nChange)
	if ( nChange == 1 ) then
		Msg2Player("Xin mêi lÇn n÷a KiÕm Hoµng ®Ö tö ®èi tho¹i nhËn lÊy phÇn th­ëng.")
	end
end

partner_keeponproblem = {
[1] = partner_finishanswer,
[2] = partner_jianhuangdz_fajiang1,
}

function main()
	local PlayerName = GetName()
	local Uworld1226 = nt_getTask(1226) --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1227 = nt_getTask(1227) --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1228 = nt_getTask(1228) --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1229 = nt_getTask(1228) --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1230 = nt_getTask(1230) --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1231 = nt_getTask(1231) --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
		Describe(DescLink_JianHuangDiZi..": A , ng­¬i qu¶ nhiªn lµm xong tÊt c¶ nhiÖm vô. §­îc råi , nhËn lÊy phÇn th­ëng cña ng­¬i sau sÏ cïng ta ®èi tho¹i.",2, 
		"NhËn lÊy phÇn th­ëng /jianhuangdizi_prize1", 
		"Hñy bá nhiÖm vô/partner_killedu") 
	elseif ( Uworld1226 == 20 ) and ( GetBit(GetTask(1232),20) == 0 ) then 
		Describe(DescLink_JianHuangDiZi..": §­îc råi , ta cuèi cïng nãi cho ng­¬i biÕt mét İt cao cÊp ®İch thao t¸c kû x¶o, nh×n kü, chê chót ta sÏ hái ng­¬i mÊy vÊn ®Ò. :<enter>" 
		.."<color=yellow><color=red>Ng­¬i cã thÓ ®¹t ®­îc bao nhiªu b¹n ®ång hµnh, mçi ®ång b¹n cã thÓ häc bao nhiªu kü n¨ng :<color> mét ng­êi ch¬i cã 5 b¹n ®ång hµnh, nh­ng chØ cã thÓ cho gäi ra mét. §ång b¹n cã thÓ häc phô thªm kü n¨ng theo cÊp bËc, tæng céng 16 c¸i.<enter>" 
		.."<color=red>NhiÒu b¹n ®ång hµnh ®Ó thay ®æi :<color> Ng­¬i ®Çu tiªn muèn b¹n ®ång hµnh chän ng­¬i nghÜ thiÕt ®æi l¹i ®ång b¹n ®İch ngän kı, sau ®ã sÏ ®iÓm lùa chän ®ång b¹n, c¸i nót lµ ®­îc råi. DÜ nhiªn ng­¬i còng cã thÓ trùc tiÕp ë b¹n ®ång hµnh, bªn tr¸i kiÖn ®iÓm kİch sau sÏ xuÊt hiÖn tªn b¹n ®ång hµnh cña ng­¬i. Chó ı : thiÕt lËp b¹n ®ång hµnh thao t¸c kh«ng thÓ liªn tôc tiÕn hµnh, hai lÇn thao t¸c gi÷a İt nhÊt gian c¸ch nöa phÇn chu«ng ®ång hå.<enter>" 
		.."<color=red>Thay thÕ kü n¨ng :<color> nÕu muèn thay thÕ kü n¨ng lóc ng­¬i chØ cÇn më ra ®ång b¹n kü n¨ng giíi mÆt, ®iÓm quªn l·ng c¸i nót sau lùa chän hy väng thñ tiªu ®İch kü n¨ng, lóc nµy hÖ thèng sÏ h­íng ng­¬i x¸c nhËn cã hay kh«ng thËt muèn quªn l·ng nªn kü n¨ng, ®iÓm x¸c ®Şnh lµ ®­îc ®em nªn kü n¨ng quªn l·ng r¬i, sau ng­¬i lµ ®­îc häc tËp kü n¨ng míi liÔu . <enter>" 
		.."<color=red> ®ång b¹n håi phôc sinh m¹ng :<color> nÕu nh­ ng­¬i muèn cho ®ång b¹n ®İch sinh m¹ng håi phôc , ®em h¾n triÖu håi lµ ®­îc råi , xö vu kh«ng ph¶i lµ cho gäi ra tr¹ng th¸i ®ång b¹n lµ cã thÓ tù ®éng håi phôc sinh m¹ng . <enter><color>" 
		.."§­îc råi, chuÈn bŞ xong qua l¹i ®¸p ®èi víi ta ba ®¹o vÊn ®Ò ®i.",3, 
		"B¾t ®Çu tr¶ lêi ®i /jianhuangdizi_problem", 
		"§Ó cho ta lµm c«ng viÖc ®·/no", 
		"Hñy bá nhiÖm vô/partner_killedu") 
	elseif ( Uworld1226 == 20 and GetBit(GetTask(1232),20) == 1 ) then 
		local NpcCount = PARTNER_Count() 
		if ( NpcCount >= 5 ) then 
			Describe(DescLink_JianHuangDiZi..": C¨n cø thêi gian hoµn thµnh nhiÖm vô, ta sÏ cho ng­¬i mét t­ chÊt b¹n ®ång hµnh tèt. BÊt qu¸ ng­¬i b©y giê ®ång b¹n sè l­îng ®· ®Çy. NÕu nh­ ng­¬i kh«ng cÇn ®ång b¹n lêi cña ta ®em cho ng­¬i ph¸t ra t­ëng th­ëng , bÊt qu¸ kh«ng hÒ n÷a cho ng­¬i b¹n ®ång hµnh. NÕu nh­ ng­¬i cÇn mét vŞ míi, nh­ vËy xin ®iÓm kİch sau nµy trë l¹i chän h¹ng, tr­íc gi¶i t¸n mét b¹n ®ång hµnh. ",2,
                        "Ta kh«ng cÇn b¹n ®ång hµnh míi, ra nhËn th­ëng ®i/partner_goontofinishtask","Sau nµy trë l¹i /no") 
		else 
			Describe(DescLink_JianHuangDiZi..": c¨n cø nhiÖm vô hoµn thµnh thêi gian, ta sÏ cho ng­¬i mét t­ chÊt tèt h¬n ®ång b¹n. NÕu nh­ ng­¬i kh«ng cÇn ®ång b¹n lêi cña ta ®em cho ng­¬i ph¸t ra nhËn th­ëng, bÊt qu¸ kh«ng hÒ n÷a cho ng­¬i. NÕu nh­ ng­¬i cÇn mét vŞ míi b¹n ®ång hanh, nh­ vËy xin ®iÓm kİch  ta cÇn míi b¹n ®ång hµnh chän h¹ng, ta ®em cho ng­¬i mét vŞ míi b¹n ®ång hµnh. ",4, 
			"Ta kh«ng cÇn b¹n ®ång hµnh míi, ra nhËn th­ëng ®i /partner_goontofinishtask", 
			"Ta cÇn míi b¹n ®ång hµnh /partner_goontogivepartner", 
			"Sau nµy trë l¹i /no", 
			"Hñy bá nhiÖm vô /partner_killedu") 
		end 
	elseif ( Uworld1226 == 0 ) then 
		Describe(DescLink_JianHuangDiZi..": Hoan nghªnh ng­¬i tíi ®Õn V©n Trung TrÊn. Ta bŞ s­ phã së bµy ë chç nµy huÊn luyÖn nhãm lín tinh nhuÖ vâ sÜ, chİnh lµ v× cã thÓ ®Ó cho ngµi ë x«ng x¸o giang hå lóc cã mét vŞ ®¸ng tin cËy b¹n ®ång hµnh. Tèt nh­ vËy ®i, ®Ó cho chóng ta tíi xem mét chót ng­¬i cÇn trî gióp g× . ",5, 
		"§óng vËy, ta cÇn ng­¬i cung cÊp b¹n ®ång hµnh/partner_givetodo", 
		"Ta mang theo ng­êi ®ång b¹n, muèn cho h¾n lµm nhiÖm vô gi¸o dôc./partner_havetodo", 
		"Ta muèn xem tr­íc mét chót nhiÖm vô gi¸o dôc tïy thuéc néi dung./partner_question", -- tæng hîp liÔu tÊt c¶ npc cã thÓ hái vÊn ®Ò ? ? ? ? ? ? 
		"Ta muèn rêi khái v©n trung trÊn /partner_goback", 
		"C¸i nµy trÊn mü kh«ng th¾ng thua, ta muèn vµo bªn trong th¨m quan /no") 
	else 
		Describe(DescLink_JianHuangDiZi..": S­ phã sím nh×n thÊu giang hå ®İch m­a giã, tŞ c­ thÕ ngo¹i liÔu. Ta còng kh«ng biÕt l·o nh©n gia «ng ta b©y giê n¬i nµo. NÕu nh­ kia ngµy ng­¬i may m¾n cã thÓ gÆp ph¶i h¾n, cã lÏ sÏ cã ı kh«ng nghÜ tíi thu ho¹ch ®i. Tèt l¾m, nghiªm chØnh mµ nãi ®i, trong trÊn cã mÊy vŞ Èn c­ ®İch nh©n vËt vâ l©m, ng­¬i nÕu nh­ muèn huÊn luyÖn b¹n ®ång cña ng­¬i, ®i ngay t×m bän hä gióp mét tay. Nh÷ng ng­êi nµy theo thø tù lµ <color=red> L­ Thanh, H¾c b¹ch song s¸t, §­êng ¶nh, Thu Y Thñy <color>.Nµy còng <color=red> kh«ng thÓ <color> gi¸o dôc nhiÖm vô huÊn luyÖn. §ång thêi ng­¬i cã thÓ <color=red> lËp tøc <color> b¾t ®Çu dïng gi¸o dôc nhiÖm vô huÊn luyÖn <color=red> mét b¹n ®ång hµnh kh¸c <color>.<enter>" 
		.."<color=red>Ch©n chİnh t­ chÊt tèt nhÊt ®ång b¹n, ®¹i kh¸i chØ cã s­ phã ta kiÕm hoµng së lÊn thiªn tµi cã thÓ huÊn luyÖn ®i ra ®i. Ng­¬i nÕu nh­ cã may m¾n gÆp ph¶i h¾n, ngµn v¹n chí dÔ dµng bá qua !<color>",4, 
		"§óng vËy, ta muèn lÊy nhiÖm vô gi¸o dôc /partner_killedu", 
		"Ta muèn xem tr­íc mét chót néi dung nhiÖm vô gi¸o dôc/partner_question", 
		"Ta muèn rêi khái v©n trung trÊn/partner_goback", 
		"KÕt thóc ®èi tho¹i /no") 
	end
end

function partner_goontofinishtask()
	Describe(DescLink_JianHuangDiZi..":"..PlayerName..", Ng­¬i ®· hoµn thµnh häc tËp. Cã thÓ xuÊt s­ ! nhËn lÊy phÇn th­ëng sau liÒn rêi ®i v©n trung ®i , kh«ng nªn quªn n¬i nµy c¸c b»ng h÷u , cã r·nh rçi th­êng trë l¹i ®i mét chót ®i. §óng råi, cã thÓ t×m s­ huynh cña ta long n¨m nhËn mét İt <color=red> quan hÖ b¹n ®ång hµnh<color> kŞch t×nh nhiÖm vô , h¾n b©y giê trong ngoµi ®ãng kÑt , trªn vai ®İch träng tr¸ch qu¸ nÆng. GÇn ®©y trªn giang hå cã mét cæ <color=red> thÇn bİ thÕ lùc <color> ®ang ©m thÇm hµnh ®éng , trong lßng ta cã trång bÊt t­êng ®İch c¶m gi¸c. Hy väng ng­¬i cã thÓ v·n cuång lan víi tøc còng ®i , hÕt th¶y tr©n träng !",2, 
          "NhËn lÊy phÇn th­ëng /jianhuangdizi_prize2", 
          "Sau nµy trë l¹i /no")
end

function partner_goontogivepartner()
	local PlayerName = GetName()
	local partnercount = PARTNER_Count()                   --»ñÈ¡µ±Ç°Í¬°éÊıÁ¿
	nt_setTask(1249,2)  --ÉèÎª2±íÊ¾ĞèÒªÍ¬°é
	if ( partnercount >= 5 ) then 
                Describe(DescLink_JianHuangDiZi..": Ng­¬i b©y giê cã nhiÒu b¹n ®ång hµnh, xin mêi tr­íc gi¶i t¸n mét vŞ ®ång b¹n sÏ cïng ta ®èi tho¹i.",1,"KÕt thóc ®èi tho¹i /no") 
        else 
                Describe(DescLink_JianHuangDiZi..":"..PlayerName..", Ng­¬i ®· hoµn thµnh häc tËp. Cã thÓ xuÊt s­ ! nhËn lÊy phÇn th­ëng sau liÒn rêi ®i v©n trung ®i , kh«ng nªn quªn n¬i nµy c¸c b»ng h÷u , cã r·nh rçi th­êng trë l¹i ®i mét chót ®i. §óng råi, cã thÓ t×m s­ huynh cña ta long n¨m nhËn mét İt <color=red> quan hÖ b¹n ®ång hµnh<color> kŞch t×nh nhiÖm vô , h¾n b©y giê trong ngoµi ®ãng kÑt , trªn vai ®İch träng tr¸ch qu¸ nÆng. GÇn ®©y trªn giang hå cã mét cæ <color=red> thÇn bİ thÕ lùc <color> ®ang ©m thÇm hµnh ®éng , trong lßng ta cã trång bÊt t­êng ®İch c¶m gi¸c. Hy väng ng­¬i cã thÓ v·n cuång lan víi tøc còng ®i , hÕt th¶y tr©n träng.",2, 
               "NhËn lÊy phÇn th­ëng /jianhuangdizi_prize2", 
               "Sau nµy trë l¹i /no") 
        end
end

function jianhuangdizi_prize1()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,2000,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+2100
		nt_setTask(1226,20)
	end
end

function jianhuangdizi_problem()
	 partner_edu(3,1,100,3,1232,20,2)
end

function jianhuangdizi_prize2()
	local Uworld1234 = GetGameTime() - nt_getTask(1234)
	if ( nt_getTask(1248) == 0 ) then
		nt_setTask(1248,Uworld1234)
	elseif ( nt_getTask(1248) > Uworld1234 ) then
		nt_setTask(1248,Uworld1234)
	end
	Msg2Player("Ng­¬i lÇn nµy hoµn thµnh nhiÖm vô gi¸o dôc sö dông hÕt "..Uworld1234.."gi©y.")
	Ladder_NewLadder(10188, GetName(),-1 * Uworld1234,1);
	
	if ( nt_getTask(1249) == 2 ) then
		local w=random(1,4)
		local j=random(1,5)
		if  ( Uworld1234 >= 900 ) then
			if ( j == 1 ) then
				local partneridex = PARTNER_AddFightPartner(1,4,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Chóc mõng ng­¬i ®· thu ®­îc mét b¹n ®ång hµnh.")
			elseif ( j == 2 ) then
				local partneridex = PARTNER_AddFightPartner(2,2,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Chóc mõng ng­¬i ®· thu ®­îc mét b¹n ®ång hµnh.")
			elseif ( j == 3 ) then
				local partneridex = PARTNER_AddFightPartner(3,3,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Chóc mõng ng­¬i ®· thu ®­îc mét b¹n ®ång hµnh.")
			elseif ( j == 4 ) then
				local partneridex = PARTNER_AddFightPartner(4,1,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Chóc mõng ng­¬i ®· thu ®­îc mét b¹n ®ång hµnh.")
			else
				local partneridex = PARTNER_AddFightPartner(5,0,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Chóc mõng ng­¬i ®· thu ®­îc mét b¹n ®ång hµnh.")
			end
		elseif ( Uworld1234 >= 0 ) and ( Uworld1234 < 900 ) then
			local attribute = genRandNumArray(30,6,1,7) 
			if ( j == 1 ) then
				local partneridex = PARTNER_AddFightPartner(1,4,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Chóc mõng ng­¬i ®· thu ®­îc mét b¹n ®ång hµnh.")
			elseif ( j == 2 ) then
				local partneridex = PARTNER_AddFightPartner(2,2,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Chóc mõng ng­¬i ®· thu ®­îc mét b¹n ®ång hµnh.")
			elseif ( j == 3 ) then
				local partneridex = PARTNER_AddFightPartner(3,3,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Chóc mõng ng­¬i ®· thu ®­îc mét b¹n ®ång hµnh.")
			elseif ( j == 4 ) then
				local partneridex = PARTNER_AddFightPartner(4,1,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Chóc mõng ng­¬i ®· thu ®­îc mét b¹n ®ång hµnh.")
			else
				local partneridex = PARTNER_AddFightPartner(5,0,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Chóc mõng ng­¬i ®· thu ®­îc mét b¹n ®ång hµnh.")
			end
		end
	end
		
		local partnerindex,partnerstate = PARTNER_GetCurPartner()      --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		local partner_addexp = floor(15000*(900/Uworld1234))
		PARTNER_SetTaskValue(partnerindex, 1, 2 );                            --½«µ±Ç°Í¬°éÉèÖÃÎªÈÎÎñÍê³É×´Ì¬
		PARTNER_AddExp(partnerindex,partner_addexp,1)                   	  --¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé
		
		nt_setTask(1226,0) --Í¬°é½ÌÓıÈÎÎñ½£»ÊµÜ×ÓÈÎÎñ±äÁ¿
		nt_setTask(1227,0) --Í¬°é½ÌÓıÈÎÎñ¢¬Çµ±äÁ¿
		nt_setTask(1228,0) --Í¬°é½ÌÓıÈÎÎñÌÆÓ°±äÁ¿
		nt_setTask(1229,0) --Í¬°é½ÌÓıÈÎÎñ°×É·±äÁ¿
		nt_setTask(1230,0) --Í¬°é½ÌÓıÈÎÎñºÚÉ·±äÁ¿
		nt_setTask(1231,0) --Í¬°é½ÌÓıÈÎÎñÇïÒ¢Ë®±äÁ¿
		nt_setTask(1232,0) --Í¬°é½ÌÓıÈÎÎñ¢¬ÇµÍ³Ò»×Ö½ÚÎ»¿ª¹Ø
		nt_setTask(1233,0) --Í¬°é½ÌÓıÎÊ´ğ´ÎÊı¼ÇÊıÆ÷
		nt_setTask(1234,0) --Í¬°é½ÌÓıÈÎÎñ¼ÆÊ±Æ÷
		nt_setTask(1235,0) --Í¬°é½ÌÓıºÚÉ·´¦ÎÊÌâ´ğ°¸
		nt_setTask(1243,0) --¼Ç¢¼´òÄ¾×®´ÎÊı
		nt_setTask(1247,0) --¼Ç¢¼½ÌÓıÈÎÎñÖĞºÚÉ·´¦É³´ü»÷´ò´ÎÊı
		nt_setTask(1249,0) --ÒÑ¾­Áì¹ı½±ÀøÁË
		
		Msg2Player("Chóc mõng ng­¬i hoµn thµnh nhiÖm vô gi¸o dôc b¹n ®ång hµnh, h·y tr©n träng, sÏ gÆp l¹i sau ! Ng­¬i ®i t×m mét chót nghÜa qu©n thñ lÜnh long n¨m ®i , h¾n cã lÏ cã ph¶i dïng tíi ®Şa ph­¬ng cña ng­¬i .")
end

-------------------------------------------------------Í¬°é»ñµÃ-----------------------------------------------

function partner_givetodo()                                --Ìá¹©Ò»¸öÍ¬°é
	local partnercount = PARTNER_Count()                   --»ñÈ¡µ±Ç°Í¬°éÊıÁ¿
	if ( partnercount == -1 ) then
		Msg2player("¹¦ÄÜ³öÏÖÒì³££¬ÇëÓëGMÁªÏµ¡£")
	elseif ( partnercount == 5 ) then
		Describe(DescLink_JianHuangDiZi..": Ng­¬i ®· cã nhiÒu b¹n ®ång hµnh, ®õng cã tham n÷a",1, 
                "KÕt thóc ®èi tho¹i /no")
	else
		Describe(DescLink_JianHuangDiZi.." Ng­¬i cã thÓ ë ®ång b¹n ®İch kho¸i tiÖp lan trong t×m ®­îc <color=red> cho gäi b¹n ®ång hµnh <color> c¸i nót , bªn tr¸i mµn h×nh c¸i nót lµ ®­îc råi. <color=red> lÇn n÷a <color> ®iÓm kİch  cho gäi b¹n ®ång hµnh  c¸i nót lµ cã thÓ <color=red> thu håi b¹n ®ång hµnh<color>",6, 
               "NhËn b¹n ®ång hµnh hÖ kim/partner_getgold", 
               "NhËn b¹n ®ång hµnh hÖ méc /partner_getwood", 
               "NhËn b¹n ®ång hµnh hÖ thñy/partner_getwater", 
               "NhËn b¹n ®ång hµnh hÖ háa /partner_getfire", 
               "NhËn b¹n ®ång hµnh hÖ thæ /partner_getdust", 
               "KÕt thóc ®èi tho¹i /no")
	end
end

function partner_getgold()
	Describe(DescLink_JianHuangDiZi.." ng­¬i muèn chän lo¹i nµo tİnh t×nh ®İch kim hÖ ®ång b¹n ",5, 
                "NhËn Anh M·nh b¹n ®ång hµnh/partner_getgold1", 
                "NhËn VÖ Chñ b¹n ®ång hµnh/partner_getgold2", 
                "NhËn L­u Manh b¹n ®ång hµnh/partner_getgold3", 
                "NhËn Näa Nh­îc b¹n ®ång hµnh /partner_getgold4", 
                "KÕt thóc ®èi tho¹i /no")
end

function partner_getgold1()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Kim")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getgold2()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Kim.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getgold3()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Kim.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getgold4()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Kim.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getwood()
	Describe(DescLink_JianHuangDiZi.."ÄãÒªÑ¡ÔñÄÄÖÖĞÔ¸ñµÄÄ¾ÏµÍ¬°é",5,
		"NhËn Anh M·nh b¹n ®ång hµnh/partner_getwood1",
		"NhËn VÖ Chñ b¹n ®ång hµnh/partner_getwood2",
		"NhËn L­u Manh b¹n ®ång hµnh/partner_getwood3",
		"NhËn Näa Nh­îc b¹n ®ång hµnh/partner_getwood4",
		"KÕt thóc ®èi tho¹i/no")
end		

function partner_getwood1()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Méc.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Méc.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getwood2()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Méc.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Méc.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getwood3()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Méc.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Méc.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getwood4()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Méc.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Méc.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getwater()
	Describe(DescLink_JianHuangDiZi.."ÄãÒªÑ¡ÔñÄÄÖÖĞÔ¸ñµÄË®ÏµÍ¬°é",5,
		"NhËn Anh M·nh b¹n ®ång hµnh/partner_getwate1",
		"NhËn VÖ Chñ b¹n ®ång hµnh/partner_getwate2",
		"NhËn L­u Manh b¹n ®ång hµnh/partner_getwate3",
		"NhËn Näa Nh­îc b¹n ®ång hµnh/partner_getwate4",
		"KÕt thóc ®èi tho¹i/no")
end
		
function partner_getwate1()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thñy.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thñy.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getwate2()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thñy.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thñy.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getwate3()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thñy.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thñy.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getwate4()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thñy.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thñy.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getfire()
	Describe(DescLink_JianHuangDiZi.."ÄãÒªÑ¡ÔñÄÄÖÖĞÔ¸ñµÄ»ğÏµÍ¬°é",5,
		"NhËn Anh M·nh b¹n ®ång hµnh/partner_getfire1",
		"NhËn VÖ Chñ b¹n ®ång hµnh/partner_getfire2",
		"NhËn L­u Manh b¹n ®ång hµnh/partner_getfire3",
		"NhËn Näa Nh­îc b¹n ®ång hµnh/partner_getfire4",
		"KÕt thóc ®èi tho¹i/no")
end

function partner_getfire1()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Háa.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Háa.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getfire2()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Háa.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Háa.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getfire3()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Háa.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Háa.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getfire4()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Háa.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Háa.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getdust()
	Describe(DescLink_JianHuangDiZi.."ÄãÒªÑ¡ÔñÄÄÖÖĞÔ¸ñµÄÍÁÏµÍ¬°é",5,
		"NhËn Anh M·nh b¹n ®ång hµnh/partner_getdust1",
		"NhËn VÖ Chñ b¹n ®ång hµnh/partner_getdust2",
		"NhËn L­u Manh b¹n ®ång hµnh/partner_getdust3",
		"NhËn Näa Nh­îc b¹n ®ång hµnh/partner_getdust4",
		"KÕt thóc ®èi tho¹i/no")
end

function partner_getdust1()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thæ.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thæ.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getdust2()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thæ.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thæ.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getdust3()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thæ.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thæ.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end

function partner_getdust4()
	local NowDate = tonumber(date("%y%m%d")) --»ñµÃµ±Ç°ÈÕÆÚ
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thæ.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Chóc mõng ng­¬i thu ®­îc mét b¹n ®ång hµnh hÖ Thæ.")
	else
		Msg2Player("ThËt xin lçi, h«m nay b¹n ®· nhËn qu¸ nhiÒu b¹n ®ång hµnh, ngµy mai quay trë l¹i ®i.")
	end
end


-----------------------------------------------------Í¬°é½ÌÓıÈÎÎñ¿ªÊ¼---------------------------------------------

function partner_havetodo()                                     --ÒÑ¾­´øÁËÒ»¸öÍ¬°é
	local Uworld1226 = nt_getTask(1226)                         --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local partnerindex,partnerstate = PARTNER_GetCurPartner()   --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
	local NpcCount = PARTNER_Count()
	
	if ( NpcCount == 0 ) then -- nhµ ch¬i tr­íc mÆt mét ®ång b¹n ®Òu kh«ng cã 
		Describe(DescLink_JianHuangDiZi..": B»ng h÷u, ng­¬i mét ®ång b¹n ®Òu kh«ng cã lµm g× nhiÖm vô nha ? tr­íc lùa chän nhËn lÊy mét ban ®ång hµnh ®i.",1,"KÕt thóc ®èi tho¹i/no") 
	elseif ( partnerstate == 0 ) then -- ®ång b¹n v× kh«ng gäi ra tr¹ng th¸i 
		Describe(DescLink_JianHuangDiZi..": B»ng h÷u, ng­¬i tr­íc mÆt kh«ng cã cho gäi bÊt kú b¹n ®ång hµnh , gäi ®­îc dÉn h¾n lµm nhiÖm vô nha ? ",1,"Cã thÓ lµ ta nghÜ sai råi /no") 
	elseif ( partnerindex>= 1 and partnerindex <= 5 ) then 
		local partner_finishtask = PARTNER_GetTaskValue(partnerindex,1) -- ®¹t ®­îc tr­íc mÆt cho gäi ra tíi ®ång b¹n ®İch gi¸o dôc nhiÖm vô tiÕn hµnh tr¹ng th¸i 
		if ( partner_finishtask == 1 ) then 
			Describe(DescLink_JianHuangDiZi..": Ng­¬i cã b¹n ®ång hµnh ®· ®ang lµm  gi¸o dôc nhiÖm vô , trùc tiÕp më ra F12 nhiÖm vô mÆt b¶n xem h¾n nªn lµm c¸i g× nhiÖm vô ®i.",1," V©ng ta hiÓu /no") 
		elseif ( partner_finishtask == 2 ) then 
			Describe(DescLink_JianHuangDiZi..": B»ng h÷u, ta phôc ng­¬i, ng­¬i ®· lµm xong nhiÖm vô gi¸o dôc b¹n ®ång hµnh ?.",1,"Tèt tèt, ta hiÓu /no") 
		elseif ( partner_finishtask == 0 ) then 
			Describe(DescLink_JianHuangDiZi..": C¸i trÊn nµy th­îng ®Çm rång hang hæ, cã cho phĞp ®©u cao nh©n. §ång b¹n cña ng­¬i huÊn luyÖn lóc nÕu nh­ cïng bän hä ®èi tho¹i, cã thÓ häc tËp ®Õn rÊt ®©u ®İch ®å. Ng­¬i ®i t×m vŞ gäi <color=red>? tiÖm <color> ®İch l·o nh©n ®i. LÊy <color=red>900 gi©y <color> v× giíi , nhiÖm vô hoµn thµnh lóc phÇn th­ëng ®­a cho ng­¬i ®ång b¹n t­ chÊt còng ®em cã thiªn uyªn chi biÖt.",2,
                    "B¾t ®Çu nhiÖm vô /swordking_paiming",
                       "Sau nµy trë l¹i /no") 
		end 
	end
end

function swordking_paiming()
	nt_setTask(1226,10)									   --ÉèÖÃÍ¬°é½ÌÓıÈÎÎñ¿ªÊ¼
	nt_setTask(1234,GetGameTime())
	local partnerindex,partnerstate = PARTNER_GetCurPartner()   --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
	PARTNER_SetTaskValue(partnerindex,1,1)                 --ÉèÖÃµ±Ç°Í¬°é½ÌÓıÈÎÎñ×´Ì¬Îª¿ªÊ¼
	Msg2Player("Ng­¬i ®· b¾t ®Çu nhiÖm vô gi¸o dôc b¹n ®ång hµnh. Cã thÓ ®i trong trÊn t×m nh÷ng thø kia Èn c­ nh©n vËt häc tËp.")
end
-----------------------------------------------------È¡ÏûÍ¬°é½ÌÓıÈÎÎñ----------------------------------------------------

function partner_killedu()
	Describe(DescLink_JianHuangDiZi..": Ng­¬i cßn cã mét lÇn c¬ héi , ng­¬i x¸c ®Şnh <color=red> hñy bá <color>nhiÖm vô b¹n ®ång hµnh ? nÕu nh­ hñy bá , nh­ vËy c¸i nµy ®ång b¹n sau nµy liÒn <color=red> kh«ng thÓ <color> lµm tiÕp ®ång b¹n gi¸o dôc nhiÖm vô.",2, 
     "Ta nhÊt ®Şnh ph¶i hñy bá /partner_killedureal", 
     "Cho ta suy nghÜ l¹i mét chót ®i /no")
end

function partner_killedureal()
	local NpcName = GetName()
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
	
	if ( nt_getTask(1226) == 0 ) then
		Describe(DescLink_JianHuangDiZi..":"..NpcName.."B»ng h÷u, ®õng cho lµ ta lµ kiÕm hoµng ®Ö tö liÒn tu d­ìng tèt kh«ng ®­îc, ng­¬i c¨n b¶n kh«ng cã nhËn ®ång b¹n gi¸o dôc nhiÖm vô, ®©y kh«ng ph¶i lµ ®ïa bìn ta ? chİnh lµ phËt còng næi giËn n÷a råi ! kh«ng muèn l¹i cã h¬i thë lÇn nga.",1,
		"KÕt thóc ®èi tho¹i/no")
	else
			local NpcCount = PARTNER_Count()
			if ( NpcCount ~= 0 ) then
				for i=1,NpcCount do	
					if ( PARTNER_GetTaskValue(i,1) == 1 ) then   --Èç¹ûÄÄ¸öÍ¬°éÕıÔÚ½ÌÓıÈÎÎñµ±ÖĞ
						PARTNER_SetTaskValue(i,1,2)              --ÉèÖÃ´ËÍ¬°é½ÌÓıÈÎÎñÎªÍê³É×´Ì¬
					end
				end
			end
			
				nt_setTask(1226,0) --Í¬°é½ÌÓıÈÎÎñ½£»ÊµÜ×ÓÈÎÎñ±äÁ¿
				nt_setTask(1227,0) --Í¬°é½ÌÓıÈÎÎñ¢¬Çµ±äÁ¿
				nt_setTask(1228,0) --Í¬°é½ÌÓıÈÎÎñÌÆÓ°±äÁ¿
				nt_setTask(1229,0) --Í¬°é½ÌÓıÈÎÎñ°×É·±äÁ¿
				nt_setTask(1230,0) --Í¬°é½ÌÓıÈÎÎñºÚÉ·±äÁ¿
				nt_setTask(1231,0) --Í¬°é½ÌÓıÈÎÎñÇïÒ¢Ë®±äÁ¿
				nt_setTask(1232,0) --Í¬°é½ÌÓıÈÎÎñ¢¬ÇµÍ³Ò»×Ö½ÚÎ»¿ª¹Ø
				nt_setTask(1233,0) --Í¬°é½ÌÓıÎÊ´ğ´ÎÊı¼ÇÊıÆ÷
				nt_setTask(1234,0) --Í¬°é½ÌÓıÈÎÎñ¼ÆÊ±Æ÷
				nt_setTask(1235,0) --Í¬°é½ÌÓıºÚÉ·´¦ÎÊÌâ´ğ°¸
				nt_setTask(1243,0) --¼Ç¢¼´òÄ¾×®´ÎÊı
				nt_setTask(1247,0) --´òÉ³´üµÄ´ÎÊı
				nt_setTask(1249,0) --ÒÑ¾­Áì¹ı½±ÀøÁË
				
				Msg2Player("B¹n ®ång hµnh cña ng­¬i gi¸o dôc nhiÖm vô ®· hñy bá, nh­ vËy sau nµy h¾n còng kh«ng cã thÓ lµm tiÕp..")
	end
end

--------------------------------------------------------Í¬°éÎÊ´ğ----------------------------------------------

function partner_question()
	Describe(DescLink_JianHuangDiZi..": Tèt l¾m, ë chç nµy cña ta ng­¬i cã thÓ tuÇn tra ®Õn tÊt c¶ vÊn ®Ò c©u tr¶ lêi. Còng cã thÓ m×nh më míi lµm mét İt ®Ò môc. §èi víi ng­¬i x«ng x¸o v©n trung trÊn c¸c c­ d©n thiÕt lËp ®­a ®İch quan t¹p còng lµ lín cã b× İch ®İch nga. CÊp bËc İt h¬n 10 cÊp ®İch ®ång b¹n , ë ng­¬i tr¶ lêi ®èi víi ta nãi lªn vÊn ®Ò sau , ph¶i nhËn ®­îc mét İt nho nhá phÇn th­ëng.",3, 
          "Ta muèn xem néi dung nhiÖm vô gi¸o huÊn/partner_iwantsee", 
          "Ta muèn lµm mét ®Ò môc hái ®¸p /partner_iwantdoproblem", 
          "Sau nµy trë l¹i ®i /no")
end

function partner_iwantsee()
	Describe(DescLink_JianHuangDiZi..": ®­îc råi , nh­ vËy ®Ó cho chóng ta tíi nh×n mét chót cïng ®ång b¹n hÖ quan ®İch néi dung cã nh÷ng . ",6, 
        "B¹n ®ång hµnh khèng chÕ yÕu ®iÓm /partner_control", 
        "B¹n ®ång hµnh thuéc tİnh cïng t­ chÊt ®İch yÕu ®iÓm /partner_property", 
        "B¹n ®ång hanh th©n mËt ®é ®İch yÕu ®iÓm /partner_familiarity", 
        "B¹n ®ång hµnh kü n¨ng ®İch yÕu ®iÓm /partner_skills", 
        "B¹n ®ång hµnh lªn cÊp thao t¸c yÕu ®iÓm /partner_advanced", 
        "Sau nµy trë l¹i nghe ®i /no")
end

function partner_iwantdoproblem()
	partner_edu(10,1,100,20,0,0,1,1) 
	Msg2Player("B¾t ®Çu hái ®¸p , ng­¬i cã 20 lÇn c¬ héi, cÇn ®¸p ®èi víi 10 ®¹o ®Ò môc míi cã thÓ rêi ®i ngay.")
end

function partner_control()
	Describe(DescLink_JianHuangDiZi..":<color=yellow>B¹n ®ång hµnh lµ mét lµm b¹n ng­¬i cïng chung x«ng x¸o giang hå ®İch NPC. B¹n ®ång hµnh cã thÓ gióp ng­¬i ®¸nh tr¸ch luyÖn cÊp, ë ng­¬i cïng ng­êi kh¸c PK lóc gióp ng­¬i mét c¸nh tay lùc , sÏ cßn thØnh tho¶ng cho ng­¬i chót nhiÖm vô tíi ®Ó cho ng­¬i ®¹t ®­îc mét İt tr©n quı phÇn th­ëng , dÜ nhiªn ë ng­¬i tŞch mŞch thêi ®iÓm còng cã thÓ thö cïng ®ång b¹n trß chuyÖn , nãi kh«ng chõng sÏ xuÊt hiÖn thó vŞ ®İch thŞnh t×nh. Ng­¬i cã thÓ ë chØ ®Şnh NPC chç nhËn ®­îc c¸c lo¹i ®ång b¹n ®¹t ®­îc nhiÖm vô , khi ng­¬i hoµn thµnh nh÷ng nhiÖm vô nµy liÒn cã thÓ ®¹t ®­îc ®ång b¹n cña ng­¬i liÔu. Ng­¬i chØ cÇn ë ®ång b¹n ®İch kho¸i tiÖp lan trong t×m ®­îc ®ång b¹n ®İch c¨n b¶n thuéc tİnh c¸i nót sau ®ã bªn tr¸i kiÖn ®an kİch nã lµ ®­îc råi. Khi ng­¬i cã ®©u ng­êi ®ång b¹n ®İch thêi ®iÓm ng­¬i chØ cÇn ë ®ång b¹n thuéc tİnh mÆt b¶n ®İch phİa trªn ®iÓm chän ng­¬i muèn tra xĞt ®İch ®ång b¹n ®İch ngän kı lµ ®­îc råi. <color>",2, 
            "Trë vÒ/partner_iwantsee", 
            "Sau nµy sÏ trë l¹i/no")
end

function partner_property()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
		.."<color=yellow>1. B¹n ®ång hµnh cã thuéc tİnh g×, bän hä cã İch lîi g× ? <enter>" 
		.."Tinh lùc : thÇn bİ tiÒm chÊt , ngµy sau më ra ;<enter>" 
		.."Tİnh t×nh : nªn ®ång b¹n ®İch tİnh t×nh , bÊt ®ång tİnh t×nh ®İch ®ång b¹n ph­¬ng thøc hµnh ®éng còng sÏ bÊt ®ång ; hiÖn h÷u ®İch tİnh t×nh ®æ thõa h×nh cã :<enter>" 
		.."Anh m·nh h×nh : sÏ c«ng kİch c¸ch h¾n gÇn nhÊt ®İch ®èi thñ , còng kh«ng thi ? tù th©n tæn th­¬ng , cã kh¸ xa ®İch hµnh ®éng ph¹m vi . <enter>" 
		.."VÖ chñ h×nh : nhµ ch¬i môc tiªu c«ng kİch hoÆc bŞ c«ng kİch lóc , ®ång b¹n sÏ d­ lÊy hiÖp trî , còng kh«ng thi ? tù th©n tæn th­¬ng , mét lo¹i ®ang ®ïa nhµ phô cËn . <enter>" 
		.."L­u manh h×nh : sÏ c«ng kİch m¸u thiÓu ®İch ®èi thñ , khi tù th©n m¸u İt h¬n so víi 20% lóc võa ®¸nh võa ch¹y . <enter>" 
		.."HÌn yÕu h×nh : sÏ ngÉu nhiªn c«ng kİch ®èi thñ , bŞ c«ng kİch lóc sÏ võa ®¸nh võa ch¹y , sinh m¹ng İt h¬n so víi 20% lóc sÏ h¬n ®©u ®İch nĞ tr¸nh . <enter>" 
		.." <enter>" 
		.."Ngò hµnh thuéc tİnh : biÓu hiÖn nªn ®ång b¹n ®İch ngò hµnh , bÊt ®ång ngò hµnh ®İch ®ång b¹n cã thÓ cã vâ c«ng cïng tuyÖt kû bÊt ®ång , ®ång thêi cã mét bé phËn ®İch phô thªm kü n¨ng còng sÏ cã ngò hµnh ®İch h¹n chÕ ;<enter>" 
		.."T­ chÊt : quyÕt ®Şnh ®ång b¹n ®İch thuéc tİnh ë th¨ng cÊp lóc cã thÓ t¨ng lªn ®©u thiÓu ®İch trŞ gi¸ . <enter>" 
		.."2. B¹n ®ång hµnh cã t­ chÊt lµ c¸i g× ? <enter>" 
		.."B¹n ®ång hµnh thuéc tİnh lµ cã t­ chÊt ®İch : sinh m¹ng , lùc l­îng , mÖnh trung , nĞ tr¸nh , ch¹y tèc , may m¾n ; mét thuéc tİnh ®İch t­ chÊt cµng cao ı nghÜa nªn thuéc tİnh ë th¨ng cÊp lóc t¨ng lªn ph¶i cµng ®©u , bÊt qu¸ cô thÓ t¨ng lªn ®©u thiÓu , cïng t­ chÊt ng­êi cña còng sÏ cã chót İt bÊt ®ång . nãi thİ dô nh­ ng­¬i cã hai ng­êi ®ång b¹n sinh m¹ng t­ chÊt ®Òu lµ 2 , kia khi h¾n cöa th¨ng cÊp ®İch thêi ®iÓm cã thÓ mét t¨ng lªn 50 ®iÓm sinh m¹ng trŞ gi¸ , mµ mét ng­êi kh¸c chØ t¨ng lªn 45 ®iÓm sinh m¹ng trŞ gi¸ . nh÷ng thø nµy cô thÓ t¨ng lªn trŞ sè ë ®ång b¹n 10 cÊp ?30 cÊp ?50 cÊp ?90 cÊp lóc sÏ xuÊt hiÖn mét İt ba ®éng . <color>",2, 
		"Trë vÒ/partner_iwantsee", 
		"Sau nµy trë l¹i /no")
end

function partner_familiarity()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
	.."<color=yellow>1. C¸i g× lµ b¹n ®ång hµnh ®é th©n mËt ? §é th©n mËt chİnh lµ ph¶n ¶nh ®ång b¹n cïng nhµ ch¬i quan hÖ trŞ sè . <enter>",2, 
	"Trë vÒ/partner_iwantsee", 
	"Sau nµy sÏ trë l¹i/no")
end

function partner_skills()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
	.."<color=yellow>1. Ta nh­ thÕ nµo ®i th¨m dß nh×n ®ång b¹n ®İch kü n¨ng giíi mÆt ? ng­¬i chØ cÇn ë ®ång b¹n ®İch kho¸i tiÖp lan trong t×m ®­îc  ®ång b¹n ®İch vâ c«ng kü n¨ng c¸i nót sau ®ã bªn tr¸i kiÖn ®an kİch nã lµ ®­îc råi . <enter>" 
	.."2. B¹n ®ång hµnh cã mÊy lo¹i kü n¨ng ? bän hä nh­ thÕ nµo ®¹t ®­îc ? ®ång b¹n ®İch kü n¨ng cã bèn ®æ thõa :<enter>" 
	.." a. Vâ c«ng kü n¨ng : ®ång b¹n dïng ®Ó c«ng kİch ®Şch nh©n chiªu thøc , th«ng qua th¨ng cÊp ®¹t ®­îc ;<enter>" 
	.." b. B¨m phßng kü n¨ng : ®èi víi phæ b¨ng l«i háa ®éc n¨m lo¹i kh¸ng tİnh tiÕn hµnh thªm ®­îc ®İch kü n¨ng , th«ng qua lµm gi¸o dôc nhiÖm vô ®¹t ®­îc ;<enter>" 
	.." c. Phô thªm kü n¨ng : c¸c lo¹i thªm ®­îc cïng phô trî cïng víi mét İt ®Æc thï kü n¨ng , th«ng qua kü n¨ng s¸ch cïng kŞch t×nh nhiÖm vô ®¹t ®­îc ;<enter>" 
	.." d. TuyÖt kû : th«ng qua kŞch t×nh nhiÖm vô ®¹t ®­îc ;<enter>" 
	.."3. B¹n ®ång hµnh kü n¨ng nh­ thÕ nµo th¨ng cÊp ? ®ång b¹n ®İch vâ c«ng kü n¨ng lµ dïng ®é thuÇn thôc tíi th¨ng cÊp ®İch , mµ nh÷ng thø kh¸c kü n¨ng toµn bé muèn th«ng qua sö dông hÖ øng ®İch kü n¨ng s¸ch nh¾c tíi th¨ng . kü n¨ng s¸ch ®İch t¨ng lªn quy t¾c lµ : ng­¬i chØ cã thÓ häc tËp so ng­¬i muèn t¨ng lªn kü n¨ng tr­íc mÆt cÊp bËc cao 1 cÊp ®İch kü n¨ng s¸ch . tû nh­ ; hiÖn h÷u kü n¨ng v× 6 cÊp , ng­¬i chØ cã thÓ häc tËp 7 cÊp ®İch nªn kü n¨ng s¸ch ®em nªn kü n¨ng t¨ng lªn tíi 7 cÊp , kh«ng thÓ v­ît cÊp häc tËp . <enter>" 
	.."4. Nh­ thÕ nµo ®Ó cho ®ång b¹n sö dông kü n¨ng ? ë vâ c«ng kü n¨ng lan ®İch h¬i thë míi cã n¨m ra chiªu c¸ch , mçi mét c¸ch ®¹i biÓu nªn ®ång b¹n cã 20% ®İch mÊy ? sÏ sö dông c¸ch dÆm kü n¨ng , c¸ch bªn trong nh­ng bá vµo nªn ®ång b¹n cã thÓ sö xuÊt ®İch tïy ı chñ ®éng kü n¨ng . tû nh­ : nªn ®ång b¹n ®İch ra chiªu c¸ch trong th¶ ba  kü n¨ng A cïng hai kü n¨ng B nh­ vËy nªn ®ång b¹n sö xuÊt  kü n¨ng A ®İch mÊy ? lµ chİnh lµ 60% , sö xuÊt  kü n¨ng B ®İch mÊy ? lµ chİnh lµ 40% . <color>",2, 
	"Trë vÒ/partner_iwantsee", 
	"Sau nµy trë l¹i /no")
end

function partner_advanced()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
	.."<color=yellow>1. Ta cã thÓ ®¹t ®­îc ®©u ng­êi ®ång b¹n ? ? cã thÓ , mét nhµ ch¬i cã thÓ ®¹t ®­îc n¨m ®ång b¹n , nh­ng mét lÇn chØ cã thÓ cho gäi ra mét . <enter>" 
	.."2. Ta cuèi cïng céng cã thÓ häc ®©u thiÓu c¸ phô thªm kü n¨ng ? mét ®ång b¹n cã thÓ häc phô thªm kü n¨ng ®İch c¸ ®Õm sÏ theo cÊp bËc cña h¾n gia t¨ng mµ gia t¨ng , tæng céng 16 c¸ . <enter>" 
	.."3. Lµm ta cã ®©u ng­êi ®ång b¹n lóc ta ph¶i nh­ thÕ nµo ®i thiÕt ®æi bÊt ®ång ®ång b¹n ®©y ? ng­¬i ®Çu tiªn muèn ë ë ®ång b¹n ®İch thuéc tİnh giíi mÆt ®İch phİa trªn ®iÓm chän ng­¬i nghÜ thiÕt ®æi l¹i ®ång b¹n ®İch ngän kı , sau ®ã sÏ ®iÓm chän giíi mÆt h¬i thë ph­¬ng ®İch lùa chän ®ång b¹n c¸i nót lµ ®­îc råi . dÜ nhiªn ng­¬i còng cã thÓ trùc tiÕp ë ®ång b¹n ®İch kho¸i tiÖp lan trong t×m ®­îc ®ång b¹n lùa chän c¸i nót , bªn tr¸i kiÖn ®iÓm kİch sau sÏ xuÊt hiÖn ng­¬i cã ®ång b¹n ®İch tªn , ng­¬i chØ cÇn ®iÓm kİch ng­¬i muèn thiÕt ®æi l¹i ®ång b¹n ®İch tªn lµ ®­îc råi . Chó ı : thiÕt ®æi ®ång b¹n thao t¸c kh«ng thÓ liªn tôc tiÕn hµnh , hai lÇn thao t¸c gi÷a İt nhÊt gian c¸ch nöa phÇn chu«ng ®ång hå . <enter>" 
	.."4. Ta cã thÓ thay thÕ phô thªm kü n¨ng ? ? cã thÓ , nÕu muèn thay thÕ phô thªm kü n¨ng lóc ng­¬i cÇn chØ cÇn më ra ®ång b¹n kü n¨ng giíi mÆt , ®iÓm quªn l·ng c¸i nót sau lùa chän hy väng thñ tiªu ®İch kü n¨ng lóc nµy hÖ thèng sÏ h­íng ng­¬i x¸c nhËn cã hay kh«ng thËt muèn quªn l·ng nªn kü n¨ng , lóc nµy ®iÓm x¸c ®Şnh lµ ®­îc ®em nªn kü n¨ng quªn l·ng r¬i , sau ng­¬i liÒn cã thÓ ®i häc tËp ng­¬i nghÜ häc hiÕu kü n¨ng . <enter>" 
	.."5. NÕu nh­ ng­¬i muèn cho ®ång b¹n ®İch sinh m¹ng håi phôc , ®em h¾n triÖu håi lµ ®­îc råi , xö vu kh«ng ph¶i lµ cho gäi ra tr¹ng th¸i ®ång b¹n lµ cã thÓ tù ®éng håi phôc sinh m¹ng . <color>",2, 
	"Trë vÒ th­îng mét tÇng thùc ®¬n /partner_iwantsee", 
	"Sau nµy trë l¹i /no")
end

----------------------------------------------------------------------------------------------------------------

function partner_checkdo()
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
	local NpcCount = PARTNER_Count()
	if ( PARTNER_GetTaskValue(partnerindex, 1) ~= 1 ) then 
		Msg2Player("C¸i nµy b¹n ®ång hµnh kh«ng ph¶i lµ ng­¬i mang theo ®Ó lµm nhiÖm vô gi¸o dôc, xin mêi ®em chİnh x¸c ®ång b¹n cho gäi ra tíi lµm. ") 
	elseif ( NpcCount == 0 ) then 
		Msg2Player("Ng­¬i tr­íc mÆt kh«ng cã ®ång b¹n, kh«ng ®­îc nhËn th­ëng. ") 
	elseif ( partnerstate == 0 ) then 
		Msg2Player("Ng­¬i tr­íc mÆt kh«ng cã cho gäi ra b¹n ®ång hµnh, kh«ng ®­îc nhËn lÊy phÇn th­ëng. ") 
	else 
		return 10 
	end
end

function partner_goback()
	local i = random(1,7)
	if ( i == 1 ) then
		 NewWorld(1,1542,3229)  -- ·ïÏè
	elseif ( i == 2 ) then
		 NewWorld(11,3127,5112) -- ³É¶¼
	elseif ( i == 3 ) then
		 NewWorld(37,1658,3167) -- ãê¾©
	elseif ( i == 4 ) then
		 NewWorld(78,1458,3240) -- ÏåÑô
	elseif ( i == 5 ) then
		 NewWorld(80,1663,2999) -- ÑïÖİ
	elseif ( i == 6 ) then
		 NewWorld(162,1608,3204)-- ´óÀí
	elseif ( i == 7 ) then
		 NewWorld(176,1583,2949)-- ÁÙ°²
	end	 	 	 	
end

function genRandNumArray(nSum, nArrayLen, nMinNum, nMaxNum)
	local aryRandNumArray = {}
	if (nMinNum * nArrayLen > nSum or nMaxNum * nArrayLen < nSum) then
		print("genRandNumArray: ²ÎÊı²»ºÏ·¨£¡")
		return nil
	end	
	local nRest = nSum
	--´ËÑ­»··ÖÅäÖÁµ¹ÊıµÚ¶ş¸ö
	for i = 1, nArrayLen -1 do
		local nRestLen = nArrayLen - i	--Ê£Óµ·ÖÅäµÄ³¤¶È
		local nAverage = nRest / (nRestLen + 1) --Ê£Óµ·ÖÅäµÄÆ½¾ùÖµ
		local nRand = random(0, 10000)/10000 --Ëæ»úÊı
		local nMin, nMax
		local nGen
		--µ÷Õû×î´ó×îĞ¡·¶Î§
		nMin = nRest - nMaxNum * nRestLen
		if (nMin < nMinNum) then nMin = nMinNum end
		nMax = nRest - nMinNum * nRestLen
		if (nMax > nMaxNum) then nMax = nMaxNum end
		--·ÖÅäµ±Ç°
		--Ëæ»ú·ÖÅä£¬¸¡¶¯ÒÔÆ½¾ùÖµÎªÖĞĞÄµÄËæ»úÖµ
		if (nRand > 0.5) then 
			nGen = nAverage + (nMax - nAverage) * (nRand - 0.5) / 0.5
		else
			nGen = nAverage - ( nAverage - nMin) * (0.5 - nRand) / 0.5			
		end
		nGen = floor(nGen + 0.5) --È¡Õû
		nRest = nRest - nGen
		aryRandNumArray[i]  =  nGen
	end
	aryRandNumArray[nArrayLen] = nRest --·ÖÅä×îºóÒ»¸ö
	return aryRandNumArray;
end


function no()
end
