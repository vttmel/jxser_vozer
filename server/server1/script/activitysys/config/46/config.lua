Include("\\script\\activitysys\\config\\46\\variables.lua")
tbConfig = {}

tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "Chuanguan",
	szName = "´³¹Ø¹ýµÚ28¹Ø",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},2,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1311,1,0,0},nExpiredTime=20180130,},20,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "20 Hép quµ gi¸ng sinh", 1}},
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "·çÁê¶ÉÉ±ËÀË®ÔôÍ·Áì",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},1,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1311,1,0,0},nExpiredTime=20180130,},10,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 Hép quµ gi¸ng sinh", 1}},
	},
}

tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "YDBZguoguan",
	szName = "Ñ×µÛ´³¹ýµÚÊ®¹Ø",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},5,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1311,1,0,0},nExpiredTime=20180130,},50,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"} },		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "50 Hép quµ gi¸ng sinh", 1}},
	},
}

tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "NpcOnDeath",
	szName = "É±ËÀ»Æ½ðBOSS",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1311,1,0,0},nExpiredTime=20180130,},50,"Event_QuocKhanhVN","TieuDietBossTheGioi"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietBossTheGioi", "20 Hép quµ gi¸ng sinh", 1}},
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "fenglingdu_bigboatboss",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{90,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1311,1,0,0},nExpiredTime=20180130,},10,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 Hép quµ gi¸ng sinh", 1}},
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp kÕt thóc tÆng l­íi ®¸nh c¸ (th¾ng)",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1311,1,0,0},nExpiredTime=20180130,},20,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh l­íi ®¸nh c¸]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "20 Hép quµ gi¸ng sinh", 1}},
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp kÕt thóc tÆng l­íi ®¸nh c¸ (hßa)",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {0,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1311,1,0,0},nExpiredTime=20180130,},15,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh l­íi ®¸nh c¸]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "15 Hép quµ gi¸ng sinh", 1}},		
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp kÕt thóc tÆng l­íi ®¸nh c¸ (thua)",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {-1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1311,1,0,0},nExpiredTime=20180130,},10,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh cÇn c©u c¸]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 Hép quµ gi¸ng sinh", 1}},		
	},
}
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "ClickNpc",
	szName = "¤ng Giµ Noel",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"¤ng Giµ Noel"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp Thµnh Quµ Noel",16} },
		{"AddDialogOpt",	{"§æi Thñy Tinh LÊy VËt PhÈm Event",10} },		
	},
}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "§æi quµ noel",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"<npc>C¸c h¹ muèn ®æi lo¹i nµo?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"§æi Tö Thñy Tinh",11} },
		{"AddDialogOpt",	{"§æi Tö Lam Tinh",12} },
		{"AddDialogOpt",	{"§æi Tö Lôc Tinh",13} },
		{"AddDialogOpt",	{"§æi Tö Tinh Hång B¶o Th¹ch",14} },
		{"AddDialogOpt",	{"§æi Hµnh HiÖp LÖnh",15} },	
	},
}


tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Tö Thñy Tinh",{tbProp={4,239,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20171210, 20180130, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1318,1,0,0},nExpiredTime=20180130,},1,"[Ho¹t ®éng Noen §æi C©y Th«ng]"} },
	},
}

tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Lam Thñy Tinh",{tbProp={4,238,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20171210, 20180130, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1318,1,0,0},nExpiredTime=20180130,},1,"[Ho¹t ®éng Noen §æi C©y Th«ng]"} },
	},
}

tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20171210, 20180130, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1318,1,0,0},nExpiredTime=20180130,},1,"[Ho¹t ®éng Noen §æi C©y Th«ng]"} },
	},
}

tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20171210, 20180130, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1318,1,0,0},nExpiredTime=20180130,},1,"[Ho¹t ®éng Noen §æi C©y Th«ng]"} },
	},
}
tbConfig[15] = --Ò»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},10} },
		{"lib:CheckDay",	{20171210, 20180130, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1318,1,0,0},nExpiredTime=20180130,},1,"[Ho¹t ®éng Noen §æi C©y Th«ng]"} },
	},
}
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "CreateDialog",
	szName = "§æi quµ noel",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"<npc>C¸c h¹ muèn ®æi lo¹i nµo?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"§æi H¹t Thñy Tinh",17} },
	{"AddDialogOpt",	{"§æi H¹t Hoµng Kim",18} },	
	},
}

tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "§æi H¹t Thñy Tinh",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"§æi H¹t Thñy Tinh",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hoa tuyÕt",{tbProp={6,1,1312,1,0,0},},2} },
		{"AddOneMaterial",	{"Cµ rèt",{tbProp={6,1,1313,1,0,0},},2} },
		{"AddOneMaterial",	{"Cµnh th«ng",{tbProp={6,1,1314,1,0,0},},2} },
		{"AddOneMaterial",	{"Nãn gi¸ng sinh",{tbProp={6,1,1315,1,0,0},},2} },
		{"AddOneMaterial",	{"Kh¨n choµng (xanh)",{tbProp={6,1,1316,1,0,0},},2} },
		{"AddOneMaterial",	{"Kh¨n choµng (®á)",{tbProp={6,1,1317,1,0,0},},2} },		
		{"lib:CheckDay",	{20171210, 20180130, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1007,1,0,0},nExpiredTime=20180130,},1,"[Ho¹t ®éng Noel] [§æi H¹t Thñy Tinh]"} },
	},
}
tbConfig[18] = --Ò»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "§æi H¹t Hoµng Kim",
	nStartDate = 201712100000,
	nEndDate  = 201801300000,
	tbMessageParam = {"§æi H¹t Hoµng Kim",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hoa tuyÕt",{tbProp={6,1,1312,1,0,0},},2} },
		{"AddOneMaterial",	{"Cµ rèt",{tbProp={6,1,1313,1,0,0},},2} },
		{"AddOneMaterial",	{"Cµnh th«ng",{tbProp={6,1,1314,1,0,0},},2} },
		{"AddOneMaterial",	{"Nãn gi¸ng sinh",{tbProp={6,1,1315,1,0,0},},2} },
		{"AddOneMaterial",	{"Kh¨n choµng (xanh)",{tbProp={6,1,1316,1,0,0},},2} },
		{"AddOneMaterial",	{"Kh¨n choµng (®á)",{tbProp={6,1,1317,1,0,0},},2} },
		{"AddOneMaterial",	{"C©y th«ng",{tbProp={6,1,1318,1,0,0},},1} },		
		{"lib:CheckDay",	{20171210, 20180130, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1008,1,0,0},nExpiredTime=20180130,},1,"[Ho¹t ®éng Noel] [§æi H¹t Hoµng Kim]"} },
	},
}
