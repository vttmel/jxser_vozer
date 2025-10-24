---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2006\\variables.lua")
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0701"
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tTongKim1000]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTongKim3000]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tVuotAi17]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tVuotAi28]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietThuyTacDauLinh]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietThuyTacDaiDauLinh]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},25,"[Event_Mõng Sinh NhËt VLTK] [tVuotAiViemDe10]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tVLMC]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},50,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietBossTheGioi]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},5,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietBossS¸tThñ]"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},1,"2"} },
	},
}
tbConfig[13] = --§èi tho¹i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V¹n Niªn Gia"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"NhËn phÇn th­ëng 1",14} },
	},
}
tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "nil",
	szName = "compse medal 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"ThisActivity:toUpdatecompose",	{1} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Hîp Thµnh B¸nh Sinh NhËt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B¸nh Sinh NhËt",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S÷a T­¬i",{tbProp={6,1,2851,1,0,0},},2} },
		{"AddOneMaterial",	{"§­êng Tinh",{tbProp={6,1,2852,1,0,0},},2} },
		{"AddOneMaterial",	{"Bét M×",{tbProp={6,1,2853,1,0,0},},2} },
		{"AddOneMaterial",	{"B¬",{tbProp={6,1,2855,1,0,0},},1} },
		{"AddOneMaterial",	{"Kem",{tbProp={6,1,2856,1,0,0},},1} },
		{"AddOneMaterial",	{"S« C« La",{tbProp={6,1,2854,1,0,0},},1} },
		{"AddOneMaterial",	{"200000 l­îng",{nJxb=200000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,2859,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},1,"2"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},1,"2"} },
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
tbConfig[22] = --Ò»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"§¹i Hû lÓ bao",23} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "Mua ThiÖp chóc mõng s­ phô",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§¹i Hû lÓ bao",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"300000 l­îng",{nJxb=300000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1760,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[24] = --Ò»¸öÏ¸½Ú
{
	nId = 24,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua ThiÖp chóc mõng ®Ö tö",23} },
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Mua ThiÖp chóc mõng ®Ö tö",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThiÖp chóc mõng ®Ö tö",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1589,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[26] = --Ò»¸öÏ¸½Ú
{
	nId = 26,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua ThiÖp chóc mõng h¶o h÷u",23} },
	},
}
tbConfig[27] = 
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "Mua ThiÖp chóc mõng h¶o h÷u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThiÖp chóc mõng h¶o h÷u",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1590,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[28] = --Ò»¸öÏ¸½Ú
{
	nId = 28,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua ThiÖp chóc mõng cõu nh©n",23} },
	},
}
tbConfig[29] = 
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "Mua ThiÖp chóc mõng cõu nh©n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThiÖp chóc mõng cõu nh©n",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1591,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[30] = --Ò»¸öÏ¸½Ú
{
	nId = 30,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua ThiÖp chóc mõng bang héi",23} },
	},
}
tbConfig[31] = 
{
	nId = 31,
	szMessageType = "CreateCompose",
	szName = "Mua ThiÖp chóc mõng bang héi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThiÖp chóc mõng bang héi",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1592,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[32] = --Ò»¸öÏ¸½Ú
{
	nId = 32,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua ThiÖp chóc mõng gi¸o chñ",23} },
	},
}
tbConfig[33] = 
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "Mua ThiÖp chóc mõng gi¸o chñ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThiÖp chóc mõng gi¸o chñ",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1593,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[34] = --Ò»¸öÏ¸½Ú
{
	nId = 34,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua ThiÖp chóc mõng s­ muéi",23} },
	},
}
tbConfig[35] = 
{
	nId = 35,
	szMessageType = "CreateCompose",
	szName = "Mua ThiÖp chóc mõng s­ muéi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThiÖp chóc mõng s­ muéi",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1594,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[36] = --Ò»¸öÏ¸½Ú
{
	nId = 36,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua ThiÖp chóc mõng bang chñ",23} },
	},
}
tbConfig[37] = 
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Mua ThiÖp chóc mõng bang chñ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThiÖp chóc mõng bang chñ",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1595,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[38] = --Ò»¸öÏ¸½Ú
{
	nId = 38,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua ThiÖp chóc mõng s­ ®Ö",23} },
	},
}
tbConfig[39] = 
{
	nId = 39,
	szMessageType = "CreateCompose",
	szName = "Mua ThiÖp chóc mõng s­ ®Ö",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThiÖp chóc mõng s­ ®Ö",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1596,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[40] = --Ò»¸öÏ¸½Ú
{
	nId = 40,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hµng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua ThiÖp chóc mõng s­ huynh",23} },
	},
}
tbConfig[41] = 
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "Mua ThiÖp chóc mõng s­ huynh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ThiÖp chóc mõng s­ huynh",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1597,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}