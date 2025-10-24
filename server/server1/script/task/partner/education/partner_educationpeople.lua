------------------------------------------------------------------------
-- FileName		:	partner_educationpeople.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-07-06 14:34:15
-- Desc			:  	¸÷Í¬°é½ÌÓıÈÎÎñnpc¶Ô»°
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --µ÷ÓÃ nt_getTask Í¬²½±äÁ¿µ½¿Í»§¶ËµÄÀµ
Include("\\script\\task\\partner\\partner_problem.lua") --µ÷ÓÃ nt_getTask Í¬²½±äÁ¿µ½¿Í»§¶ËµÄÀµ
Include("\\script\\task\\partner\\partner_head.lua") --°üº¬ÁËÍ¼Ïóµ÷ÓÃ
IncludeLib("PARTNER")

partner_birthday={"Thö","Ng­u"," hæ ","Thá","Long","Xµ","M·","D­¬ng","HÇu","Kª","CÈu","Tr­ "} 
partner_caimei ={"Bóa","KĞo","Bao"}

function partner_keepjiguan1(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Ng­¬i kh«ng cã hîp c¸ch, cho ta ngoan ngo·n tr¶ lêi vÊn ®Ò b¹n ®ång hµnh ®i.")
		partner_edu(3,1,29,3,1228,2,1,1)
	elseif ( nChange == 1 ) then
		jiguan1_giveprize()
	end
end

function partner_keepjiguan2(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Ng­¬i kh«ng cã hîp c¸ch, cho ta ngoan ngo·n tr¶ lêi vÊn ®Ò b¹n ®ång hµnh ®i")
		partner_edu(3,1,29,3,1228,4,1,2)
	elseif ( nChange == 1 ) then
		jiguan2_giveprize()
	end
end

function partner_keepjiguan3(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Ng­¬i kh«ng cã hîp c¸ch, cho ta ngoan ngo·n tr¶ lêi vÊn ®Ò b¹n ®ång hµnh ®i.")
		partner_edu(3,1,29,3,1228,6,1,3)
	elseif ( nChange == 1 ) then
		jiguan3_giveprize()
	end
end

function partner_keepjiguan4(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Ng­¬i kh«ng cã hîp c¸ch, cho ta ngoan ngo·n tr¶ lêi vÊn ®Ò b¹n ®ång hµnh ®i.")
		partner_edu(3,1,29,3,1228,8,1,4)
	elseif ( nChange == 1 ) then
		jiguan4_giveprize()
	end
end

function partner_keepzhuofeifan(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Ng­¬i kh«ng cã hîp c¸ch, cho ta ngoan ngo·n tr¶ lêi vÊn ®Ò b¹n ®ång hµnh ®i.")
		partner_edu(3,1,29,3,1228,10,1,5)
	elseif ( nChange == 1 ) then
		zhuofeifan_giveprize()
	end
end

function partner_keepheishadizi(nChange)
	if ( nChange == 0 ) then
		Msg2Player("ThËt xin lçi, ng­¬i kh«ng tr¶ lêi chİnh x¸c, ta kh«ng thÓ nãi cho ng­¬i biÕt c¸i g× ")
	elseif ( nChange == 1 ) then
		local Uworld1235 = nt_getTask(1235)
			  nt_setTask(1235,Uworld1235-1)
			if ( Uworld1235 - 1 <= 0 ) then 
                               nt_setTask(1230,12) 
                               Describe(DescLink_HeiShaDizi..": Kh«ng sai, b»ng h÷u, ng­¬i muèn bİ tŞch ®ang ë trªn tay cña ta ! ta lËp tøc ®em bİ tŞch ®­a ®Õn chç L·o S­, ng­¬i cã thÓ trë vÒ ®i t×m H¾c S¸t l·o s­ häc tËp ba ®o¹n ®¸nh. Cè g¾ng lªn ",1,"KÕt thóc ®èi tho¹i /heishadizi_chenggong") 
                        else 
                               Describe(DescLink_HeiShaDizi..": ThËt xin lçi b»ng h÷u, bİ tŞch kh«ng cã ë ®©y trong tay ta, ng­¬i h·y t×m ng­êi kh¸c ®i. BÊt qu¸ nh­ ng­¬i vËy cùc khæ ®¸p ®Ò, ta lµ h¼n cho ng­¬i chót t­ëng th­ëng.",2,"NhËn lÊy phÇn th­ëng /heishadizi_giveprize","KÕt thóc ®èi tho¹i /heishadizi_geiyujiangli") 
                        end
	end
end

function partner_moxiaofeng_fajiang1(nChange)
	if ( nChange == 1 ) then
		moxiaofeng_giveprize()
	end	
end

function partner_xiaoding_fajiang1(nChange)
	if ( nChange == 1 ) then
		xiaoding_giveprize()
	end	
end

function partner_quwan_fajiang1(nChange)
	if ( nChange == 1 ) then
		quwan_getprize()
	end	
end

function partner_xieqinger_fajiang1(nChange)
	if ( nChange == 1 ) then
		xieqinger_getprize()
	end	
end

partner_keeponproblem = {
[1] = partner_keepjiguan1,
[2] = partner_keepjiguan2,
[3] = partner_keepjiguan3,
[4] = partner_keepjiguan4,
[5] = partner_keepzhuofeifan,
[6] = partner_keepheishadizi,
[7] = partner_moxiaofeng_fajiang1,
[8] = partner_xiaoding_fajiang1,
[9] = partner_quwan_fajiang1,
[10] = partner_xieqinger_fajiang1,
}



----------------------------------------------------------¢¬Çµ¶Ô»°---------------------------------------------------
function pe_luqing()   
	local Uworld1226 = nt_getTask(1226)                        --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1227 = nt_getTask(1227)                        --Í¬°é½ÌÓıÈÎÎñ¢¬ÇµÈÎÎñ±äÁ¿
	local Uworld1228 = nt_getTask(1228)                        --Í¬°é½ÌÓıÈÎÎñÌÆÓ°ÈÎÎñ±äÁ¿
	local Uworld1229 = nt_getTask(1229)                        --Í¬°é½ÌÓıÈÎÎñ°×É·ÈÎÎñ±äÁ¿
	local Uworld1230 = nt_getTask(1230)                        --Í¬°é½ÌÓıÈÎÎñºÚÉ·ÈÎÎñ±äÁ¿
	local Uworld1231 = nt_getTask(1231)                        --Í¬°é½ÌÓıÈÎÎñÇïÒ¢Ë®ÈÎÎñ±äÁ¿
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
              Describe(DescLink_LuQing..": MÊy ng­êi chóng ta gi¸o dôc còng kÕt thóc. Ng­¬i b©y giê cã thÓ ®i t×m kiÕm Hoµng ®Ö tö.",1,"KÕt thóc ®èi tho¹i /no") 
        elseif ( Uworld1226 == 10 ) and (Uworld1227 == 0) then 
              Describe(DescLink_LuQing..": Nhµ ng­¬i lµ tíi lµm nhiÖm vô gi¸o dôc. Ta yªu c©u xİch ¶nh ng· bÖnh, ®ang ph¸t ®éng tu luyÖn c¸c vâ sÜ gióp mét tay t×m th¶o d­îc ®©y. Ng­¬i cã thÓ ë <color=red> bªn tr¸i xuèng nói trªn s¬n ®¹o <color> t×m ®­îc <color=red> ba nam mét n÷ <color> bèn vâ sÜ. Kia gióp ng­êi ®Çn ph¶i cã thÓ, nÕu nh­ ng­¬i cã thÓ gióp ta ®em trŞ liÖu xİch ¶nh ®İch th¶o d­îc <color=red> mang vÒ <color>, ta sÏ cho ng­¬i mét mÆt vâ sÜ lµm, cã thÓ mang cho ng­¬i rÊt nhiÒu chç tèt nga.<enter>" 
            .."<color=green> nhiÖm vô t­ëng th­ëng : B¹n ®ång hµnh kü n¨ng kim c­¬ng kh«ng ph¸, L«i ®×nh tù gi¸p <color>",2,"B¾t ®Çu nhiÖm vô/luqing_findmedicin","KÕt thóc ®èi tho¹i /no") 
       elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) and ( GetBit(GetTask(1232),4) == 1 ) and ( GetBit(GetTask(1232),6) == 1 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
             Describe(DescLink_LuQing..": Th¶o d­îc ng­¬i còng lÊy ®­îc ? thËt tèt qu¸, ngùa cña ta mµ ®­îc cøu råi. Tèt l¾m, ta sÏ nãi cho ng­¬i biÕt mét İt khiÕu m«n ®i :<enter>,tèt l¾m, ë chç nµy cña ta ng­¬i ®· häc kh«ng tíi nhiÒu thø h¬n, ®i t×m nh÷ng ng­êi kh¸c ®i.B¶o träng ! nh×n thÊy ta ®éc c« s­ huynh ®İch thêi ®iÓm , xin mêi thay ta th¨m hái h¾n.",2,"NhËn lÊy phÇn th­ëng /luqing_getprize","Sau nµy trë l¹i /no") 
       elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) then 
            Describe(DescLink_LuQing..": Kh«ng ph¶i lµ nãi cho ng­¬i biÕt sao, ng­¬i cã thÓ ë <color=red> bªn tr¸i xuèng nói trªn s¬n ®¹o <color> t×m ®­îc <color=red> ba nam mét n÷ <color> bèn vâ sÜ. Kia gióp ng­êi ®Çn ph¶i cã thÓ, nÕu nh­ ng­¬i cã thÓ gióp ta ®em trŞ liÖu xİch ¶nh ®İch th¶o d­îc <color=red> mang vÒ <color> , ta sÏ cho ng­¬i mét mÆt vâ sÜ lµm, cã thÓ mang cho ng­¬i rÊt nhiÒu chç tèt.",1, 
            "KÕt thóc ®èi tho¹i /no") 
       else 
            Describe(DescLink_LuQing..": RÊt nhiÒu n¨m tr­íc ®éc c« s­ huynh ®øng ë giang hå cao nhÊt ngän nói kia trªn ®Ønh nói, ta nhí vâ l©m c¸c ®Ö tö nhÊt tÒ rót ra ba th­íc kiÕm phong ®èi víi h¾n thÒ hiÖu mÖnh , ®ã lµ mét thÇn tho¹i ®i. N¨m ngo¸i ta ngoµi ı muèn nhËn ®­îc mét phong tİn sø, h¾n nãi gÇn nhÊt Hµnh S¬n ®ang tuyÕt, trêi l¹nh nhanh h¬n kh«ng chŞu næi. RÊt muèn t×m ng­êi uèng r­îu, l¹i ph¸t gi¸c kh«ng cã ng­êi nµo nh­ng kh¸m céng Èm. H¾n nãi sÏ mét mùc «n trø kia vß hµnh tïng r­îu chê ta. A a, ®óng vËy, ta chç nµy lß löa thŞnh v­îng mÊy thËp niªn, v¸ch nói bªn ®İch ®ç quyªn còng khai c¸m ¬n mÊy thËp niªn, ta muèn n¨m x­a nh÷ng thø kia h©m mé suy nghÜ còng hãa lµm giã rĞt thæi vµo s­ huynh ®İch trong th©n thÓ liÔu ®i. Ta ®©y sÏ ph¶i ®i båi h¾n, còng kh«ng biÕt trªn ®­êng cã hay kh«ng b×nh tÜnh, thiªn h¹ lung tung ph¶i qu¸ l©u.<enter>",1,"KÕt thóc ®èi tho¹i /no") 
       end
		
end

function luqing_findmedicin()
	if ( partner_checkdo() == 10 ) then
		nt_setTask(1227,10)
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,100 ,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+100
		Msg2Player("L­ Thanh cho ng­¬i ®i bªn tr¸i ®­êng xuèng nói th­îng, n¬i ®ã cã ba nam mét n÷ bèn vŞ vâ sÜ.")
	end
end

function luqing_getprize()                                          --»ñµÃÔÚ¢¬Çµ´¦µÄ×Ü½±Àø
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()   --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddSkill(partnerindex,0,549,1)                      --Ôö¼ÓÍ¬°é¿¹ĞÔ¼¼ÄÜ¡¶½ğ¸Õ²»ÆÆ¡·    
		Msg2Player("Chóc mõng ng­¬i thu ®­îc b¹n ®ång hµnh kü n¨ng ?Kim c­¬ng kh«ng ph¸?")
		nt_setTask(1227,20)											--¢¬Çµ´¦µÄËùÓĞÈÎÎñÒÑ½áÊø
		Msg2Player("Ng­¬i ®· hoµn thµnh ë L­ Thanh chç ta häc tËp, cã thÓ ®i H¾c b¹ch song s¸t, §­êng ?nh, thu y n­íc vî chång n¬i ®ã nh×n mét chót.")
	end
end

----------------------------------------------------------ÊéÉúÄªĞ¦·ç¶Ô»°-----------------------------------------

function pe_moxiaofeng()
	local Uworld1226 = nt_getTask(1226)                        --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1227 = nt_getTask(1227)                        --Í¬°é½ÌÓıÈÎÎñ¢¬ÇµÈÎÎñ±äÁ¿
	
	if ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),1) ~= 1 ) then 
               Describe(DescLink_MoXiaoFeng..":<color=green>Phanh dª lµm thŞt bß th¶ lµm thó vui, sÏ tu mét uèng ba tr¨m chĞn. SÇm phu tö, ®an kh©u sinh, ®em vµo r­îu, qu©n sê dõng. Cïng qu©n ca mét khóc, xin mêi qu©n v× ta lãng tai nghe. Chu«ng ®ång hå cæ so¹n ngäc ch­a ®ñ ®¾t, chØ mong tr­êng say kh«ng phôc tØnh. X­a nay th¸nh hiÒn tÊt c¶ tŞch mŞch, duy cã uèng ng­êi l­u kú danh.<color><enter>" 
             .." ®©y lµ §­êng triÒu ®¹i thi nh©n lı b¹ch ®İch kiÖt t¸c, say r­îu cuéc sèng, l­u danh d· sö. D­êng nµo thİch ı, ta chí c­êi phong nÕu cã thÓ thµnh tùu mét phen hoµi b·o, còng coi lµ kh«ng cã uæng ®Õn thÕ gian nµy ®i mét lÇn. C¸i g× ? ng­¬i lµ l« thanh l·o ®Çu kia t×m tíi muèn th¶o d­îc ®İch? Hõ hõ, muèn th¶o d­îc còng kh«ng ®¬n gi¶n nh­ vËy. Ta cã ba vÊn ®Ò, nÕu nh­ ng­¬i còng cã thÓ ®¸p ®èi víi, liÒn ®em trªn tay th¶o d­îc cho ng­¬i. §¸p kh«ng ®óng lêi cña, cöa ®Òu kh«ng cã.",2, 
               "Ng­¬i cø hái /moxiaofeng_taskproblem", 
               "Sau nµy l¹i tíi t×m ng­¬i ®i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),1) == 1 ) and ( GetBit(GetTask(1232),2) == 0 ) then 
               Describe(DescLink_MoXiaoFeng..": §­îc råi, ta ®em ta chç nµy nhËn th­ëng cho ng­¬i . ",2,"NhËn lÊy phÇn th­ëng /moxiaofeng_giveprize","Sau nµy trë l¹i /no") -- nhËn lÊy t­ëng th­ëng ? ? ? ? ? ? ? ? ? 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) and ( GetBit(GetTask(1232),4) == 1 ) and ( GetBit(GetTask(1232),6) == 1 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
                Describe(DescLink_MoXiaoFeng..": Ng­¬i ®· hoµn thµnh ë chóng ta bèn ng­êi ng­êi n¬i nµy tu hµnh, d­îc th¶o cÇm xong trë vÒ t×m L­ Thanh l·o ®Çu ®i.",1,"KÕt thóc ®èi tho¹i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) then 
                Describe(DescLink_MoXiaoFeng..": Uh, ta ®©y mét cöa ¶i ng­¬i ®· th«ng qua, ®i t×m phİa d­íi vâ sÜ ®i. Bän hä còng kh«ng ta nh­ vËy h¶o nãi chuyÖn, m×nh cÈn thËn.",1,"KÕt thóc ®èi tho¹i /no") 
        else 
               Describe(DescLink_MoXiaoFeng..": Chí c­êi ®iªn cuång chí c­êi phong, m­êi n¨m tËp kiÕm m­êi n¨m tïng. Th­ sinh ta ®· sím muèn kiÕm thö giang hå, kÑt long mét buæi s¸ng ph¶i cìi, vËy cßn kh«ng bay ®i cöu thiªn, thŞnh hµnh vò bé sao ? c¸p c¸p c¸p c¸p ha ha ..",1,"KÕt thóc ®èi tho¹i /no") 
       end
end

function moxiaofeng_taskproblem()
	--µ÷ÓÃ¹«¹²ÎÊÌâ¿â£¬»Ø´ğÕıÈ·ÊıÒªÇóÎª3£¬ÎÊÌâÎªÎÊÌâ1~ÎÊÌâ29Ëæ»ú£¬Íæ¼ÒÎÊ´ğ·åÖµÎª20´Î£¬Íê³É»Ø´ğºó½«1232ºÅ±äÁ¿×Ö½Ú1ÖÃ1
	partner_edu(3,1,29,3,1232,1,1,7)
end

function moxiaofeng_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,430,1 )                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+430
		nt_setTask(1232,SetBit(GetTask(1232),2,1))  --·¢½±Íê±Ï
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç ta, ®i nh÷ng ng­êi kh¸c ®i.",0)
	end
end

----------------------------------------------------------ÍÀ·òÅ£¢ú¢ú¶Ô»°-----------------------------------------
function pe_niumanman()
	local Uworld1226 = nt_getTask(1226)                        --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1227 = nt_getTask(1227)                        --Í¬°é½ÌÓıÈÎÎñÅ£¢ú¢úÈÎÎñ±äÁ¿
	
	if ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),3) ~= 1 ) then 
              Describe(DescLink_NiuManMan..": Ta lµ mét s¸t thñ, thu tiÒn b¸n m¹ng. Ng­¬i lµ muèn giÕt heo ®©y, hay lµ muèn giÕt ng­êi ? <enter>" 
            .."A ? ng­¬i lµ cÇn d­îc liÖu ! Ta ngÊt, ng­êi tíi bÊt thiÖn kia ! Uh! §· nh­ vËy, vËy ng­¬i nhÊt ®Şnh ph¶i theo ta ch¬i mét trß ch¬i. Ch¬i bÊt qu¸ ta lêi cña ph¶i trë vÒ ®¸p vÊn ®Ò, <color=red> bÊt luËn ®¸p rÊt ®óng ®èi víi lçi ®Òu ph¶i sÏ cïng ta ch¬i <color>. Cho ®Õn <color=red> th¾ng <color> nhËn ta míi cã thÓ xuÊt quan. C¸i g× c¸i g× ? ta b¸ ®¹o ! LiÒn b¸ ®¹o, ng­¬i nãi ng­êi c¶ ®i.",3, 
              "H¶o, b¾t ®Çu ®i /niumanman_startcaimei", 
              "Nghe gi¶ng thuËt quy t¾c trß ch¬i/niumanman_guize", 
              "Sau nµy l¹i tíi t×m ng­¬i ®i/no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),3) == 1 ) and ( GetBit(GetTask(1232),4) == 0 ) then 
                Describe(DescLink_NiuManMan..": §­îc råi, ta ®em ta chç nµy nhËn th­ëng cho ng­¬i. ",2,"NhËn lÊy phÇn th­ëng /niumanman_giveprize","Sau nµy trë l¹i/no") -- nhËn lÊy t­ëng th­ëng ? ? ? ? ? ? ? ? ? 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) and ( GetBit(GetTask(1232),4) == 1 ) and ( GetBit(GetTask(1232),6) == 1 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
                Describe(DescLink_NiuManMan..": Ng­¬i ®· hoµn thµnh ë chóng ta bèn ng­êi ng­êi n¬i nµy tu hµnh, d­îc th¶o cÇm xong trë vÒ t×m L­ Thanh l·o ®Çu ®i . ",1,"KÕt thóc ®èi tho¹i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),4) == 1 ) then 
                Describe(DescLink_NiuManMan..": Uhm, ta ®©y mét cöa ¶i ng­¬i ®· th«ng qua, ®i t×m phİa d­íi vâ sÜ ®i. Bän hä ®iÓm tö còng kh«ng thiÓu, ng­¬i ph¶i cÈn thËn. ",1," KÕt thóc ®èi tho¹i /no") 
        else 
                Describe(DescLink_NiuManMan..": GiÕt mét ®ao, giÕt ng­êi còng lµ mét ®ao. Nh­ vËy thÕ nµo, nh©n hßa heo cã c¸i g× kh¸c nhau ? Thay v× giÕt heo, kh«ng b»ng giÕt chót heo chã kh«ng b»ng ng­êi cña. Ng­¬i nãi ®óng kh«ng ? tíi tíi tíi , chóng ta ch¬i c¸ trß ch¬i nh­ thÕ nµo ? ",2, 
             "Ch¬i liÒn/niumanman_startcaimei", 
             "Kh«ng r·nh kh«ng r·nh /no") 
        end
end

function niumanman_startcaimei()
	Describe(DescLink_NiuManMan..": §­îc råi, nh­ vËy b©y giê ng­¬i lùa chän mét tæ sinh tiÕu b¾t ®Çu cïng ta tranh tµi ®i, hõ hõ. Thua ng­¬i !",3, 
         "Ta lùa chän thö ng­u hæ thá long xµ c¸i nµy tæ/niumanman_bisai1", 
         "Ta lùa chän m· dª hÇu gµ chã heo c¸i nµy tæ/niumanman_bisai2", 
         "Chê chót trë l¹i ch¬i /no")
end

function niumanman_guize()
Describe(DescLink_NiuManMan..": Ta chç nµy cã <color=red> tö thö, xÊu xİ bß, dÇn hæ, m·o thá, thÇn long, tŞ xµ, ngä m·, kh«ng dª, th©n hÇu, dËu gµ, tuÊt chã, hîi heo <color> m­êi hai sinh tiÕu. Chóng ta tíi so lín nhá, cô thÓ quy t¾c lµ : Chóng ta ®em m­êi hai sinh tiÕu chia lµm hai tæ, tr­íc s¸u thö ng­u hæ thá long xµ lµm mét tæ. Sau s¸u m· dª hÇu gµ chã heo lµm mét tæ. Ng­¬i tïy ı chän lùa mét tæ tíi cïng ta so lín nhá. Tû nh­ ng­¬i lùa chän thö ng­u hæ thá long xµ c¸i nµy mét tæ, nh­ vËy nÕu nh­ ta ra c¸ hæ, ng­¬i ra c¸ thá, nh­ vËy ng­¬i so víi ta ®¹i. NÕu nh­ ta ra c¸ long, ng­¬i ra c¸ xµ, vËy th× ng­¬i ®¹i. Còng chİnh lµ dùa theo thø tù cµng ®øng hµng phİa sau cµng lín. BÊt qu¸ ®©y ng­êi cuèi cïng lµ so thø nhÊt nhá  tiÓu nh©n, còng chİnh lµ thö cã thÓ so víi xµ ®¹i. Chóng ta hai mét ng­êi ra mét sinh tiÕu, xem ai ®İch ®¹i. NÕu nh­ trung gian xuÊt hiÖn hai sinh tiÕu kh«ng ph¶i lµ tùa vµo cïng nhau t×nh huèng, nh­ ta ra c¸ hæ, ng­¬i ra c¸ xµ, nh­ vËy coi lµ ta th¾ng.?",2,
                   "§· hiÓu, ®Ó cho ta trë vÒ/pe_niumanman",
                   "Qu¸ khã kh¨n, kh«ng ch¬i /no")
end

function niumanman_bisai1()
	SetTaskTemp(190,0)
	local i = random (1,6)
	SetTaskTemp(190,i)
	Describe(DescLink_NiuManMan..": §­îc råi ®­îc råi , b¾t ®Çu chän b¾t ®Çu chän, c¸p c¸p c¸p c¸p, nhanh lªn mét chót nhanh lªn mét chót. Ng­¬i ra c¸i g× ? ",6, 
      "Thö /niumanman_num1", 
      "Ng­u /niumanman_num2", 
      "Hæ /niumanman_num3", 
      "Thá /niumanman_num4", 
      "Long /niumanman_num5", 
      "Xµ /niumanman_num6")
end

function niumanman_bisai2()
	SetTaskTemp(190,0)
	local i = random (7,12)
	SetTaskTemp(190,i)
	Describe(DescLink_NiuManMan..": §­îc råi ®­îc råi, b¾t ®Çu chän b¾t ®Çu chän, c¸p c¸p c¸p c¸p, nhanh lªn mét chót nhanh lªn mét chót. Ng­¬i ra c¸i g× ? ",6, 
       "M· /niumanman_num7", 
       "D­¬ng /niumanman_num8", 
       "HÇu /niumanman_num9", 
       "Kª /niumanman_num10", 
       "CÈu /niumanman_num11", 
       "Tr­ /niumanman_num12")
end

function niumanman_bisaijieguo(partner_personnum)
	local partner_systnum = GetTaskTemp(190)
	if ( partner_personnum == 1 or partner_personnum == 7 ) then 
               if ( partner_systnum == 6 or partner_systnum == 12 ) then 
                    Describe(DescLink_NiuManMan..": Ta ra "..partner_birthday[partner_systnum]..", A ! Ng­¬i l¹i nh­ nµy lîi h¹i, thËt bŞ ng­¬i ®¸nh b¹i. §­îc råi, ng­¬i qua ta ®©y ®ãng. ",1," KÕt thóc ®èi tho¹i /niumanman_taskfinish") 
               else 
                    Describe(DescLink_NiuManMan..": ta ra "..partner_birthday[partner_systnum]..", H¾c h¾c, ng­¬i thua n÷a råi ! Tr¶ lêi vÊn ®Ò ®i.",1,"§­îc råi, ta tr¶ lêi /niumanman_shule") 
               end 
        else 
              if ( partner_personnum == partner_systnum + 1 ) then 
                    Describe(DescLink_NiuManMan..": Ta ra "..partner_birthday[partner_systnum]..", A ! ng­¬i l¹i nh­ nµy lîi h¹i, thËt bŞ ng­¬i ®¸nh b¹i. §­îc råi, ng­¬i qua ta ®©y ®ãng.",1,"KÕt thóc ®èi tho¹i /niumanman_taskfinish") 
              else 
                    Describe(DescLink_NiuManMan..": Ta ra "..partner_birthday[partner_systnum]..", H¾c h¾c, ng­¬i thua n÷a råi ! Tr¶ lêi vÊn ®Ò ®i. ",1,"§­îc råi, ta tr¶ lêi /niumanman_shule") 
              end 
        end
end

function niumanman_taskfinish()
	if ( nt_getTask(1226) == 10 ) and ( nt_getTask(1227) == 10 ) and ( GetBit(GetTask(1232),3) == 0 ) then
		nt_setTask(1232,SetBit(GetTask(1232),3,1))  --Å£¢ú¢ú´¦ÈÎÎñÍê³É£¬µ«Î´ÁìÈ¡½±Àø
		niumanman_giveprize()
	end
end

function niumanman_shule()
	--µ÷ÓÃ¹«¹²ÎÊÌâ¿â£¬»Ø´ğÕıÈ·ÊıÒªÇóÎª1£¬ÎÊÌâÎªÎÊÌâ1~ÎÊÌâ20Ëæ»ú£¬Íæ¼ÒÎÊ´ğ·åÖµÎª100´Î£¬²»ÉèÖÃÍê³É×Ö½Ú
	if ( partner_edu(1,1,29,1,0) == 10 ) then 
             Describe(DescLink_NiuManMan..": L¹i bŞ ng­¬i ®¸p ®óng råi , h¶o , trë l¹i ch¬i trß ch¬i, ng­¬i cã thÓ th¾ng ta liÒn v­ît qua kiÓm tra",1,"Tíi th× tíi/niumanman_startcaimei") 
        else 
            Msg2Player("§¸p sai lÇm råi liÒn trë l¹i.") 
        end
end

function niumanman_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,430,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+430
		PARTNER_AddSkill(partnerindex,0,553,1)                          --Ôö¼ÓÍ¬°é¿¹ĞÔ¼¼ÄÜ¡¶À×öª»¤¼×¡·
		Msg2Player("Chóc mõng ng­¬i thu ®­îc ®ång b¹n kü n¨ng ?L«i ®×nh hé gi¸p ?") 
                   nt_setTask(1232,SetBit(GetTask(1232),4,1)) -- ph¸t t­ëng xong 
                Say("Ng­¬i ®· hoµn thµnh nhiÖm vô ta chç nµy, ®i nh÷ng ng­êi kh¸c n¬i ®ã ®i.",0)
	end
end

----------------------------------------------------------²É»¨¹«×ÓĞ¡¶¡¶Ô»°----------------------------------------------
function pe_xiaoding()
	local Uworld1226 = nt_getTask(1226)                        --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1227 = nt_getTask(1227)                        --Í¬°é½ÌÓıÈÎÎñ¢¬ÇµÈÎÎñ±äÁ¿
	
	if ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),5) ~= 1 ) then 
          Describe(DescLink_XiaoDing..":Ta lµ c«ng tö h¸i hoa, kh«ng ph¶i lµ khã d©y d­a c«ng tö. B¹n ®ång hµnh cña ta kh¼ng ®Şnh cho ng­¬i xÕp ®Æt rÊt ®©u bÉy rËp ®i, ®Õn ta chç nµy kh«ng cÇn. An t©m tr¶ lêi ®èi víi ba ®¹o ®Ò môc liÒn ®em th¶o d­îc cho ng­¬i.",2, 
              "VÊn ®Ò g× ? Ng­¬i cø hái/xiaoding_taskproblem", 
              "Sau nµy l¹i tíi t×m ng­¬i/no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),5) == 1 ) and ( GetBit(GetTask(1232),6) == 0 ) then 
             Describe(DescLink_XiaoDing..": §­îc råi, ta ®em ta chç nµy ®İch t­ëng th­ëng cho ng­¬i.",2,"NhËn lÊy phÇn th­ëng /xiaoding_giveprize","Sau nµy trë l¹i /no") -- nhËn lÊy t­ëng th­ëng ? ? ? ? ? ? ? ? ? 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) and ( GetBit(GetTask(1232),4) == 1 ) and ( GetBit(GetTask(1232),6) == 1 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
             Describe(DescLink_XiaoDing..": Ng­¬i ®· hoµn thµnh ë chóng ta bèn ng­êi ng­êi n¬i nµy tu hµnh, d­îc th¶o cÇm xong trë vÒ t×m tiÖm l·o ®Çu ®i.",1,
             "KÕt thóc ®èi tho¹i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),6) == 1 ) then 
             Describe(DescLink_XiaoDing..": Uh, ta ®©y mét cöa ¶i ng­¬i ®· th«ng qua, ®i t×m h¬i thë mÆt ®İch vâ sÜ ®i. Bän hä còng kh«ng ta nh­ vËy h¶o nãi chuyÖn, m×nh cÈn thËn.",1,"KÕt thóc ®èi tho¹i /no") 
       else 
          if ( GetSex() == 0 ) then 
              Describe(DescLink_XiaoDing..": Ai , ai ai , ai ai ai .. ta oan kia ? ®­îc x­ng c«ng tö h¸i hoa, l¹i mét ®ãa hoa còng kh«ng th¶i qu¸. Míi võa ë giang hå x«ng ra danh tiÕng, liÒn bŞ tr­êng ca cöa cøng r¾n ®­îc thu vµo cöa trong , qu¸ trø tèi t¨m kh«ng mÆt trêi , luyÖn c«ng tËp vâ ®İch ngµy . ®¹i hiÖp , ®Ñp trai , ng­¬i nhÊt ®Şnh ph¶i cøu ta ®i ra ngoµi a !",1,"KÕt thóc ®èi tho¹i /no") 
         else 
              Describe(DescLink_XiaoDing..": Ai , ai ai , ai ai ai .. ta oan kia ? ®­îc x­ng c«ng tö h¸i hoa, l¹i mét ®ãa hoa còng kh«ng th¶i qu¸. Míi võa ë giang hå x«ng ra danh tiÕng, liÒn bŞ tr­êng ca cöa cøng r¾n ®­îc thu vµo cöa trong , qu¸ trø tèi t¨m kh«ng mÆt trêi , luyÖn c«ng tËp vâ ®İch ngµy . mü n÷ , tû tû , ng­¬i nhÊt ®Şnh ph¶i cøu ta ®i ra ngoµi a !",1,"KÕt thóc ®èi tho¹i /no") 
         end 
    end
	
end

function xiaoding_taskproblem()
	--µ÷ÓÃ¹«¹²ÎÊÌâ¿â£¬»Ø´ğÕıÈ·ÊıÒªÇóÎª3£¬ÎÊÌâÎªÎÊÌâ1~ÎÊÌâ20Ëæ»ú£¬Íæ¼ÒÎÊ´ğ·åÖµÎª20´Î£¬Íê³É»Ø´ğºó½«1232ºÅ±äÁ¿×Ö½Ú5ÖÃ1
	partner_edu(3,1,29,3,1232,5,1,8)
end

function xiaoding_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,430,1 )                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+430
		nt_setTask(1232,SetBit(GetTask(1232),6,1))  --·¢½±Íê±Ï
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç ta, ®i nh÷ng ng­êi kh¸c ®i.",0)
	end
end
----------------------------------------------------------¿É°®Å®ÏÀÔÆÈ¸¶ù¶Ô»°---------------------------------------------
function pe_yunqueer()
	local Uworld1226 = nt_getTask(1226)                        --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1227 = nt_getTask(1227)                        --Í¬°é½ÌÓıÈÎÎñ¢¬ÇµÈÎÎñ±äÁ¿
	
	if ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),7) ~= 1 ) then 
            Describe(DescLink_YunQueEr..": ha ha , ng­¬i cïng chÕt giÕt heo ®İch c¸i ®ã ®Çu heo ba nãi chuyÖn nhiÒu kh«ng cã ? h¾n cã ph¶i hay kh«ng ®Ó cho ng­¬i còng sinh tiÕu ®İch lín nhá ? c¸i nµy kh«ng cã häc qu¸ s¸ch ®İch . bæn tiÓu th­ thuë nhá liÒn ®äc thuéc tø th­ ngò kinh , n¬i nµo lµ h¾n cã thÓ hÖ so . chóng ta tíi ch¬i cao cÊp còng mai trß ch¬i : ®¸ kĞo tö bè . hõ hõ ...... ng­¬i thua gièng nhau lµ ph¶i vÒ ®¸p bæn tiÓu th­ nãi ®İch vÊn ®Ò , nh­ thÕ nµo ? ",3, 
            "B¾t ®Çu ®i/yunqueer_wenti", 
            "Cho ta gi¶ng gi¶i mét h¬i thë quy t¾c /yunqueer_guize", 
            "Sau nµy l¹i tíi t×m ng­¬i ®i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),7) == 1 ) and ( GetBit(GetTask(1232),8) == 0 ) then 
                Describe(DescLink_YunQueEr..": §­îc råi , ta ®em ta chç nµy ®İch t­ëng th­ëng cho ng­¬i. ",2,"NhËn lÊy phÇn th­ëng /yunqueer_giveprize","Sau nµy trë l¹i /no") -- nhËn lÊy t­ëng th­ëng ? ? ? ? ? ? ? ? ? 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) and ( GetBit(GetTask(1232),4) == 1 ) and ( GetBit(GetTask(1232),6) == 1 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
                Describe(DescLink_YunQueEr..": Ng­¬i ®· hoµn thµnh ë chóng ta bèn ng­êi ng­êi n¬i nµy tu hµnh , d­îc th¶o cÇm xong trë vÒ t×m tiÖm l·o ®Çu ®i.",1,"KÕt thóc ®èi tho¹i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
                Describe(DescLink_YunQueEr..": Uh, ta ®©y mét cöa ¶i ng­¬i ®· th«ng qua , ®i t×m h¬i thë mÆt ®İch vâ sÜ ®i. Bän hä còng kh«ng ta nh­ vËy h¶o nãi chuyÖn, m×nh cÈn thËn.",1,"KÕt thóc ®èi tho¹i /no") 
        else 
            if ( GetSex() == 0 ) then 
                  Describe(DescLink_YunQueEr..": H× h×, ta ®ang cïng trªn c©y ®İch con chim nãi chuyÖn ®©y. Ng­¬i cã thÓ nghe hiÓu bän hä nãi g× ? bän hä nãi n¬i nµy rÊt ®Ñp , cã s¬n ®İch v©n hµ , cßn cã so v©n hµ ®Ñp h¬n ®İch v©n t­íc mµ ®©y. Ca ca mang ta ®i ra ngoµi ch¬i, cã ®­îc hay kh«ng ? ",1,"KÕt thóc ®èi tho¹i /no") 
            else 
                  Describe(DescLink_YunQueEr..": H× h×, ta ®ang cïng trªn c©y ®İch con chim nãi chuyÖn ®©y. Ng­¬i cã thÓ nghe hiÓu bän hä nãi g× ? bän hä nãi n¬i nµy rÊt ®Ñp , cã s¬n ®İch v©n hµ , cßn cã so v©n hµ ®Ñp h¬n ®İch v©n t­íc mµ ®©y. Tû tû mang ta ®i ra ngoµi ch¬i, cã ®­îc hay kh«ng ? ",1,"KÕt thóc ®èi tho¹i /no")
            end 
        end
end

function yunqueer_guize()
	Describe(DescLink_YunQueEr..": Quy t¾c lµ nh­ vËy : ®¸ kĞo tö bè ®©y , ®¸ th¾ng kĞo tö , kĞo tö th¾ng bè , bè th¾ng ®¸. §· hiÓu kh«ng cã ? ng­¬i th¾ng ta liÒn v­ît qua kiÓm tra , kh«ng cã th¾ng ta hoÆc lµ ®¸nh ngang tay , tû nh­ ng­¬i ra kĞo tö ta còng ra kĞo tö , vËy còng coi lµ ta th¾ng. Hõ hõ. BÊt qu¸ ta th¾ng còng kh«ng ph¶i lµ khã kh¨n ng­¬i, ®¸p ®èi víi ta ba ®¹o ®Ò môc lµ tèt råi.",1,"Ta muèn trë vÒ/pe_yunqueer")
end

function yunqueer_wenti()
	Describe(DescLink_YunQueEr..": tíi tíi tíi , b¾t ®Çu vung quyÒn l¹c. Ng­¬i ra c¸i g× ? ",3, 
	"Bóa/yunqueer_shitou", 
        "KĞo/yunqueer_jianzi", 
        "Bao/yunqueer_bu")
end

function yunqueer_shitou()
	local i = random(1,3)
	if ( i ~= 2 ) then 
            Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", Ái nha ! Ta th¾ng n÷a råi , h× h× , tr¶ lêi vÊn ®Ò ®i ",1,"Tr¶ lêi vÊn ®Ò/yunqueer_problem") 
       else 
            Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", Ái nha ! BŞ ng­¬i th¾ng n÷a råi , ®­îc råi. Coi nh­ ng­¬i qu¸ n÷a/råi . ",1,"Coi nh­ ng­¬i qu¸ quan /yunqueer_finish") 
       end
