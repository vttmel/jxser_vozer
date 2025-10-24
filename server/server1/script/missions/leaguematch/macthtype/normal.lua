--==============Ò»°ã±ÈÈüÏà¹ØÊı¾İ===============
/*
if (not WLLS_HEAD) then
	return
end
*/
-- ½±Àø¹æÔò£¬½±Æ·±í
function tmp_help_award(tbData, nLevel)
	local tbAward	= tbData.award_rank[nLevel]
	local str = "    1. PhÇn th­ëng tİch lòy: bªn th¾ng nhËn ®­îc "..(5*nLevel).." ®iÓm, hßa "..(2*nLevel).." ®iÓm, thua: 0 ®iÓm. Mçi trËn ®Êu sÏ cã thªm <color=red>®iÓm th­ëng kinh nghiÖm<color>. Th¾ng hay thua ®Òu cã ®iÓm th­¬ng t­¬ng øng\n"
		.."    2. PhÇn th­ëng xÕp h¹ng: Sau khi giai ®o¹n ®Êu kÕt thóc, c¨n cø vµo thµnh tİch chiÕn ®éi, sÏ xÕp h¹ng <color=red> tõ 1 ®Õn "..tbAward[getn(tbAward)][1].."<color>, thµnh viªn cã thÓ nhËn ®­îc phÇn th­ëng xÕp h¹ng (®iÓm vinh dù).\n"
		.."    <t> PhÇn th­ëng xÕp h¹ng: \n"
		.."   thø h¹ng    phÇn th­ëng"
	if (tbData.max_member ~= 1) then
		str	= str.."(Thµnh viªn chiÕn ®éi mçi ng­êi)"
	end

	local nLastRank	= 1
	for nAward = 1, getn(tbAward) do
		local nRank	= tbAward[nAward][1]
		local szRank
		if (nLastRank == nRank) then
			szRank	= nRank
		else
			szRank	= nLastRank.."-"..nRank
		end
		str = str.."\n"..strfill_left(format("    thø %s ", szRank), 16)..tbAward[nAward][2].." ®iÓm vinh dù"
		nLastRank	= nRank + 1
	end

	return str
end

