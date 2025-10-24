Include("\\script\\lib\\common.lua")
Include("\\script\\global\\rename_head.lua")

--»î¶¯¶¨Òå
EVENTS_TB = {
--	{
--		--ÏÔÊ¾»î¶¯Ìõ¼ş
--		ndate = {051101, 051131},	--ÆğÖ¹ÈÕÆÚ£¬¿ÉÑ¡
--		ntime = {2000, 2359},		--ÆğÖ¹Ê±¼ä£¬¿ÉÑ¡
--		level = {1, 200},			--ÆğÖ¹¼¶±ğ£¬¿ÉÑ¡
--		taskequal = {taskid, taskvalue},	--ÈÎÎñ±äÁ¿ÏµµÈ£¬¿ÉÑ¡
--		tasknot = {taskid, taskvalue},		--ÈÎÎñ±äÁ¿²»µÈ£¬¿ÉÑ¡
--		checkfunc = func			--¼ì²âº¯Êı£¬¿ÉÑ¡¡£º¯Êı·µ»Ønil±íÊ¾²»´¥·¢£¬·ñÔò´¥·¢
--		
--		--»î¶¯ÃèÊö
--		name = "Ä³Ä³»î¶¯",			--»î¶¯Ãû³Æ£¬±ØĞè
--		describe = "¼òµ¥ËµÃ÷ÎÄ×Ö",	--»î¶¯ËµÃ÷£¬Ò²¿ÉÒÔÓÃÒ»¸öº¯Êı·µ»Ø×Ö·û´®£¬¿ÉÑ¡
--		detail =
--[[¡¡¡¡ÕâÀï¿ÉÒÔĞ´ºÜ¶µÎÄ×Ö£¬ÏêÏ¸ÃèÊöÄãµÄ»î¶¯¡£
--¡¡¡¡·½À¨ºÅµÄĞÎÊ½¿ÉÒÔ×ÔÓÉ»»ĞĞ¡£
--¡¡¡¡Ò²¿ÉÒÔÓÃÒ»¸öº¯Êı·µ»Ø×Ö·û´®]],	--»î¶¯ÏêÇé£¬¿ÉÑ¡ \___¶şÕßÖ»¿ÉÑ¡ÆäÒ»
--		callback = nil,				--»Øµ÷º¯Êı£¬¿ÉÑ¡ /
--		link = nil,					--Describe¶Ô»°linkĞÅÏ¢£¬¿ÉÑ¡£¨Ê¹ÓÃdetailÊ±ÓĞĞ§£©
--	},
	{
		ndate = {070414,070424},
		name = "Ngµy 3 th¸ng 3",
		describe = "Tõ <color=yellow>14/4/2007<color> ®Õn <color=yellow>24/4/2007<color>, ho¹t ®éng thêi gian bªn trong, tÊt c¶ ®ang ®¸nh tr¸ch luyÖn c«ng trong qu¸ tr×nh ®İch nhµ ch¬i ®em cã c¬ héi nhÆt ®­îc <color=yellow> hµng hãa ®¹i <color>. CÇm hµng hãa ®¹i cïng ng©n l­îng ®Õn c¸c thµnh phè NPC th­¬ng phiÕn chç ®æi lÊy <color=yellow> nguyªn liÖu chøa ®ùng tói <color>.",
	},
	{	--3¼¶ÒÔÇ°ÁúÎå½ÌÓıÈÎÎñ
		level = {1, 3},
		tasknot = {1014, 2},
		name = "NhiÖm vô gi¸o huÊn",
		describe = "Long ngò nhiÖm vô s¬ nhËp",
		callback = Uworld1000_word,
	},
	{	--ÎäÁÖÁªÈü¡ª¡ªĞ¢Ğã
		level = {80, 119},
		name = "Vâ l©m liªn ®Êu, vâ l©m liªn cuéc so tµi Vâ L©m T©n Tó",
		describe = "Ng­¬i cã thÓ ®Õn quan viªn chç ghi danh tham gia vâ l©m liªn ®Êu.",
		detail =
[[ Vâ l©m liªn ®Êu ®ang ®ang chuÈn bŞ giai ®o¹n, cÊp bËc cña ng­¬i cã thÓ tham gia <color=yellow>Vâ L©m Liªn §Êu<color>.
liªn cuéc so tµi vŞ trİ : <color=yellow>BiÖn kinh(222, 191)<color>, <color=yellow>L©m An(182, 204)<color>.]],
	},
	{	--ÎäÁÖÁªÈü¡ª¡ª¸ß¼¶
		level = {120, 200},
		name = "Vâ l©m liªn ®Êu, vâ l©m liªn cuéc so tµi Vâ L©m T©n Tó",
		describe = "Ng­¬i cã thÓ ®Õn quan viªn chç ghi danh tham gia vâ l©m liªn ®Êu.",
		detail =
[[ Vâ l©m liªn ®Êu ®ang ®ang chuÈn bŞ giai ®o¹n, cÊp bËc cña ng­¬i cã thÓ tham gia <color=yellow>Vâ L©m Liªn §Êu<color>.
liªn cuéc so tµi vŞ trİ<color=yellow>§¹i Lı(200, 197)<color>, <color=yellow>D­¬ng Ch©u(219, 190)<color>.]],
	},
	{	--»Ô»ÍÖ®Ò¹
		name = "§ªm huy hoµng", 
describe = "Minh chñ vâ l©m ®éc c« kiÕm ma ho¹t ®éng tªn §ªm Huy Hoµng mçi ®ªm 7:30 phót.",
		detail =
[[Tr­íc m¾t lµ giã ®iÒu m­a thuËn thêi gian, v× thŞnh t×nh ®¸p t¹ giang hå vâ l©m nh©n sÜ, minh chñ vâ l©m truyÒn nh©n cö hµnh ho¹t ®éng §ªm Huy Hoµng. Ho¹t ®éng tõ mçi ngµy 19 giê 30 phót, mçi lÇn ho¹t ®éng 30 phót. Cô thÓ néi dung cã thÓ ®i t×m lÔ quan mæ .]],
	},

	-- {
	-- 	name = "<#>½ÇÉ«¸ÄÃû",
	-- 	describe = "<#>ÓÉÓÚÔÚ²¢·ş¹ı³ÌÖĞ£¬ÄúµÄ½ÇÉ«ÃûÓëÆäËûÍæ¼ÒµÄ½ÇÉ«Ãû³öÏÖÁËÖØÃûÇé¿ö£¬Òò´ËÏµÍ³ÒÑ°ïÄú×Ô¶¯¸üÃû£¬Èç¹ûÄúĞèÒªÖØĞ¢¸Ä±ä½ÇÉ«ÃûµÄ»°£¬Çëµ½¸÷Ğ¢ÊÖ´åµÄĞ¢ÊÖÍÆ¹ãÔ±´¦Ñ¡ÔñĞŞ¸Ä½ÇÉ«Ãû¡£ÄúÖ»ÄÜ¸ü¸ÄÒ»´Î½ÇÉ«Ãû£¬ËùÒÔÇë×ĞÏ¸ÔÄ¶ÁÏµÓ¦ËµÃ÷¡£",
	-- },
	-- {
	-- 	name = "<#>°ï»á¸ÄÃû",
	-- 	describe = "ÓÉÓÚÔÚ²¢·ş¹ı³ÌÖĞ£¬ÄúËùÔÚµÄ°ï»á£¬°ï»áÃûÓëÆäËû°ï»áÃû³öÏÖÁËÖØÃûÇé¿ö£¬Òò´ËÏµÍ³ÒÑ°ïÄúËùÔÚµÄ°ï»á×Ô¶¯¸üÃû£¬Èç¹û°ïÖ÷ĞèÒªÖØĞ¢¸Ä±ä°ï»áÃûµÄ»°£¬Çëµ½¸÷Ğ¢ÊÖ´åµÄĞ¢ÊÖÍÆ¹ãÔ±´¦Ñ¡ÔñĞŞ¸Ä°ï»áÃû¡£°ïÖ÷Ö»ÄÜ¸ü¸ÄÒ»´Î°ï»áÃû£¬ËùÒÔÇë×ĞÏ¸ÔÄ¶ÁÏµÓ¦ËµÃ÷¡£",
	-- },
}

