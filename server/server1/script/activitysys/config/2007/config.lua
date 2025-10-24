---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2007\\variables.lua")
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0801"
tbConfig = {}
tbConfig[1] =
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Init Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:InitNpc",	{nil} },
	},
}
tbConfig[2] = 
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "§¸nh qu¸i rít nguyªn liÖu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{	
		{"NpcFunLib:CheckInMap",	{"321,322,75,227,340,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,30131,1,0,0},nExpiredTime=nTime,},1,"2"} },
	},
}
tbConfig[3] = --Tèng kim 1000 ®iÓm
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 1000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=nTime,},20,"EventVuLanBaoHieu\tTongKim1000"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TongKim1000", "20 Nô Hoa Hång §á", 1}},
	},
}
tbConfig[4] = --Tèng kim 3000 ®iÓm
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=nTime,},40,"EventVuLanBaoHieu\tTongKim3000"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TongKim3000", "40 Nô Hoa Hång §á", 1}},
	},
}
tbConfig[5] =
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 17",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=nTime,},15,"EventVuLanBaoHieu\tVuotAi17"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAi17", "15 Nô Hoa Hång §á", 1}},
	},
}
tbConfig[6] =
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 28",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=nTime,},25,"EventVuLanBaoHieu\tVuotAi28"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAi28", "25 Nô Hoa Hång §á", 1}},
	},
}
tbConfig[7] = --Thñy tÆc ®Çu lÜnh
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt chÕt 1 thñy tÆc ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=nTime,},10,"EventVuLanBaoHieu\tTieuDietThuyTacDauLinh"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietThuyTacDauLinh", "10 Nô Hoa Hång §á", 1}},
	},
}
tbConfig[8] = --thuû tÆc ®¹i ®Çu lÜnh
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt thuû tÆc ®¹i ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=nTime,},20,"EventVuLanBaoHieu\tTieuDietThuyTacDaiDauLinh"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietThuyTacDaiDauLinh", "20 Nô Hoa Hång §á", 1}},
	},
}
tbConfig[9] = --Viªm ®Õ
{
	nId = 9,
	szMessageType = "YDBZguoguan",
	szName = "V­ît qua ¶i Viªm §Õ thø 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=nTime,},30,"EventVuLanBaoHieu\tVuotAiViemDe10"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAiViemDe10", "30 Nô Hoa Hång §á", 1}},
	},
}
tbConfig[10] = --Boss thÕ giíi
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt boss thÕ giíi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=nTime,},50,"EventVuLanBaoHieu\tTieuDietBossTheGioi"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossTheGioi", "50 Nô Hoa Hång §á", 1}},
	},
}
tbConfig[11] = --boss s¸t thñ
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô s¸t thñ cÊp 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30132,1,0,0},nExpiredTime=nTime,},5,"EventVuLanBaoHieu\tTieuDietBossS¸tThñ"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossSatThu", "5 Nô Hoa Hång §á", 1}},
	},
}
----add dßng ®èi tho¹i npc
tbConfig[12] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 12,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Ch­ëng §¨ng Cung N÷",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch­ëng §¨ng Cung N÷"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta muèn ®æi Cöu Tiªn Ngù YÕn",13} },		
	},
}
----GhÐp nguyªn liÖu
tbConfig[13] = --®æi Cöu Tiªn Ngù YÕn
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "§æi Cöu Tiªn Ngù YÕn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Cöu Tiªn Ngù YÕn",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Nô Hoa Hång §á",{tbProp={6,1,30132,-1,-1,-1},nExpiredTime=nTime,},1} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveRedRoseBud", {nil}},		
	},
}
tbConfig[14] = --§èi tho¹i Môc KiÒu Liªn
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Môc KiÒu Liªn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Môc KiÒu Liªn"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp thµnh Thóy Tùu Hå Tiªn",15} },
		{"AddDialogOpt",	{"TÆng Hoa Hång §á",16} },
		{"AddDialogOpt",	{"TÆng Cöu Tiªn Ngù YÕn",18} },
	},
}
tbConfig[15] = --®æi Thóy Tùu Hå Tiªn
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "§æi Thóy Tùu Hå Tiªn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Thóy Tùu Hå Tiªn",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Hoa Hång §á",{tbProp={6,1,30131,-1,-1,-1},nExpiredTime=nTime,},5} },
		{"AddOneMaterial",	{"Cöu Tiªn Ngù YÕn",{tbProp={6,1,30128,-1,-1,-1},nExpiredTime=nTime,},1} },
		{"AddOneMaterial",	{"H¶i VÞ Bång Lai",{tbProp={6,1,30129,-1,-1,-1},nExpiredTime=nTime,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30130,1,0,0},nExpiredTime=nTime,},1,"EventVuLanBaoHieu\tGhepThuyTuuHoTien"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "GhepThuyTuuHoTien", "1 Thóy Tùu Hå Tiªn", 1}},
	},
}
tbConfig[16] = --tÆng hoa hång
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "TÆng Hoa Hång §á",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>TÆng Hoa Hång §á",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Hoa Hång §á",{tbProp={6,1,30131,-1,-1,-1},nExpiredTime=nTime,},1} },
		{"ThisActivity:CheckGiveRedRoseLimit", {nil}},
	},
	tbActition = 
	{
		{"ThisActivity:GiveRedRose", {nil}},
	},
}
tbConfig[17] = --sö dông Thóy Tùu Hå Tiªn
{
	nId = 17,
	szMessageType = "ItemScript",
	szName = "Sö dông Thóy Tùu Hå Tiªn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30130,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, kh«ng thÓ sö dông vËt phÈm",">="} },
		{"PlayerFunLib:VnCheckInCity", {"default"}},
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"ThisActivity:TTHT_Limit", {nil}},
	},
	tbActition = 
	{
		{"ThisActivity:Use_TTHT", {nil}},		
	},
}
tbConfig[18] = --tÆng Cöu Tiªn Ngù YÕn
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "TÆng Cöu Tiªn Ngù YÕn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>TÆng Cöu Tiªn Ngù YÕn",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"ThisActivity:GiveCuuTienLimit", {nil}},
		{"AddOneMaterial",	{"Cöu Tiªn Ngù YÕn",{tbProp={6,1,30128,-1,-1,-1},nExpiredTime=nTime,},1} },		
	},
	tbActition = 
	{
		{"ThisActivity:GiveCuuTien", {nil}},
	},
}
tbConfig[19] = --?»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢äÓaÍ·",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,30131,1,0,0},nExpiredTime=nTime,},1,"2"} },
	},
}
tbConfig[20] = --?»¸öÏ¸½Ú
{
	nId = 20,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢äÁ«Åº±u",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,30131,1,0,0},nExpiredTime=nTime,},1,"2"} },
	},
}
tbConfig[21] = --Ò»¸öÏ¸½Ú
{
	nId = 21,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua H¶i VÞ Bång Lai",22} },
	},
}
tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "buy basket",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua H¶i VÞ Bång Lai",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},300000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,30129,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}