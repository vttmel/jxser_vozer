Include("\\script\\activitysys\\config\\88\\variables.lua")
tbConfig = {}

tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "Hoµng Kim L·o Nh©n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hoµng Kim L·o Nh©n"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="}},
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua CÆp NhÉn V« Danh",2}},
		{"AddDialogOpt",	{"§æi §å Hoµng Kim",3}},
	},
}

tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "CreateCompose",
	szName = "§æi V« Danh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi V« Danh",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},500} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,141},nQuality=1,nExpiredTime=43200,  tbParam={60}},1,"[Trang bÞ V« Danh]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,142},nQuality=1,nExpiredTime=43200,  tbParam={60}},1,"[Trang bÞ V« Danh]"} },		
	},
}
tbConfig[3] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi §æi ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn §æi lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Ta muèn §æi Trang BÞ ThiÕu L©m",4} },
		{"AddDialogOpt",	{"Ta muèn §æi Trang BÞ Thiªn V­¬ng",8} },
		{"AddDialogOpt",	{"Ta muèn §æi Trang BÞ Nga My",12} },
		{"AddDialogOpt",	{"Ta muèn §æi Trang BÞ Thóy Yªn",15} },
		{"AddDialogOpt",	{"Ta muèn §æi Trang BÞ Ngò §éc",18} },
		{"AddDialogOpt",	{"Ta muèn §æi Trang BÞ §­êng M«n",21} },
		{"AddDialogOpt",	{"Ta muèn §æi Trang BÞ C¸i Bang",25} },
		{"AddDialogOpt",	{"Ta muèn §æi Trang BÞ Thiªn NhÉn",28} },
		{"AddDialogOpt",	{"Ta muèn §æi Trang BÞ Vâ §ang",31} },
		{"AddDialogOpt",	{"Ta muèn §æi Trang BÞ C«n L«n",34} },	
		
	},
}

tbConfig[4] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 4,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn Trïng luyÖn lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Méng Long ChÝnh Hång T¨ng M·o",5} },
		{"AddDialogOpt",	{"Phôc Ma Phæ §é T¨ng Hµi",6} },
		{"AddDialogOpt",	{"Tø Kh«ng NhuyÔn B× Hé UyÓn",7} },
	
		
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,1},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,14},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[8] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 8,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn Trïng luyÖn lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{" KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",9} },
		{"AddDialogOpt",	{" Ngù Long TÊn Phong Hé yÓn",10} },
		{"AddDialogOpt",	{" H¸m Thiªn Thõa Long ChiÕn Ngoa",11} },
			
	},
}

tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,25},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,29},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,20},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[12] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn Trïng luyÖn lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{" V« Gian CÇm VËn Hé UyÓn",13} },
		{"AddDialogOpt",	{" V« Ma Hång Truy NhuyÔn Th¸p Hµi",14} },
			
	},
}
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,34},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,40},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[15] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn Trïng luyÖn lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{" Tª Hoµng B¨ng Tung CÈm uyÓn",16} },
		{"AddDialogOpt",	{" BÝch H¶i Hång Linh Kim Ti ®¸i",17} },
			
	},
}
tbConfig[16] = --Ò»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,49},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[17] = --Ò»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,53},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[18] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 18,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn Trïng luyÖn lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{" U Lung XÝch YÕt MËt trang",19} },
		{"AddDialogOpt",	{" Minh ¶o U §éc ¸m Y",20} },
			
	},
}

tbConfig[19] = --Ò»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },			
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,57},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[20] = --Ò»¸öÏ¸½Ú
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,62},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[21] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 21,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn Trïng luyÖn lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",22} },
		{"AddDialogOpt",	{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",23} },
		{"AddDialogOpt",	{"S©m Hoang Tinh VÉn Phi Lý",24} },		
			
	},
}
tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,72},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,79},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[24] = --Ò»¸öÏ¸½Ú
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,85},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[25] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 25,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn Trïng luyÖn lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"§ång Cõu Phi Long §Çu Hoµn",26} },
		{"AddDialogOpt",	{"§Þch Kh¸i TriÒn M·ng Yªu §¸i",27} },	
			
	},
}
tbConfig[26] = --Ò»¸öÏ¸½Ú
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,91},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[27] = --Ò»¸öÏ¸½Ú
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,98},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[28] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 28,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn Trïng luyÖn lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",29} },
		{"AddDialogOpt",	{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",30} },	
			
	},
}
tbConfig[29] = --Ò»¸öÏ¸½Ú
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{	
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },			
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,104},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[30] = --Ò»¸öÏ¸½Ú
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{	
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,114},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[31] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 31,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn Trïng luyÖn lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",32} },
		{"AddDialogOpt",	{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",33} },	
			
	},
}
tbConfig[32] = --Ò»¸öÏ¸½Ú
{
	nId = 32,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,119},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[33] = --Ò»¸öÏ¸½Ú
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },			
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,124},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[34] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 34,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n. Ng­¬i cã muèn Trïng luyÖn lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ",35} },
		{"AddDialogOpt",	{"L«i Khung Linh Ngäc UÈn L«i",36} },
			
	},
}
tbConfig[35] = --Ò»¸öÏ¸½Ú
{
	nId = 35,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,129},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[36] = --Ò»¸öÏ¸½Ú
{
	nId = 36,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{	
		{"AddOneMaterial",	{"§å phæ Hoµng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,134},nQuality=1, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
