Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-- 120¼¶¼¼ÄÜÈÎÎñÍ·ÎÄ¼ş

LV120_SKILL_STATE = 2450	-- ´æ·Åµ±Ç°ÈÎÎñ×´Ì¬µÄÈ«¾ÖÈÎÎñ±äÁ¿£¬³õÊ¼ÖµÎª1£¬Îª0±íÊ¾ÈÎÎñÒÑ¾­Íê³É
LV120_SKILL_ID = 2463		-- ¼Í¢¼Íæ¼Ò120¼¶¼¼ÄÜID
LOCK_MAP_SEQUENCE =		-- ´æ·Å½âËøÍ¼Ë³ĞòµÄÈ«¾ÖÈÎÎñ±äÁ¿
{
	{2451, 2452, 2453, 2454, 2455, 2456},	-- µÚÒ»ÖØËø½âËøÍ¼Ë³Ğò
	{2457, 2458, 2459, 2460, 2461, 2462},	-- µÚ¶şÖØËø½âËøÍ¼Ë³Ğò
}

DGJ_WULINMIJI	= {6, 1, 1120}	-- ²»Ì«Ñ°³£µÄÎäÁÖÃØ¼®
COFFIN_MAP		= {6, 1, 1119}	-- ãê¾©¶«²¿Ê¢·¢µãµØÍ¼
COFFIN			= {6, 1, 1121}	-- ÉñÃØ¹×Ä¾
LOCK_MAP1		= {6, 1, 1122}	-- ¹×Ä¾½âËøÍ¼ µÚÒ»ÖØËø
LOCK_MAP2		= {6, 1, 1123}	-- ¹×Ä¾½âËøÍ¼ µÚ¶şÖØËø
CADAVER			= {6, 1, 1124}	-- ÆæÒìËÀÊ¬
LV120SKILLBOOK	= {6, 1, 1125}	-- 120¼¶¼¼ÄÜ¾÷Òª

COFFIN_POSITION = {37, 1832, 3439, 6, 6}	-- ¹×²ÄËùÔÚÎ»ÖÃ{µØÍ¼, X×ø±ê, Y×ø±ê, XÎó²î, YÎó²î}

LV120SKILL_NEW_NPC =	-- Ğ¢½¨NPCÁĞ±í
{	-- ¸ñÊ½ {NpcId, MapId, X, Y, Name, Script},
	{1203, 57, 1583, 3203, "Skill 120", "\\script\\task\\lv120skill\\npc\\ºâÉ½´óÌü_¶À¹¢½£µÄÎäÁÖÃØ¼®.lua"},
}

ORG_WULIMIJI	= {6, 1, 26}		-- ÆÕÍ¨µÄÎäÁÖÃØ¼®
BANRUOXINJING	= {6, 1, 12}		-- °ãÈôĞÄ¾­
XISUIJING		= {6, 1, 22}		-- Ï´Ëè¾­
XINGHONGBAOSHI	= {4, 353, 1}		-- ĞÉºì±¦Ê¯
CRYSTAL =
{
	{4, 238, 1},		-- À¶Ë®¾§
	{4, 239, 1},		-- ×ÏË®¾§
	{4, 240, 1},		-- ¢ÌË®¾§
}
BLUE_C = 1
PURPLE_C = 2
GREEN_C = 3

LOCK_MAP1_KEY =			-- µÚÒ»ÖØËø´ğ°¸
{
	{1,  CRYSTAL[GREEN_C]},
	{3,  CRYSTAL[PURPLE_C]},
	{11, CRYSTAL[BLUE_C]},
	{14, CRYSTAL[BLUE_C]},
	{22, CRYSTAL[PURPLE_C]},
	{24, CRYSTAL[GREEN_C]},
}

LOCK_MAP2_KEY =			-- µÚ¶şÖØËø´ğ°¸
{
	{2,  CRYSTAL[GREEN_C]},
	{6,  CRYSTAL[PURPLE_C]},
	{10, CRYSTAL[BLUE_C]},
	{15, CRYSTAL[BLUE_C]},
	{19, CRYSTAL[GREEN_C]},
	{23, CRYSTAL[PURPLE_C]},
}

FACTION_TEXT = 			-- ÃÅÅÉÏµ¹ØÎÄ±¾¶¨Òå
{
	[0] = {"<link=image[0,14]:\\spr\\npcres\\enemy\\enemy037\\enemy037_pst.spr>", "HuyÒn Nh©n Ph­¬ng Tr­îng", "Ph­¬ng Tr­îng"}, -- thiÓu l©m 
 [1] = {"<link=image[0,11]:\\spr\\npcres\\enemy\\enemy084\\enemy084_pst.spr>", "D­¬ng Anh", "Bang Chñ"}, -- thiªn v­¬ng 
[2] = {"<link=image[0,13]:\\spr\\npcres\\enemy\\enemy077\\enemy077_pst.spr>", "§­êng Cõu", "Ch­ëng m«n"}, -- ®­êng m«n 
[3] = {"<link=image[0,12]:\\spr\\npcres\\enemy\\enemy091\\enemy091_pst.spr>", "H¾c DiÖn Lang Qu©n", "Gi¸o Chñ"}, -- ngò ®éc 
[4] = {"<link=image[0,11]:\\spr\\npcres\\enemy\\enemy055\\enemy055_pst.spr>", "Thanh HiÓu S­ Th¸i", "Ch­ëng m«n"}, -- nga mi 
[5] = {"<link=image[0,9]:\\spr\\npcres\\enemy\\enemy098\\enemy098_pst.spr>", "DuÉn Hµm An", "Ch­ëng m«n"}, -- thóy yªn 
[6] = {"<link=image[0,19]:\\spr\\npcres\\enemy\\enemy071\\enemy071_pst.spr>", "Hµ Nh©n Ng·", "Bang chñ"}, -- c¸i bang 
[7] = {"<link=image[0,9]:\\spr\\npcres\\enemy\\enemy103\\enemy103_pst.spr>", "Hoµn Nhan Hång LiÖt", "Gi¸o chñ"}, -- thiªn nhÉn 
[8] = {"<link=image[0,13]:\\spr\\npcres\\enemy\\enemy046\\enemy046_pst.spr>", " ®¹o nhÊt ch©n nh©n ", "Ch­ëng m«n"}, -- vò ®­¬ng 
[9] = {"<link=image[0,22]:\\spr\\npcres\\enemy\\enemy065\\enemy065_pst.spr>", "Toµn C¬ Tö", "Ch­ëng m«n"}, -- c«n l«n
}