end

function yunqueer_jianzi()
	local i = random(1,3)
	if ( i ~= 3 ) then 
             Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", Ái nha ! Ta th¾ng n÷a råi , h× h× , tr¶ lêi vÊn ®Ò ®i ",1,"Tr¶ lêi vÊn ®Ò/yunqueer_problem") 
       else 
            Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", Ái nha ! BŞ ng­¬i th¾ng n÷a råi , ®­îc råi. Coi nh­ ng­¬i qu¸ n÷a/råi . ",1,"Coi nh­ ng­¬i qu¸ quan /yunqueer_finish") 
       end
end

function yunqueer_bu()
	local i = random(1,3)
	if ( i ~= 1 ) then
	   Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", Ái nha ! Ta th¾ng n÷a råi , h× h× , tr¶ lêi vÊn ®Ò ®i ",1,"Tr¶ lêi vÊn ®Ò/yunqueer_problem") 
       else 
            Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", Ái nha ! BŞ ng­¬i th¾ng n÷a råi , ®­îc råi. Coi nh­ ng­¬i qu¸ n÷a/råi . ",1,"Coi nh­ ng­¬i qu¸ quan /yunqueer_finish") 
       end
end

function yunqueer_problem()
	--µ÷ÓÃ¹«¹²ÎÊÌâ¿â£¬»Ø´ğÕıÈ·ÊıÒªÇóÎª3£¬ÎÊÌâÎªÎÊÌâ1~ÎÊÌâ20Ëæ»ú£¬Íæ¼ÒÎÊ´ğ·åÖµÎª100´Î£¬²»ÉèÖÃÍê³É×Ö½Ú
	if  ( partner_edu(3,1,29,3,0) == 10 ) then
		Msg2Player("Tèt, nç lùc liªn tôc vµ ®o¹n nµo cña nã. Hee hee.")
	else
		Msg2Player("Thua còng kh«ng cÇn næi giËn, tiÕp tôc. H× h×.")
	end
