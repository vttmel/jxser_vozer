EnemySay = 
{
	{"<link=image[0,8]:\\spr\\npcres\\passerby\\passerby092\\passerby092_st.spr><link><color>","Sø gi¶ liªn ®Êu"}, --
}

function FunctionLeagueMatch()
	local szTitle = EnemySay[1][1]..CheckLgMatchName().."<enter>"..CheckLGMatchType().."<enter>"..GetStateGlMatch().."<enter>"..CheckCityNameVsLevelAndGroup()..GetGroupAndPlayer()..""
	local tbOpt = 
	{
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
--================================================-- Liªn ®Êu --===============================================--
-- TÝnh n¨ng:
	-- Ng­êi th¾ng sÏ nhËn ®c 3 triÖu Kinh nghiÖm ë c¶ S¬ - Trung cÊp vµ Cao cÊp
	-- ng­êi thua hoÆc hßa sÏ nhËn ®c 1.5 triÖu Kinh nghiÖm ë c¶ S¬ - Trung cÊp vµ Cao cÊp
	-- Cao cÊp ng­êi th¾ng sÏ nhËn ®c 15 ®iÓm Vinh Dù, thua sÏ kh«ng cã ®iÓm vinh dù, hßa nhau  sÏ ®c 9 ®iÓm vinh dù.
	-- S¬ - Trung cÊp ng­êi th¾ng sÏ nhËn ®c 10 ®iÓm Vinh Dù, thua sÏ kh«ng cã ®iÓm vinh dù, hßa nhau sÏ ®c 7 ®iÓm vinh dù
	-- C«ng khai minh b¹ch trong viÖc xÕp h¹ng
	-- Vµo ®Êu tr­êng sÏ ko thÓ di chuyÓn vËt phÈm trong hµnh trang, vµ cã thÓ sö dông vËt phÈm trong thanh c«ng cô.
	-- Xãa bá ®é n¨ng ®éng khi tham gia Liªn ®Êu
	-- HiÖn t¹i thêi gian b¾t ®Çu tõ ngµy 8 ®Õn 28 hµng th¸ng
	-- H×nh thøc ®¬n ®Êu tù do, n_ntype = 5
	-- C¸c ngµy ®Çu tuÇn tõ thø 2 ®Õn thø 6 ®Êu mçi ngµy 4 trËn tõ 19h~20h00. C¸c ngµy cuèi tuÇn thø 7 vµ chñ nhËt ®Êu 8 trËn mçi ngµy tõ 18h~19h00 vµ 21h~22h00
	-- ®· xãa bá ®é n¨ng ®éng céng thªm khi tham gia liªn ®Êu
	-- viÖt hãa vµ chØnh söa hoµn toµn c¸c c©u tho¹i vµ th«ng b¸o
	-- TÊt c¶ mäi ng­êi cã thÓ b¸o danh tham gia liªn ®Êu ë thÊt ®¹i thµnh thÞ, kh«ng cÇn ph©n chia MapID, hÖ thèng sÏ tù nhËn diÖn vµ ®­a vµo khu vùc thi ®Êu khu vùc <~ 199 vµ 120 ~ 
	-- 1 ®Êu tr­êng 10x10 « = 100 « x2 ng­êi = 200 ng­êi tèi ®a trong 1 ®Êu tr­êng, cã 8 ®Êu tr­êng <=> 800 « <=> 1600 ng­êi thi ®Êu tèi ®a trong 1 lÇn (cã thÓ më thªm 2 ®Êu tr­êng cho mçi 2 Level)
	-- tÊt c¶ ng­êi tham gia b¸o danh ®Òu sÏ ®­a vµ 1 Map vâ l©m liªn ®Êu (1), b¸o danh vµo ®Êu tr­êng hÖ thèng sÏ tÝnh tæng ng­êi ®· cã trong ®Êu tr­êng, nÕu ®Êu tr­êng nµo Ýt h¬n 200 ng­êi
	-- hÖ thèng sÏ ®­a vµo, nÕu b»ng 200 ng­êi hÖ thèng sÏ tiÕn hµnh ®­a vµo ®Êu tr­êng tiÕp theo.	
Include("\\script\\missions\\leaguematch\\head.lua")

CityNameWithMapID = {{1, "Ph­îng T­êng"},{11, "Thµnh §«"},{37, "BiÖn Kinh"},{78, "T­¬ng D­¬ng"},{80, "D­¬ng Ch©u"},{162, "§¹i Lý"},{176, "L©m An"},}
SubWorldLvl1 = {{506, "(1)"},{507, "(2)"},{508, "(3)"},{509, "(4)"},{510, "(5)"},{511, "(6)"},{512, "(7)"},{513, "(8)"},}
SubWorldLvl2 = {{516, "(1)"},{517, "(2)"},{518, "(3)"},{519, "(4)"},{520, "(5)"},{521, "(6)"},{522, "(7)"},{523, "(8)"},}

function GetGroupAndPlayer()
	local String1 = "Error String1"
	local String2 = "Error String2"
	local OldSubWorld = SubWorld
	for i = 1, 8 do
		SubWorld = SubWorldLvl1[i][1];
			if getn(wlls_get_ms_troop()) < WLLS_MAX_COUNT then
				local String1_1 = "<color=pink>-------------------[<color><color=Orange>S¬ - Tr"
				local String1_2 = "ung cÊp<color><bclr><color=pink>]-------------------<color>§Êu tr"
				local String1_3 = "­êng: <color=green>"..i.."<color> - Sè ng­êi: <color=gree"
				local String1_4 = "n>"..getn(wlls_get_ms_troop()).."<color> - Tæng ng­êi: <col"
				local String1_5 = "or=green>"..(getn(wlls_get_ms_troop()) + ((i-1)*200)).."<color>"
				String1 = String1_1..String1_2..String1_3..String1_4..String1_5
				break;
			end
	end
	for i = 1, 8 do
		SubWorld = SubWorldLvl2[i][1];
			if getn(wlls_get_ms_troop()) < WLLS_MAX_COUNT then
				local String2_1 = "<color=pink>-----------------------[<color><color=Orange>Cao cÊp<"
				local String2_2 = "color><bclr><color=pink>]----------------------<color>§Êu tr­êng: <color"
				local String2_3 = "=green>"..i.."<color> - Sè ng­êi: <color=green"
				local String2_4 = ">"..getn(wlls_get_ms_troop()).."<color> - Tæng ng­êi: <color=g"
				local String2_5 = "reen>"..(getn(wlls_get_ms_troop()) + ((i-1)*200)).."<color>"
				String2 = String2_1..String2_2..String2_3..String2_4..String2_5
				break;
			end
	end
	SubWorld = OldSubWorld
	return "<enter>"..String2.."<enter>"..String1.."";
end

function CityNameWithMapID(MapID)
	for i = 1, getn(CityNameWithMapID) do
		if CityNameWithMapID[i][1] == MapID then
			return CityNameWithMapID[i][2];
		end
	end
end

function CheckCityNameVsLevelAndGroup()
	local NowDayw = tonumber(date("%w"))
	local strNowDayw
	if NowDayw == 0 or NowDayw >= 6 then
		strNowDayw = "®Êu <color=yellow>8<color> trËn, tõ <color=yellow>18h00 ~ 19h00<color> vµ <color=yellow>20h00 ~ 21h00<color>"
	else
		strNowDayw = "®Êu <color=yellow>4<color> trËn, tõ <color=yellow>19h00 ~ 20h00<color><enter>"
	end
	return "H«m nay: "..strNowDayw..""
end

function CheckLgMatchName()
	return "TÝnh n¨ng : <color=yellow>Vâ L©m Liªn §Êu<color>";
end

function GetStateGlMatch()
	local n_timer = GetGlbValue(GLB_WLLS_TIME) + 1
			n_timer = WLLS_TIMER_PREP_TOTAL - n_timer
	local n_matchphase = GetGlbValue( 820 );
	if n_matchphase < 2 then
		return "Tr¹ng th¸i: <color=pink>T¹m nghØ, tiÕn hµnh nhËn th­ëng<color>";
	elseif n_matchphase == 2 then
		return "Tr¹ng th¸i: <color=green>Ch­a tíi giê b¸o danh<color>";
	elseif n_matchphase == 3 then
		return "Tr¹ng th¸i: <color=yellow>ChuÈn bÞ b¸o danh<color>";
	elseif n_matchphase == 4 then
		return "Tr¹ng th¸i: <color=Water>TiÕn hµnh b¸o danh<color>, thêi gian cßn <color=yellow>"..ceil(n_timer*WLLS_TIMER_PREP_FREQ/60).." phót<color>";
	elseif n_matchphase == 5 then
		local n_resttime = 120 - GetGlbValue(825)
		local n_resttime = ceil(n_resttime*5/60)
		return "Tr¹ng th¸i: <color=yellow>§ang thi ®Êu, thêi gian cßn<color> <color=blue>"..n_resttime.." phót<color>";
	end
end

function CheckLGMatchType()
	local n_ntype = GetGlbValue(824);
	if n_ntype == 0 then
		return "H×nh thøc : <color=red>TÝnh n¨ng ch­a ®­îc më<color>";
	elseif (WLLS_TAB[n_ntype].max_member <= 1) then
		return "H×nh thøc : <color=green>§¬n ®Êu tù do<color> - n_ntype: <color=green>"..n_ntype.."<color>";
	elseif (WLLS_TAB[n_ntype].max_member > 1) then
		return "H×nh thøc : <color=green>§Êu nhiÒu ng­êi<color> - n_ntype: <color=green>"..n_ntype.."<color>";
	end
end

--==============================================-- END - Liªn ®Êu --============================================--