FACTION_BOOK =			-- ÃÅÅÉ¼¼ÄÜÊé
{
	[0] = {{6, 1, 56}, {6, 1, 57}, {6, 1, 58}},				-- ÉÙÁÖ
	[1] = {{6, 1, 37}, {6, 1, 38}, {6, 1, 39}},				-- ÌìÍõ
	[2] = {{6, 1, 27}, {6, 1, 28}, {6, 1, 45}, {6, 1, 46}},	-- ÌÆÃÅ
	[3] = {{6, 1, 47}, {6, 1, 48}, {6, 1, 49}},				-- Îå¶¾
	[4] = {{6, 1, 42}, {6, 1, 43}, {6, 1, 59}},				-- ¶ëáÒ
	[5] = {{6, 1, 40}, {6, 1, 41}},							-- ´äÑÌ
	[6] = {{6, 1, 54}, {6, 1, 55}},							-- Ø¤°ï
	[7] = {{6, 1, 35}, {6, 1, 36}, {6, 1, 53}},				-- ÌìÈÌ
	[8] = {{6, 1, 33}, {6, 1, 34}},							-- Îäµ±
	[9] = {{6, 1, 50}, {6, 1, 51}, {6, 1, 52}},				-- À¥¢Ø
}

DIALOG_UI_TEXT =			-- ¶Ô»°UIÏÔÊ¾
{
	{"<link=image[0,10]:\\spr\\npcres\\enemy\\enemy111\\enemy111_pst.spr>", "§éc C« KiÕm"},			-- 1 ¶À¹¢½£
	{"<link=image[0,9]:\\spr\\npcres\\passerby\\passerby040\\passerby040s2.spr>", "Xa phu biÖn kinh"},	-- 2 ãê¾©³µ·ò
	{"<link=image[0,9]:\\spr\\npcres\\passerby\\passerby072\\passerby072s1.spr>", "Cæ ThÇn To¸n"},	-- 3 ¼ÖÉñËã
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\task_wulin.spr>", "Vâ l©m bİ tŞch"},						-- 4 ²»Ñ°³£µÄÎäÁÖÃØ¼®
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\bianjing_southeast.spr>", "BiÖn kinh ®«ng bé sù ph¸t ®iÓm ®Şa ®å"},	-- 5 ãê¾©¶«²¿Ê¢·¢µãµØÍ¼
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\task_coffin.spr>", "ThÇn Bİ Quan Méc"},					-- 6 ÉñÃØ¹×Ä¾
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\task_lockinfo.spr>", "Quan Méc Gi¶i Táa §å"},				-- 7 ¹×Ä¾½âËøÍ¼
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\task_corpse.spr>", "Kú DŞ Tö Thi"},					-- 8 ÆæÒìËÀÊ¬£¨ÔË¹¦Ç°£©
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\task_corpse1.spr>", "Kú DŞ Tö Thi"},					-- 9 ÆæÒìËÀÊ¬£¨ÔË¹¦ºó£©
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\task_stunt.spr>", "Kü N¨ng 120"},				-- 10 120¼¶¼¼ÄÜ¾öÒª
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø1-01.spr>", "M¶nh vôn 1 quan méc gi¶i táa ®å"},			-- 11-16 ¹×Ä¾½âËøÍ¼Ò» ËéÆ¬
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø1-02.spr>", "M¶nh vôn 1 quan méc gi¶i táa ®å"},
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø1-03.spr>", "M¶nh vôn 1 quan méc gi¶i táa ®å"},
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø1-04.spr>", "M¶nh vôn 1 quan méc gi¶i táa ®å"},
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø1-05.spr>", "M¶nh vôn 1 quan méc gi¶i táa ®å"},
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø1-06.spr>", "M¶nh vôn 1 quan méc gi¶i táa ®å"},
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø2-01.spr>", "M¶nh vôn 2 quan méc gi¶i táa ®å"},			-- 17-22 ¹×Ä¾½âËøÍ¼¶ş ËéÆ¬
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø2-02.spr>", "M¶nh vôn 2 quan méc gi¶i táa ®å"},
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø2-03.spr>", "M¶nh vôn 2 quan méc gi¶i táa ®å"},
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø2-04.spr>", "M¶nh vôn 2 quan méc gi¶i táa ®å"},
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø2-05.spr>", "M¶nh vôn 2 quan méc gi¶i táa ®å"},
	{"<link=image:\\spr\\Ui3\\120¼¶¼¼ÄÜÈÎÎñ\\»ú¹ØËø2-06.spr>", "M¶nh vôn 2 quan méc gi¶i táa ®å"},
}

