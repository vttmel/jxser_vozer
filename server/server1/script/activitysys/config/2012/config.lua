---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2012\\variables.lua")
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
tbConfig = {}
tbConfig[1] = --Tèng Kim 1000 §iÓm
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "Tèng Kim Cao CÊp 1000 §iÓm",
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tTongKim1000]"} },
	},
}
tbConfig[2] = --Tèng Kim 3000 §iÓm
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Tèng Kim Cao CÊp 3000 §iÓm",
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTongKim3000]"} },
	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V­ît Qua ¶i 17 Giai §o¹n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tVuotAi17]"} },
	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V­ît Qua ¶i 28 Giai §o¹n 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tVuotAi28]"} },
	},
}
tbConfig[5] = --Thñy TÆc §Çu LÜnh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt ChÕt 1 Thñy TÆc §Çu LÜnh",
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietThuyTacDauLinh]"} },
	},
}
tbConfig[6] = --Thñy TÆc §¹i §Çu LÜnh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu DiÖt Thñy TÆc §¹i §Çu LÜnh",
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietThuyTacDaiDauLinh]"} },
	},
}
tbConfig[7] = --Viªm §Õ
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V­ît Qua ¶i Viªm §Õ Thø 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},25,"[Event_Mõng Sinh NhËt VLTK] [tVuotAiViemDe10]"} },
	},
}
tbConfig[8] = --Tin Su
{
	nId = 8,
	szMessageType = "FinishMail",
	szName = "Tin Su",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,4944,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTinSu10]"} },
	},
}
tbConfig[9] = --V­LMC
{
	nId = 9,
	szMessageType = "FinishVLMC_VNG",
	szName = "Hoµn Thµnh VLMC",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tVLMC]"} },
	},
}
tbConfig[10] = --Boss ThÕ Giíi
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu DiÖt Boss ThÕ Giíi",
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},50,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietBossTheGioi]"} },
	},
}
tbConfig[11] = --Boss S¸t Thñ
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm Vô S¸t Thñ CÊp 90",
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},5,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietBossS¸tThñ]"} },
	},
}
tbConfig[12] = --?»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢ä¢`¶¹±u",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},1,"2"} },
	},
}
tbConfig[13] = --§èi tho¹i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"¤ng giµ No-en"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"Ta muèn lµm ng­êi tuyÕt th­êng",14} },
	{"AddDialogOpt",	{"Ta muèn lµm ng­êi tuyÕt ®Æc biÖt",15} },
	{"AddDialogOpt",	{"Ta muèn lµm ng­êi tuyÕt kh¨n choµng xanh ®Æc biÖt",22} },
	{"AddDialogOpt",	{"Ta muèn lµm ng­êi tuyÕt kh¨n choµng xanh th­êng",23} },
	{"AddDialogOpt",	{"Ta muèn lµm ng­êi tuyÕt kh¨n choµng ®á ®Æc biÖt",24} },
	{"AddDialogOpt",	{"Ta muèn lµm ng­êi tuyÕt kh¨n choµng ®á th­êng",25} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm ng­êi tuyÕt th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng­êi tuyÕt th­êng",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuyÕt",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"Cµnh th«ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"Cµ rèt",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"Nãn gi¸ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1324,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm ng­êi tuyÕt ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng­êi tuyÕt ®Æc biÖt",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuyÕt",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"Cµnh th«ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"Cµ rèt",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"Nãn gi¸ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	{"AddOneMaterial",	{"C©y th«ng",{tbProp={6,1,1318,1,0,0},},1} },
	{"AddOneMaterial",	{"10000 l­îng",{nJxb=10000,},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1321,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}
tbConfig[16] = --Sö Dông
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "Tói B¸nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4940,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H·y §Ó Trèng 10 ¤ Råi Më"} },
	},
	tbActition = 
	{
		{"ThisActivity:TuiBanh", {nil}},
	},
}
tbConfig[17] = --Sö Dông
{
	nId = 17,
	szMessageType = "ItemScript",
	szName = "Hép S« C« La",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2861,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H·y §Ó Trèng 10 ¤ Råi Më"} },
	},
	tbActition = 
	{
		{"ThisActivity:HopSoCoLa", {nil}},
	},
}
tbConfig[18] = --Add NPC
{
	nId = 18,
	szMessageType = "ServerStart",
	szName = "Add npc when server start",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:InitAddNpc",	{nil} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},1,"2"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},1,"2"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Mua Tói B¸nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tói B¸nh",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,4940,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm ng­êi tuyÕt kh¨n choµng xanh ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng­êi tuyÕt kh¨n choµng xanh ®Æc biÖt",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuyÕt",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"Cµnh th«ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"Cµ rèt",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"Nãn gi¸ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	{"AddOneMaterial",	{"Kh¨n choµng (xanh)",{tbProp={6,1,1316,1,0,0},},1} },
	{"AddOneMaterial",	{"C©y th«ng",{tbProp={6,1,1318,1,0,0},},1} },
	{"AddOneMaterial",	{"20000 l­îng",{nJxb=20000,},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1319,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm ng­êi tuyÕt kh¨n choµng xanh th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng­êi tuyÕt kh¨n choµng xanh th­êng",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuyÕt",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"Cµnh th«ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"Cµ rèt",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"Nãn gi¸ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	{"AddOneMaterial",	{"Kh¨n choµng (xanh)",{tbProp={6,1,1316,1,0,0},},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1322,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}
tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm ng­êi tuyÕt kh¨n choµng ®á ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng­êi tuyÕt kh¨n choµng ®á ®Æc biÖt",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuyÕt",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"Cµnh th«ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"Cµ rèt",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"Nãn gi¸ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	{"AddOneMaterial",	{"Kh¨n choµng (®á)",{tbProp={6,1,1317,1,0,0},},1} },
	{"AddOneMaterial",	{"C©y th«ng",{tbProp={6,1,1318,1,0,0},},1} },
	{"AddOneMaterial",	{"20000 l­îng",{nJxb=20000,},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1320,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm ng­êi tuyÕt kh¨n choµng ®á th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng­êi tuyÕt kh¨n choµng ®á th­êng",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuyÕt",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"Cµnh th«ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"Cµ rèt",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"Nãn gi¸ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	{"AddOneMaterial",	{"Kh¨n choµng (®á)",{tbProp={6,1,1317,1,0,0},},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1323,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}