end

function yunqueer_finish()
	if ( nt_getTask(1226) == 10 ) and ( nt_getTask(1227) == 10 ) and ( GetBit(GetTask(1232),7) == 0 ) then
		nt_setTask(1232,SetBit(GetTask(1232),7,1))  --ÔÆÈ¸¶ù´¦ÈÎÎñÍê³É£¬µ«Î´ÁìÈ¡½±Àø
		yunqueer_giveprize()
	end
end


function yunqueer_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,430,1 )                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+430
		nt_setTask(1232,SetBit(GetTask(1232),8,1))  --·¢½±Íê±Ï
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç nµy, ®i nh÷ng ng­êi kh¸c n¬i ®ã ®i",0)
	end
end



-----------------------------------------------------------------ÌÆÓ°¶Ô»°-----------------------------------------------------

function pe_tangying()
	local Uworld1226 = nt_getTask(1226)                        --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1227 = nt_getTask(1227)                        --Í¬°é½ÌÓıÈÎÎñ¢¬ÇµÈÎÎñ±äÁ¿
	local Uworld1228 = nt_getTask(1228)                        --Í¬°é½ÌÓıÈÎÎñÌÆÓ°ÈÎÎñ±äÁ¿
	local Uworld1229 = nt_getTask(1229)                        --Í¬°é½ÌÓıÈÎÎñ°×É·ÈÎÎñ±äÁ¿
	local Uworld1230 = nt_getTask(1230)                        --Í¬°é½ÌÓıÈÎÎñºÚÉ·ÈÎÎñ±äÁ¿
	local Uworld1231 = nt_getTask(1231)                        --Í¬°é½ÌÓıÈÎÎñÇïÒ¢Ë®ÈÎÎñ±äÁ¿
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
                Describe(DescLink_TangYing..": MÊy ng­êi chóng ta gi¸o dôc còng kÕt thóc. Ng­¬i b©y giê cã thÓ ®i t×m kiÕm hoµng ®å ®Ö.",1,"KÕt thóc ®èi tho¹i /no") 
        elseif ( partner_getpartnerlevel(4) ~= 10 ) then 
                return 
        elseif ( Uworld1226 == 10 ) and ( Uworld1228 == 0 ) then -- ®­êng ¶nh chç nhiÖm vô kh«ng cã xóc ph¸t ? ? ? ? ? kh«ng cã ®em nhiÖm vô t­ëng th­ëng nãi cho nhµ ch¬i 
               Describe(DescLink_TangYing..": Ai , vËy ph¶i lµm sao b©y giê ®©y ? thu nghiªu ®øa nhá nµy qu¸ kh«ng nghe lêi.<enter>" 
               .."ng­¬i lµ kiÕm hoµng ®å ®Ö giíi thiÖu tíi. VËy còng tèt , con trai cña ta ®­êng thu nghiªu bŞ trÊn trªn mét qu¸i nh©n ®i råi , ta b©y giê l¹i véi vµng th¶i chÕ mét lo¹i kú l¹ d­îc liÖu , hy väng ng­¬i cã thÓ thay ta ®em thu nghiªu cøu ra , ph¶i cã håi b¸o. C¸i ®ã qu¸i nh©n ®ang ë bªn ph¶i treo tiÓn n¬i ®ã thiÕt trİ mét c¸i kh«ng thÊy ®­îc kh«ng trung s¹n ®¹o , ng­¬i cÇn t×m ®­îc ®iÒu nµy, h¬n n÷a cøu ra con trai cña ta. Kia chç ë treo tiÓn bªn trªn sÏ cã mét viªn kú qu¸i c©y. Trªn cã cho phĞp ®©u kh«ng trung th¹ch s¬n , mçi ngän nói th­îng ®Òu ph¶i më ra mét c¬ quan , ng­êi m¸y sÏ hái ng­¬i chót vÊn ®Ò. Tãm l¹i v« cïng kh«ng dÔ dµng , ng­¬i ph¶i cÈn thËn.<enter>" 
               .."<color=green> nhiÖm vô t­ëng th­ëng : ®ång b¹n kü n¨ng ' b¸ch ®éc bÊt x©m '?' ch©n háa kh¸ng lùc '<color>",2, 
               "Ta tiÕp nhËn khiªu chiÕn /tangying_findchildren", 
               "Ta cßn kh«ng cã lµm h¶o chuÈn bŞ ®©y /no") 

       elseif ( Uworld1226 == 10 ) and ( Uworld1228 == 8191 ) then 
              Describe(DescLink_TangYing..": Thu nghiªu chê h¬i thë sÏ trë l¹i ? thËt tèt qu¸ ! C¸m ¬n ng­¬i. Tèt l¾m , ta sÏ nãi cho ng­¬i biÕt mét İt khiÕu m«n ®i :<enter>" 
              .."<color=yellow> khi ng­¬i xö vu chñ ®éng c«ng kİch tr¹ng th¸i th¶ ®Şch nh©n ë ®ång b¹n ®İch hµnh ®éng trong ph¹m vi lóc , nÕu nh­ lµ anh m·nh h×nh l­u manh h×nh hÌn yÕu h×nh ®İch ®ång b¹n , sÏ gÆp tù ®éng c«ng kİch nã, c¨n cø ®ång b¹n bÊt ®ång tİnh t×nh hµnh ®éng cña h¾n ph¹m vi cïng ph­¬ng thøc c«ng kİch còng sÏ kh«ng gièng nhau. Khi ng­¬i kh«ng muèn ®Ó cho ®ång b¹n cña ng­¬i ®i c«ng kİch ®Şch nh©n thêi ®iÓm, ng­¬i chØ cÇn ë ®ång b¹n ®İch kho¸i tiÖp lan trong t×m ®­îc c¸i nót sau ®ã bªn tr¸i kiÖn ®an kİch nã lµ ®­îc råi. NÕu nh­ ng­¬i muèn cho ®ång b¹n cña ng­¬i c«ng kİch lÇn n÷a ®Şch nh©n tho¹i, vËy ng­¬i liÒn cÇn ë ®ång b¹n ®İch kho¸i tiÖp lan trong t×m ®­îc c¸i nót còng ®iÓm kİch nã. Kh«ng muèn c¸i nµy ®ång b¹n lóc , ta ph¶i nh­ thÕ nµo gi¶i t¸n h¾n ®©y ? ng­¬i ®Çu tiªn muèn ë ®ång b¹n thuéc tİnh giíi mÆt t×m ®­îc gi¶i t¸n ®ång b¹n c¸i nót <color><enter>" 
              .."Tèt l¾m , ë chç nµy cña ta ng­¬i ®· häc kh«ng tíi h¬n ®©u ®İch ®å, ®i t×m nh÷ng ng­êi kh¸c ®i. Thu nghiªu n­íc lµ cña ta l·o bµ , ng­¬i thÊy nµng lóc cÈn thËn mét chót , ngµn v¹n ®õng nãi cho nµng con trai nĞm qu¸ a , nÕu kh«ng buæi tèi ta sÏ bŞ giam ë cöa . nhê cËy nhê cËy . ",2,"NhËn lÊy phÇn th­ëng /tangying_getprize","Sau nµy trë l¹i /no") 

      elseif ( Uworld1226 == 10 ) and ( GetBit(GetTask(1228),1) == 1 ) then -- míi võa nhËn ®­îc ®­êng ¶nh chç nhiÖm vô 
              Describe(DescLink_TangYing..": ®i <color=red> bªn ph¶i treo tiÓn <color> n¬i ®ã t×m ®­îc mét c¸i <color=red> tiÓu ?<color> , th«ng qua ng­êi m¸y trËn , ®em ta hµi tö tõ c¸i ®ã chÕt qu¸i vËt tr¸c phi phµm trong tay cøu ra . ",1, 
              "KÕt thóc ®èi tho¹i /no") 
      else 
             Describe(DescLink_TangYing..": Nghe nãi b©y giê §­êng m«n ch­ëng m«n lµ ®­êng thï ? ®øa nhá nµy t©m tİnh hÑp hßi khİ l­îng cã h¹n , lµm g× ph¶i ba thôc ®Ö nhÊt gia ®İch chñ ®©y ? cã lÏ ®êi tr­íc ch­ëng m«n lµ xem thÊu ? ®êi , cè ı chän c¸ kh«ng biÕt tiÕn thñ h¹ng ng­êi thñ nhµ ®i . nh¾c tíi n¨m ®ã nÕu kh«ng ph¶i Nam Cung thiÕu hiÖp thµnh toµn , h«m nay ta ®­êng ¶nh ®· sím lµ kh« cèt mét cô . cã chót thŞnh ng­¬i kh«ng thÓ kh«ng tranh , råi l¹i tranh kh«ng thÓ tranh , cã thÓ thÊy ®­îc trªn ®êi sè m¹ng mét ®¹o , cuèi cïng tån c¸ may m¾n .. hy väng ngµy h÷u ta §­êng gia b¶o v­ît qua nh÷ng thø nµy phong khãi ®i. <enter>",1,"KÕt thóc ®èi tho¹i /no") 
      end
	