LV120SKILL_LIST =			-- 120¼¶¼¼ÄÜÁĞ±í
{
	[0] = {709, 1, 0, 120, "Kü N¨ng 120", "§¹i thõa nh­ lai chó "}, -- thiÓu l©m 
[1] = {708, 1, 1, 120, "Kü N¨ng 120", "§¸o h­ thiªn "}, -- thiªn v­¬ng 
[2] = {710, 1, 2, 120, "Kü N¨ng 120", "MŞch ¶nh tung "}, -- ®­êng m«n 
[3] = {711, 1, 3, 120, "Kü N¨ng 120", "HÊp tinh yÓm "}, -- ngò ®éc 
[4] = {712, 1, 4, 120, "Kü N¨ng 120", "BÕ nguyÖt phËt trÇn "}, -- nga mi 
[5] = {713, 1, 5, 120, "Kü N¨ng 120", "Ngù quyÕt Èn "}, -- thóy yªn 
[6] = {714, 1, 6, 120, "Kü N¨ng 120", "Hån thiªn khİ c«ng "}, -- c¸i bang 
[7] = {715, 1, 7, 120, "Kü N¨ng 120", "Ma ©m phi ph¸ch "}, -- thiªn nhÉn 
[8] = {716, 1, 8, 120, "Kü N¨ng 120", "XuÊt ø bÊt nhiÔm "}, -- vò ®­¬ng 
[9] = {717, 1, 9, 120, "Kü N¨ng 120", "L­ìng nghi ch©n khİ "}, -- c«n l«n
}

g_DescTable = {}		-- È«¾ÖÁÙÊ±¶Ô»°×Ö·û´®Êı×é

function init_lv120skill()					-- ³õÊ¼»¯ÈÎÎñ
	if (GetTask(LV120_SKILL_STATE) == 0) then
		SetTask(LV120_SKILL_STATE, 1)
	end
	SyncTaskValue(LV120_SKILL_STATE)
	SyncTaskValue(LV120_SKILL_ID);
	lv120skill_debug()	-- ×Ô¶¯´¦ÀíÒì³£
end

function describe_talk(tDialog, szCall)		-- ¶Ô»°º¯Êı
	local i = 0
	if (getn(tDialog) == 0) then return end
	repeat
		i = i + 1
	until (g_DescTable[i] == nil)
	g_DescTable[i] = tDialog
	if (szCall == nil) then szCall = "" end
	describe_basic(1, i, szCall)	
end

function describe_basic(nSeq, idxTable, szCallback)		-- ¶Ô»°µİ¹éº¯Êı£¨ÄÚ²¿£©
	local tDialog = g_DescTable[idxTable]
	if (nSeq == getn(tDialog)) then
		if (szCallback == "") then
			Describe(tDialog[nSeq], 1, "KÕt thóc ®èi tho¹i/quit")
		else
			Describe(tDialog[nSeq], 1, "TiÕp tôc ®èi tho¹i/"..szCallback)
		end
		g_DescTable[idxTable] = nil
		return
	end
	Describe(tDialog[nSeq], 1, "TiÕp tôc ®èi tho¹i /#describe_basic("..(nSeq + 1)..", "..idxTable..", [["..szCallback.."]])")
end

function npc_string(nNpc, szDisplay, bFaction)			-- »ñµÃNPC¶ÔÍæ¼ÒËµ»°µÄ×Ö·û´®
	local tab = DIALOG_UI_TEXT[nNpc]
	if (bFaction ~= nil) then
		tab = FACTION_TEXT[nNpc]
	end
	return tab[1]..tab[2].."<link>:"..szDisplay
end

function speak_string(nNpc, szDisplay, bFaction)		-- »ñµÃÍæ¼Ò¶ÔNPCËùËµ»°µÄ×Ö·û´®
	local tab = DIALOG_UI_TEXT[nNpc]
	if (bFaction ~= nil) then
		tab = FACTION_TEXT[nNpc]
	end
	return tab[1]..GetName().."<link>:"..szDisplay
end

function self_string(nNpc, szDisplay, bFaction)			-- »ñµÃÍæ¼Ò×Ô°××Ö·û´®
	if (nNpc == 0) then		-- 0±íÊ¾ÎŞÍ¼Ê¾
		return "<color=orange>"..szDisplay.."<color>"
	end
	local tab = DIALOG_UI_TEXT[nNpc]
	if (bFaction ~= nil) then
		tab = FACTION_TEXT[nNpc]
	end
	return tab[1].."<link><color=orange>"..szDisplay.."<color>"
end

function add_lv120skillnpc()			-- Ìí¼ÓÈÎÎñNPC
	for i = 1, getn(LV120SKILL_NEW_NPC) do
		local Tab = LV120SKILL_NEW_NPC[i]
		local idxMap = SubWorldID2Idx(Tab[2]);
		if (idxMap >= 0) then
			local idxNpc = AddNpc(Tab[1], 1, idxMap, Tab[3] * 32, Tab[4] * 32, 1, Tab[5])
			SetNpcScript(idxNpc, Tab[6])
		end
	end
end

function generate_sequence(tab)			-- Éú³ÉËæ»úĞòÁĞ

	local nCount = getn(tab)
	local temp, nSeq, bAct = {}, 0, 0

	for i = 1, nCount do
		tinsert(temp, i)
		if (GetTask(tab[i]) < 1) or (GetTask(tab[i]) > getn(tab)) then bAct = 1 end	-- Èç¹ûÓĞ²»ºÏ·¨±µ¢ëÔòÈ«²¿ÖØ½¨
	end

	if (bAct == 1) then
		for i = 1, nCount do
			nSeq = random(1, getn(temp))
			SetTask(tab[i], temp[nSeq])
			SyncTaskValue(tab[i])
			tremove(temp, nSeq)
		end
	end

end

function add_item(tab)							-- Ìí¼ÓµÀ¾ß
	return AddItem(tab[1], tab[2], tab[3], 1, 0, 0)
end

