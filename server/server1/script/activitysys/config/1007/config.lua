Include("\\script\\activitysys\\config\\1007\\variables.lua")
tbConfig = {}

--C¸ch kiÕm nguyªn liÖu trong c¸c ho¹t ®éng
tbConfig[1] = --Tèng kim 1000 ®iÓm
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 1000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_PNVN", "TongKim1000"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TongKim1000", "20 Hoµng Th¹ch", 1}},
	},
}

tbConfig[2] = --Tèng kim 3000 ®iÓm
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},40,"Event_PNVN", "TongKim3000"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TongKim3000", "40 Hoµng Th¹ch", 1}},
	},
}

tbConfig[3] =		--V­ît ¶i 17
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 17",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},15,"Event_PNVN", "VuotAi17"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAi17", "15 Hoµng Th¹ch", 1}},
	},
}

tbConfig[4] =  				--V­ît ¶i 28
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 28",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_PNVN", "VuotAi28"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAi28", "30 Hoµng Th¹ch", 1}},
	},
}

tbConfig[5] = --Thñy tÆc ®Çu lÜnh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt chÕt 1 thñy tÆc ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_PNVN", "TieuDietThuyTacDauLinh"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietThuyTacDauLinh", "20 Hoµng Th¹ch", 1}},
	},
}

tbConfig[6] = --thuû tÆc ®¹i ®Çu lÜnh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt thuû tÆc ®¹i ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_PNVN", "TieuDietThuyTacDaiDauLinh"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietThuyTacDaiDauLinh", "30 Hoµng Th¹ch", 1}},
	},
}

tbConfig[7] = --Viªm ®Õ - v­ît ¶i thø 10
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V­ît qua ¶i Viªm §Õ thø 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_PNVN", "VuotAiViemDe10"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "VuotAiViemDe10", "30 Hoµng Th¹ch", 1}},
	},
}
tbConfig[8] = --Boss Hoµng Kim
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt boss Hoµng Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_PNVN", "TieuDietBossTheGioi"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossTheGioi", "30 Hoµng Th¹ch", 1}},
	},
}
tbConfig[9] = --boss s¸t thñ
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô s¸t thñ cÊp 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30153,1,0,0},nExpiredTime=nItemExpiredTime,},5,"Event_PNVN", "TieuDietBossS¸tThñ"} },
		{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "TieuDietBossSatThu", "5 Hoµng Th¹ch", 1}},
	},
}

---§èi tho¹i víi Npc
tbConfig[10] =
{
	nId = 10,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo TiÓu Ph­¬ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"TiÓu Ph­¬ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nép Hoµng Th¹ch",12} },
		{"AddDialogOpt",	{"Hîp thµnh B¨ng Tinh Th¹ch",11} },
	},
}

tbConfig[11] = --Hîp thµnh B¨ng Tinh Th¹ch
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh B¨ng Tinh Th¹ch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B¨ng Tinh Th¹ch",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i ch­a ®ñ 150, kh«ng thÓ tham gia ho¹t ®éng nµy",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"AddOneMaterial",	{"Hoµng Th¹ch",{tbProp={6,1,30153,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
		{"AddOneMaterial",	{"Thiªn Tinh Th¹ch",{tbProp={6,1,30154,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30155,1,0,0},nExpiredTime=nItemExpiredTime,},1,"Event_PNVN", "GhepBangTinhThach"} },
		--{"tbVngTransLog:Write", {strTranLogFolder, nPromotionID, "Hîp thµnh B¨ng Tinh Th¹ch", "1 B¨ng Tinh Th¹ch", 1}},
	},
}

tbConfig[12] = --Nép vËt phÈm Hoµng Th¹ch
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Nép vËt phÈm Hoµng Th¹ch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Nép vËt phÈm Hoµng Th¹ch",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i ch­a ®ñ 150, kh«ng thÓ tham gia ho¹t ®éng nµy",">="} },
		{"ThisActivity:HandInHoangThachLimit", {nil}},
		{"AddOneMaterial",	{"Hoµng Th¹ch",{tbProp={6,1,30153,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },		
	},
	tbActition = 
	{
		{"ThisActivity:HandInHoangThach", {nil}},
	},
}

tbConfig[13] = --sö dông B¨ng Tinh Th¹ch
{
	nId = 13,
	szMessageType = "ItemScript",
	szName = "Sö dông B¨ng Tinh Th¹ch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30155,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:VnCheckInCity", {"default"}},
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, kh«ng thÓ sö dông vËt phÈm",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },		
		{"ThisActivity:UseBTT_Limit", {nil}},
	},
	tbActition = 
	{
		{"ThisActivity:Use_BTT", {nil}},		
	},
}