-- °ïÖúÎÄ×Ö
-- ¸ñÊ½1£º
--	{"ÏîÄ¿Ãû³Æ", "°ïÖúÄÚÈİ", 1/2(ÏŞ¶¨£¬¿ÉÑ¡)},
--	ÏŞ¶¨£º1¡¢Ö»Õë¶Ôµ¥ÈËÀàĞÍ£»2¡¢Ö»Õë¶Ô¶àÈË£»nil¡¢È«²¿£¨ÏÂÍ¬£©
-- ¸ñÊ½2£º
--	{"ÏîÄ¿Ãû³Æ", function(·µ»Ø°ïÖúÄÚÈİµÄº¯Êı), 1/2(ÏŞ¶¨£¬¿ÉÑ¡)},
-- ¸ñÊ½3£º
--	{
--		"ÏîÄ¿Ãû³Æ",
--		{
--			"ĞÂĞãÈü°ïÖúÄÚÈİ",
--			"¸ß¼¶Èü°ïÖúÄÚÈİ",
--		},
--		1/2(ÏŞ¶¨£¬¿ÉÑ¡)
--	},
tmp_help = {
	{
		"<t> Giíi thiÖu ",
		{
			"    Lo¹i h×nh Vâ l©m kiÖt xuÊt liªn ®Êu lÇn nµy lµ <color=red><s><color>, ng­êi tham gia ®¼ng cÊp ph¶i tõ <color=red>80-119<color>. Ng­êi ch¬i ®Õn gÆp <color=red>Sø gi¶ kiÖt xuÊt<color> b¸o danh thµnh lËp chiÕn ®éi, sau ®ã vµo Héi tr­êng liªn ®Êu KiÖt xuÊt tiÕn hµnh thi ®Êu",
			"    Lo¹i h×nh Vâ l©m liªn ®Êu lÇn nµy lµ <color=red><s><color>, ng­êi than gia ®¼ng cÊp ph¶i tõ <color=red>80~199 <color>vµ <color=red>120 trë lªn<color>. §Õn gÆp <color=red>Sø Gi¶ Liªn §Êu<color>, b¸o danh thµnh lËp chiÕn ®éi, sau ®ã vµo Héi tr­êng vâ l©m liªn ®Êu tiÕn hµnh thi ®Êu",
			"    Lo¹i h×nh Vâ l©m liªn ®Êu lÇn nµy lµ <color=red><s><color>, ng­êi than gia ®¼ng cÊp ph¶i tõ <color=red>80~199 <color>vµ <color=red>120 trë lªn<color>. §Õn gÆp <color=red>Sø Gi¶ Liªn §Êu<color>, b¸o danh thµnh lËp chiÕn ®éi, sau ®ã vµo Héi tr­êng vâ l©m liªn ®Êu tiÕn hµnh thi ®Êu",
		}
	},
	{"Quy tr×nh b¸o danh tham gia thi ®Êu", "    Trong giai ®o¹n thi ®Êu, ng­êi ch¬i cã thÓ b¸o danh tham gia bÊt cø c¸c lo¹i h×nh thi ®Êu nµo, nh­ng kh«ng ®­îc phĞp thµnh lËp chiÕn ®éi míi", 1},
	{"Quy tr×nh b¸o danh tham gia thi ®Êu", "B¸o danh tham gia <s>, cÇn ph¶i thµnh lËp chiÕn ®éi. Ng­êi ch¬i cã thÓ lùa chän chiÕn ®éi cña m×nh, còng cã thÓ gia nhËp chiÕn ®éi ng­êi kh¸c. Sau khi ®éi tr­ëng tæ ®éi víi ng­êi kh¸c, sÏ nãi chuyÖn víi Quan viªn <t>, chän <color=red>chiÕn ®éi <t> cña ta, chiÕn ®éi lËp tøc ®­îc thµnh lËp. Sè l­îng thµnh viªn tèi ®a lµ <color=red><d> ng­êi<color><e>.", 2},
	{"Rêi khái ®éi thi ®Êu", "    Trong <color=red>giai ®o¹n nghØ c¸ch kho¶ng<color>, ng­êi ch¬i cã thÓ tïy ı tho¸t ly chiÕn ®éi. Trong giai ®o¹n thi ®Êu, nÕu chiÕn ®éi cña m×nh <color=red>ch­a ®Õn lóc thi ®Êu<color>, ng­êi ch¬i cã thÓ tù ı rêi khái chiÕn ®éi, nÕu ®· ®Êu råi th× kh«ng thÓ rêi ®éi. <color=yellow>Sau khi rêi khái chiÕn ®éi sÏ kh«ng ®­îc nhËn phÇn th­ëng xÕp h¹ng<color>. <color=yellow>Sau khi rêi khái chiÕn ®éi ng­êi ch¬i sÏ kh«ng thÓ quay trë l¹i thi ®Êu<color>.", 1},
	{"Rêi khái ®éi thi ®Êu", "    Trong <color=red>giai ®o¹n nghØ c¸ch kho¶ng<color>, ng­êi ch¬i cã thÓ tïy ı tho¸t ly chiÕn ®éi. Trong giai ®o¹n thi ®Êu, nÕu chiÕn ®éi cña m×nh <color=red>ch­a ®Õn lóc thi ®Êu<color>, ng­êi ch¬i cã thÓ tù ı rêi khái chiÕn ®éi, nÕu ®· ®Êu råi th× kh«ng thÓ rêi ®éi. <color=yellow>Sau khi rêi khái chiÕn ®éi sÏ kh«ng ®­îc nhËn phÇn th­ëng xÕp h¹ng<color>. NÕu ®éi tr­ëng rêi khái ®éi th× quyÒn ®éi tr­ëng sÏ ®­îc chuyÓn giao cho ng­êi kh¸c. <color=yellow>nÕu chiÕn ®éi kh«ng cßn ai th× sÏ tù ®éng bŞ gi¶i t¸n<color>. Mçi lÇn liªn ®Êu kÕt thóc, chiÕn ®éi nµo kh«ng phï hîp cho lÇn sau còng sÏ tù ®éng bŞ gi¶i t¸n", 2},
	{"Sè trËn thi ®Êu", "Mçi tuÇn tõ thø Hai ®Õn thø S¸u, tõ <color=red>19h00 - 20h00<color> cã thÓ ®Êu <color=yellow>4 trËn<color>. 2 ngµy cßn l¹i tõ <color=red>18h:00 - 19h00<color> vµ <color=red>20h:00 - 21h00<color> cã thÓ ®Êu <color=yellow>8 trËn<color>. Toµn giai ®o¹n thi ®Êu <color=red>(Mçi th¸ng nghØ 1 ngµy ®Ó nhËn th­ëng)<color> ®Êu tÊt c¶ <color=yellow>108 trËn<color>. Mçi chiÕn ®éi tham gia tèi ®a <color=red>48 trËn<color> "},
	{"L­u tr×nh thi ®Êu", "    §éi viªn cña chiÕn ®éi ®èi tho¹i víi <t> ®Ó vµo héi tr­êng <t>, sau ®ã tiÕp tôc ®èi tho¹i víi quan viªn trong héi tr­êng ®Ó ®­îc ®­a vµo khu vùc chuÈn bŞ. §Õn giê thi ®Êu, ®éi viªn tham gia sÏ tù ®éng ®­îc ®­a vµo ®Êu tr­êng. <color=red>Cã thÓ tù do chän binh khİ vµ trang bŞ<color>."},
	{"Quy t¾c thi ®Êu",	-- µ¥ÈË
[[    1. Trong thêi gian thi ®Êu, h¹ gôc ®èi thñ lËp tøc giµnh th¾ng lîi
    2. Trong thêi gian thi ®Êu lËp tøc bŞ xö thua <color=red>nÕu 1 bªn kh«ng cßn l¹i 1 thµnh viªn nµo<color>  
    3. NÕu kÕt thóc trËn ®Êu thµnh viªn 2 bªn ®Òu b»ng nhau, hÖ thèng sÏ ph¸n bªn nµo İt bŞ ®¸nh tróng nhÊt lµ ®éi th¾ng. NÕu vÉn b»ng nhau th× xö hßa
    4. NÕu ®éi nµo kh«ng kŞp vµo ®Êu tr­êng sÏ bŞ xö thua, <color=red>®éi kia ®­îc tİnh th¾ng<color>
    5. Tİnh ®iÓm: ®éi th¾ng <pw> ®iÓm; hßa <pt> ®iÓm; thua 0 ®iÓm
    6. §éi viªn thi ®Êu chØ ®­îc phĞp sö dông c¸c lo¹i d­îc liÖu mua trong D­îc ®iÕm
    7. <color=red>10 gi©y sau khi vµo ®Êu tr­êng lµ b¾t ®Çu chiÕn ®Êu<color>, thêi gian thi ®Êu lµ 14 phót 50 gi©y
    8. c¸ch kho¶ng nghØ gi÷a 2 trËn thi ®Êu lµ <color=red>10 phót<color>. <color=red>Thêi gian chuÈn bŞ <color> 5 phót
]], 1},
	{"Quy t¾c thi ®Êu",	-- ¶àÈË
[[    1. Trong thêi gian thi ®Êu <color=red>bªn nµo bŞ tö vong toµn bé<color> lËp tøc bŞ thua, thi ®Êu kÕt thóc
    2. Trong thêi gian thi ®Êu <color=red>nÕu 1 bªn kh«ng cßn l¹i 1 thµnh viªn nµo thua<color> lËp tøc bŞ xö 
    3. HÕt thêi gian thi ®Êu <color=red>®éi nµo cßn l¹i nhiÒu thµnh viªn nhÊt lµ th¾ng<color>. NÕu sè ng­êi <color=red>2 bªn b»ng nhau<color> th× bªn nµo bŞ ®¸nh tróng İt nhÊt sÏ giµnh phÇn th¾ng. NÕu vÉn b»ng nhau sÏ xö hßa
    4. NÕu ®éi nµo kh«ng kŞp vµo ®Êu tr­êng sÏ bŞ xö thua, <color=red>®éi kia ®­îc tİnh th¾ng<color>
    5. Tİnh ®iÓm: ®éi th¾ng <pw> ®iÓm; hßa <pt> ®iÓm; thua 0 ®iÓm
    6. §éi viªn thi ®Êu chØ ®­îc phĞp sö dông c¸c lo¹i d­îc liÖu mua trong D­îc ®iÕm
    7. <color=red>10 gi©y sau khi nhËp tr­êng lµ b¾t ®Çu chiÕn ®Êu<color>; thêi gian thi ®Êu lµ 14 phót 50 gi©y
    8. thêi gian chuÈn bŞ cho mçi trËn ®Êu lµ <color=red>5 phót<color>
]], 2},
	{"Sè lÇn bŞ ®¸nh tróng",
[[Sè lÇn bŞ ®¸nh tróng: tøc sè lÇn bŞ tæn th­¬ng do ®èi ph­¬ng dïng bïa chó, ®éc hoÆc bŞ ®¸nh tróng

Quy t¾c tİnh sè lÇn bŞ ®¸nh tróng
    1. Mçi lÇn bŞ ®èi ph­¬ng ®¸nh tróng khiÕn m¸u bŞ tôt
    2. BŞ tróng bïa cña ®èi ph­¬ng khiÕn l­îng m¸u bŞ mÊt
    3. BŞ ph¶n ®ßn cña ®èi ph­¬ng khiÕn bŞ tôt m¸u
    4. BŞ trïng ®éc cña ®èi ph­¬ng khiÕn bŞ tôt m¸u
    5. NÕu v× sö dông kü n¨ng mµ ph¶i tôt m¸u th× kh«ng bŞ tİnh vµo sè lÇn bŞ ®¸nh tróng
]]
	},
	{"Quy t¾c b¸o danh", "     <color=red>§iÓm tİch lòy thi ®Êu <t> <color>dïng ®Ó lµm c¨n cø xÕp h¹ng <t>. KÕt thóc trËn ®Êu, ®éi th¾ng nhËn ®­îc <color=red><pw> <color>®iÓm, hßa <color=red><pt> <color> ®iÓm, thua <color=red>0<color> ®iÓm. Mçi lÇn <t> kÕt thóc, c¨n cø vµo <color=red>tæng ®iÓm cña chiÕn ®éi<color> ®Ó xÕp thø h¹ng. NÕu ®iÓm t­¬ng ®ång sÏ c¨n cø vµo <color=yellow>tû lÖ th¾ng<color> ®Ó xÕp h¹ng. nÕu tû lÖ th¾ng còng t­¬ng ®ång sÏ c¨n cø vµo <color=green> tæng sè thêi gian tham gia thi ®Êu cña mçi chiÕn ®éi<color> ®Ó xÕp h¹ng. Giai ®o¹n thi ®Êu <t> sau, ®iÓm tİch lòy sÏ ®­îc t×nh l¹i tõ ®Çu"},
	{"Quy t¾c gi¶i th­ëng", tmp_help_award},
}