end

function tangying_findchildren()
	nt_setTask(1228,SetBit(GetTask(1228),1,1))  --ÈÎÎñÆô¶¯
	Msg2Player("§­êng ¶nh cho ng­¬i ®i bªn ph¶i mét thÇn bİ trong lèi ®i cøu ra con h¾n ®­êng thu nghiªu.")
end

function tangying_getprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddSkill(partnerindex,0,550,1)                          --Ôö¼ÓÍ¬°é¿¹ĞÔ¼¼ÄÜ¡¶°Ù¶¾²»ÇÖ¡·
		Msg2Player("Chóc mõng ng­¬i thu ®­îc ®ång b¹n kü n¨ng ? b¸ch ®éc bÊt x©m ?")
		nt_setTask(1228,20)
		Msg2Player("Ng­¬i ®· hoµn thµnh ë ®­êng ¶nh chç häc tËp, cã thÓ ®i H¾c b¹ch song s¸t, thu nghiªu n­íc, tiÖm n¬i ®ã nh×n mét chót .")
	end
end

----------------------------------------------------------------»ú¹ØÈË¶Ô»°--------------------------------------------------

function pe_jiguan1()
	if ( GetBit(GetTask(1228),1) == 1 ) and ( GetBit(GetTask(1228),2) == 0 ) then 
                  Describe(DescLink_JiGuanRen..": Nói nµy lµ ta ®©y c¬ quan l·o ®¹i khai <enter>" 
                  .." nµy c©y lµ ta ®©y c¬ quan l·o ®¹i tµi <enter>" 
                  .." nÕu muèn ®¸nh ta ®©y c¬ quan l·o ®¹i c¸i nµy qu¸ <enter>" 
                  .." th× ph¶i cho ta ®©y c¬ quan l·o ®¹i c¶ hiÓu <enter>" 
                  .." muèn hái ng­êi qu¸ qu¸ ®¬n gi¶n . tr¶ lêi ta ®©y c¬ quan l·o ®¹i mÊy ®¹o kh«ng hiÓu ®İch ph­¬ng ng«n ®Ò môc , kh«ng tr¶ lêi ®­îc sÏ ph¶i trõng ph¹t ng­¬i !",2, 
                  "§¬n gi¶n, ta qua l¹i ®¸p/jiguanren_problem1", 
                  "Lµm c¸i g×, tr­íc kh«ng ®Ó ı tíi ng­¬i/no") 
        elseif ( GetBit(GetTask(1228),2) == 1 ) and ( GetBit(GetTask(1228),3) == 0 ) then 
                 Describe(DescLink_JiGuanRen..": §­îc råi , ta ®em ta chç nµy ®İch t­ëng th­ëng cho ng­¬i . ",2,"NhËn lÊy phÇn th­ëng /jiguan1_giveprize","Sau nµy trë l¹i /no") -- nhËn lÊy t­ëng th­ëng ? ? ? ? ? ? ? ? ? 
        else 
                Describe(DescLink_JiGuanRen..": Ta lµ mét ng­êi m¸y , y nha y nha nga.",1,"Ng­¬i lµ g× ng­êi m¸y a, ng­¬i lµ mét ng­êi ®iªn /no") 
        end
end

function pe_jiguan2()
	if ( GetBit(GetTask(1228),1) == 1 ) and ( GetBit(GetTask(1228),4) == 0 ) then 
                Describe(DescLink_JiGuanRen..":Nói nµy v× ta c¬ quan l·o , a l·o , a l·o l·o NhŞ khai <enter>" 
              .."nµy c©y v× ta c¬ quan l·o a , l·o a , l·o NhŞ tµi <enter>" 
              .."nÕu muèn ®¸nh ta c¬ quan l·o NhŞ c¸i nµy qu¸ <enter>" 
              .."th× ph¶i cho ta c¬ quan l·o NhŞ , a hai , a hiÓu râ <enter>" 
              .."muèn hái ng­êi qu¸ qu¸ ®¬n gi¶n. Tr¶ lêi ta c¬ quan l·o NhŞ mÊy ®¹o kh«ng hiÓu ®İch ph­¬ng ng«n ®Ò môc , kh«ng tr¶ lêi ®­îc sÏ ph¶i trõng ph¹t ng­¬i !",2, 
             "§¬n gi¶n, ta qua l¹i ®¸p /jiguanren_problem2", 
            "Lµm c¸i g×, tr­íc kh«ng ®Ó ı tíi ng­¬i /no") 
       elseif ( GetBit(GetTask(1228),4) == 1 ) and ( GetBit(GetTask(1228),5) == 0 ) then 
              Describe(DescLink_JiGuanRen..": §­îc råi , ta ®em ta chç nµy ®İch t­ëng th­ëng cho ng­¬i.",2,"NhËn lÊy phÇn th­ëng /jiguan2_giveprize","Sau nµy trë l¹i /no") -- nhËn lÊy t­ëng th­ëng ? ? ? ? ? ? ? ? ? 
       else 
              Describe(DescLink_JiGuanRen..": Ta lµ mét ng­êi m¸y , y nha y nha nga . ",1,"Ng­¬i lµ g× ng­êi m¸y a , ng­¬i lµ mét ng­êi ®iªn /no") 
       end
end

function pe_jiguan3()
	if ( GetBit(GetTask(1228),1) == 1 ) and ( GetBit(GetTask(1228),6) == 0 ) then 
               Describe(DescLink_JiGuanRen..": nói nµy lµ c¬ quan l·o Tam khai <enter>" 
              .."nµy c©y lµ c¬ quan l·o Tam lo¹i giät <enter>" 
              .."nÕu muèn ®¸nh ta ®©y c¬ quan l·o Tam c¸i nµy qu¸ <enter>" 
              .."th× ph¶i cho ta c¬ quan l·o Tam ®¸p hiÓu <enter>" 
              .."muèn hái ng­êi qu¸ qu¸ ®¬n gi¶n. Tr¶ lêi c¬ quan l·o Tam mÊy ®¹o kh«ng hiÓu ®İch ph­¬ng ng«n ®Ò môc , kh«ng tr¶ lêi ®­îc sÏ ph¶i trõng ph¹t ng­¬i !",2, 
               "§¬n gi¶n, ta qua l¹i ®¸p /jiguanren_problem3", 
               "Lµm c¸i g×, tr­íc kh«ng ®Ó ı tíi ng­¬i /no") 
        elseif ( GetBit(GetTask(1228),6) == 1 ) and ( GetBit(GetTask(1228),7) == 0 ) then 
                Describe(DescLink_JiGuanRen..": §­îc råi , ta ®em ta chç nµy ®İch t­ëng th­ëng cho ng­¬i.",2,"NhËn lÊy phÇn th­ëng /jiguan3_giveprize","Sau nµy trë l¹i /no") -- nhËn lÊy t­ëng th­ëng ? ? ? ? ? ? ? ? ? 
        else 
               Describe(DescLink_JiGuanRen..": Ta lµ mét ng­êi m¸y , y nha y nha nga.",1,"Ng­¬i lµ g× ng­êi m¸y, ng­¬i lµ mét ng­êi ®iªn /no") 
        end
end

function pe_jiguan4()
	if ( GetBit(GetTask(1228),1) == 1 ) and ( GetBit(GetTask(1228),8) == 0 ) then 
                  Describe(DescLink_JiGuanRen..": nói nµy lµ ta ®©y c¬ quan l·o Tø khai <enter>" 
                 .."nµy c©y lµ ta ®©y c¬ quan l·o Tø tµi <enter>" 
                 .."nÕu muèn ®¸nh ta ®©y c¬ quan l·o Tø c¸i nµy qu¸ <enter>" 
                 .."th× ph¶i cho ta ®©y c¬ quan l·o Tø c¶ hiÓu <enter>" 
                 .."muèn hái ng­êi qu¸ qu¸ ®¬n gi¶n. Tr¶ lêi ta ®©y c¬ quan l·o ®¹i mÊy ®¹o kh«ng hiÓu ®İch ph­¬ng ng«n ®Ò môc , kh«ng tr¶ lêi ®­îc sÏ ph¶i trõng ph¹t ng­¬i !",2, 
                 "§¬n gi¶n, ta qua l¹i ®¸p /jiguanren_problem4", 
                 "Lµm c¸i g×, tr­íc kh«ng ®Ó ı tíi ng­¬i /no") 
        elseif ( GetBit(GetTask(1228),8) == 1 ) and ( GetBit(GetTask(1228),9) == 0 ) then 
                  Describe(DescLink_JiGuanRen..": §­îc råi , ta ®em ta chç nµy ®İch t­ëng th­ëng cho ng­¬i.",2,"NhËn lÊy phÇn th­ëng /jiguan4_giveprize","Sau nµy trë l¹i /no") -- nhËn lÊy t­ëng th­ëng ? ? ? ? ? ? ? ? ? 
        else 
                  Describe(DescLink_JiGuanRen..": Ta lµ mét ng­êi m¸y , y nha y nha nga . ",1,"Ng­¬i lµ g× ng­êi m¸y µ , ng­¬i lµ mét ng­êi ®iªn /no") 
        end
end

function jiguanren_problem1()
	--µ÷ÓÃ¹«¹²ÎÊÌâ¿â£¬»Ø´ğÕıÈ·ÊıÒªÇóÎª2£¬ÎÊÌâÎªÎÊÌâ101~ÎÊÌâ118Ëæ»ú£¬Íæ¼ÒÎÊ´ğ·åÖµÎª2´Î£¬»Ø´ğÕıÈ·½«1228µÚ2Î»ÖÃ1¡£Èç¹û»Ø´ğ²»ÕıÈ·£¬µ÷ÓÃpartner_keeponproblem[1]
	partner_edu(2,101,118,2,1228,2,1,1) 
end

function jiguanren_problem2()
	--µ÷ÓÃ¹«¹²ÎÊÌâ¿â£¬»Ø´ğÕıÈ·ÊıÒªÇóÎª2£¬ÎÊÌâÎªÎÊÌâ101~ÎÊÌâ118Ëæ»ú£¬Íæ¼ÒÎÊ´ğ·åÖµÎª2´Î£¬»Ø´ğÕıÈ·½«1228µÚ4Î»ÖÃ1¡£Èç¹û»Ø´ğ²»ÕıÈ·£¬µ÷ÓÃpartner_keeponproblem[2]
	partner_edu(2,101,118,2,1228,4,1,2)
end

function jiguanren_problem3()
	--µ÷ÓÃ¹«¹²ÎÊÌâ¿â£¬»Ø´ğÕıÈ·ÊıÒªÇóÎª2£¬ÎÊÌâÎªÎÊÌâ101~ÎÊÌâ118Ëæ»ú£¬Íæ¼ÒÎÊ´ğ·åÖµÎª2´Î£¬»Ø´ğÕıÈ·½«1228µÚ6Î»ÖÃ1¡£Èç¹û»Ø´ğ²»ÕıÈ·£¬µ÷ÓÃpartner_keeponproblem[3]
	partner_edu(2,101,118,2,1228,6,1,3) 
end

function jiguanren_problem4()
	--µ÷ÓÃ¹«¹²ÎÊÌâ¿â£¬»Ø´ğÕıÈ·ÊıÒªÇóÎª2£¬ÎÊÌâÎªÎÊÌâ101~ÎÊÌâ118Ëæ»ú£¬Íæ¼ÒÎÊ´ğ·åÖµÎª2´Î£¬»Ø´ğÕıÈ·½«1228µÚ8Î»ÖÃ1¡£Èç¹û»Ø´ğ²»ÕıÈ·£¬µ÷ÓÃpartner_keeponproblem[4]
	partner_edu(2,101,118,2,1228,8,1,4) 
end

function jiguan1_giveprize ()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,800 ,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+800
		nt_setTask(1228,SetBit(GetTask(1228),3,1))  --·¢½±Íê±Ï
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç nµy, ®i nh÷ng ng­êi kh¸c ®i.",0)
	end
end

function jiguan2_giveprize ()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,800 ,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+800
		nt_setTask(1228,SetBit(GetTask(1228),5,1))  --·¢½±Íê±Ï
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç nµy, ®i nh÷ng ng­êi kh¸c ®i.",0)
	end
end

function jiguan3_giveprize ()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,800 ,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+800
		nt_setTask(1228,SetBit(GetTask(1228),7,1))  --·¢½±Íê±Ï
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç nµy, ®i nh÷ng ng­êi kh¸c ®i.",0)
	end
end

function jiguan4_giveprize ()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,800 ,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+800
		nt_setTask(1228,SetBit(GetTask(1228),9,1))  --·¢½±Íê±Ï
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç nµy, ®i nh÷ng ng­êi kh¸c ®i.",0)
	end
end

-----------------------------------------------------------------×¿·Ç·²¶Ô»°---------------------------------------------------

