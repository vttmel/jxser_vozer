Include("\\script\\activitysys\\config\\89\\variables.lua")
tbConfig = {}

tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "Chuanguan",
	szName = "´³¹Ø¹ýµÚ28¹Ø",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},2,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2009,1,0,0},nExpiredTime=20180520,},20,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "20 Tói Mõng ChiÕn Th¾ng", 1}},
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "·çÁê¶ÉÉ±ËÀË®ÔôÍ·Áì",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},1,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2009,1,0,0},nExpiredTime=20180520,},10,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 Tói Mõng ChiÕn Th¾ng", 1}},
	},
}

tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "YDBZguoguan",
	szName = "Ñ×µÛ´³¹ýµÚÊ®¹Ø",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},5,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2009,1,0,0},nExpiredTime=20180520,},50,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"} },		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "20 Tói Mõng ChiÕn Th¾ng", 1}},
	},
}

tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "NpcOnDeath",
	szName = "É±ËÀ»Æ½ðBOSS",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2009,1,0,0},nExpiredTime=20180520,},50,"Event_QuocKhanhVN","TieuDietBossTheGioi"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietBossTheGioi", "20 Tói Mõng ChiÕn Th¾ng", 1}},
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "fenglingdu_bigboatboss",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{90,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2009,1,0,0},nExpiredTime=20180520,},10,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 Tói Mõng ChiÕn Th¾ng", 1}},
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp kÕt thóc tÆng l­íi ®¸nh c¸ (th¾ng)",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2009,1,0,0},nExpiredTime=20180520,},20,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh l­íi ®¸nh c¸]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "20 Tói Mõng ChiÕn Th¾ng", 1}},
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp kÕt thóc tÆng l­íi ®¸nh c¸ (hßa)",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {0,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2009,1,0,0},nExpiredTime=20180520,},15,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh l­íi ®¸nh c¸]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "15 Tói Mõng ChiÕn Th¾ng", 1}},		
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp kÕt thóc tÆng l­íi ®¸nh c¸ (thua)",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {-1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2009,1,0,0},nExpiredTime=20180520,},10,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh cÇn c©u c¸]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 Tói Mõng ChiÕn Th¾ng", 1}},		
	},
}
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "ClickNpc",
	szName = "Trèng Kh¶i Hoµn",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {"Trèng Kh¶i Hoµn"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp Thµnh Event",16} },
		{"AddDialogOpt",	{"§æi Thñy Tinh LÊy VËt PhÈm Event",10} },		
	},
}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "§æi quµ noel",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
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
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Tö Thñy Tinh",{tbProp={4,239,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180321, 20180520, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2823,1,0,0},nExpiredTime=20180520,},1,"[Ho¹t ®éng Tói Mõng ChiÕn Th¾ng]"} },
	},
}

tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Lam Thñy Tinh",{tbProp={4,238,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180321, 20180520, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2823,1,0,0},nExpiredTime=20180520,},1,"[Ho¹t ®éng Tói Mõng ChiÕn Th¾ng]"} },
	},
}

tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180321, 20180520, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2823,1,0,0},nExpiredTime=20180520,},1,"[Ho¹t ®éng Tói Mõng ChiÕn Th¾ng]"} },
	},
}

tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180321, 20180520, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2823,1,0,0},nExpiredTime=20180520,},1,"[Ho¹t ®éng Tói Mõng ChiÕn Th¾ng]"} },
	},
}
tbConfig[15] = --Ò»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},10} },
		{"lib:CheckDay",	{20180321, 20180520, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2823,1,0,0},nExpiredTime=20180520,},1,"[Ho¹t ®éng Tói Mõng ChiÕn Th¾ng]"} },
	},
}
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "CreateDialog",
	szName = "§æi quµ noel",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {"<npc>C¸c h¹ muèn ®æi lo¹i nµo?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"M¶nh chiÕn c«ng lÖnh 1",17} },
	{"AddDialogOpt",	{"M¶nh chiÕn c«ng lÖnh 2",18} },
	},
}

tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "§æi H¹t Thñy Tinh",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {"§æi H¹t Thñy Tinh",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"ChiÕc mò tù do",{tbProp={6,1,30197,1,0,0},},2} },
		{"AddOneMaterial",	{"ChiÕc mò hßa b×nh",{tbProp={6,1,30198,1,0,0},},2} },
		{"AddOneMaterial",	{"ChiÕc mò tai bÌo",{tbProp={6,1,30199,1,0,0},},2} },	
		{"lib:CheckDay",	{20180321, 20180520, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30195,1,0,0},nExpiredTime=20180520,},1,"[Ho¹t ®éng Noel] [§æi H¹t Thñy Tinh]"} },
	},
}
tbConfig[18] = --Ò»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "§æi H¹t Hoµng Kim",
	nStartDate = 201803210000,
	nEndDate  = 201805200000,
	tbMessageParam = {"§æi H¹t Hoµng Kim",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"ChiÕc mò tù do",{tbProp={6,1,30197,1,0,0},},2} },
		{"AddOneMaterial",	{"ChiÕc mò hßa b×nh",{tbProp={6,1,30198,1,0,0},},2} },
		{"AddOneMaterial",	{"ChiÕc mò tai bÌo",{tbProp={6,1,30199,1,0,0},},2} },
		{"AddOneMaterial",	{"Huy Ch­¬ng ChiÕn C«ng",{tbProp={6,1,2823,1,0,0},},1} },
		{"lib:CheckDay",	{20180321, 20180520, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30196,1,0,0},nExpiredTime=20180520,},1,"[Ho¹t ®éng Noel] [§æi H¹t Hoµng Kim]"} },
	},
}
tbConfig[19] = --Ò»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "YDBZguoguan",
	szName = "Viªm §Õ v­ît qua ¶i thø 10 nhËn ®­îc Tói Gi¸ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2009,1,0,0},nExpiredTime=20180520,},20,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "20 Tói Mõng ChiÕn Th¾ng", 1}},
	},
}