EVENT_HINT_LINK = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy060\\enemy060_st.spr>Ho¹t §éng cã thÓ lµm : <link>"
EVENT_HINT_TIMES = 3	--Ã¿ÌìÉÏÏßÌáÊ¾´ÎÊı

--Èç¹ûÓĞ½Ï¸´ÔÓµÄ»î¶¯ĞèÒª×Ô¶¨ÒåÒ»Ğ©º¯Êı¡£ÇëÔÚÏ¢ÃæInclude£¬²¢Ê¹ÓÃ£º
--	if EVENTS_TB then EVENTS_TB[getn(EVENTS_TB)+1] = {¡­¡­} end
--µÄ·½Ê½Ìí¼Ó
--=================================================================
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua")
--=================================================================

--µÇ¢½Ê±µ÷ÓÃµÄº¯Êı
function event_hint_login(bExchangeIn)
	-- ¿ç·ş¹ıÀ´µÄ¾Í²»ÓÃÔÙÌáÊ¾ÁË
	if (bExchangeIn == 1) then
		return
	end
	local n_date = tonumber(GetLocalDate("%y%m%d"));
	local n_time = tonumber(GetLocalDate("%H%M"));
	local n_times;
	if (GetTask(2308) ~= n_date) then	--²»ÊÇ½ñÌìµÇ¢½µÄ
		SetTask(2308, n_date);
		SetTask(2309, 0);
		n_times = 0;
	else
		n_times = GetTask(2309);
	end
	if (n_times >= EVENT_HINT_TIMES) then	--ÒÑ´ïµ½ÌáÊ¾´ÎÊı£¬²»ÔÙÌáÊ¾
		return
	end
	
	local n_level = GetLevel();
	local tb = {};
	for i = 1, getn(EVENTS_TB) do
		if event_hint_check(EVENTS_TB[i], n_date, n_time, n_level) then	--·ûºÏÌõ¼ş
			tb[getn(tb)+1] = i;
		end
	end
	if (getn(tb) == 1) then	--Ö»ÓĞÒ»¸ö»î¶¯£¬Ö±½ÓÏÔÊ¾ÏêÇé
		event_show_detail(tb, 1);
	elseif (getn(tb) > 0) then	--¶µ¸ö»î¶¯
		event_show_all(tb);
	end
	
	SetTask(2309, n_times + 1)
	
	bingfu_hint()	--²¢·ş¸üÃû£¬ÁÙÊ±Ìí¼ÓµÄ¸ßÓÅÏÈ¼¶ÉÏÏßÌáÊ¾£¬²»ÊôÓÚ¹æ·¶µÄÊ¹ÓÃ