function display_clip(nLockMap, nSeq, szCall)	-- ÏÔÊ¾Ò»ÕÅËéÆ¬
	local nIndex = 10 + 6 * (nLockMap - 1) + GetTask(LOCK_MAP_SEQUENCE[nLockMap][nSeq])
	Describe(DIALOG_UI_TEXT[nIndex][1]..DIALOG_UI_TEXT[nIndex][2].."<link>", 2, "X¸c nhËn/"..szCall, "KÕt thóc ®èi tho¹i/quit")
end

function lv120skill_report()					-- ÏòÕÆÃÅ±¨¸æÇé¿ö
	local tDialog
	local nFaction = GetLastFactionNumber()
	local szCall = FACTION_TEXT[nFaction][3]
	if (nFaction == 0) or (nFaction == 8) or (nFaction == 6) or (nFaction == 4) then	-- ÕıÅÉ
		tDialog =
		{
			npc_string(nFaction, "Ai nha , th× ra lµ ng­¬i ®· biÕt liÔu chuyÖn x­a . gÇn nhÊt giang hå ®ét nhiªn thay ®æi , ë tèng n­íc , tõ ®Çu tíi ®u«i còng m©y ®en gi¨ng ®Çy , ta còng nghÜ ®Õn chuyÖn nµy , nh­ng lµ bëi v× "..szCall.." kh«ng thÓ tæ chøc ®iÒu tra nªn chuyÖn . sau ®ã , mét İt giang hå Èn sÜ t¸i xuÊt giang hå , ®iÒu tra nªn chuyÖn . bän hä ph¸t hiÖn mi môc , mét ngµy ngµy hiÓn lé ra , mi môc biÓu hiÖn , ¸m chØ ©m m­u v× : ngµy nhÉn d¹y !", 1), 
                        speak_string(nFaction, "Tho¹t nh×n ch©n t­íng ®· râ rµng , thËt lµ ngµy nhÉn ©m m­u . chØ cã ®iÒu tra c¸c lo¹i ®éng vËt ph¸t hiÖn , ë trªn thi thÓ l­u l¹i Ên kı ë trªn giang hå kh«ng xuÊt hiÖn qua , ngoµi ra , xuÊt hiÖn rÊt nhiÒu dŞ th­êng con d¬i , ®©y lµ hay kh«ng lµ míi ngµy nhÉn tµ thuËt ?", 1), 
                        npc_string(nFaction, "V× b¶o vÖ ®¹i tèng , b¶o vÖ ch¸nh nghÜa , ta chuÈn bŞ ®èi phã chuyÖn nµy ®İch ®èi s¸ch . ta cïng mét sè cao thñ bÕ quan s¸ng lËp mét chiªu th­îng thõa tuyÖt häc . mét m×nh ng­¬i t×m ®­îc rÊt träng yÕu mi môc , thËt lµ ®¸ng gi¸ khen ngîi . ta quyÕt ®Şnh truyÖn cïng ng­¬i th­îng thõa vâ c«ng , hy väng ng­¬i sau nµy cã thÓ ®· thiªn h¹ v× mÊy ®¶m nhiÖm .", 1), 
                        speak_string(nFaction, "§a t¹ "..szCall.." tu©n theo "..szCall.." d¹y dç .", 1), 
                        npc_string(nFaction, "Thêi gian cÊp b¸ch , cho nªn nªn vâ c«ng chØ cã thÓ truyÒn thô mét phÇn , sau nµy muèn cè g¾ng tu luyÖn . nªn vâ c«ng chØ truyÖn cïng ng­¬i , nh÷ng m«n ph¸i kh¸c ®Ö tö cßn kh«ng biÕt . v× phßng ngõa sanh sù , ta ®· xem khÈu quyÕt viÕt xong , chİnh ng­¬i nghiªn cøu ®i . theo nh­ ng­¬i b©y giê ®İch t­ chÊt , ng­¬i sÏ rÊt dÔ dµng lÜnh héi ®İch . ®óng råi , ng­¬i ®i chuÈn bŞ <color=white> bæn m«n tÊt c¶ kü n¨ng , lµm thµnh mét s¸ch <color>.", 1), 
                        speak_string(nFaction, "Tu©n lÖnh "..szCall.." ®Ö tö lËp tøc phôc mÖnh .", 1),
		}
	elseif (nFaction == 2) or (nFaction == 1) or (nFaction == 5) then					-- ÖĞÁ¢
		tDialog =
		{
			npc_string(nFaction, "Ai nha , th× ra lµ ng­¬i ®· biÕt liÔu chuyÖn x­a . gÇn nhÊt giang hå ®ét nhiªn thay ®æi , ë tèng n­íc , tõ ®Çu tíi ®u«i còng m©y ®en gi¨ng ®Çy , ta còng nghÜ ®Õn chuyÖn nµy , nh­ng lµ bëi v× "..szCall.." kh«ng thÓ tæ chøc ®iÒu tra nªn chuyÖn . sau ®ã , mét İt giang hå Èn sÜ t¸i xuÊt giang hå , ®iÒu tra nªn chuyÖn . bän hä ph¸t hiÖn mi môc , mét ngµy ngµy hiÓn lé ra , mi môc biÓu hiÖn , ¸m chØ ©m m­u v× : ngµy nhÉn d¹y !", 1), 
                        speak_string(nFaction, "Tho¹t nh×n ch©n t­íng ®· râ rµng , thËt lµ ngµy nhÉn ©m m­u . chØ cã ®iÒu tra c¸c lo¹i ®éng vËt ph¸t hiÖn , ë trªn thi thÓ l­u l¹i Ên kı ë trªn giang hå kh«ng xuÊt hiÖn qua , ngoµi ra , xuÊt hiÖn rÊt nhiÒu dŞ th­êng con d¬i , ®©y lµ hay kh«ng lµ míi ngµy nhÉn tµ thuËt ?", 1), 
                        npc_string(nFaction, "V× phßng ngõa ngµy nhŞn ©m m­u , ta ®· tiÕn hµnh tİch cùc ®İch ©m thÇm ®iÒu tra . ta cïng mét sè cao thñ bÕ quan s¸ng lËp mét chiªu th­îng thõa tuyÖt häc . mét m×nh ng­¬i t×m ®­îc rÊt träng yÕu mi môc , thËt lµ ®¸ng gi¸ khen ngîi . ta quyÕt ®Şnh truyÖn cïng ng­¬i th­îng thõa vâ c«ng , hy väng ng­¬i sau nµy cã thÓ ®· thiªn h¹ v× mÊy ®¶m nhiÖm .", 1), 
                        speak_string(nFaction, "§a t¹ "..szCall.." tu©n theo "..szCall.." d¹y dç .", 1), 
                        npc_string(nFaction, "Thêi gian cÊp b¸ch , cho nªn nªn vâ c«ng chØ cã thÓ truyÒn thô mét phÇn , sau nµy muèn cè g¾ng tu luyÖn . nªn vâ c«ng chØ truyÖn cïng ng­¬i , nh÷ng m«n ph¸i kh¸c ®Ö tö cßn kh«ng biÕt . v× phßng ngõa sanh sù , ta ®· xem khÈu quyÕt viÕt xong , chİnh ng­¬i nghiªn cøu ®i . theo nh­ ng­¬i b©y giê ®İch t­ chÊt , ng­¬i sÏ rÊt dÔ dµng lÜnh héi ®İch . ®óng råi , ng­¬i ®i chuÈn bŞ <color=white> bæn m«n tÊt c¶ kü n¨ng , lµm thµnh mét s¸ch <color>.", 1), 
                        speak_string(nFaction, "Tu©n lÖnh "..szCall.." ®Ö tö lËp tøc phôc mÖnh .", 1),
		}
	elseif (nFaction == 3) or (nFaction == 9) then										-- Ğ°ÅÉ
		tDialog =
		{
			npc_string(nFaction, "Ai nha , th× ra lµ ng­¬i ®· biÕt liÔu chuyÖn x­a . gÇn nhÊt giang hå ®ét nhiªn thay ®æi , ë tèng n­íc , tõ ®Çu tíi ®u«i còng m©y ®en gi¨ng ®Çy , ta còng nghÜ ®Õn chuyÖn nµy , nh­ng lµ bëi v× "..szCall.." kh«ng thÓ tæ chøc ®iÒu tra nªn chuyÖn . sau ®ã , mét İt giang hå Èn sÜ t¸i xuÊt giang hå , ®iÒu tra nªn chuyÖn . bän hä ph¸t hiÖn mi môc , mét ngµy ngµy hiÓn lé ra , mi môc biÓu hiÖn , ¸m chØ ©m m­u v× : ngµy nhÉn d¹y !", 1), 
                        speak_string(nFaction, "Tho¹t nh×n ch©n t­íng ®· râ rµng , thËt lµ ngµy nhÉn ©m m­u . chØ cã ®iÒu tra c¸c lo¹i ®éng vËt ph¸t hiÖn , ë trªn thi thÓ l­u l¹i Ên kı ë trªn giang hå kh«ng xuÊt hiÖn qua , ngoµi ra , xuÊt hiÖn rÊt nhiÒu dŞ th­êng con d¬i , ®©y lµ hay kh«ng lµ míi ngµy nhÉn tµ thuËt ?", 1), 
                        npc_string(nFaction, "Bæn m«n lµm sao cã thÓ r¬i ë phİa sau h¾n ë ®©u ? v× vËy , ta ®· tiÕn hµnh ©m thÇm ®iÒu tra , ®ång thêi x¸c ®Şnh : kh«ng thÓ ®Ó cho ngµy nhÉn ®èi víi chóng ta bÊt lîi , trong cã ng­¬i c¸ thêi c¬ chÕ t¹o thiªn h¹ hçn lo¹n . ta cïng mét sè cao thñ bÕ quan s¸ng lËp mét chiªu th­îng thõa tuyÖt häc . mét m×nh ng­¬i t×m ®­îc rÊt träng yÕu mi môc , thËt lµ ®¸ng gi¸ khen ngîi . "..szCall.." n¨m Êy , rÊt nhiÒu cã ®¶m l­îc ®İch anh hïng míi cã thÓ ®¶m nhiÖm , nh­ng lµ , mét m×nh ng­¬i t×m ®­îc rÊt träng yÕu mi môc , thËt lµ ®¸ng gi¸ khen ngîi . ta quyÕt ®Şnh truyÖn cïng ng­¬i tuyÖt häc , sau nµy gióp ta næi danh thiªn h¹ ", 1), 
                        speak_string(nFaction, "§a t¹ "..szCall.." tu©n theo "..szCall.." d¹y dç .", 1), 
                        npc_string(nFaction, "Thêi gian cÊp b¸ch , cho nªn nªn vâ c«ng chØ cã thÓ truyÒn thô mét phÇn , sau nµy muèn cè g¾ng tu luyÖn . nªn vâ c«ng chØ truyÖn cïng ng­¬i , nh÷ng m«n ph¸i kh¸c ®Ö tö cßn kh«ng biÕt . v× phßng ngõa sanh sù , ta ®· xem khÈu quyÕt viÕt xong , chİnh ng­¬i nghiªn cøu ®i . theo nh­ ng­¬i b©y giê ®İch t­ chÊt , ng­¬i sÏ rÊt dÔ dµng lÜnh héi ®İch . ®óng råi , ng­¬i ®i chuÈn bŞ <color=white> bæn m«n tÊt c¶ kü n¨ng , lµm thµnh mét s¸ch <color>.", 1), 
                        speak_string(nFaction, "Tu©n lÖnh "..szCall.." ®Ö tö lËp tøc phôc mÖnh .", 1),
		}
	elseif (nFaction == 7) then															-- ÌìÈÌ
		tDialog =
		{
			npc_string(nFaction, "ThËt lµ kh«ng hæ lµ ngµy nhÉn d¹y ®Ö tö , kh«ng cã g× cã thÓ qu¸ liÔu con m¾t cña ng­¬i . gÇn nhÊt , giang hå ®ét nhiªn hçn lo¹n , thËt lµ kh«ng cã cã nghÜ ®Õn , ®©y lµ ta ngµy nhÉn d¹y chÕ t¹o ra sù ®oan , ha ha . ng­¬i ®· ®o¸n ®­îc , ta còng kh«ng dèi g¹t ng­¬i . gÇn nhÊt , ngµy nhÉn d¹y triÖu tËp mét İt vâ l©m cao thñ , luyÖn thµnh liÔu mét lo¹i cùc m¹nh ®İch tµ thuËt . næi ®iªn ®İch ®éng vËt cïng n»m ë trong quan tµi ®İch thi thÓ , ®Òu lµ chóng ta c«ng lao , còng tá râ , ta ®¹i kim quèc ®em cã mét lÇn ®¸nh chinh ph¹t .", 1), 
                        speak_string(nFaction, "Gi¸o chñ anh minh , ta ®em v× kim quèc thèng nhÊt thiªn h¹ ®İch nghiÖp lín phã thang ®¹o háa ", 1), 
                        npc_string(nFaction, "LÇn nµy ®éng lo¹n rÊt nghiªm mËt , tin tøc còng kh«ng cã truyÒn kh¾p c¸c m«n ph¸i , cã ng­êi míi võa ®Ó lé ra tin tøc sÏ chÕt . nh÷ng thi thÓ nµy ®Òu lµ tèng n­íc ph¸i ®İch gi¸n ®iÖp , còng coi lµ lµm cho ta thİ nghiÖm . ta lµm c¸i nµy , còng kh«ng ph¶i muèn ng­¬i gi÷ bİ mËt , ng­¬i lµ bæn m«n ng­êi cña . nh­ng lµ , ng­¬i lµ h÷u dòng h÷u m­u ng­êi cña , cã thÓ ®¶m nhiÖm ®¹i ®¶m nhiÖm , ha ha . h«m nay ta truyÒn cho ng­¬i tuyÖt häc , kh«ng muèn c« phô kim quèc tİn nhiÖm ®èi víi ng­¬i . ", 1), 
                        speak_string(nFaction, "§a t¹ "..szCall.." tu©n theo "..szCall.." d¹y dç .", 1), 
                        npc_string(nFaction, "Thêi gian cÊp b¸ch , cho nªn nªn vâ c«ng chØ cã thÓ truyÒn thô mét phÇn , sau nµy muèn cè g¾ng tu luyÖn . nªn vâ c«ng chØ truyÖn cïng ng­¬i , nh÷ng m«n ph¸i kh¸c ®Ö tö cßn kh«ng biÕt . v× phßng ngõa sanh sù , ta ®· xem khÈu quyÕt viÕt xong , chİnh ng­¬i nghiªn cøu ®i . theo nh­ ng­¬i b©y giê ®İch t­ chÊt , ng­¬i sÏ rÊt dÔ dµng lÜnh héi ®İch . ®óng råi , ng­¬i ®i chuÈn bŞ <color=white> bæn m«n tÊt c¶ kü n¨ng , lµm thµnh mét s¸ch <color>.", 1), 
                         speak_string(nFaction, "Tu©n lÖnh "..szCall.." ®Ö tö lËp tøc phôc mÖnh .", 1),
		}
	end
	describe_talk(tDialog)
	SetTask(LV120_SKILL_STATE, 18)
	SyncTaskValue(LV120_SKILL_STATE)
