Include("\\script\\activitysys\\config\\45\\variables.lua")
tbConfig = {}

tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "Chuanguan",
	szName = "´³¹Ø¹ýµÚ28¹Ø",
	nStartDate = 201708300000,
	nEndDate  = 201809300000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},2,"Event_QuocKhanhVN","Xu Khoa"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4690,1,0,0}},2,"Event","vuotai28nhanlenhbai"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "1 LÖnh Bµi ChiÕn M·", 1}},
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "·çÁê¶ÉÉ±ËÀË®ÔôÍ·Áì",
	nStartDate = 201708300000,
	nEndDate  = 201809300000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },	
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4690,1,0,0}},1,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},1,"Event_QuocKhanhVN","Xu Khoa"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietThuyTacDauLinh", "1 LÖnh Bµi ChiÕn M·", 1}},
	},
}

tbConfig[3] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 3,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T¶o §Þa T¨ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
--		{"AddDialogOpt",	{"Ta muèn trïng luyÖn ®å Hoµng Kim Lo¹i 2 Thµnh Maxop",4} },
--		{"AddDialogOpt",	{"Ta muèn Trïng LuyÖn Reset thêi h¹n Hoµng Kim Lo¹i 2",74} },	
--		{"AddDialogOpt",	{"Ta muèn ®æi MÆt N¹",17} },
--		{"AddDialogOpt",	{"Ta muèn trïng luyÖn ®å Hoµng Kim Lo¹i 2",6} },
--		{"AddDialogOpt",	{"TTa muèn ®æi MÆt N¹ TruyÒn Thèng",25} },		
	},
}

tbConfig[4] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 4,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn ng­¬i cã thÓ nhËn ®­îc trang bÞ cã thuéc tÝnh ®¹t giíi h¹n nh­ng kh«ng thÓ gia h¹n thêi gian cho ®å ng­¬i h·y c©n nh¾c cho kü nhÐ!"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Trïng LuyÖn §å Hoµng Kim Theo C¸ch 1",5} },	
--		{"AddDialogOpt",	{"Ta muèn ®æi MÆt N¹",17} },
		{"AddDialogOpt",	{"Trïng LuyÖn §å Hoµng Kim Theo C¸ch 2",6} },	
--		{"AddDialogOpt",	{"Ta muèn ®æi B¶o R­¬ng Nhu T×nh",6} },		
--		{"AddDialogOpt",	{"Ta muèn ®æi B¶o R­¬ng HiÖp Cèt",7} },		
--		{"AddDialogOpt",	{"Ta muèn ®æi B¶o R­¬ng Vinh DiÖu",8} },
--		{"AddDialogOpt",	{"Ta muèn ®æi B¶o B¶o R­¬ng V« Danh",9} },			
	},
}


tbConfig[5] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 5,
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
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ ThiÕu L©m",7} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Thiªn V­¬ng",11} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Nga My",15} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Thóy Yªn",18} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Ngò §éc",21} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ §­êng M«n",24} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ C¸i Bang",28} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Thiªn NhÉn",31} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Vâ §ang",34} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ C«n L«n",37} },	
		
	},
}
tbConfig[6] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 6,
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
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ ThiÕu L©m",40} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Thiªn V­¬ng",44} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Nga My",48} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Thóy Yªn",51} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Ngò §éc",54} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ §­êng M«n",57} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ C¸i Bang",61} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Thiªn NhÉn",64} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ Vâ §ang",67} },
		{"AddDialogOpt",	{"Ta muèn trïng luyÖn Trang BÞ C«n L«n",70} },		
		
	},
}

tbConfig[7] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 7,
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
		{"AddDialogOpt",	{"Méng Long ChÝnh Hång T¨ng M·o",8} },
		{"AddDialogOpt",	{"Phôc Ma Phæ §é T¨ng Hµi",9} },
		{"AddDialogOpt",	{"Tø Kh«ng NhuyÔn B× Hé UyÓn",10} },
	
		
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Méng Long ChÝnh Hång T¨ng M·o",{tbProp={0,1},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,220},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"Phôc Ma Phæ §é T¨ng Hµi",{tbProp={0,10},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,229},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"Tø Kh«ng NhuyÔn B× Hé UyÓn",{tbProp={0,14},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,233},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[11] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 11,
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
		{"AddDialogOpt",	{" KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",12} },
		{"AddDialogOpt",	{" Ngù Long TÊn Phong Hé yÓn",13} },
		{"AddDialogOpt",	{" H¸m Thiªn Thõa Long ChiÕn Ngoa",14} },
			
	},
}

tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",{tbProp={0,25},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,244},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"Ngù Long TÊn Phong Hé yÓn",{tbProp={0,29},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,248},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"H¸m Thiªn Thõa Long ChiÕn Ngoa",{tbProp={0,20},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,239},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddDialogOpt",	{" V« Gian CÇm VËn Hé UyÓn",16} },
		{"AddDialogOpt",	{" V« Ma Hång Truy NhuyÔn Th¸p Hµi",17} },
			
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
		{"AddOneMaterial",	{"V« Gian CÇm VËn Hé UyÓn",{tbProp={0,34},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,253},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"V« Ma Hång Truy NhuyÔn Th¸p Hµi",{tbProp={0,40},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,259},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddDialogOpt",	{" Tª Hoµng B¨ng Tung CÈm uyÓn",19} },
		{"AddDialogOpt",	{" BÝch H¶i Hång Linh Kim Ti ®¸i",20} },
			
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
		{"AddOneMaterial",	{"Tª Hoµng B¨ng Tung CÈm uyÓn",{tbProp={0,49},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,810},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"BÝch H¶i Hång Linh Kim Ti ®¸i",{tbProp={0,53},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,272},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddDialogOpt",	{" U Lung XÝch YÕt MËt trang",22} },
		{"AddDialogOpt",	{" Minh ¶o U §éc ¸m Y",23} },
			
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
		{"AddOneMaterial",	{"U Lung XÝch YÕt MËt trang",{tbProp={0,57},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,276},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"Minh ¶o U §éc ¸m Y",{tbProp={0,62},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,281},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[24] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 24,
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
		{"AddDialogOpt",	{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",25} },
		{"AddDialogOpt",	{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",26} },
		{"AddDialogOpt",	{"S©m Hoang Tinh VÉn Phi Lý",27} },		
			
	},
}
tbConfig[25] = --Ò»¸öÏ¸½Ú
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",{tbProp={0,72},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,291},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",{tbProp={0,79},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,298},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"S©m Hoang Tinh VÉn Phi Lý",{tbProp={0,85},},1} },
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,304},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddDialogOpt",	{"§ång Cõu Phi Long §Çu Hoµn",29} },
		{"AddDialogOpt",	{"§Þch Kh¸i TriÒn M·ng Yªu §¸i",30} },	
			
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
		{"AddOneMaterial",	{"§ång Cõu Phi Long §Çu Hoµn",{tbProp={0,91},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,310},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"§Þch Kh¸i TriÒn M·ng yªu ®¸i",{tbProp={0,98},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,317},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddDialogOpt",	{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",32} },
		{"AddDialogOpt",	{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",33} },	
			
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
		{"AddOneMaterial",	{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",{tbProp={0,104},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,323},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",{tbProp={0,114},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,333},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddDialogOpt",	{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",35} },
		{"AddDialogOpt",	{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",36} },	
			
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
		{"AddOneMaterial",	{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",{tbProp={0,119},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,338},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
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
		{"AddOneMaterial",	{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",{tbProp={0,124},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,343},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[37] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 37,
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
		{"AddDialogOpt",	{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ",38} },
		{"AddDialogOpt",	{"L«i Khung Linh Ngäc UÈn L«i",39} },	
			
	},
}
tbConfig[38] = --Ò»¸öÏ¸½Ú
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ",{tbProp={0,129},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,348},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[39] = --Ò»¸öÏ¸½Ú
{
	nId = 39,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L«i Khung Linh Ngäc UÈn L«i",{tbProp={0,134},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,353},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
----------------------------------trung luyen cach 2---------------------------------------
tbConfig[40] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 40,
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
		{"AddDialogOpt",	{"Méng Long ChÝnh Hång T¨ng M·o",41} },
		{"AddDialogOpt",	{"Phôc Ma Phæ §é T¨ng Hµi",42} },
		{"AddDialogOpt",	{"Tø Kh«ng NhuyÔn B× Hé UyÓn",43} },
	
		
	},
}
tbConfig[41] = --Ò»¸öÏ¸½Ú
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Méng Long ChÝnh Hång T¨ng M·o",{tbProp={0,1},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,220},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[42] = --Ò»¸öÏ¸½Ú
{
	nId = 42,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Phôc Ma Phæ §é T¨ng Hµi",{tbProp={0,10},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,229},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[43] = --Ò»¸öÏ¸½Ú
{
	nId = 43,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Tø Kh«ng NhuyÔn B× Hé UyÓn",{tbProp={0,14},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,233},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[44] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 44,
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
		{"AddDialogOpt",	{" KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",45} },
		{"AddDialogOpt",	{" Ngù Long TÊn Phong Hé yÓn",46} },
		{"AddDialogOpt",	{" H¸m Thiªn Thõa Long ChiÕn Ngoa",47} },
			
	},
}

tbConfig[45] = --Ò»¸öÏ¸½Ú
{
	nId = 45,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",{tbProp={0,25},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,244},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[46] = --Ò»¸öÏ¸½Ú
{
	nId = 46,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ngù Long TÊn Phong Hé yÓn",{tbProp={0,29},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,248},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[47] = --Ò»¸öÏ¸½Ú
{
	nId = 47,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H¸m Thiªn Thõa Long ChiÕn Ngoa",{tbProp={0,20},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,239},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[48] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 48,
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
		{"AddDialogOpt",	{" V« Gian CÇm VËn Hé UyÓn",49} },
		{"AddDialogOpt",	{" V« Ma Hång Truy NhuyÔn Th¸p Hµi",50} },
			
	},
}
tbConfig[49] = --Ò»¸öÏ¸½Ú
{
	nId = 49,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V« Gian CÇm VËn Hé UyÓn",{tbProp={0,34},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,253},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[50] = --Ò»¸öÏ¸½Ú
{
	nId = 50,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V« Ma Hång Truy NhuyÔn Th¸p Hµi",{tbProp={0,40},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,259},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[51] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 51,
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
		{"AddDialogOpt",	{" Tª Hoµng B¨ng Tung CÈm uyÓn",52} },
		{"AddDialogOpt",	{" BÝch H¶i Hång Linh Kim Ti ®¸i",53} },
			
	},
}
tbConfig[52] = --Ò»¸öÏ¸½Ú
{
	nId = 52,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Tª Hoµng B¨ng Tung CÈm uyÓn",{tbProp={0,49},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,810},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[53] = --Ò»¸öÏ¸½Ú
{
	nId = 53,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"BÝch H¶i Hång Linh Kim Ti ®¸i",{tbProp={0,53},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,272},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[54] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 54,
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
		{"AddDialogOpt",	{" U Lung XÝch YÕt MËt trang",55} },
		{"AddDialogOpt",	{" Minh ¶o U §éc ¸m Y",56} },
			
	},
}

tbConfig[55] = --Ò»¸öÏ¸½Ú
{
	nId = 55,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"U Lung XÝch YÕt MËt trang",{tbProp={0,57},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,276},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[56] = --Ò»¸öÏ¸½Ú
{
	nId = 56,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Minh ¶o U §éc ¸m Y",{tbProp={0,62},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,281},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[57] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 57,
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
		{"AddDialogOpt",	{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",58} },
		{"AddDialogOpt",	{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",59} },
		{"AddDialogOpt",	{"S©m Hoang Tinh VÉn Phi Lý",60} },		
			
	},
}
tbConfig[58] = --Ò»¸öÏ¸½Ú
{
	nId = 58,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",{tbProp={0,72},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,291},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[59] = --Ò»¸öÏ¸½Ú
{
	nId = 59,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",{tbProp={0,79},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,298},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[60] = --Ò»¸öÏ¸½Ú
{
	nId = 60,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S©m Hoang Tinh VÉn Phi Lý",{tbProp={0,85},},1} },
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,304},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[61] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 61,
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
		{"AddDialogOpt",	{"§ång Cõu Phi Long §Çu Hoµn",62} },
		{"AddDialogOpt",	{"§Þch Kh¸i TriÒn M·ng Yªu §¸i",63} },	
			
	},
}
tbConfig[62] = --Ò»¸öÏ¸½Ú
{
	nId = 62,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§ång Cõu Phi Long §Çu Hoµn",{tbProp={0,91},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,310},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[63] = --Ò»¸öÏ¸½Ú
{
	nId = 63,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§Þch Kh¸i TriÒn M·ng yªu ®¸i",{tbProp={0,98},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,317},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[64] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 64,
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
		{"AddDialogOpt",	{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",65} },
		{"AddDialogOpt",	{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",66} },	
			
	},
}
tbConfig[65] = --Ò»¸öÏ¸½Ú
{
	nId = 65,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",{tbProp={0,104},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,323},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[66] = --Ò»¸öÏ¸½Ú
{
	nId = 66,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",{tbProp={0,114},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,333},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[67] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 67,
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
		{"AddDialogOpt",	{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",68} },
		{"AddDialogOpt",	{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",69} },	
			
	},
}
tbConfig[68] = --Ò»¸öÏ¸½Ú
{
	nId = 68,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",{tbProp={0,119},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,339},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[69] = --Ò»¸öÏ¸½Ú
{
	nId = 69,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",{tbProp={0,124},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,343},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[70] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 70,
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
		{"AddDialogOpt",	{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ",71} },
		{"AddDialogOpt",	{"L«i Khung Linh Ngäc UÈn L«i",72} },	
			
	},
}
tbConfig[71] = --Ò»¸öÏ¸½Ú
{
	nId = 71,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ",{tbProp={0,129},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,348},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[72] = --Ò»¸öÏ¸½Ú
{
	nId = 72,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L«i Khung Linh Ngäc UÈn L«i",{tbProp={0,134},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,353},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[73] = --Ò»¸öÏ¸½Ú
{
	nId = 73,
	szMessageType = "YDBZguoguan",
	szName = "Ñ×µÛ´³¹ýµÚÊ®¹Ø",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"Hµnh trang cña b¹n kh«ng cßn chç trèng, phÇn th­ëng lÇn nµy kh«ng nhËn ®­îc"} },		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},2,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"}},	
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAiViemDe10", "2 TiÒn §ång", 1}},
	},
}
-----------RESET DO HOANG KIM LOAI 2-------------------------
tbConfig[74] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 74,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau Khi trïng luyÖn thuéc tÝnh sÏ thay ®æi vµ thêi h¹n ®å Hoµng Kim ®­îc reset l¹i ban ®Çu ng­¬i cã muèn thö kh«ng?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Reset §å Hoµng Kim Theo C¸ch 1",108} },	
--		{"AddDialogOpt",	{"Ta muèn ®æi MÆt N¹",17} },
		{"AddDialogOpt",	{"Reset §å Hoµng Kim Theo C¸ch 2",109} },	
--		{"AddDialogOpt",	{"Ta muèn ®æi B¶o R­¬ng Nhu T×nh",6} },		
--		{"AddDialogOpt",	{"Ta muèn ®æi B¶o R­¬ng HiÖp Cèt",7} },		
--		{"AddDialogOpt",	{"Ta muèn ®æi B¶o R­¬ng Vinh DiÖu",8} },
--		{"AddDialogOpt",	{"Ta muèn ®æi B¶o B¶o R­¬ng V« Danh",9} },			
	},
}
tbConfig[75] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 75,
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
		{"AddDialogOpt",	{"Méng Long ChÝnh Hång T¨ng M·o",76} },
		{"AddDialogOpt",	{"Phôc Ma Phæ §é T¨ng Hµi",77} },
		{"AddDialogOpt",	{"Tø Kh«ng NhuyÔn B× Hé UyÓn",78} },

	},
}
tbConfig[76] = --Ò»¸öÏ¸½Ú
{
	nId = 76,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Méng Long ChÝnh Hång T¨ng M·o",{tbProp={0,1},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,1},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[77] = --Ò»¸öÏ¸½Ú
{
	nId = 77,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Phôc Ma Phæ §é T¨ng Hµi",{tbProp={0,10},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[78] = --Ò»¸öÏ¸½Ú
{
	nId = 78,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Tø Kh«ng NhuyÔn B× Hé UyÓn",{tbProp={0,14},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,14},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[79] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 79,
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
		{"AddDialogOpt",	{" KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",80} },
		{"AddDialogOpt",	{" Ngù Long TÊn Phong Hé yÓn",81} },
		{"AddDialogOpt",	{" H¸m Thiªn Thõa Long ChiÕn Ngoa",82} },
			
	},
}

tbConfig[80] = --Ò»¸öÏ¸½Ú
{
	nId = 80,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",{tbProp={0,25},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,25},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[81] = --Ò»¸öÏ¸½Ú
{
	nId = 81,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ngù Long TÊn Phong Hé yÓn",{tbProp={0,29},},1} },
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,29},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[82] = --Ò»¸öÏ¸½Ú
{
	nId = 82,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H¸m Thiªn Thõa Long ChiÕn Ngoa",{tbProp={0,20},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,20},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[83] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 83,
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
		{"AddDialogOpt",	{" V« Gian CÇm VËn Hé UyÓn",84} },
		{"AddDialogOpt",	{" V« Ma Hång Truy NhuyÔn Th¸p Hµi",85} },
			
	},
}
tbConfig[84] = --Ò»¸öÏ¸½Ú
{
	nId = 84,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V« Gian CÇm VËn Hé UyÓn",{tbProp={0,34},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,34},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[85] = --Ò»¸öÏ¸½Ú
{
	nId = 85,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V« Ma Hång Truy NhuyÔn Th¸p Hµi",{tbProp={0,40},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,40},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[86] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 86,
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
		{"AddDialogOpt",	{" Tª Hoµng B¨ng Tung CÈm uyÓn",87} },
		{"AddDialogOpt",	{" BÝch H¶i Hång Linh Kim Ti ®¸i",88} },
			
	},
}
tbConfig[87] = --Ò»¸öÏ¸½Ú
{
	nId = 87,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Tª Hoµng B¨ng Tung CÈm uyÓn",{tbProp={0,49},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,49},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[88] = --Ò»¸öÏ¸½Ú
{
	nId = 88,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"BÝch H¶i Hång Linh Kim Ti ®¸i",{tbProp={0,53},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,53},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[89] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 89,
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
		{"AddDialogOpt",	{" U Lung XÝch YÕt MËt trang",90} },
		{"AddDialogOpt",	{" Minh ¶o U §éc ¸m Y",91} },
			
	},
}

tbConfig[90] = --Ò»¸öÏ¸½Ú
{
	nId = 90,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"U Lung XÝch YÕt MËt trang",{tbProp={0,57},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,57},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[91] = --Ò»¸öÏ¸½Ú
{
	nId = 91,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Minh ¶o U §éc ¸m Y",{tbProp={0,62},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,62},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[92] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 92,
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
		{"AddDialogOpt",	{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",93} },
		{"AddDialogOpt",	{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",94} },
		{"AddDialogOpt",	{"S©m Hoang Tinh VÉn Phi Lý",95} },		
			
	},
}
tbConfig[93] = --Ò»¸öÏ¸½Ú
{
	nId = 93,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",{tbProp={0,72},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,72},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[94] = --Ò»¸öÏ¸½Ú
{
	nId = 94,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",{tbProp={0,79},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,79},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[95] = --Ò»¸öÏ¸½Ú
{
	nId = 95,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S©m Hoang Tinh VÉn Phi Lý",{tbProp={0,85},},1} },
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,85},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[96] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 96,
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
		{"AddDialogOpt",	{"§ång Cõu Phi Long §Çu Hoµn",97} },
		{"AddDialogOpt",	{"§Þch Kh¸i TriÒn M·ng Yªu §¸i",98} },	
			
	},
}
tbConfig[97] = --Ò»¸öÏ¸½Ú
{
	nId = 97,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§ång Cõu Phi Long §Çu Hoµn",{tbProp={0,91},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,91},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[98] = --Ò»¸öÏ¸½Ú
{
	nId = 98,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§Þch Kh¸i TriÒn M·ng yªu ®¸i",{tbProp={0,98},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,98},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[99] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 99,
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
		{"AddDialogOpt",	{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",100} },
		{"AddDialogOpt",	{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",101} },	
			
	},
}
tbConfig[100] = --Ò»¸öÏ¸½Ú
{
	nId = 100,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",{tbProp={0,104},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,104},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[101] = --Ò»¸öÏ¸½Ú
{
	nId = 101,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",{tbProp={0,114},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,114},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[102] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 102,
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
		{"AddDialogOpt",	{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",103} },
		{"AddDialogOpt",	{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",104} },	
			
	},
}
tbConfig[103] = --Ò»¸öÏ¸½Ú
{
	nId = 103,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",{tbProp={0,119},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,119},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[104] = --Ò»¸öÏ¸½Ú
{
	nId = 104,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",{tbProp={0,124},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,124},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[105] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 105,
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
		{"AddDialogOpt",	{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ",106} },
		{"AddDialogOpt",	{"L«i Khung Linh Ngäc UÈn L«i",107} },	
			
	},
}
tbConfig[106] = --Ò»¸öÏ¸½Ú
{
	nId = 106,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ",{tbProp={0,129},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,129},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[107] = --Ò»¸öÏ¸½Ú
{
	nId = 107,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L«i Khung Linh Ngäc UÈn L«i",{tbProp={0,134},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,134},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[108] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 108,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn thuéc tÝnh trang bÞ sÏ thay ®æi vµ thêi h¹n ®å sÏ ®­îc Reset l¹i tr¹ng th¸i ban ®Çu ng­¬i cã muèn thö kh«ng."},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ ThiÕu L©m",75} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Thiªn V­¬ng",79} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Nga My",83} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Thóy Yªn",86} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Ngò §éc",89} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ §­êng M«n",92} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ C¸i Bang",96} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Thiªn NhÉn",99} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Vâ §ang",102} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ C«n L«n",105} },
		
	},
}
tbConfig[109] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 109,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn thuéc tÝnh trang bÞ sÏ thay ®æi vµ thêi h¹n ®å sÏ ®­îc Reset l¹i tr¹ng th¸i ban ®Çu ng­¬i cã muèn thö kh«ng."},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ ThiÕu L©m",110} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Thiªn V­¬ng",114} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Nga My",118} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Thóy Yªn",121} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Ngò §éc",124} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ §­êng M«n",127} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ C¸i Bang",131} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Thiªn NhÉn",134} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ Vâ §ang",137} },
		{"AddDialogOpt",	{"Ta muèn Reset thêi h¹n Trang BÞ C«n L«n",140} },	
		
	},
}
-----------RESET DO HOANG KIM LOAI 2-------------------------

tbConfig[110] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 110,
	szMessageType = "CreateDialog",
	szName = "BÊm vµo Ch­ëng T¶o §Þa T¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi trïng luyÖn thuéc tÝnh trang bÞ sÏ thay ®æi vµ thêi h¹n ®å sÏ ®­îc Reset l¹i tr¹ng th¸i ban ®Çu ng­¬i cã muèn thö kh«ng?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Méng Long ChÝnh Hång T¨ng M·o",111} },
		{"AddDialogOpt",	{"Phôc Ma Phæ §é T¨ng Hµi",112} },
		{"AddDialogOpt",	{"Tø Kh«ng NhuyÔn B× Hé UyÓn",113} },

	},
}
tbConfig[111] = --Ò»¸öÏ¸½Ú
{
	nId = 111,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Méng Long ChÝnh Hång T¨ng M·o",{tbProp={0,1},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,1},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[112] = --Ò»¸öÏ¸½Ú
{
	nId = 112,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Phôc Ma Phæ §é T¨ng Hµi",{tbProp={0,10},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[113] = --Ò»¸öÏ¸½Ú
{
	nId = 113,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Tø Kh«ng NhuyÔn B× Hé UyÓn",{tbProp={0,14},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,14},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[114] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 114,
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
		{"AddDialogOpt",	{" KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",115} },
		{"AddDialogOpt",	{" Ngù Long TÊn Phong Hé yÓn",116} },
		{"AddDialogOpt",	{" H¸m Thiªn Thõa Long ChiÕn Ngoa",117} },
			
	},
}

tbConfig[115] = --Ò»¸öÏ¸½Ú
{
	nId = 115,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",{tbProp={0,25},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,25},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[116] = --Ò»¸öÏ¸½Ú
{
	nId = 116,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ngù Long TÊn Phong Hé yÓn",{tbProp={0,29},},1} },
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,29},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[117] = --Ò»¸öÏ¸½Ú
{
	nId = 117,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H¸m Thiªn Thõa Long ChiÕn Ngoa",{tbProp={0,20},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,20},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[118] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 118,
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
		{"AddDialogOpt",	{" V« Gian CÇm VËn Hé UyÓn",119} },
		{"AddDialogOpt",	{" V« Ma Hång Truy NhuyÔn Th¸p Hµi",120} },
			
	},
}
tbConfig[119] = --Ò»¸öÏ¸½Ú
{
	nId = 119,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V« Gian CÇm VËn Hé UyÓn",{tbProp={0,34},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,34},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[120] = --Ò»¸öÏ¸½Ú
{
	nId = 120,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V« Ma Hång Truy NhuyÔn Th¸p Hµi",{tbProp={0,40},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,40},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[121] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 121,
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
		{"AddDialogOpt",	{" Tª Hoµng B¨ng Tung CÈm uyÓn",122} },
		{"AddDialogOpt",	{" BÝch H¶i Hång Linh Kim Ti ®¸i",123} },
			
	},
}
tbConfig[122] = --Ò»¸öÏ¸½Ú
{
	nId = 122,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Tª Hoµng B¨ng Tung CÈm uyÓn",{tbProp={0,49},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,49},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[123] = --Ò»¸öÏ¸½Ú
{
	nId = 123,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"BÝch H¶i Hång Linh Kim Ti ®¸i",{tbProp={0,53},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,53},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[124] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 124,
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
		{"AddDialogOpt",	{" U Lung XÝch YÕt MËt trang",125} },
		{"AddDialogOpt",	{" Minh ¶o U §éc ¸m Y",126} },
			
	},
}

tbConfig[125] = --Ò»¸öÏ¸½Ú
{
	nId = 125,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"U Lung XÝch YÕt MËt trang",{tbProp={0,57},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,57},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[126] = --Ò»¸öÏ¸½Ú
{
	nId = 126,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Minh ¶o U §éc ¸m Y",{tbProp={0,62},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,62},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[127] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 127,
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
		{"AddDialogOpt",	{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",128} },
		{"AddDialogOpt",	{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",129} },
		{"AddDialogOpt",	{"S©m Hoang Tinh VÉn Phi Lý",130} },		
			
	},
}
tbConfig[128] = --Ò»¸öÏ¸½Ú
{
	nId = 128,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",{tbProp={0,72},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,72},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[129] = --Ò»¸öÏ¸½Ú
{
	nId = 129,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",{tbProp={0,79},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,79},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[130] = --Ò»¸öÏ¸½Ú
{
	nId = 130,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S©m Hoang Tinh VÉn Phi Lý",{tbProp={0,85},},1} },
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,85},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[131] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 131,
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
		{"AddDialogOpt",	{"§ång Cõu Phi Long §Çu Hoµn",132} },
		{"AddDialogOpt",	{"§Þch Kh¸i TriÒn M·ng Yªu §¸i",133} },	
			
	},
}
tbConfig[132] = --Ò»¸öÏ¸½Ú
{
	nId = 132,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§ång Cõu Phi Long §Çu Hoµn",{tbProp={0,91},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,91},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}

tbConfig[133] = --Ò»¸öÏ¸½Ú
{
	nId = 133,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"§Þch Kh¸i TriÒn M·ng yªu ®¸i",{tbProp={0,98},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,98},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[134] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 134,
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
		{"AddDialogOpt",	{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",135} },
		{"AddDialogOpt",	{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",136} },	
			
	},
}
tbConfig[135] = --Ò»¸öÏ¸½Ú
{
	nId = 135,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",{tbProp={0,104},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,104},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[136] = --Ò»¸öÏ¸½Ú
{
	nId = 136,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",{tbProp={0,114},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,114},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[137] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 137,
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
		{"AddDialogOpt",	{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",138} },
		{"AddDialogOpt",	{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",139} },	
			
	},
}
tbConfig[138] = --Ò»¸öÏ¸½Ú
{
	nId = 138,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",{tbProp={0,119},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,119},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[139] = --Ò»¸öÏ¸½Ú
{
	nId = 139,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",{tbProp={0,124},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},	
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,124},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[140] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 140,
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
		{"AddDialogOpt",	{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ",141} },
		{"AddDialogOpt",	{"L«i Khung Linh Ngäc UÈn L«i",142} },	
			
	},
}
tbConfig[141] = --Ò»¸öÏ¸½Ú
{
	nId = 141,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ",{tbProp={0,129},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,129},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}
tbConfig[142] = --Ò»¸öÏ¸½Ú
{
	nId = 142,
	szMessageType = "CreateCompose",
	szName = "Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trïng LuyÖn §å Hoµng Kim M«n Ph¸i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L«i Khung Linh Ngäc UÈn L«i",{tbProp={0,134},},1} },	
		{"AddOneMaterial",	{"LÖnh Bµi V­ît ¶i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,134},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Trïng LuyÖn Trang BÞ Hoµng Kim M«n Ph¸i]"} },
		
	},
}