function pe_zhuofeifan()
	if ( nt_getTask(1228) == 511 ) then 
               Describe(DescLink_ZhuoFeiFan..": Ha ha ! mét kiÕm l¸ phong , ®i giang hå lÖ. Ta tr¸c phi phµm n¨m ®ã còng lµ trong chèn vâ l©m nhÊt ®¼ng mét ®İch cao thñ. C¸i g× ? ta lµ ai ? ®óng vËy , ta lµ ai a , ta , ta lµ ai ? ai nha , bÊt kÓ n÷a råi. Ng­¬i ph¶i cøu c¸i ®ã hång hµi nhi ? h¾n lµ Ng­u ma v­¬ng ®İch con trai , ®Ó kh«ng ph¶i ®İch. A ! ta nhí ra råi, ta lµ TÒ thiªn ®¹i th¸nh , ha ha ha , lªn trêi xuèng ®Êt thÇn ma ®Ö nhÊt mü hÇu v­¬ng. Uh, nÕu ng­¬i nhÊt ®Şnh ph¶i cøu h¾n , ta mü hÇu v­¬ng dÜ nhiªn cÊp cho ng­¬i mét c¸i c¬ héi , tíi tíi tíi , ®¸p ta <color=red> n¨m ®¹o <color> vÊn ®Ò tíi.",2, 
              "Tíi th× tíi /zhuofeifan_problem", 
              "C¸i nµy tr¸c phi phµm bÖnh thËt tèt nÆng , ta cßn lµ sau nµy trë l¹i ®i /no") 
        elseif ( GetBit(GetTask(1228),11) == 1 )then 
                Describe(DescLink_ZhuoFeiFan..": ng­¬i tíi t×m c¸ gäi ®­êng thu nghiªu ®İch ®øa trÎ ? ®­êng c¸i g× nghiªu a , ch­a tõng nghe qua . ng­¬i xem mét chót phİa sau nói hµi tö kia cã ph¶i hay kh«ng ng­¬i muèn t×m. Cæn ®¶n cæn ®¶n.",1,"KÕt thóc ®èi tho¹i /no") 
        elseif ( GetBit(GetTask(1228),10) == 1 ) and ( GetBit(GetTask(1228),11) == 0 ) then 
               Describe(DescLink_ZhuoFeiFan..": hõ hõ , h«m nay lßng ta t×nh h¶o , chØ hái ng­¬i vÊn ®Ò . nÕu kh«ng tuyÖt ®èi ®em ng­¬i ®ång b¹n ®¸nh chÕt , h¾c h¾c . <color=yellow> ng­¬i biÕt sÏ cã c¸i g× trõng ph¹t ? ®ång b¹n sÏ kh«ng chÕt nh­ng lµ khi ®ång b¹n ®İch sinh m¹ng trŞ gi¸ lµ 0 lóc lµ tiÕn vµo tr¹ng th¸i h«n mª , tù ®éng thèi lui ra chiÕn ®Êu , ph¶i ®­îc qu¸ 5 phót sau míi cã thÓ lÇn n÷a cho gäi , h¬n n÷a ®ång b¹n kÕt thóc tr¹ng th¸i h«n mª sau , sinh m¹ng trŞ gi¸ kh«i phôc v× lín nhÊt trŞ gi¸ ®İch 100% . b©y giê biÕt ®i . <color> ®­îc råi , ta ®em ta chç nµy ®İch t­ëng th­ëng cho ng­¬i . ",2,"NhËn lÊy phÇn th­ëng /zhuofeifan_giveprize","Sau nµy trë l¹i /no") -- nhËn lÊy t­ëng th­ëng ? ? ? ? ? ? ? ? ? 
        else  
               Describe(DescLink_ZhuoFeiFan..":Ta lµ TÒ thiªn ®¹i th¸nh , ha ha ha. Tr¸c phi phµm ? tr¸c phi phµm lµ ai ? ",1,"Khi h¾n trªn ng­êi cña cã lÏ x¶y ra chuyÖn g× thŞnh t×nh /no") 
        end
end

function zhuofeifan_problem()
	--µ÷ÓÃ¹«¹²ÎÊÌâ¿â£¬»Ø´ğÕıÈ·ÊıÒªÇóÎª2£¬ÎÊÌâÎªÎÊÌâ101~ÎÊÌâ118Ëæ»ú£¬Íæ¼ÒÎÊ´ğ·åÖµÎª2´Î£¬»Ø´ğÕıÈ·½«1228µÚ4Î»ÖÃ1¡£Èç¹û»Ø´ğ²»ÕıÈ·£¬µ÷ÓÃpartner_keeponproblem[2]
	partner_edu(5,101,118,5,1228,10,1,5)
end

function zhuofeifan_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,800 ,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+800
		PARTNER_AddSkill(partnerindex,0,552,1)                          --Ôö¼ÓÍ¬°é¿¹ĞÔ¼¼ÄÜ¡¶Õæ»ğ¿¹Á¦¡·
		Msg2Player("Chóc mõng ng­¬i thu ®­îc kü n¨ng b¹n ®ång hµnh ? ch©n háa kh¸ng lùc ?")
		nt_setTask(1228,SetBit(GetTask(1228),11,1))  --·¢½±Íê±Ï
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç nµy, ®i nh÷ng ng­êi kh¸c ®i.",0)
	end
end


-----------------------------------------------------------------ÌÆÇïÒ¢--------------------------------------------------------

function pe_tangqiuyi()
	
	if ( ( GetBit(GetTask(1228),12) == 1 ) and ( GetBit(GetTask(1228),13) == 0 ) ) then 
               Describe(DescLink_TangQiuYi..": D¹, cho ng­¬i İt thø ch¬i ®i . ",2,"NhËn lÊy phÇn th­ëng /tangqiuyi_giveprize","Sau nµy trë l¹i /no") 
        elseif ( GetBit(GetTask(1228),11) == 1 ) and ( GetBit(GetTask(1228),12) == 0 ) then 
             if ( GetSex() == 0 ) then 
                Describe(DescLink_TangQiuYi..": A , Tr¸c thóc thóc kh«ng båi thu nghiªu ch¬i n÷a råi , ng« ...... mÊt høng. §­îc råi , §¹i ca ca ta lÇn tr­íc ®i. Ng­¬i cã thÓ trë vÒ ®i nãi cho ta biÕt phô th©n. <color=red> n÷a cïng ta ®èi tho¹i ta ®­a ng­¬i mét İt ®å nga. <color>",1,"KÕt thóc ®èi tho¹i /tangqiuyi_finish") 
             else 
                Describe(DescLink_TangQiuYi..": A , Tr¸c thóc thóc kh«ng båi thu nghiªu ch¬i n÷a råi , ng« ...... mÊt høng. §­îc råi , §¹i tû tû ta lÇn tr­íc ®i. Ng­¬i cã thÓ trë vÒ ®i nãi cho ta biÕt phô th©n. <color=red> n÷a cïng ta ®èi tho¹i ta ®­a ng­¬i mét İt ®å nga . <color>",1,"KÕt thóc ®èi tho¹i /tangqiuyi_finish") 
             end 
        elseif ( GetBit(GetTask(1228),13) == 1 ) then 
             if ( GetSex() == 0 ) then 
                Describe(DescLink_TangQiuYi..": A , Tr¸c thóc thóc kh«ng båi thu nghiªu ch¬i n÷a råi , ng« ...... mÊt høng. §­îc råi , §¹i ca ca ta lÇn tr­íc ®i. Ng­¬i cã thÓ trë vÒ ®i nãi cho ta biÕt phô th©n. ",1,"KÕt thóc ®èi tho¹i /tangqiuyi_finish") 
             else 
                Describe(DescLink_TangQiuYi..": A , Tr¸c thóc thóc kh«ng båi thu nghiªu ch¬i n÷a råi , ng« ...... mÊt høng. §­îc råi , §¹i tû tû ta lÇn tr­íc ®i. Ng­¬i cã thÓ trë vÒ ®i nãi cho ta biÕt phô th©n . ",1,"KÕt thóc ®èi tho¹i /tangqiuyi_finish") 
             end 
      else 
             Describe(DescLink_TangQiuYi..": Tr¸c thóc thóc nãi mang ta ®i bÇu trêi thÊy th­êng nga tû tû ®©y , ng­¬i kh«ng muèn s¶o n÷a/råi , ta sÏ kh«ng cïng ng­¬i ®i . ng­¬i ph¶i nãi cïng Tr¸c thóc thóc nãi ®i . ",1,"KÕt thóc ®èi tho¹i /no") 
       end
end

function tangqiuyi_finish()
	nt_setTask(1228,SetBit(GetTask(1228),12,1))  --ÌÆÇïÒ¢´¦ÈÎÎñÍê³É
end

function tangqiuyi_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,800 ,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+800
		nt_setTask(1228,SetBit(GetTask(1228),13,1))  --·¢½±Íê±Ï
	end
end










-----------------------------------------------------------------°×É·¶Ô»°------------------------------------------------------
function pe_baisha()
	local Uworld1226 = nt_getTask(1226)                        --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1227 = nt_getTask(1227)                        --Í¬°é½ÌÓıÈÎÎñ¢¬ÇµÈÎÎñ±äÁ¿
	local Uworld1228 = nt_getTask(1228)                        --Í¬°é½ÌÓıÈÎÎñÌÆÓ°ÈÎÎñ±äÁ¿
	local Uworld1229 = nt_getTask(1229)                        --Í¬°é½ÌÓıÈÎÎñ°×É·ÈÎÎñ±äÁ¿
	local Uworld1230 = nt_getTask(1230)                        --Í¬°é½ÌÓıÈÎÎñºÚÉ·ÈÎÎñ±äÁ¿
	local Uworld1231 = nt_getTask(1231)                        --Í¬°é½ÌÓıÈÎÎñÇïÒ¢Ë®ÈÎÎñ±äÁ¿
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
                   Describe(DescLink_BaiSha..": MÊy ng­êi chóng ta ®İch gi¸o dôc còng kÕt thóc. Ng­¬i b©y giê cã thÓ ®i t×m kiÕm hoµng ®å ®Ö . ",1,"KÕt thóc ®èi tho¹i /no") 
        elseif ( partner_getpartnerlevel(6) ~= 10 ) then 
                 return 
        elseif ( Uworld1226 == 10 ) and ( Uworld1229 == 0 ) then -- b¹ch s¸t chç nhiÖm vô kh«ng cã xóc ph¸t ? ? ? ? ? kh«ng cã ®em nhiÖm vô t­ëng th­ëng nãi cho nhµ ch¬i 
            Describe(DescLink_BaiSha..": Bå ®µo r­îu ngon ngô quang chĞn <enter>" 
            .." muèn uèng tú bµ th­îng thóc giôc <enter>" 
            .." say n»m sa tr­êng qu©n chí c­êi <enter>" 
           .." x­a nay chinh chiÕn mÊy ng­êi trë vÒ <enter>" 
           .." lóc cßn trÎ tæng thİch n»m m¬ , häc cæ nh©n uèng Tr­êng giang , mét thanh c¶nh kiÕm mét chiÕc nhŞ hå bá ch¹y ®i b¾c t¾c nh×n ®¹i m¹c ngµy. §¸ng tiÕc nh÷ng thø kia giang hå ®İch m­a giã kh«ng cã ®ông ph¶i ta , n÷a ®¶o m¾t ng­êi còng l·o l¹c . giang hå lµ c¸c ng­¬i ng­êi tuæi trÎ ®İch liÔu , nÕu lµ kiÕm hoµng ®Ö tö ®Ó cho ng­¬i tíi , ta chung quy kh«ng thÓ gäi ng­¬i tay kh«ng trë vÒ. ? n¬i nµy <color=red> v©n trung trÊn ®İch nam ph­¬ng <color> cã hai n¬i ®Şa ph­¬ng , chia ra kªu lµ <color=red> ba ®¹o sÜ th¸p , T¹ qu¶ phô bµi ph­êng <color> . ta cã hai bÊt thµnh khİ ®İch ®å ®Ö ë n¬i nµo Èn c­ , ng­¬i ®i t×m bän hä , tù sÏ hái chót vÊn ®Ò tr¸ch khã kh¨n ng­¬i . nÕu ng­¬i cã thÓ qu¸ liÔu c¸i nµy hai quan , ta chç nµy ®İch ®å còng liÒn häc ®­îc kĞm kh«ng ®©u liÔu . <enter>" 
          .."<color=green> nhiÖm vô t­ëng th­ëng : ®ång b¹n kü n¨ng ' b¨ng tuyÕt s¬ dung '<color>",2, 
        "VËy chóng ta b©y giê b¾t ®Çu ®i /baisha_starttask", 
       "KÕt thóc ®èi tho¹i /no") 

       elseif ( Uworld1226 == 10 ) and ( GetBit(GetTask(1229),3) == 1) and ( GetBit(GetTask(1229),5) == 1 ) and ( nt_getTask(1229) ~= 20 )then -- nhiÖm vô ®· hoµn thµnh 

                 Describe(DescLink_BaiSha..": ®­îc råi , ta sÏ nãi cho ng­¬i biÕt mét İt khiÕu m«n :<enter>" 
               .." ®ång b¹n ®İch lÊy h¬i thë thuéc tİnh lµ cã t­ chÊt ®İch :<color=red> sinh m¹ng , lùc l­îng , mÖnh trung , nĞ tr¸nh , ch¹y tèc , may m¾n <color>; mét thuéc tİnh ®İch t­ chÊt cµng cao ı nghÜa nªn thuéc tİnh ë th¨ng cÊp lóc t¨ng lªn ph¶i cµng ®©u , bÊt qu¸ cô thÓ t¨ng lªn ®©u thiÓu , <color=red> cïng t­ chÊt <color> ng­êi cña còng sÏ cã <color=red> chót İt bÊt ®ång <color> . nãi thİ dô nh­ ng­¬i cã hai ng­êi ®ång b¹n sinh m¹ng t­ chÊt ®Òu lµ 2 , kia khi h¾n cöa th¨ng cÊp ®İch thêi ®iÓm cã thÓ mét t¨ng lªn 50 ®iÓm sinh m¹ng trŞ gi¸ , mµ mét ng­êi kh¸c chØ t¨ng lªn 45 ®iÓm sinh m¹ng trŞ gi¸ . nh÷ng thø nµy cô thÓ t¨ng lªn trŞ sè ë ®ång b¹n <color=red>10 cÊp ?30 cÊp ?50 cÊp ?90 cÊp lóc sÏ xuÊt hiÖn mét İt ba ®éng . <color><enter>" 
               .." tèt l¾m , ë chç nµy cña ta ng­¬i ®· häc kh«ng tíi h¬n ®©u ®İch ®å , ®i t×m nh÷ng ng­êi kh¸c ®i . huynh ®Ö ta h¾c s¸t còng kh«ng ph¶i lµ ®¾p ph¶i , bß ph¶i hÖ khi . ng­¬i nãi chuyÖn víi h¾n thêi ®iÓm giäng ngµn v¹n chí qu¸ lín , h¾n b©y giê cßn ®ang nhí kü l·o chñ nh©n tê nh­ méng tiªn sinh cïng Nam Cung tiÓu th­ ®©y . ",2," nhËn lÊy phÇn th­ëng /baisha_getprize","Sau nµy trë l¹i /no") 
                
       elseif ( Uworld1226 == 10 ) and ( GetBit(GetTask(1229),1 ) == 1 ) then -- míi võa nhËn ®­îc b¹ch s¸t chç nhiÖm vô 
              Describe(DescLink_BaiSha..": ë n¬i nµy v©n trung trÊn ®İch nam ph­¬ng cã hai n¬i ®Şa ph­¬ng , chia ra kªu lµ ba ®¹o sÜ th¸p , T¹ qu¶ phô bµi ph­êng . ta cã hai bÊt thµnh khİ ®İch ®å ®Ö ë n¬i nµo Èn c­ , ng­¬i ®i t×m bän hä , tù sÏ hái chót vÊn ®Ò tr¸ch khã kh¨n ng­¬i . nÕu ng­¬i cã thÓ qu¸ liÔu c¸i nµy hai quan , ta chç nµy ®İch ®å còng liÒn häc ®­îc kĞm kh«ng ®©u",1, 
             "KÕt thóc ®èi tho¹i /no") 
      else 
             Describe(DescLink_BaiSha..": Ng­¬i cßn tíi n¬i nµy lµm c¸i g× ? x«ng x¸o giang hå ? t×m kiÕm ®ång b¹n ? ng­¬i l¹i biÕt giang hå lµ c¸i g× ®©y . l·o nh©n nãi võa vµo giang hå tuæi ngô thóc giôc , thóc giôc ®İch kh«ng chØ lµ nh©n m¹ng , cßn ng­¬i n÷a lßng cña a . th«i , nãi cïng ng­¬i nghe th× cã İch lîi g× ? muèn x«ng ®İch , chung quy ph¶i m×nh x«ng qua míi hiÓu ®­îc. Cã chót thŞnh cïng c¸i nµy v©n trung ®İch tuyÕt mét lo¹i hµng n¨m thæi qua. Lßng cña ta còng ®· cøng nh¾c. <enter>",1,"KÕt thóc ®èi tho¹i /no") 
       end
   