end

function lv120skill_submit()				-- Ìá½»±¾ÅÉÈ«²¿¼¼ÄÜÊéUI
	GiveItemUI("§ãng bæn m«n toµn bé kü n¨ng s¸ch ", " §em bæn m«n tÊt c¶ kü n¨ng s¸ch bá vµo lµ cã thÓ ®¹t ®­îc 120 kü n¨ng bİ tŞch.", "submit_skillbook", "quit")
end

function submit_skillbook(nCount)			-- Ìá½»±¾ÅÉÈ«²¿¼¼ÄÜÊé

	local nFaction = GetLastFactionNumber()
	local szCall = FACTION_TEXT[nFaction][3]
	local idxBook, g, d, p = 0, 0, 0, 0
	local book, temp = {}, {}

	if (nCount == 0) then
		lv120skill_submit()
		return
	end

	for i = 1, getn(FACTION_BOOK[nFaction]) do
		tinsert(temp, FACTION_BOOK[nFaction][i])
	end

	for i = 1, nCount do
		idxBook = GetGiveItemUnit(i)
		g, d, p = GetItemProp(idxBook)
		for j = 1, getn(temp) do
			if (g == temp[j][1]) and (d == temp[j][2]) and (p == temp[j][3]) then
				tremove(temp, j)
				tinsert(book, idxBook)
				break
			end
		end
	end

	if (getn(temp) == 0) then
		local tDialog =
		{
			npc_string(nFaction, "Lµm viÖc lanh lîi l¹i cã míi ng­êi cña thËt lµ khã cÇu a, ta ®· cho ng­¬i bİ quyÕt liÔu, chİnh ng­¬i nghiªn cøu mét chót liÒn cã thÓ lÜnh ngé ", 1), 
                        speak_string(nFaction, "§a t¹ "..szCall.." ®a t¹ chØ gi¸o , b©y giê ta ®i tu luyÖn .", 1), 
                        self_string(10, "Mét håi c«ng phu : thêi gian, ng­¬i liÒn häc ®­îc vâ l©m th­îng thõa tuyÖt kû "),
		}
		describe_talk(tDialog)
		for i = 1, getn(book) do
			if (RemoveItemByIndex(book[i]) ~= 1) then		-- È¡×ßÍæ¼ÒÉíÉÏµÄ¼¼ÄÜÊé
				WriteLog("120 cÊp kü n¨ng - T¾t bæn m«n tÊt c¶ kü n¨ng s¸ch -- hñy th­êng kü n¨ng s¸ch.  Player ="..GetName().." Time = "..date("%y.%m.%d"))
				Msg2Player("HÖ thèng bŞ lçi , xin liªn l¹c ph¸t ®­îc th­¬ng gi¶i quyÕt!")
				return
			end
		end
		idxBook = add_item(LV120SKILLBOOK)	-- »ñµÃ120¼¶¼¼ÄÜÊé
		Msg2Player("Ng­¬i ®¹t ®­îc 1"..GetItemName(idxBook))
		SetTask(LV120_SKILL_STATE, 19)
		SyncTaskValue(LV120_SKILL_STATE)
	else
		Describe("CÇn bá vµo mét bé tÊt c¶ s¸ch kü n¨ng, cho "..szCall.." lµm thµnh 120 cÊp th­îng thõa s¸ch kü n¨ng",2, "Lµm l¹i/lv120skill_submit", "Tho¸t/quit")
	end

