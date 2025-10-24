Include("\\script\\activitysys\\config\\9999\\variables.lua")

tbConfig = {}
tbConfig[1] = --ß∏nh qu∏i rÌt vÀt ph»m event
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "ß∏nh qu∏i rÌt ìHÈp Ti™n VÚî cÒa s˘ ki÷n L‘ Trung Thu n®m 2007",
	nStartDate = 201809205000,
	nEndDate  = 201810205000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		-- {"NpcFunLib:CheckInMap",	{"7,19,193,170,21,167,182,164,79,56,166,317,123,206,224,198,320,181,201,321, 322, 227, 340"} }, --RÌt vÀt ph»m tı map 2x > map 9x
	},
	tbActition = 
	{
		{"ThisActivity:DropItemEvent",	{nil} },
	},
}
tbConfig[2] = --Tham gia hoπt ÆÈng TËng Kim
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Ph«n th≠Îng TËng Kim >=3000",
	nStartDate = 201809205000,
	nEndDate  = 201810205000,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
	},
	tbActition = 
	{
		-- {"PlayerFunLib:GetItem",	{{szName="HÈp Ti™n VÚ", tbProp={6,1,1795,1,0,0}},10,EVENT_LOG_TITLE,"TongKim3000"} },
	},
}

tbConfig[3] = --V≠Ót ∂i thµnh th´ng 28 ∂i
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V≠Ót qua ∂i 28",
	nStartDate = 201809205000,
	nEndDate  = 202810205000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Hµnh Hi÷p L÷nh", tbProp={6,1,2566,1,0,0}},20,EVENT_LOG_TITLE,"VuotAi28"} },
	},
}

tbConfig[4] = --Ti™u di÷t ThÒy T∆c ß«u L‹nh
{
	nId = 4,
	szMessageType = "NpcOnDeath",
	szName = "ThÒy T∆c ß«u L‹nh Phong L®ng ßÈ",
	nStartDate = 201809205000,
	nEndDate  = 201810205000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		-- {"PlayerFunLib:GetItem",	{{szName="HÈp Ti™n VÚ", tbProp={6,1,1795,1,0,0}} ,5,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinh"} },
	},
}

tbConfig[5] = --Ti™u di÷t ThÒy T∆c ßπi ß«u L‹nh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "ThÒy T∆c ßπi ß«u L‹nh Phong L®ng ßÈ",
	nStartDate = 201809205000,
	nEndDate  = 201810205000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		-- {"PlayerFunLib:GetItem",	{{szName="HÈp Ti™n VÚ", tbProp={6,1,1795,1,0,0}} ,10,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinh"} },
	},
}

tbConfig[6] = --Ti™u di÷t BOSS Hoµng Kim
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Ph«n th≠Îng boss Hoµng Kim",
	nStartDate = 201809205000,
	nEndDate  = 201810205000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		-- {"PlayerFunLib:GetItem",	{{szName="HÈp Ti™n VÚ", tbProp={6,1,1795,1,0,0}} ,20,EVENT_LOG_TITLE,"TieuDietBossTheGioi"} },
	},
}

tbConfig[7] = --Ti™u di÷t BOSS S∏t thÒ
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Ph«n th≠Îng boss S∏t ThÒ",
	nStartDate = 201809205000,
	nEndDate  = 202810205000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Hµnh Hi÷p L÷nh", tbProp={6,1,2566,1,0,0}} ,2,EVENT_LOG_TITLE,"TieuDietBossSatThu"} },
	},
}

tbConfig[8] = --Vi™m Æ’ thµnh c´ng 10 ∂i
{
	nId = 8,
	szMessageType = "YDBZguoguan",
	szName = "V≠Ót qua ∂i Vi™m ß’ th¯ 10",
	nStartDate = 201809205000,
	nEndDate  = 202810205000,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Hµnh Hi÷p L÷nh", tbProp={6,1,2566,1,0,0}} ,100,"VuotAiViemDe10"} },
	},
}