end

function baisha_starttask()
	nt_setTask(1229,SetBit(GetTask(1229),1,1))  
	Msg2Player("B¹ch s¸t cho ng­¬i ®i v©n trung trÊn phİa nam ®İch ba ®¹o sÜ th¸p cïng T¹ qu¶ phô bµi ph­êng t×m h¾n hai vŞ ®å ®Ö .")
end

function baisha_getprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddSkill(partnerindex,0,551,1)                          --Ôö¼ÓÍ¬°é¿¹ĞÔ¼¼ÄÜ¡¶±ùÑ©³õÈÚ¡·
		Msg2Player("Chóc mõng ng­¬i thu ®­îc ®ång b¹n kü n¨ng ? B¨ng tuyÕt s¬ dung ?")
		nt_setTask(1229,20)
		Msg2Player("B¹ch s¸t kh«ng cã g× cã thÓ d¹y ng­¬i, ®i h¾c s¸t, ®­êng ¶nh,thu nghiªu n­íc vî chång, cïng tiÖm n¬i ®ã xem mét chót ®i . ")
	end
end

---------------------------------------------------------------ÄĞµÜ×ÓÃÅÉñÇúÍò-------------------------------------------------

function pe_menshenquwan()
	if ( GetBit(GetTask(1229),1) == 1 ) and ( GetBit(GetTask(1229),2) == 0 ) then 
              Describe(DescLink_QuWan..": Ng­¬i lµ s­ phã l·o nh©n gia «ng ta giíi thiÖu tíi . ®­îc råi , ta th¶ tr­íc nãi cho ng­¬i biÕt mét İt yÕu ®iÓm :<enter>" 
             .." <color=red> ngò hµnh thuéc tİnh <color>:<color=yellow> biÓu hiÖn nªn ®ång b¹n ®İch ngò hµnh , bÊt ®ång ngò hµnh ®İch ®ång b¹n cã thÓ cã vâ c«ng cïng tuyÖt kû bÊt ®ång , ®ång thêi cã mét bé phËn ®İch phô thªm kü n¨ng còng sÏ cã ngò hµnh ®İch h¹n chÕ ;<color><enter>" 
             .." <color=red> t­ chÊt <color>:<color=yellow> quyÕt ®Şnh ®ång b¹n ®İch thuéc tİnh ë th¨ng cÊp lóc cã thÓ t¨ng lªn ®©u thiÓu ®İch trŞ gi¸ . <color><enter>" 
             .." <color=red> tinh lùc <color>:<color=yellow> thÇn bİ tiÒm chÊt , ngµy sau më ra ;<color><enter>" 
            .." <color=red> tİnh t×nh <color>:<color=yellow> nªn ®ång b¹n ®İch tİnh t×nh , bÊt ®ång tİnh t×nh ®İch ®ång b¹n ph­¬ng thøc hµnh ®éng còng sÏ bÊt ®ång ; hiÖn h÷u ®İch tİnh t×nh ®æ thõa h×nh cã :<color><enter>" 
            .." <color=red> anh m·nh h×nh <color>:<color=yellow> sÏ c«ng kİch c¸ch h¾n gÇn nhÊt ®İch ®èi thñ , còng kh«ng thi ? tù th©n tæn th­¬ng , cã kh¸ xa ®İch hµnh ®éng ph¹m vi . <color><enter>" 
            .." <color=red> vÖ chñ h×nh <color>:<color=yellow> nhµ ch¬i môc tiªu c«ng kİch hoÆc bŞ c«ng kİch lóc , ®ång b¹n sÏ d­ lÊy hiÖp trî , còng kh«ng thi ? tù th©n tæn th­¬ng , mét lo¹i ®ang ®ïa nhµ phô cËn . <color><enter>" 
            .." <color=red> l­u manh h×nh <color>:<color=yellow> sÏ c«ng kİch m¸u thiÓu ®İch ®èi thñ , khi tù th©n m¸u İt h¬n so víi 20% lóc võa ®¸nh võa ch¹y . <color><enter>" 
           .." <color=red> hÌn yÕu h×nh <color>:<color=yellow> sÏ ngÉu nhiªn c«ng kİch ®èi thñ , bŞ c«ng kİch lóc sÏ võa ®¸nh võa ch¹y , sinh m¹ng İt h¬n so víi 20% lóc sÏ h¬n ®©u ®İch nĞ tr¸nh . <color><enter>" 
           .." ®­îc råi , biÕt râ nh÷ng thø nµy sau nµy , ng­¬i tíi tr¶ lêi ta <color=red> ba <color> vÊn ®Ò , ®¸p ®óng råi míi cã thÓ qu¸ ta ®©y quan . ",2,"Tr¶ lêi vÊn ®Ò /quwan_problem","Tr­íc chuÈn bŞ mét h¬i thë ®i /no") 
         elseif ( GetBit(GetTask(1229),1 ) == 1 ) and ( GetBit(GetTask(1229),2) == 1) and ( GetBit(GetTask(1229),3) ~= 1) then 
           Describe(DescLink_QuWan..": ®­îc råi , ng­¬i ë ®©y ta chç nµy ®İch häc tËp ®· qu¸ quan . nhËn lÊy t­ëng th­ëng cña ng­¬i ®i . ",2,"NhËn lÊy phÇn th­ëng /quwan_getprize","Sau nµy trë l¹i /no") 
            elseif ( GetBit(GetTask(1229),3) == 1) and ( GetBit(GetTask(1229),5) == 1 ) then 
       Describe(DescLink_QuWan..": §­îc råi , ng­¬i tõ ta hßa thanh mµ n¬i nµy còng häc kh«ng tíi h¬n ®©u ®İch ®å . trë vÒ t×m s­ phã l·o nh©n gia «ng ta ®i. ",1,"KÕt thóc ®èi tho¹i /no") 
           else 
         Describe(DescLink_QuWan..": Ta dèc lßng ë n¬i nµy trong th¸p t×m kiÕm th­îng cæ ®İch b¶o bèi quû kİnh , håi l©u kh«ng cã trë vÒ ®i t×m s­ phã. Ng­¬i thÊy l·o nh©n gia «ng ta , xin mêi thay ta vÊn an . cßn cã Thanh nhi ...... nµng , ai , tİnh  chän , ng­¬i ®i ®i . ",1,"KÕt thóc ®èi tho¹i /no") 
     end
end

function quwan_problem()
	partner_edu(3,30,66,3,1229,2,1,9)
end

function quwan_getprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,2100,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+2100
		nt_setTask(1229,SetBit(GetTask(1229),3,1))  
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç nµy, ®i nh÷ng ng­êi kh¸c ®i.",0)
	end
end

--------------------------------------------------------------- Å®µÜ×ÓĞ»Çå¶ù--------------------------------------------------

function pe_xieqinger()
	if ( GetBit(GetTask(1229),1) == 1) and ( GetBit(GetTask(1229),4) == 0) then 
             Describe(DescLink_XieQingEr..": Ai , mÑ a , ®Ó cho n÷ nhi h¬i thë tíi cïng ng­¬i ®i . <enter>" 
        .." ng­¬i lµ ai ? nga , lµ s­ phã l·o nh©n gia «ng ta ®Ó cho ng­¬i tíi . ®­îc råi , ng­¬i th¶ tr¶ lêi ®èi víi ta ba vÊn ®Ò . <enter>",2,"Tr¶ lêi vÊn ®Ò /xieqinger_problem","Tr­íc chuÈn bŞ mét h¬i thë ®i /no") 
        elseif ( GetBit(GetTask(1229),1 ) == 1 ) and ( GetBit(GetTask(1229),4) == 1) and ( GetBit(GetTask(1229),5) ~= 1) then 
             Describe(DescLink_XieQingEr..": Ng­¬i ë ®©y ta chç nµy ®İch häc tËp ®· qu¸ quan . nhËn lÊy t­ëng th­ëng cña ng­¬i ®i . ",2,"NhËn lÊy phÇn th­ëng /xieqinger_getprize","Sau nµy trë l¹i /no") 
        elseif ( GetBit(GetTask(1229),3) == 1) and ( GetBit(GetTask(1229),5) == 1 ) then 
            Describe(DescLink_XieQingEr..": Ng­¬i tõ ta cïng s­ huynh n¬i nµy còng häc kh«ng tíi h¬n ®©u ®İch ®å . trë vÒ t×m s­ phã l·o nh©n gia «ng ta ®i . ",1,"KÕt thóc ®èi tho¹i /no") 
       else 
           Describe(DescLink_XieQingEr..": §óng vËy , mÑ ta lµ mét qu¶ phô , c¸i nµy ch¼ng lÏ chİnh lµ nh÷ng nam nh©n kia khi dÔ ta lı do ? nh÷ng n¨m nµy nÕu nh­ kh«ng cã s­ phã , s­ huynh , ta còng qu¸ kh«ng ngõng ®i ®İch . ",1," KÕt thóc ®èi tho¹i /no") 
        end
end

function xieqinger_problem()
	partner_edu(3,30,66,3,1229,4,1,10)
end

function xieqinger_getprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,2100,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+2100
		nt_setTask(1229,SetBit(GetTask(1229),5,1))  
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç nµy, ®i nh÷ng ng­êi kh¸c ®i.",0)
	end
end

-----------------------------------------------------------------ºÚÉ·¶Ô»°-----------------------------------------------------
function pe_heisha()

	local Uworld1226 = nt_getTask(1226)                        --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1227 = nt_getTask(1227)                        --Í¬°é½ÌÓıÈÎÎñ¢¬ÇµÈÎÎñ±äÁ¿
	local Uworld1228 = nt_getTask(1228)                        --Í¬°é½ÌÓıÈÎÎñÌÆÓ°ÈÎÎñ±äÁ¿
	local Uworld1229 = nt_getTask(1229)                        --Í¬°é½ÌÓıÈÎÎñ°×É·ÈÎÎñ±äÁ¿
	local Uworld1230 = nt_getTask(1230)                        --Í¬°é½ÌÓıÈÎÎñºÚÉ·ÈÎÎñ±äÁ¿
	local Uworld1231 = nt_getTask(1231)                        --Í¬°é½ÌÓıÈÎÎñÇïÒ¢Ë®ÈÎÎñ±äÁ¿
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
            Describe(DescLink_HeiSha..": mÊy ng­êi chóng ta ®İch gi¸o dôc còng kÕt thóc . ng­¬i b©y giê cã thÓ ®i t×m kiÕm hoµng ®å ®Ö . ",1,"KÕt thóc ®èi tho¹i /no") 
            elseif ( partner_getpartnerlevel(7) ~= 10 ) then 
           return 
       elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 0 ) then -- h¾c s¸t chç nhiÖm vô kh«ng cã xóc ph¸t ? ? ? ? ? kh«ng cã ®em nhiÖm vô t­ëng th­ëng nãi cho nhµ ch¬i 
              Describe(DescLink_HeiSha..": nÕu nh­ l·o tö sinh ra sím mÊy n¨m , ®· sím ra trËn ®i giÕt quang kim chã ®¸p ®Òn nhµ n­íc , n¬i nµo ? ®Õn c¸c ng­¬i c¸i nµy gióp tiÓu quû . b©y giê l·o l¹c , chØ cã thÓ nÆc nu«i tèt h¬n vâ sÜ , còng coi lµ quèc gia ra mét phÇn lùc , chuéc chuéc lóc tuæi cßn trÎ ph¹m qu¸ lçi ®i . <enter>" 
            .." kiÕm hoµng ®å ®Ö ? c¸i ®ã tÆc tiÓu tö , l¹i tíi kiÕm l·o phu ®İch tiÖn nghi . ng­¬i nÕu tíi , còng kh«ng thÓ ®Ó cho ng­¬i tay kh«ng trë vÒ . h¾n lµ muèn cho ®ång b¹n cña ng­¬i tíi häc l·o phu ®İch tuyÖt kû :<color=red> nam minh ba ®o¹n kİch <color> . muèn häc cã thÓ , l·o phu c¸i nµy ? vâ c«ng chiªu sè biÕn hãa ®©u b­ng , mçi mét chiªu ®Òu Èn giÊu v« cïng lo¹i biÕn hãa , ¸m hîp tinh ®å . ng­¬i muèn häc lêi cña chØ cã thÓ ®em ba ®o¹n kİch ph©n hñy ®i thµnh ba tÇng thø , trôc tÇng d¹y cho ng­¬i . häc ph¶i kh«ng häc ? <enter>" 
             .."<color=green> nhiÖm vô t­ëng th­ëng : ®ång b¹n kü n¨ng ' nam minh ba ®o¹n kİch '<color>",2, 
                "DÜ nhiªn muèn häc /heisha_starttask", 
           "KÕt thóc ®èi tho¹i /no") 

      elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 10 ) then -- míi võa nhËn ®­îc h¾c s¸t chç nhiÖm vô 
           Describe(DescLink_HeiSha..": ®i t×m ®å ®Ö cña l·o phu cöa ®èi tho¹i nha , ng­¬i ng­êi b»ng ®Şa ngu xuÈn ®©y ? ",1, 
         "KÕt thóc ®èi tho¹i /no") 

      elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 12 ) then -- häc tËp ba ®o¹n kİch nhiÖm vô ®· hoµn thµnh 
          Describe(DescLink_HeiSha..": d¹/õ , kü n¨ng còng ®· quen thuéc ®i . ®­îc råi , ta sÏ nãi cho ng­¬i biÕt mét İt khiÕu m«n , ®ång b¹n ®İch kü n¨ng chia lµm h¬i thë nhãm mÊy lo¹i :<enter>" 
           .." <color=yellow>a) Vâ c«ng kü n¨ng : ®ång b¹n dïng ®Ó c«ng kİch ®Şch nh©n chiªu thøc , th«ng qua th¨ng cÊp ®¹t ®­îc ;<enter>" 
         .." b) N¨m phßng kü n¨ng : ®èi víi phæ b¨ng l«i háa ®éc n¨m lo¹i kh¸ng tİnh tiÕn hµnh thªm ®­îc ®İch kü n¨ng , th«ng qua lµm gi¸o dôc nhiÖm vô ®¹t ®­îc ;<enter>" 
         .." c) Phô thªm kü n¨ng : c¸c lo¹i thªm ®­îc cïng phô trî cïng víi mét İt ®Æc thï kü n¨ng , th«ng qua kü n¨ng s¸ch cïng kŞch t×nh nhiÖm vô ®¹t ®­îc ;<enter>" 
         .." d) TuyÖt kû : th«ng qua kŞch t×nh nhiÖm vô ®¹t ®­îc ;<enter>" 
         .." tèt l¾m , còng t©n khang ng­¬i. B©y giê ®· d¹y cho ng­¬i ®ang lµm gi¸o dôc nhiÖm vô ®ång b¹n nam minh ba ®o¹n kİch !<color>",2,"NhËn lÊy phÇn th­ëng /heisha_giveprize1","Sau nµy trë l¹i /no") 

      elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 13 ) then -- ®· häc ®­îc ba ®o¹n kİch , b¾t ®Çu h¬i thë c¸ giai ®o¹n ®İch gi¸o dôc 
         Describe(DescLink_HeiSha..":§­îc råi, nam minh ba ®o¹n kİch ®· d¹y cho ng­¬i, nh­ vËy ng­¬i biÕt nhËn h¬i thë tíi ph¶i nh­ thÕ nµo sö dông c¸i nµy phô thªm kü n¨ng trung ®İch c«ng kİch kü n¨ng ? ? ®Ó cho ta tíi nãi cho ng­¬i biÕt. <enter>" 
         .." nh­ thÕ nµo , b©y giê biÕt ®i . b©y giê ®i bªn trong bao c¸t n¬i ®ã luyÖn tËp mét h¬i thë c«ng kİch ph­¬ng ph¸p ®i. Sau nµy tíi t×m ta n÷a . <color=red> nhí , ng­¬i ph¶i tù m×nh tù m×nh ®i ®¸nh , ®ång b¹n cña ng­¬i ®ang gi¸o dôc nhiÖm vô trung , h¾n vÉn ch­a cã hoµn toµn luyÖn thµnh c«ng phu , ®¸nh bao c¸t lµ kh«ng cã hiÖu qu¶ ®İch . <color><enter>",1,"KÕt thóc ®èi tho¹i /heisha_starttask3") 
      elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 14 ) then 
             Describe(DescLink_HeiSha..": b©y giê ®i bªn trong bao c¸t n¬i ®ã luyÖn tËp mét h¬i thë c«ng kİch ph­¬ng ph¸p ®i. sau nµy tíi t×m ta n÷a . <enter>",1,"KÕt thóc ®èi tho¹i /no") 
             elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 15 ) then -- bao c¸t ®· ®¶ kİch hoµn , muèn ph¸t ra t­ëng th­ëng 
            Describe(DescLink_HeiSha..": Ng­êi bao c¸t còng ®¸nh xong råi. RÊt tèt , b©y giê t­ëng th­ëng cho ng­¬i mét quyÓn nam minh ba ®o¹n kİch ®İch cÊp ba kü n¨ng s¸ch. LÊy ®­îc t­ëng th­ëng sau sÏ cïng ta ®èi tho¹i , ta cßn cã lêi nãi. ",2," NhËn lÊy phÇn th­ëng /heisha_giveprize2","Sau nµy trë l¹i /no") 

     elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 16 ) then -- ®· thu ®­îc ba ®o¹n kİch ®İch kü n¨ng s¸ch 
         Describe(DescLink_HeiSha..":<color=yellow> b©y giê d¹y ng­¬i cuèi cïng mét chót ®å . ®ång b¹n ®İch vâ c«ng kü n¨ng lµ dïng ®é thuÇn thôc tíi th¨ng cÊp ®İch , mµ nh÷ng thø kh¸c kü n¨ng toµn bé muèn th«ng qua sö dông hÖ øng ®İch kü n¨ng s¸ch nh¾c tíi th¨ng . n¬i nµy cÇn chó ı mét ®iÓm , nÕu nh­ phô thªm kü n¨ng cã vâ c«ng kü n¨ng , nh­ vËy cÇn th«ng qua sö dông kü n¨ng s¸ch t¨ng lªn cÊp bËc mµ kh«ng ph¶i lµ ®é thuÇn thôc . kü n¨ng s¸ch ®İch t¨ng lªn quy t¾c lµ : ng­¬i chØ cã thÓ häc tËp so ng­¬i muèn t¨ng lªn kü n¨ng tr­íc mÆt cÊp bËc cao 1 cÊp ®İch kü n¨ng s¸ch . tû nh­ ; hiÖn h÷u kü n¨ng v× 6 cÊp , ng­¬i chØ cã thÓ häc tËp 7 cÊp ®İch nªn kü n¨ng s¸ch ®em nªn kü n¨ng t¨ng lªn tíi 7 cÊp , kh«ng thÓ v­ît cÊp häc tËp . <color><enter>" 
        .." ®­îc råi , ta chç nµy ®· kh«ng cã g× nh­ng d¹y cho ng­¬i liÔu. §©u b¶o träng , ®i nh÷ng ng­êi kh¸c n¬i ®ã nh×n mét chót ®i . ",1,"KÕt thóc ®èi tho¹i /heisha_finishtask") 
     else 
       Describe(DescLink_HeiSha..": C©y khèi, l·o chñ nh©n vî chång chÕt ë ®¹i m¹c n¨m Êy , l·o tö liÒn dêi ®Õn c¸i nµy v©n trung trÊn nhá trong qu¸ ®¹m cho ra ®iÓu ®İch cuéc sèng . nghe nãi bay V©n nhi bŞ cÈu nhËt ®İch kim quèc ngµy nhÉn tÆc mét ch­ëng ®¸nh h¬i thë s¬n tiÓn , lóc Êy khãc ®Õn c¸i ®ã th­¬ng t©m kia . gÇn nhÊt l¹i nghe nãi h¾n kh«ng cã chÕt , cßn t­ëng lµ liÔu c¸i g× ®iÓu vâ l©m kh¸ch s¹n ®İch ®Çu môc , ho khan , ®øa nhá nµy còng kh«ng tíi xem mét chót ta ®©y , h¾n h¾c thóc thóc còng tuæi mét xÊp dÇy n÷a råi . nhí n¨m ®ã khiªng h¾n ®uæi lang thêi ®iÓm c­êi cïng con gµ con tùa nh­ , b©y giê n÷a g¸nh chØ nİnh ph¶i Ğp vì ta ®©y b¶ vai l¹c . <enter>",1,"KÕt thóc ®èi tho¹i /no") 