end

function calc_item(tab)
	return	CalcItemCount(-1, tab[1], tab[2], tab[3], -1)
end

-- ½â¾öÈÎÎñÒì³£
function lv120skill_debug()
	local state = GetTask(LV120_SKILL_STATE)
	if (state <= 1) or (state >= 19) then return end
	if (state == 5) then debug_item(DGJ_WULINMIJI) return end
	if (state == 9) then debug_item(COFFIN_MAP) return end
	if (state >= 10) and (state <= 15) then debug_item(COFFIN) return end
	if (state == 16) then debug_item(CADAVER) return end
end

function debug_item(Item)
	if (calc_item(Item) < 1) then
		if (CalcFreeItemCellCount() < 1) then
			Msg2Player("? cÊp 120 ph¸t sinh sai lÇm, xin mêi lÇn n÷a söa sang l¹i trang bŞ, xuÊt hiÖn mét chç trèng, ®ång thêi xin mêi lÇn n÷a ®¨ng lôc, hÖ thèng liÒn tr¶ l¹i ®¹i hiÖp mÊt ®i ®İch ®å.")
			return
		end
		local idxItem = add_item(Item)
		Msg2Player("§¹i hiÖp ®¹t ®­îc míi võa mÊt ®i ®İch ®å "..GetItemName(idxItem)..", b©y giê cã thÓ tiÕp tôc nhiÖm vô cÊp 120")
	end
