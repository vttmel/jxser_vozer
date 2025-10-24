Include("\\script\\activitysys\\config\\10\\variables.lua")
tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "LingFanNPC_Click",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H祅g rong"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"фi ph莕 thng H祅h Hi謕 L謓h",2} },
	},
}
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc><color=yellow> H祅h Hi謕 L謓h <color> nh薾 頲 t?trong c竎 ho箃 ng c馻 tr?ch琲,c?th?i l蕐 ph莕 thng t筰 ch?c馻 ta y."},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Thanh C﹗ L謓h",3} },
		{"AddDialogOpt",	{"V﹏ L閏 L謓h",4} },
		{"AddDialogOpt",	{"Thng Lang L謓h",5} },
		{"AddDialogOpt",	{"Huy襫 Vi猲 L謓h",6} },
		{"AddDialogOpt",	{"Tu Ph鬰 Th莕 Du",7} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "CreateCompose",
	szName = "XingXiaLing_QingJuLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thanh C﹗ L謓h",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H祅h Hi謕 L謓h",{tbProp={6,1,2566,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2369,1,0,0},nBindState=-2,},1,"XingXiaLing_QingJuLing"} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "XingXiaLing_YunLuLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V﹏ L閏 L謓h",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H祅h Hi謕 L謓h",{tbProp={6,1,2566,1,0,0},},26} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2353,1,0,0},nBindState=-2,},1,"XingXiaLing_YunLuLing"} },
	},
}
tbConfig[5] = --一个细节
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "XingXiaLing_CangLangLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thng Lang L謓h",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H祅h Hi謕 L謓h",{tbProp={6,1,2566,1,0,0},},170} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2352,1,0,0},nBindState=-2,},1,"XingXiaLing_CangLangLing"} },
	},
}
tbConfig[6] = --一个细节
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "XingXiaLing_XuanYuanLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Huy襫 Vi猲 L謓h",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H祅h Hi謕 L謓h",{tbProp={6,1,2566,1,0,0},},600} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2351,1,0,0},nBindState = -2,},1,"XingXiaLing_XuanYuanLing"} },
	},
}
tbConfig[7] = --一个细节
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "XingXiaLing_XiuFuShenYou",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tu Ph鬰 Th莕 Du",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H祅h Hi謕 L謓h",{tbProp={6,1,2566,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2565,1,0,0},nBindState = -2,},1,"XingXiaLing_XiuFuShenYou"} },
	},
}