end
   
end

function heisha_starttask()
	Describe(DescLink_HeiSha..":Chµo ! L·o gia tö ta chİnh lµ thİch ng­êi s¶ng kho¸i. ? ta sau l­ng c¸i nµy phiÕn gi¸o vò trµng trong cã hai m­¬i tªn tinh nhuÖ vâ sÜ ®ang tu hµnh , trong bän hä <color=red> cã mét ng­êi <color> trªn ng­êi cña mang theo l·o phu ®İch ba ®o¹n kİch bİ tŞch . ng­¬i ®em ng­êi kia <color=red> t×m ra <color> , b¾t ®­îc bİ tŞch tíi t×m ta , ta sÏ d¹y cho ng­¬i tinh kh«ng chi nam minh ba ®o¹n kİch . ng­¬i thÊy kh¶ nghi ®İch liÒn cïng h¾n ®èi tho¹i , th¸m thİnh h­ thËt , tæng cã thÓ t×m tíi ®İch.",1,"KÕt thóc ®èi tho¹i /heisha_starttask2")
end

function heisha_starttask2()
	local Uworld1235 = random(10,20)
	nt_setTask(1235,Uworld1235)
	nt_setTask(1230,10)
	Msg2Player("L·o gia tö ®Ó cho ng­¬i tõ gi¸o vò trµng t×m ra mang theo h¾n bİ tŞch ®İch ®å ®Ö tíi .")
end

function heisha_starttask3()
	Msg2Player("L·o gia tö ®Ó cho ng­¬i ë tr­êng vò trµng trong ®¸nh bao c¸t. xem ra kh«ng ®¸nh nhÊt ®Şnh sè lÇn lµ ®ãng kh«ng ®­îc kĞm .")
	nt_setTask(1230,14)  --µÚ2½×¶Î´òÉ³´ü
end

function heisha_giveprize1()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddSkill(partnerindex,2,621,2)                          --Ôö¼ÓÍ¬°é¸½¼Ó¼¼ÄÜ¡¶ÄÏÚ¤Èı¶Î»÷¡·
		Msg2Player("Chóc mõng ng­¬i thu ®­îc ®ång b¹n kü n¨ng ? nam minh ba ®o¹n kİch ?")
		nt_setTask(1230,13)   
		Msg2Player("Ng­¬i thu ®­îc nam minh ba ®o¹n kİch. Cã thÓ sÏ cïng l·o gia tö ®èi tho¹i.")
	end
end

function heisha_giveprize2()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		AddItem(6,1,884,3,0,0)												--Ôö¼ÓÍ¬°é¸½¼Ó¼¼ÄÜ¡¶ÄÏÚ¤Èı¶Î»÷¡·
		Msg2Player("Chóc mõng ng­¬i thu ®­îc ®ång b¹n kü n¨ng ? nam minh ba ®o¹n kİch ? ®İch thø 3 cÊp kü n¨ng s¸ch")
		PARTNER_AddExp(partnerindex,2600,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+2600
		nt_setTask(1230,16)     
		Msg2Player("Ng­¬i thu ®­îc nam minh ba ®o¹n kİch ®İch 3 cÊp kü n¨ng s¸ch. Cã thÓ sÏ cïng l·o gia tö ®èi tho¹i.")
	end
end

function heisha_finishtask()
	nt_setTask(1230,20)
	Msg2Player("Ng­¬i ®· hoµn thµnh ë h¾c s¸t chç ®İch häc tËp , cã thÓ ®i b¹ch s¸t , ®­êng ¶nh ? thu nghiªu n­íc vî chång cïng tiÖm n¬i ®ã nh×n mét chót.")
end

-----------------------------------------------------------ºÚÉ·µÜ×Ó-----------------------------------------------------

function pe_heishadizi()
	local Uworld1226 = nt_getTask(1226)
	local Uworld1230 = nt_getTask(1230)
	if ( Uworld1226 == 10 ) and ( Uworld1230 == 11 ) then 
               Describe(DescLink_HeiShaDizi..": tèt , cho ng­¬i mét phÇn nho nhá ı tø . ",1," Ph¸t ra phÇn th­ëng /heishadizi_giveprize") 
         elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 10 ) then 
               Describe(DescLink_HeiShaDizi..": Chµo , s­ phô ta ®Ó cho ng­¬i ®Õn t×m bİ tŞch. Ng­¬i cã thÓ t×m tíi ta ®ã lµ ®Ó m¾t ta , nÕu kh«ng nãi cho ng­¬i biÕt trªn ng­êi ta cã hay kh«ng vËy ta cßn coi lµ cao nh©n. §­¬ng nhiªn råi , ta l¹i kh«ng thÓ dÔ dµng nãi cho ng­¬i biÕt , nh­ vËy ta cßn coi lµ cao nh©n, cho nªn ®©y , ng­¬i cÇn tr¶ lêi ®èi víi ta n¬i nµy <color=red> mét ®¹o <color> ®Ò môc. Ta sÏ nãi cho ng­¬i biÕt ta rèt cuéc <color=red> cã hay kh«ng n¾m gi÷ bİ tŞch !<color>",2, 
            "Ng­¬i ng­êi nµy thÕ nµo nh­ vËy ®©u danh ®­êng a , ®­îc råi b¾t ®Çu hái ®i /heishadizi_problem", 
           "Quû tµi tin ng­¬i, ta kh«ng cÇn biÕt ng­¬i cã ph¶i hay kh«ng /no" ) 
        else 
         Describe(DescLink_HeiShaDizi..": b»ng h÷u , mêi ®i ra mét İt . chóng ta ë chç nµy luyÖn tËp th­îng thõa vâ thuËt , coi chõng ngé th­¬ng liÔu ng­¬i . ",1,"KÕt thóc ®èi tho¹i /no") 
   end
end

function heishadizi_problem()
	partner_edu(1,76,91,1,0,0,1,6) 
end

function heishadizi_geiyujiangli()
	nt_setTask(1230,11)
	Msg2Player("V« ng­¬i cïng bÊt kú mét c¸i nµo h¾c s¸t ®Ö tö ®èi tho¹i , ®Òu ®­a lÊy ®­îc mét phÇn tiÓu phÇn th­ëng .")
end

function heishadizi_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,1500,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+1000
		nt_setTask(1230,10)
	end
end

function heishadizi_chenggong()
	nt_setTask(1230,12)
	Msg2Player("Ng­¬i cã thÓ trë vÒ ®i t×m h¾c s¸t häc tËp nam minh ba ®o¹n ®¸nh .")
end

---------------------------------------------------------Ğ£Îä³¡É³´ü¶Ô»°--------------------------------------------------

function pe_wuchangshadai()
	local Uworld1230 = nt_getTask(1230)
	local Uworld1247 = nt_getTask(1247)
	if ( Uworld1230 == 14 ) then
		nt_setTask(1247,Uworld1247+1)
	end
	
	if ( Uworld1247 + 1 >= 30 ) and ( nt_getTask(1230) == 14 ) then
		Msg2Player("Ng­¬i ®· thµnh c«ng n¾m gi÷ kü n¨ng ph­¬ng thøc c«ng kİch , cã thÓ trë vÒ ®i t×m h¾c s¸t nhËn lÊy phÇn th­ëng .")
		nt_setTask(1230,15)
	end
end


----------------------------------------------------------ÇïÒ¢Ë®¶Ô»°-----------------------------------------------------

function pe_qiuyishui()
	local Uworld1226 = nt_getTask(1226)                        --Í¬°é½ÌÓıÈÎÎñ³¤¸èÃÅÈËÈÎÎñ±äÁ¿
	local Uworld1227 = nt_getTask(1227)                        --Í¬°é½ÌÓıÈÎÎñ¢¬ÇµÈÎÎñ±äÁ¿
	local Uworld1228 = nt_getTask(1228)                        --Í¬°é½ÌÓıÈÎÎñÌÆÓ°ÈÎÎñ±äÁ¿
	local Uworld1229 = nt_getTask(1229)                        --Í¬°é½ÌÓıÈÎÎñ°×É·ÈÎÎñ±äÁ¿
	local Uworld1230 = nt_getTask(1230)                        --Í¬°é½ÌÓıÈÎÎñºÚÉ·ÈÎÎñ±äÁ¿
	local Uworld1231 = nt_getTask(1231)                        --Í¬°é½ÌÓıÈÎÎñÇïÒ¢Ë®ÈÎÎñ±äÁ¿
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
             Describe(DescLink_QiuYiShui..": mÊy ng­êi chóng ta ®İch gi¸o dôc còng kÕt thóc. Ng­¬i b©y giê cã thÓ ®i t×m kiÕm hoµng ®å ®Ö.",1,"KÕt thóc ®èi tho¹i /no") 
       elseif ( partner_getpartnerlevel(9) ~= 10 ) then 
                      return 
       elseif ( Uworld1226 == 10 ) and ( Uworld1231 == 0 ) then -- thu nghiªu n­íc chç nhiÖm vô kh«ng cã xóc ph¸t ? ? ? ? ? kh«ng cã ®em nhiÖm vô t­ëng th­ëng nãi cho nhµ ch¬i 
               Describe(DescLink_QiuYiShui..": ë n¬i nµy trong nói hÖ phu d¹y con , nÕu nh­ kh«ng ph¶i lµ h¾c s¸t c¸i ®ã l·o tiÓu tö ngµy ngµy mang theo mét ®¸m ®Ö kªu ®¸nh kªu giÕt , chØ nİnh ®Òu kh«ng nhí giang hå lµ d¹ng g× tö n÷a råi . <enter>"
             .." ng­¬i lµ tíi häc tËp ? nÕu tíi , ta liÒn ®em m×nh vèn thŞnh còng truyÒn thô cho ng­¬i ®i . chñ yÕu lµ cïng ®ång b¹n <color=red> tu luyÖn nhiÖm vô <color> hÖ quan ®İch . <enter>" 
             .." ®ång b¹n tu luyÖn nhiÖm vô cã thÓ th«ng qua ë c¸c thµnh phè ®İch tr­êng ca m«n nh©n chç <color=red> cÊu ? quyÓn trôc <color> ®¹t ®­îc. Tu luyÖn nhiÖm vô v× ë trß ch¬i thÕ giíi tïy ı trªn b¶n ®å lùa chän giÕt ®©u thiÓu con qu¸i vËt . mçi lÇn khëi ®éng mét tu luyÖn nhiÖm vô , khi sau khi hoµn thµnh khëi ®éng mét ng­êi kh¸c . mçi ngµy cã thÓ khëi ®éng <color=red> n¨m <color> tu luyÖn nhiÖm vô , kh«ng cã ®Êt khu h¹n chÕ . ng­¬i cã thÓ sö dông n¨m tê cïng ®Şa ®iÓm ®¸nh tr¸ch ®İch quyÓn trôc , còng cã thÓ sö dông n¨m bÊt ®ång ®Şa ®iÓm giÕt qu¸i quyÓn trôc . <color=red> ng­¬i cÇn t¨ng thªm chó ı ®Şa ph­¬ng lµ : mçi ngµy nhËn ®İch nhiÖm vô nhÊt ®Şnh ph¶i ë ngµy ®ã hoµn thµnh ngµy ®ã ®ãng , nÕu bŞ nh×n lµm thÊt b¹i <color> . ®­îc råi , h·y cïng ng­¬i nãi nh­ vËy ®©u , b©y giê ng­¬i ®i Long v­¬ng thai t×m mét gäi long t¸m ®İch nam nh©n , nãi lµ ta cho ng­¬i ®i ®İch . tõ h¾n n¬i nµy cÇm n¨m ®i Long v­¬ng thai ®¸nh c¸i céc gç<color=red><color><enter>" 
             .."<color=green> nhiÖm vô t­ëng th­ëng : ®ång b¹n kü n¨ng ' l¨ng ba vi b­íc '<color>",2, 
               "Tèt, ta biÕt/qiuyishui_starttask1", 
              "Sau nµy trë l¹i /no") 

       elseif ( Uworld1226 == 10 ) and ( Uworld1231 == 18 ) then -- nhiÖm vô ®· hoµn thµnh 
            Describe(DescLink_QiuYiShui..": tèt l¾m , ë chç nµy cña ta ng­¬i ®· häc kh«ng tíi h¬n ®©u ®İch ®å , nh×n cßn cã c¸i g× kh¸c ng­êi n¬i ®ã kh«ng cã ®i qua ®i. Ng­¬i nh×n thÊy ta tr­îng phu ®­êng ¶nh , xin mêi thay ta chuyÓn c¸o h¾n , ®Ó cho h¾n thËt tèt mang theo hµi tö , ®õng c¶ ngµy chØ ®å m×nh th¶i tµi luyÖn thuèc , vò tr­êng th­¬ng ®İch. Ta c¸i nµy s­¬ng ®· c¸m ¬n !",2,"NhËn lÊy phÇn th­ëng /qiuyishui_prize","Sau nµy trë l¹i /no") 

       elseif ( Uworld1226 == 10 ) and ( Uworld1231 == 10 ) then -- míi võa nhËn ®­îc thu nghiªu n­íc chç nhiÖm vô 
            Describe(DescLink_QiuYiShui..": Kh«ng ph¶i nãi cho ng­¬i ®i Long v­¬ng thai ®¸nh c¸i céc gç ? ? Long v­¬ng thai ®ang ë b¶n ®å ®İch trung h¬i thë ph­¬ng . ",1,"KÕt thóc ®èi tho¹i /no") 
       else 
            Describe(DescLink_QiuYiShui..": Cho phĞp ®©u ng­êi hái ta v× sao ®Ó thóy khãi cöa ®İch §¹i s­ tû kh«ng lµm , cïng c¸ ®øa ngèc tíi ®©y trong nói t­ gi÷ mÊy thËp niªn . a a , ®­êng ¶nh c¸i nµy ®øa ngèc lµ cã phóc khİ nga . n¨m ®ã ngµy h¬i thë ®İch c« g¸i trong , ta còng kh«ng ra tr­íc ba ®i ? nh­ng quay ®Çu l¹i suy nghÜ mét chót , thËt mét chót ®Òu kh«ng hèi hËn . trªn giang hå phong tuyÕt ®¹i , nh÷ng thø kia n¨m ®ªm ? lu«n cã ng­êi ®µn «ng phông båi ta ®i , huèng chi ta cßn mét mùc thİch h¾n , coi nh­ h¾n ngu n÷a , còng lµ cña ta phóc khİ ®i . ®Òu nãi ng­êi trong giang hå , th©n bÊt do kû , cã thÓ ®i ra ngoµi , l·o Thiªn ®èi víi chóng ta ®ñ chiÕu cè liÔu . ",1,"KÕt thóc ®èi tho¹i /no") 
        end