end

function quit()
end


-- 120¼¶¼¼ÄÜÊé¶Ò»»
function lvl120skill_learn()

	if HocKyNang120 ~= 1 then
		return Talk(1, "", "Tİnh n¨ng nµy t¹m ®ãng, h·y quay l¹i sau!")	
	end	

	Describe("Cã c¸i g× khã mæ sao ?",4, 
               "Ta muèn ®æi s¸ch kü n¨ng cÊp 120 /lvl120skill_getbook", 
               "Lµm sao cã thÓ häc ®­îc  kü n¨ng 120/lvl120skill_learninfo", 
               "Ph­¬ng ph¸p uyÖn tËp kü n¨ng 120 /lvl120skill_skillinfo", 
               "§Ó cho ta suy nghÜ /no");
end;

function lvl120skill_skillinfo()
	local szInfo = format("%s%s%s%s%s%s%s%s%s%s", 
                  "<enter><color=green>1. ®¸nh tr¸ch ®¹t ®­îc <color>", 
                 "<enter>LuyÖn cÊp khu vùc qu¸i vËt : ®¸nh mét lo¹i tr¸ch, xanh biÕc boss, hoµng kim boss;", 
                 "<enter>Ho¹t ®éng trung ®İch tr¸ch : ®¸nh vµo cöa thø nhÊt ®İch tr¸ch, s¸t thñ boss;", 
                 "<enter>NhiÖm vô trung ®İch tr¸ch : ®¸nh vµo hoµng kim nhiÖm vô trung ®İch tr¸ch ;", 
                 "<enter>Tèng kim chiÕn tr­êng : sö dông tİch ph©n ®æi häc hái kinh nghiÖm nghiÖm trŞ gi¸ , nh­ng lµ , kh«ng thÓ v­ît qua mçi ng­êi th­îng h¹n .", 
                 "<enter><color=green>2. ñy th¸c nhiÖm vô <color>", 
                  "<enter>Sö dông b¹ch c©u hoµn kü n¨ng , râ rµng c©u hoµn kü n¨ng , râ rµng c©u hoµn ®Æc hiÖu kü n¨ng .", 
                  "<enter>B¹ch c©u hoµn kü n¨ng : sö dông sau ®em ®Ò cao 120 kü n¨ng ®İch luyÖn tËp ®é , mçi n¨m phót luyÖn tËp ®é ®em gia t¨ng mét lÇn .", 
                   "<enter>§¹i c©u hoµn kü n¨ng : hiÖu qu¶ so mét lo¹i b¹ch c©u hoµn kü n¨ng t¨ng lÇn , mçi n¨m phót luyÖn tËp ®é ®em gia t¨ng mét lÇn ", 
                   "<enter>§¹i c©u hoµn ®Æc hiÖu : hiÖu qu¶ so mét lo¹i b¹ch c©u hoµn kü n¨ng t¨ng lÇn , mçi n¨m phót luyÖn tËp ®é ®em gia t¨ng mét lÇn ;" 
                   ); 
              Describe(szInfo, 
               2, 
            "Trë vÒ /lvl120skill_learn", 
            "KÕt thóc ®èi tho¹i /no")