end

--¼ì²éÄ³¸ö»î¶¯ÊÇ·ñĞèÒªÍ¨Öªµ±Ç°Íæ¼Ò
function event_hint_check(tb_event, n_date, n_time, n_level)
	local tb = tb_event.ndate;
	if (tb) then	--ÏŞ¶¨ÈÕÆÚ
		if (n_date < tb[1] or n_date > tb[2]) then	--ÈÕÆÚ²»·û
			return
		end			
	end
	tb = tb_event.ntime;
	if (tb) then	--ÏŞ¶¨Ê±¼ä
		if (n_time < tb[1] or n_time > tb[2]) then	--ÈÕÆÚ²»·û
			return
		end			
	end
	tb = tb_event.level;
	if (tb) then	--ÏŞ¶¨¼¶±ğ
		if (n_level < tb[1] or n_level > tb[2]) then	--¼¶±ğ²»·û
			return
		end			
	end
	tb = tb_event.taskequal
	if (tb) then	--ÈÎÎñ±äÁ¿ÏµµÈ
		if (GetTask(tb[1]) ~= tb[2]) then
			return
		end			
	end
	tb = tb_event.tasknot
	if (tb) then	--ÈÎÎñ±äÁ¿²»µÈ
		if (GetTask(tb[1]) == tb[2]) then
			return
		end			
	end
	local func = tb_event.checkfunc
	if (func) then	--º¯ÊıÅĞ¶Ï
		if (not func()) then
			return
		end			
	end
	return 1
end