tmp_main = {	--officerÖ÷¶Ô»°
	"Giang hå phong ba lo¹n khëi, nh­ng bØ cùc th¸i lai. §Õn khi cã 1 anh hïng kiÖt xuÊt xuÊt hiÖn còng lµ lóc 1 trang sö míi ®­îc viÕt nªn. Ai sÏ lµ anh hïng hµo kiÖt thèng nhÊt thiªn h¹ lo¹n tranh nµy vÒ mét mèi?",
	"Nh»m ®Ó tr¸nh anh hïng hµo kiÖt mét lÇn n÷a ph©n tranh cã lîi cho Kim binh, §éc C« Minh chñ ®· cho tæ chøc nh÷ng cuéc tranh hïng quy m« ®Ó t×m ra nh©n tµi phôc quèc. ",
	"Nh»m ®Ó tr¸nh anh hïng hµo kiÖt mét lÇn n÷a ph©n tranh cã lîi cho Kim binh, §éc C« Minh chñ ®· cho tæ chøc nh÷ng cuéc tranh hïng quy m« ®Ó t×m ra nh©n tµi phôc quèc. ",
}

tmp_creat = "    sau khi lËp chiÕn ®éi tham gia <s>, b¹n cã thÓ <color=red>tù m×nh lµ ®éi tr­ëng<color><enter>"
	.."    Sau khi lËp chiÕn ®éi, bÊt cø lóc nµo b¹n còng cã thÓ mêi ng­êi kh¸c tham gia hoÆc tham gia vµo tæ ®éi ng­êi kh¸c. Mçi chiÕn ®éi chØ ®­îc tèi ®a <d> ng­êi (c¶ ®éi tr­ëng). <color=red>NÕu ch­a ®Õn lóc thi ®Êu<color> vµ còng <color=red>ch­a ®Êu qua trËn nµo<color>, ng­¬i cã thÓ tïy ı ly khai chiÕn ®éi. Ng­¬i x¸c ®Şnh lËp chiÕn ®é cña m×nh chø?"