end;

function lvl120skill_learninfo()
	Describe("§¹t tíi 120 cÊp, cã thÓ ®Õn ph¸i ®æi lÊy 120 kü n¨ng s¸ch, sö dông s¸ch sau, ®em häc ®­îc 120 kü n¨ng, mçi ng­êi chØ cã thÓ ®æi mét lÇn <enter> ®æi lÊy s¸ch muèn tu©n thñ : mét quyÓn m©m nÕu t©m tr¶i qua , mét quyÓn bæn m«n 90 kü n¨ng s¸ch , mét viªn ®á th¾m b¶o th¹ch cïng mét viªn thñy tinh .", 
             2, 
            "Trë vÒ /lvl120skill_learn", 
            "KÕt thóc ®èi tho¹i /no")
end;

function lvl120skill_getbook()
	-- Ô­ÈÎÎñ½øĞĞµ½19½áÊø£¬±£³ÖÔ­Öµ£¬¶Ò»»¼¼ÄÜÊé³É¹¦£¬Ö±½ÓÉèÎª19
	local nstate = GetTask(LV120_SKILL_STATE);
	local nlevel = GetLevel();
	local nfact = GetLastFactionNumber();
	if (nstate == 19) then
		Describe("ThËt lµ tiÕc nuèi, ng­¬i ®· sö dông kü n¨ng cÊp 120",1 , "KÕt thóc ®èi tho¹i /no");
	elseif (nlevel < 120) then
		Describe("CÊp bËc kh«ng ®ñ 120, kh«ng thÓ ®æi s¸ch ",1 , "KÕt thóc ®èi tho¹i /no");
	elseif (nfact < 0 or nfact > 9) then
		Describe("Ng­¬i kh«ng gia nhËp m«n ph¸i, kh«ng ®ñ ®iÒu kiÖn ®æi s¸ch",1 , "KÕt thóc ®èi tho¹i /no");
	else
		if (lvl120skill_delallitem() == 1) then
			SetTask(LV120_SKILL_STATE, 19);
			add_item(LV120SKILLBOOK);
			Msg2Player("§æi s¸ch kü n¨ng cÊp 120 thµnh c«ng.")
			WriteLog(format("[LvL120Skill]\t%s\tName:%s\tAccount:%s\tget a lvl120skillbook",
				GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount()))
		else
			Describe("ThËt lµ tiÕc nuèi, mang vËt phÈm kh«ng hîp yªu cÇu, xin mêi kiÓm tra !", 1,"KÕt thóc ®èi tho¹i /no"); 
                     Msg2Player("CÇn thu thËp vËt phÈm : mét quyÓn bµn nh­îc t©m kinh, mét bé s¸ch kü n¨ng cÊp 90 cña bæn m«n, mét viªn tinh hång b¶o th¹ch cïng mét viªn thñy tinh .");
		end;
	end;
end;
-- 120¼¶¼¼ÄÜÊé¶Ò»»

function lvl120skill_delallitem()
	if (lvl120skill_calccount(BANRUOXINJING) < 1) then
		return 0;
	end;
	local nfact = GetLastFactionNumber();
	for i = 1, getn(FACTION_BOOK[nfact]) do
		if (lvl120skill_calccount(FACTION_BOOK[nfact][i]) < 1) then
			return 0;
		end;
	end;

	if (lvl120skill_calccount(XINGHONGBAOSHI) < 1) then
		return 0;
	end;
	
	if (lvl120skill_calccrystal() < 1) then
		return 0;
	end;
	
	lvl120skill_delitem(BANRUOXINJING, 1);
	for i = 1, getn(FACTION_BOOK[nfact]) do
		lvl120skill_delitem(FACTION_BOOK[nfact][i], 1);
	end;
	lvl120skill_delitem(XINGHONGBAOSHI, 1);
	lvl120skill_delscrystal(1);
	return 1;
end;

function lvl120skill_calccount(tb_item)
	return CalcEquiproomItemCount(tb_item[1], tb_item[2], tb_item[3], -1);
end;
function lvl120skill_delitem(tb_item, ncount)
	if (ncount <= 0) then
		return 0;
	end;
	local np = ConsumeEquiproomItem(ncount, tb_item[1], tb_item[2], tb_item[3], -1);
	if (np == 1) then
		WriteLog(format("[LvL120Skill]\t%s\tName:%s\tAccount:%s\tDeleteItem Count=%d,G=%d,D=%d,P=%d,L=%d",
					GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount(),
					ncount, tb_item[1], tb_item[2], tb_item[3], -1));
	else
		print(format("Error!!!! DeleteItem Fail!!! Count=%d,G=%d,D=%d,P=%d,L=%d",
				ncount, tb_item[1], tb_item[2], tb_item[3], -1));
	end;
end;
function lvl120skill_calccrystal()
	local nsum = 0;
	for i = 1, getn(CRYSTAL) do
		nsum = nsum + lvl120skill_calccount(CRYSTAL[i]);
	end;
	return nsum;
end;
function lvl120skill_delscrystal(ncount)
	for i = 1, getn(CRYSTAL) do
		local ncrst = lvl120skill_calccount(CRYSTAL[i]);
		if (ncrst > ncount) then
			ncrst = ncount;
		end;
		lvl120skill_delitem(CRYSTAL[i], ncrst);
		ncount = ncount - ncrst;
		if (ncount <= 0) then
			break
		end;
	end;
end;



-- //Ô½ÄÏ°æ²»´¦ÀíÉÏÏßÊ±ÈÎÎñ±äÁ¿³õÊ¼»¯
if (GetProductRegion() ~= "vn") then
	login_add(init_lv120skill, 2)
end
