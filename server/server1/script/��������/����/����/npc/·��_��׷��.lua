Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\branch\\zhongli\\branch_zhonglitasknpc.lua")

function main()
dofile("script/Î÷ÄÏÄÏÇø/´óÀí¸®/´óÀí¸®/npc/Â·ÈË_Áú×·Îè.lua")
	Uworld42 = GetTask(42)
	Uworld1057 = nt_getTask(1057)
		branch_longzhuiwu()
	if (Uworld42 == 50) then
		Talk(12,"aaa","Long Truy Vò: Kh«ng cÇn ph¶i nãi, ta biÕt tÊt c¶ mäi chuyÖn. TiÓu huynh ®Ö, ba m­¬i n¨m tr­íc Trung NguyÖn ®· tõng cã bèn vâ nh©n, c¸c b»ng h÷u kh¸ch khÝ x­ng lµ 'Vâ l©m tø kú' ng­¬i cã tõng nghe nãi?","Ng­êi ch¬i: t¹i h¹ xuÊt ®¹o rÊt muén nªn kh«ng râ l¾m.","Long Truy Vò: Giang hå réng lín, kh«ng thÓ tr¸ch ng­¬i ®­îc. Trong bèn ng­êi ta bÐ nhÊt, lµm ®å long ®o¹t ph¸p. Cïng 2 huynh ®Ö §¹o Nh©n QuÌ vµ V« Danh ThÇn T¨ng. L·o §¹i cña chóng ta lµ Th­¬ng L­îng Kh¸ch, trong tay n¾m tuyÖt kü, lóc Êy kh«ng ®èi thñ.","Ng­êi ch¬i: Hãa ra tiÒn bèi tõng lµ Vò Môc T­íng lÜnh, thÊt kÝnh thÊt kÝnh","Long Truy Vò: Kh«ng cã g× ph¶i ng­ìng mé. Hoµng Th­îng dïng kim bµi lÖnh tiÔn chiªu giÕt nguyªn so¸i t¹i Phong Ba §×nh, chóng ta bÞ TÇn Qu¸i thñ h¹ truy s¸t. L·o ®¹i th¶m nhÊt, c¶ gia ®×nh ®· bÞ giÕt s¹ch, ph¶i r¬i vµo c¶nh c« ®éc mét m×nh.","Ng­êi ch¬i: ThÕ sù ®· râ L·o ®¹i cña huynh nh­ thÕ nµo råi?","Long Truy Vò:HiÖn giê l·o ®¹i ®· n÷a tØnh n÷a ®iªn, b¾t gi÷ con ng­êi kh¸c xem lµ con m×nh.Ng­êi kh«ng biÕt lÊy c¶i nÐm h¾n, h¾n còng kh«ng nÐ. Ng­êi kh«ng gièng ng­êi.­","Ng­êi ch¬i: H¼n lµ ®øa trÎ bÞ Th­¬ng L¹ng Kh¸ch b¾t ®i?","Long Truy Vò: §óng. §Ó kû niÖm sinh thÇn 90 cña m×nh, h¾n ®· b¾t mét vµi ®øa bÐ lµm con ch¸u, kh«ng cã ý ®Þnh lµm h¹i chóng. Ng­¬i ®i t×m ng­êi, kh«ng ®­îc lµm h¹i l·o ®¹i ta.","Ng­êi ch¬i: Long ®¹i hiÖp nãi ®ïa, vâ c«ng cña t¹i h¹ sao so s¸nh ®­îc víi Th­¬ng L¹ng Kh¸ch tiÒn bèi.","Long Truy Vò: C¸c h¹ qu¸ khiªm tèn, ta thÊy ng­¬i râ rµng lµ mét cao thñ. L·o ®¹i h«m ®ã v× th­¬ng t©m qu¸ ®é dÉn ®Õn tÈu háa nhËp ma, c«ng lùc suy gi¶m. Huynh Êy b©y giê ®ang Èn c­ ë §iÓm Th­¬ng S¬n. Ng­¬i cã thÓ ®i ®Õn ®ã.","Ng­êi ch¬i: ®a t¹ tiÒn bèi.")
		SetTask(42,60)
		AddNote("TiÕp nhËn nhiÖm vô: ®Õn §iÓm Th­¬ng S¬n t×m Th­¬ng L­îng Kh¸ch th¨m dß tin tøc ®øa bÐ mÊt tÝch.")
		Msg2Player("TiÕp nhËn nhiÖm vô: ®Õn §iÓm Th­¬ng S¬n t×m Th­¬ng L­îng Kh¸ch th¨m dß tin tøc ®øa bÐ mÊt tÝch.")
	elseif (Uworld42 >= 60) then
		Talk(1,"","Long Truy Vò: Ng­¬i kh«ng lµm h¹i L·o §¹i cña ta chø?")
	else
		Talk(1,"","§õng cã suèt ngµy phiÒn ta.")
	
	end
end



function aaa()
Talk(12,"","Long Truy Vò:...HiÖn giê l·o ®¹i ®· n÷a tØnh n÷a ®iªn, b¾t gi÷ con nÝt xem lµ con ch¸u m×nh...Ng­êi kh«ng biÕt lÊy c¶i nÐm h¾n, h¾n còng kh«ng nÐ. Ng­êi kh«ng gièng ng­êi..­","Ng­êi ch¬i: H¼n lµ ®øa trÎ bÞ Th­¬ng L¹ng Kh¸ch b¾t ®i?","Long Truy Vò: §óng. §Ó kû niÖm sinh thÇn 90 cña m×nh, h¾n ®· b¾t mét vµi ®øa bÐ lµm con ch¸u, kh«ng cã ý ®Þnh lµm h¹i chóng. Ng­¬i ®i t×m ng­êi, kh«ng ®­îc lµm h¹i l·o ®¹i ta.","Ng­êi ch¬i: Long ®¹i hiÖp nãi ®ïa, vâ c«ng cña t¹i h¹ sao so s¸nh ®­îc víi Th­¬ng L¹ng Kh¸ch tiÒn bèi.","Long Truy Vò: C¸c h¹ qu¸ khiªm tèn, ta thÊy ng­¬i râ rµng lµ mét cao thñ. L·o ®¹i h«m ®ã v× th­¬ng t©m qu¸ ®é dÉn ®Õn tÈu háa nhËp ma, c«ng lùc suy gi¶m. Huynh Êy b©y giê ®ang Èn c­ ë §iÓm Th­¬ng S¬n. Ng­¬i cã thÓ ®i ®Õn ®ã.","Ng­êi ch¬i: ®a t¹ tiÒn bèi.")
end