--====Functions====
--·µ»Øµ±Ç°½ÇÉ«¿ÉÒÔ²Î¼ÓµÄ±ÈÈüÀàĞÍ£¬nilÎª²»ÄÜ²ÎÈü
function tmp_player_type()
	local nLevel = wlls_player_level()
	return iif(nLevel > 0, nLevel, nil)
end

--¼ì²éµ±Ç°½ÇÉ«ÊÇ·ñ¿ÉÒÔ¼ÓÈëÖ¸¶¨µÄÕ½¶Ó
function tmp_check_addmem(n_capidx, n_lid, n_mtype)
	if (n_mtype ~= wlls_player_type()) then
	 	return "Xin lçi! §éi viªn trong nhãm:"..GetName().." vµ <color=red>lo¹i h×nh tham gia thi ®Êu<color> cña chiÕn ®éi b¹n kh«ng phï hîp! Cho nªn kh«ng thÓ vµo chiÕn ®éi cña b¹n!"
	end
end

function tmp_str(str, tbData)
	str	= gsub(str, "<s>", tbData.name)
	str	= gsub(str, "<d>", tbData.max_member)
	str	= gsub(str, "<e>", tbData.addmem_ex)
	return str
end

function tmp_process_data(tbData)
	-- Ä¬ÈÏÖµ
	if (not tbData.addmem_ex) then
		tbData.addmem_ex	= ""
	end
	if (not tbData.text_creat) then
		tbData.text_creat	= tmp_str(tmp_creat, tbData)
	end
	if (not tbData.player_type) then
		tbData.player_type	= tmp_player_type
	end
	if (not tbData.check_addmem) then
		tbData.check_addmem	= tmp_check_addmem
	end

	--½¨Á¢µØÍ¼Ë÷Òı£¨¿ìËÙÕÒµ½Ä³Ò»µØÍ¼¶ÔÓ¦µÄ±ÈÈüÀàĞÍ¡¢³¡µØ×é±àºÅ¡¢³¡µØÀàĞÍ£©
	local tbMapIdx = {}
	for nMType, tbMType in tbData.match_type do
		for nGroup, tbGroup in tbMType.map do
			for i = 1, 3 do
				tbMapIdx[tbGroup[i]] = {nMType, nGroup, i}
			end
		end
	end
	tbData.map_index = tbMapIdx

	-- ´¦Àí°ïÖúÎÄ×Ö
	local nCount = 0
	local nMultiple = iif(tbData.max_member == 1, 1, 2)
	local tbSpecialHelp	= tbData.help_msg	-- ÌØ¶¨°ïÖúĞÅÏ¢
	if (not tbSpecialHelp) then
		tbSpecialHelp	= {}
	end
	tbData.help_msg	= {}
	for _, tbTopic in tmp_help do
		local szTitle	= tmp_str(tbTopic[1], tbData)
		local varText, nLimit
		if (tbSpecialHelp[tbTopic[1]]) then	-- ÓĞ×Ô¶¨Òå°ïÖúĞÅÏ¢
			varText	= tbSpecialHelp[tbTopic[1]]
			nLimit	= nil
		else
			varText	= tbTopic[2]
			nLimit	= tbTopic[3]
		end
		if (not nLimit or nLimit == nMultiple) then
			nCount	= nCount + 1
			local szType	= type(varText)
			local tbText	= {"", ""}
			if (szType == "function") then
				tbText[1]	= varText(tbData, 1)
				tbText[2]	= varText(tbData, 2)
			elseif (szType == "table") then
				tbText[1]	= varText[1]
				tbText[2]	= varText[2]
			else
				tbText[1]	= tostring(varText)
				tbText[2]	= tbText[1]
			end

			tbData.help_msg[nCount]	= {}
			for nLevel = 1, 2 do
				tbText[nLevel]	= tmp_str(tbText[nLevel], tbData)
				tbText[nLevel]	= gsub(tbText[nLevel], "<t>", WLLS_LEVEL_DESC[nLevel])
				tbText[nLevel]	= gsub(tbText[nLevel], "<pw>", 5*nLevel)
				tbText[nLevel]	= gsub(tbText[nLevel], "<pt>", 2*nLevel)
				tbData.help_msg[nCount][nLevel]	= {
					gsub(szTitle, "<t>", WLLS_LEVEL_DESC[nLevel]),
					tbText[nLevel],
				}
			end
		end
	end

	-- ´¦ÀíOfficerÖ÷¶Ô»°ÎÄ×Ö
	tbData.text_main[1]	= tmp_main[1]..tbData.text_main[1]
	tbData.text_main[2]	= tmp_main[2]..tbData.text_main[2]
end