end

function qiuyishui_starttask1()
	nt_setTask(1231,10)
	Msg2Player("Thu nghiªu n­íc cho ng­¬i ®i Long v­¬ng thai t×m mét gäi long t¸m ®İch nam nh©n .")  
end

function qiuyishui_prize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddSkill(partnerindex,2,629,1)                          --Ôö¼ÓÍ¬°é¸½¼Ó¼¼ÄÜ¡¶Áè²¨Î¢²½¡·
		Msg2Player("Chóc mõng ng­¬i thu ®­îc ®ång b¹n kü n¨ng ? l¨ng ba vi bé ?")
		nt_setTask(1231,20)
	end
end

--------------------------------------------------------Áú°Ë¶Ô»°--------------------------------------------

function pe_longba()
	if ( nt_getTask(1231) == 10 ) and ( nt_getTask(1226) == 10 ) then 
             Describe(DescLink_LongBa..": Ng­¬i lµ Thu tû giíi thiÖu tíi, ®­îc råi . ta chç nµy lµ cã chót quyÓn trôc nhiÖm vô , ta cho ng­¬i cÆn kÏ gi¶ng gi¶i mét h¬i thë :<enter>" 
            .."<color=yellow> ng­¬i cã thÓ cÊu ? bÊt ®ång ®Şa ph­¬ng ®İch bÊt ®ång giÕt tr¸ch nhiÖm vô , còng cã thÓ cÊu ? cïng ®Şa ph­¬ng ®İch giÕt tr¸ch nhiÖm vô . ng­¬i cã thÓ v« h¹n cÊu ? quyÓn trôc , nh­ng mçi ngµy nhÊt ®©u chØ cã thÓ khëi ®éng còng hoµn thµnh 5 c¸i. QuyÓn trôc nhiÖm vô kinh nghiÖm t­ëng th­ëng lµ mÖt mái thªm ®İch , còng chİnh lµ nãi , ng­¬i lµm nhiÖm vô cµng ®©u , lÊy ®­îc t­ëng th­ëng còng liÒn cµng ®©u . cuèi cïng , ngµy ®ã lµm xong ®İch nhiÖm vô ph¶i nhí thİch ®¸ng ngµy ®ãng , nÕu kh«ng vÉn sÏ bŞ nh×n lµm nhiÖm vô thÊt b¹i . <color> chİnh lµ nh­ vËy ®©u liÔu , b©y giê ng­¬i nhËn lÊy mét quyÓn trôc nhiÖm vô ®i lµm lµm ®i . <color=red> nhí , ng­¬i ph¶i tù m×nh tù m×nh ®i ®¸nh , ®ång b¹n cña ng­¬i ®ang gi¸o dôc nhiÖm vô trung , h¾n vÉn ch­a cã hoµn toµn luyÖn thµnh c«ng phu , ®¸nh c¸i céc gç lµ kh«ng cã hiÖu qu¶ ®İch . <color>",3, 
           "§óng vËy , ta muèn ®¹t ®­îc ®¸nh c¸i céc gç ®İch quyÓn trôc nhiÖm vô /longba_starttask1", 
            "Ta quyÓn trôc mÊt , ta muèn n÷a nhËn lÊy mét /longba_starttask1", 
            "Ta cßn lµ sau nµy trë l¹i ®i /no") 
        elseif ( nt_getTask(1231) == 15 ) then 
               Describe(DescLink_LongBa..": Tèt l¾m , ng­¬i qu¶ thËt ®· lµm xong quyÓn trôc nhiÖm vô , nhËn lÊy t­ëng th­ëng cña ng­¬i ®i . sÏ cïng ta ®èi tho¹i . ",2,"NhËn lÊy phÇn th­ëng /longba_getprize1","Sau nµy trë l¹i /no") 
         elseif ( nt_getTask(1231) == 16 ) then 
              Describe(DescLink_LongBa..": Ngµy ®em hµng ®¹i ®¶m nhiÖm víi t­ nh©n , ng­¬i trë l¹i tr¶ lêi ®èi víi ta n¨m vÊn ®Ò , liÒn cã thÓ trë vÒ t×m thu c« phôc mÖnh . ",1,"KÕt thóc ®èi tho¹i /longba_starttask2") 
         elseif ( nt_getTask(1231) == 17 ) then 
                Describe(DescLink_LongBa..": §­îc råi , ng­¬i ®· hoµn thµnh ta chç nµy ®İch ®èi tho¹i , dÉn hoµn t­ëng th­ëng trë vÒ ®i t×m thu c« ®i . ",1,"KÕt thóc ®èi tho¹i /longba_getprize2") 
         elseif ( nt_getTask(1231) == 18 ) then 
                  Describe(DescLink_LongBa..": Ta chç nµy ®İch nhiÖm vô ®· hoµn thµnh , ng­¬i trë vÒ t×m thu c« ®i . ",1,"KÕt thóc ®èi tho¹i /no") 
         else 
               Describe(DescLink_LongBa..": Long n¨m ? h¾n lµ ta håi l©u tr­íc kia mét huynh ®Ö . khi ®ã huynh ®Ö chóng ta chİn ng­êi lËp chİ ë trªn giang hå x«ng ra lén mét c¸i thŞnh nghiÖp , ai cã thÓ nghÜ tíi sau ®ã x¶y ra nh­ vËy mét mãn thŞnh t×nh ®©y ? ",1,"KÕt thóc ®èi tho¹i /no") 
         end
end

function longba_starttask1()
	AddItem(6,1,829,0,0,0)
	Msg2Player("Ng­¬i thu ®­îc mét ®¸nh c¸i céc gç ®İch quyÓn trôc. xin kŞp thêi më ra còng hoµn thµnh nã.")	
end

function longba_getprize1()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,4000,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+4000
		nt_setTask(1231,16)
	end
end

function longba_starttask2()
	if ( partner_edu(5,67,91,5,0) == 10 ) then
		nt_setTask(1231,17)
	end
end

function longba_getprize1()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
		PARTNER_AddExp(partnerindex,4500,1)                   			--¸øµ±Ç°Í¬°éÔö¼Ó¾­Ñé£¬+4500
		nt_setTask(1231,18)
		Say("Ng­¬i ®· hoµn thµnh nhiÖm vô chç nµy, ®i nh÷ng ng­êi kh¸c ®i.",0)
	end
end
--------------------------------------------------------¾íÖáÆô¶¯-------------------------------------------

function pe_juanzhouqidong()
	if ( nt_getTask(1231) == 10 ) and ( nt_getTask(1226) == 10 ) and ( nt_getTask(1243)  == 0 ) then
		nt_setTask(1243,10) --¾íÖá±»Æô¶¯
		Msg2Player("Ng­¬i ®· khëi ®éng ®¸nh c¸i céc gç 30 lÇn quyÓn trôc nhiÖm vô .")
	elseif ( nt_getTask(1231) == 10 ) and ( nt_getTask(1226) == 10 ) and ( nt_getTask(1243) >= 10 and  nt_getTask(1243) < 40 ) then
		Msg2Player("Ng­¬i ®· ®ang lµm ®¸nh c¸i céc gç nhiÖm vô, xin mêi tiÕp tôc cè g¾ng lªn .")
	elseif ( nt_getTask(1231) == 15 )then
		Msg2Player("Ng­¬i ®· hoµn thµnh ®¸nh c¸i céc gç nhiÖm vô , xin mêi ®i cïng long t¸m ®èi tho¹i.")
	else
		Msg2Player("ThËt xin lçi, ®©y lµ ®Æc thï nhiÖm vô ®¹o cô , ng­¬i cÇm kh«ng cã bÊt cø t¸c dông g×.")
	end
end	

------------------------------------------------------ÁúÍõÌ¨Á·¹¦Ä¾×®---------------------------------------

function pe_liangongmuzhuang()
	local Uworld1243 = nt_getTask(1243)
	if   ( nt_getTask(1231) == 15 ) then
		Msg2Player("Ng­¬i ®· hoµn thµnh ®¸nh c¸i céc gç nhiÖm vô , xin mêi ®i cïng long t¸m ®èi tho¹i")
	elseif ( nt_getTask(1231) == 10 ) and ( nt_getTask(1226) == 10 ) and ( Uworld1243 >= 10 and  Uworld1243 < 40 ) then
		nt_setTask(1243,Uworld1243+1)
	elseif ( nt_getTask(1231) == 10 ) and ( nt_getTask(1226) == 10 ) and ( nt_getTask(1243) >= 40 ) then
		nt_setTask(1231,15)
		Msg2Player("Ng­¬i ®· hoµn thµnh ®¸nh c¸i céc gç nhiÖm vô , xin mêi ®i cïng long t¸m ®èi tho¹i")
	else
		if ( GetSex() == 0 ) then
			Msg2Player("§Ñp trai, ta ng­¬i kh«ng thï kh«ng o¸n , nhÜ l·o ®¸nh ta kiÒn ?")
		else
			Msg2Player("Mü n÷, ta ng­¬i kh«ng thï kh«ng o¸n, nhÜ l·o ®¸nh ta kiÒn ?")
		end
	end
end


------------------------------------------------------Å£¢ú¢úµÄÎÊ´ğÌâ---------------------------------------
function niumanman_num1()
	niumanman_bisaijieguo(1)
end
function niumanman_num2()
	niumanman_bisaijieguo(2)
end
function niumanman_num3()
	niumanman_bisaijieguo(3)
end
function niumanman_num4()
	niumanman_bisaijieguo(4)
end
function niumanman_num5()
	niumanman_bisaijieguo(5)
end
function niumanman_num6()
	niumanman_bisaijieguo(6)
end
function niumanman_num7()
	niumanman_bisaijieguo(7)
end
function niumanman_num8()
	niumanman_bisaijieguo(8)
end
function niumanman_num9()
	niumanman_bisaijieguo(9)
end
function niumanman_num10()
	niumanman_bisaijieguo(10)
end
function niumanman_num11()
	niumanman_bisaijieguo(11)
end
function niumanman_num12()
	niumanman_bisaijieguo(12)
end

function partner_getpartnerlevel(partnerlevel)
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
	local NpcCount = PARTNER_Count()
	if ( NpcCount == 0 ) then
		Msg2Player("Ng­¬i tr­íc mÆt kh«ng cã b¹n ®ång hµnh, kh«ng thÓ tiÕp tôc nhiÖm vô gi¸o dôc. Xin mêi nhËn lÊy b¹n ®ång hµnh.")
		return
	elseif ( PARTNER_GetLevel(partnerindex) < partnerlevel ) then
		Msg2Player("B¹n ®ång hµnh cña ng­¬i ko ®ñ "..partnerlevel.." cÊp, vÉn kh«ng thÓ lµm ta nhiÖm vô")
		return
	elseif ( PARTNER_GetTaskValue(partnerindex, 1) ~= 1 ) then
		Msg2Player("C¸i nµy ®ång b¹n còng kh«ng ph¶i lµ ng­¬i mang theo ®Ó lµm ®ång b¹n gi¸o dôc nhiÖm vô c¸i ®ã b¹n ®ång hµnh, xin mêi ®em chİnh x¸c ®ång b¹n cho gäi ra tíi .")  
		return
	elseif ( partnerstate == 0 ) then
		Msg2Player("Ng­¬i tr­íc mÆt kh«ng cã cho gäi ra ®ång b¹n tíi, kh«ng thÓ tiÕp tôc gi¸o dôc nhiÖm vô. xin mêi tr­íc cho gäi ra lµm gi¸o dôc nhiÖm vô ®ång b¹n .") 
		return
	else
		return 10
	end
end

function partner_checkdo()
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
	local NpcCount = PARTNER_Count()
	if ( PARTNER_GetTaskValue(partnerindex, 1) ~= 1 ) then
	Msg2Player("C¸i nµy ®ång b¹n còng kh«ng ph¶i lµ ng­¬i mang theo ®Ó lµm ®ång b¹n gi¸o dôc nhiÖm vô c¸i ®ã b¹n ®ång hµnh, xin mêi ®em chİnh x¸c ®ång b¹n cho gäi ra tíi .")  
		for i=1,NpcCount do 
			if ( PARTNER_GetTaskValue(i, 1) == 1 ) then
				Msg2Player("Ng­¬i ®ang lµm ®ång b¹n gi¸o dôc nhiÖm vô lµ thø "..i.." sè ®ång b¹n . ")
			end
		end
	elseif ( NpcCount == 0 ) then
		Msg2Player("Ng­¬i tr­íc mÆt kh«ng cã b¹n ®ång hµnh, kh«ng ®­îc nhËn th­ëng. ")
	elseif ( partnerstate == 0 ) then
		Msg2Player("Ng­¬i tr­íc mÆt kh«ng cã cho gäi ra ®ång b¹n tíi,  kh«ng ®­îc nhËn th­ëng.") 
	else
		return 10
	end
end

function no()
end