--ÏÔÊ¾ËùÓĞ»î¶¯
function event_show_all(tb)
	local str = "<enter>";
	local tb_option = {};
	for i = 1, getn(tb) do
		local tb_event = EVENTS_TB[tb[i]];
		str = str .. "<color=red>" .. tb_event.name .. "<color><enter>";
		if (tb_event.describe) then
			local str_des
			if (type(tb_event.describe) == "function") then
				str_des = tb_event.describe()
			else
				str_des = tostring(tb_event.describe)
			end
			str = str .. "  " .. str_des .. "<color><enter>";
		end
		if (tb_event.detail or tb_event.callback) then
			tb_option[getn(tb_option)+1] = tb_event.name..", Xem Chi TiÕt/#event_show_detail({"..join(tb).."},"..i..")";
		end
	end
	tb_option[getn(tb_option)+1] = "H«m nay kh«ng cÇn nh¾c nhë ta/event_hint_stop";
	tb_option[getn(tb_option)+1] = "KÕt thóc ®èi tho¹i!/no";
	Describe(EVENT_HINT_LINK..str, getn(tb_option), tb_option);
end

--ÏÔÊ¾Ä³Ò»Ö¸¶¨»î¶¯ÏêÇé£¨È«²¿£¬µ±Ç°µÚ¼¸¸ö£©
function event_show_detail(tb, n)
	local tb_event = EVENTS_TB[tb[n]];
	if (tb_event.callback) then
		tb_event.callback();
	else
		local str = "<enter><color=red>"..tb_event.name.."<color><enter>"
		local tb_option = {};
		if (getn(tb) > 1) then
			tb_option[1] = "Ta muèn t×m hiÓu râ ho¹t ®éng./#event_show_all({"..join(tb).."})";
		end
		tb_option[getn(tb_option)+1] = "H«m nay kh«ng cÇn nh¾c nhë ta./event_hint_stop";
		tb_option[getn(tb_option)+1] = "KÕt thóc ®èi tho¹i!/no";
		if (tb_event.link) then
			str = tb_event.link .. str
		else
			str = EVENT_HINT_LINK .. str
		end
		if (tb_event.detail) then
			if (type(tb_event.detail) == "function") then
				str = str .. tb_event.detail()
			else
				str = str .. tb_event.detail
			end
		elseif (tb_event.describe) then
			if (type(tb_event.describe) == "function") then
				str = str .. tb_event.describe()
			else
				str = str .. tostring(tb_event.describe)
			end
		end
		Describe(str, getn(tb_option), tb_option);
	end
end

function event_hint_stop()
	SetTask(2309, EVENT_HINT_TIMES);
end

function bingfu_hint()
	-- ½ÇÉ«¸ÄÃûÌáÊ¾
	local msg = ""
	if (check_renamerole() == 1) then 
msg = msg .. "<#>Bëi v× ë còng dïng trong qu¸ tr×nh, hÖ thèng ®· gióp ngµi tù ®éng h¬n tªn, mêi ®­îc c¸c tay míi th«n ®İch tay míi phæ biÕn réng r·i viªn chç lùa chän <color=red> söa ®æi vai trß tªn <color>." 
end 
-- bang héi ®æi tªn ®Ò kú 
if (check_renametong() == 1) then 
msg = msg .. "<#>Bëi v× ë còng dïng trong qu¸ tr×nh, hÖ thèng ®· gióp ngµi chç ë bang héi tù ®éng h¬n tªn, mêi ®­îc c¸c tay míi th«n tay míi phæ biÕn réng r·i viªn chç lùa chän <color=red> söa ®æi bang héi tªn<color>." 
end 
if (check_castellan_remedy() == 1) then 
msg = msg .. "<#>Bëi v× còng dïng trong qu¸ tr×nh hÖ thèng tù ®éng thu vÒ liÔu ngµi chç ë bang héi ®İch thµnh phè qu¶n lı quyÒn, ngµi cã thÓ ®Õn c¸c tay míi th«n ®İch tay míi phæ biÕn réng r·i viªn chç <color=red> nhËn lÊy t­¬ng øng båi th­êng <color> , nhËn lÊy bang héi båi th­êng chøc n¨ng ë <color=red> còng dïng sau trong vßng mét th¸ng <color> h÷u hiÖu . " 
end 

if (msg ~= "") then 
Say(msg, 1, "<#> biÕt /cancel") 
end
end

if login_add then login_add(event_hint_login, 0) end

