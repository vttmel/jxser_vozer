Include("\\script\\activitysys\\config\\86\\variables.lua")
tbConfig = {}

tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "Chuanguan",
	szName = "´³¹Ø¹ýµÚ28¹Ø",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},2,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},20,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "20 Tói Mõng Xu©n", 1}},
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "·çÁê¶ÉÉ±ËÀË®ÔôÍ·Áì",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},1,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},10,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 Tói Mõng Xu©n", 1}},
	},
}

tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "YDBZguoguan",
	szName = "Ñ×µÛ´³¹ýµÚÊ®¹Ø",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},5,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},50,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"} },		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "20 Tói Mõng Xu©n", 1}},
	},
}

tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "NpcOnDeath",
	szName = "É±ËÀ»Æ½ðBOSS",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},50,"Event_QuocKhanhVN","TieuDietBossTheGioi"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietBossTheGioi", "20 Tói Mõng Xu©n", 1}},
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "fenglingdu_bigboatboss",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{90,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},10,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 Tói Mõng Xu©n", 1}},
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp kÕt thóc tÆng l­íi ®¸nh c¸ (th¾ng)",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},20,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh l­íi ®¸nh c¸]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "20 Tói Mõng Xu©n", 1}},
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp kÕt thóc tÆng l­íi ®¸nh c¸ (hßa)",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {0,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},15,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh l­íi ®¸nh c¸]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "15 Tói Mõng Xu©n", 1}},		
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp kÕt thóc tÆng l­íi ®¸nh c¸ (thua)",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {-1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},10,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh cÇn c©u c¸]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 Tói Mõng Xu©n", 1}},		
	},
}
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "ClickNpc",
	szName = "V¹n Léc",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"V¹n Léc"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp Thµnh B¸nh Ch­ng",16} },
		{"AddDialogOpt",	{"§æi Thñy Tinh LÊy VËt PhÈm Event",10} },		
	},
}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "§æi quµ noel",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
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
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Tö Thñy Tinh",{tbProp={4,239,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180106, 20180310, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4688,1,0,0},nExpiredTime=20180310,},1,"[Ho¹t ®éng Tói Mõng Xu©n]"} },
	},
}

tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Lam Thñy Tinh",{tbProp={4,238,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180106, 20180310, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4688,1,0,0},nExpiredTime=20180310,},1,"[Ho¹t ®éng Tói Mõng Xu©n]"} },
	},
}

tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180106, 20180310, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4688,1,0,0},nExpiredTime=20180310,},1,"[Ho¹t ®éng Tói Mõng Xu©n]"} },
	},
}

tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180106, 20180310, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4688,1,0,0},nExpiredTime=20180310,},1,"[Ho¹t ®éng Tói Mõng Xu©n]"} },
	},
}
tbConfig[15] = --Ò»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh Tr¶ C¸ Th­êng",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"Tr¶ C¸ Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Hµnh HiÖp LÖnh",{tbProp={6,1,2566,1,0,0},},10} },
		{"lib:CheckDay",	{20180106, 20180310, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4688,1,0,0},nExpiredTime=20180310,},1,"[Ho¹t ®éng Tói Mõng Xu©n]"} },
	},
}
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "CreateDialog",
	szName = "§æi quµ noel",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"<npc>C¸c h¹ muèn ®æi lo¹i nµo?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"Lµm B¸nh Ch­ng Th­êng",17} },
	{"AddDialogOpt",	{"Lµm B¸nh Ch­ng Th­îng H¹ng",18} },
	},
}

tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "§æi H¹t Thñy Tinh",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"§æi H¹t Thñy Tinh",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L¸ b¸nh",{tbProp={6,1,1653,1,0,0},},2} },
		{"AddOneMaterial",	{"G¹o nÕp",{tbProp={6,1,1654,1,0,0},},2} },
		{"AddOneMaterial",	{"§Ëu xanh",{tbProp={6,1,1655,1,0,0},},2} },
		{"AddOneMaterial",	{"D©y cãi",{tbProp={6,1,1656,1,0,0},},2} },	
		{"lib:CheckDay",	{20180106, 20180310, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1663,1,0,0},nExpiredTime=20180310,},1,"[Ho¹t ®éng Noel] [§æi H¹t Thñy Tinh]"} },
	},
}
tbConfig[18] = --Ò»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "§æi H¹t Hoµng Kim",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"§æi H¹t Hoµng Kim",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L¸ b¸nh",{tbProp={6,1,1653,1,0,0},},2} },
		{"AddOneMaterial",	{"G¹o nÕp",{tbProp={6,1,1654,1,0,0},},2} },
		{"AddOneMaterial",	{"§Ëu xanh",{tbProp={6,1,1655,1,0,0},},2} },
		{"AddOneMaterial",	{"D©y cãi",{tbProp={6,1,1656,1,0,0},},2} },
		{"AddOneMaterial",	{"ThÞt heo",{tbProp={6,1,4688,1,0,0},},1} },
		{"lib:CheckDay",	{20180106, 20180310, "Thêi h¹n ®æi ®· kÕt thóc"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1662,1,0,0},nExpiredTime=20180310,},1,"[Ho¹t ®éng Noel] [§æi H¹t Hoµng Kim]"} },
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
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},20,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "20 Tói Mõng Xu©n", 1}},
	},
}