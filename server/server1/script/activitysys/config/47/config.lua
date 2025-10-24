Include("\\script\\activitysys\\config\\47\\variables.lua")
tbConfig = {}

tbConfig[1] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo B¹ch M· ¤n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¹ch M· ¤n"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
--		{"AddDialogOpt",	{"Ta muèn §æi PhÇn PhÇn Th­ëng TÝn Sø",7}},	
		{"AddDialogOpt",	{"Ta muèn §æi ChiÕn M· B«n Tiªu",3} },
		{"AddDialogOpt",	{"Ta muèn §æi ChiÕn M· Phiªn Vò",4}},
--		{"AddDialogOpt",	{"Ta muèn Reset Thêi Gian ChiÕn M· XÝch Long C©u",5} },
--		{"AddDialogOpt",	{"Ta muèn Reset Thêi Gian ChiÕn M· Siªu Quang",6} },		
--		{"AddDialogOpt",	{"Ta muèn Reset Thêi Gian ChiÕn M· Phi V©n",11} },	
--		{"AddDialogOpt",	{"Ta muèn Reset Thêi Gian ChiÕn M· B«n Tiªu",12} },		
--		{"AddDialogOpt",	{"Ta muèn Reset Thêi Gian ChiÕn M· Phiªn Vò",13} },		
--		{"AddDialogOpt",	{"Ta muèn Reset Thêi Gian ChiÕn M· XÝch Long C©u",14} },
	},
}

tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "",
	szName = "",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {""},
	tbCondition = 
	{

	},
	tbActition = 
	{

	},
}

tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "CreateCompose",
	szName = "§æi ChiÕn M· B«n Tiªu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi ChiÕn M· B«n Tiªu",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"LÖnh Bµi ChiÕn M·",{tbProp={6,1,4690,1,0,0},},5000} },
--		{"AddOneMaterial",	{"100 xu",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,6,10,0,0,0},tbParam={60}},1,"[§æi ChiÕn M· B«n Tiªu]"} },		
	},
}
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "§æi ChiÕn M· Phiªn Vò",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi ChiÕn M· Phiªn Vò",0,1,1,1},
	tbCondition = 
	{
--		{"AddOneMaterial",	{"ChiÕn M· XÝch Long C©u",{tbProp={0, 10, 9, 1, 5, 0},},1}},
		{"AddOneMaterial",	{"LÖnh Bµi ChiÕn M·",{tbProp={6,1,4690,1,0,0},},10000} },
--		{"AddOneMaterial",	{"100 xu",{tbProp={4,417,1,1,0,0,0},},100} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,7,10,0,0,0}, tbParam={60}},1,"[§æi ChiÕn M· Phiªn Vò]"}},
	},
}


tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Gia H¹n ChiÕn M· XÝch Long C©u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gia H¹n ChiÕn M· XÝch Long C©u",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"ChiÕn M· XÝch Long C©u",{tbProp={0, 10, 9, 1, 5, 0},},1}},
		{"AddOneMaterial",	{"LÖnh Bµi ChiÕn M·",{tbProp={6,1,4664,1,0,0},},20} },
		{"AddOneMaterial",	{"500 xu",{tbProp={4,417,1,1,0,0,0},},500} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={0, 10, 6, 1, 5, 0},nExpiredTime=43200, tbParam={60}},1,"[Gia H¹n ChiÕn M· B«n Tiªu]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0, 10, 9, 1, 5, 0},nExpiredTime=43200, tbParam={60}},1,"[Gia H¹n ChiÕn XÝch Long C©u]"} },		
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Gia H¹n ChiÕn M· Siªu Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gia H¹n ChiÕn M· Siªu Quang",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"ChiÕn M· Siªu Quang",{tbProp={0, 10, 13, 1, 5, 0},},1}},
		{"AddOneMaterial",	{"LÖnh Bµi Thñy TÆc",{tbProp={6,1,4659,1,0,0},},20} },
		{"AddOneMaterial",	{"500 xu",{tbProp={4,417,1,1,0,0,0},},500} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0, 10, 13, 1, 5, 0},nExpiredTime=43200, tbParam={60}},1,"[Gia H¹n ChiÕn M· Siªu Quang]"}},
	},
}

tbConfig[7] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 7,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo B¹ch M· ¤n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc> Ta cã thÓ gióp ng­¬i ®æi vËt phÈm tõ ho¹t ®éng TÝn Sø. Ng­¬i muèn ®æi lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"§æi Kh«ng CÇn TiÒn §ång",8}},	
		{"AddDialogOpt",	{"Ta Muèn Dïng Thªm TiÒn §ång",11}},

	},
}
tbConfig[8] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 8,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo B¹ch M· ¤n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc> Ta cã thÓ gióp ng­¬i ®æi vËt phÈm tõ ho¹t ®éng TÝn Sø. Ng­¬i muèn ®æi lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"MÆt N¹ ¸o Dµi",9}},	
		{"AddDialogOpt",	{"MÆt N¹ Cæ TruyÒn",10}},

	},
}
--------------------------------------
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Gia H¹n ChiÕn M· Siªu Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi M¹t N¹ TÝn Sø",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"LÖnh Bµi TÝn Sø",{tbProp={6,1,4684,1,0,0},},200}},
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="}},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,470,1,0,0},nExpiredTime=10080, tbParam={60}},1,"[§æi M¹t N¹ Ao Dai]"}},
	},
}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "Gia H¹n ChiÕn M· Siªu Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi M¹t N¹ TÝn Sø",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"LÖnh Bµi TÝn Sø",{tbProp={6,1,4684,1,0,0},},200}},
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,469,1,0,0},nExpiredTime=10080, tbParam={60}},1,"[§æi M¹t N¹ TÝn Sø]"}},
	},
}
---------------------------------------------------
tbConfig[11] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 11,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo B¹ch M· ¤n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc> Ta cã thÓ gióp ng­¬i ®æi vËt phÈm tõ ho¹t ®éng TÝn Sø. Ng­¬i muèn ®æi lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"MÆt N¹ ¸o Dµi",12}},	
		{"AddDialogOpt",	{"MÆt N¹ Cæ TruyÒn",13}},

	},
}

tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Gia H¹n ChiÕn M· Siªu Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi M¹t N¹ TÝn Sø",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"LÖnh Bµi TÝn Sø",{tbProp={6,1,4684,1,0,0},},50}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200}},
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,470,1,0,0},nExpiredTime=10080, tbParam={60}},1,"[§æi M¹t N¹ TÝn Sø]"}},
	},
}
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Gia H¹n ChiÕn M· Siªu Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi M¹t N¹ TÝn Sø",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"LÖnh Bµi TÝn Sø",{tbProp={6,1,4684,1,0,0},},50}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200}},
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,469,1,0,0},nExpiredTime=10080, tbParam={60}},1,"[§æi M¹t N¹ TÝn Sø]"}},
	},
}