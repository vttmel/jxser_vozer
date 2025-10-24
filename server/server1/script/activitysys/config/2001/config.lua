---------------Youtube PGaming---------------
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0201"
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tTongKim1000]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTongKim3000]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tVuotAi17]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tVuotAi28]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietThuyTacDauLinh]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietThuyTacDaiDauLinh]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},25,"[Event_Mõng Sinh NhËt VLTK] [tVuotAiViemDe10]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTinSu10]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tVLMC]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},50,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietBossTheGioi]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},5,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietBossS¸tThñ]"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1657,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1658,1,0,0},},1,"3"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1659,1,0,0},},1,"1"} },
	},
}
tbConfig[13] = --§èi tho¹i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thî b¸nh"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"Ta muèn lµm b¸nh ch­ng th­êng",14} },
	{"AddDialogOpt",	{"Ta muèn lµm b¸nh ch­ng h¶o h¹ng",15} },
	{"AddDialogOpt",	{"Ta muèn lµm b¸nh ch­ng th­îng h¹ng",22} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm b¸nh ch­ng th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"b¸nh ch­ng th­êng",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"L¸ b¸nh",{tbProp={6,1,1653,1,0,0},},4} },
	{"AddOneMaterial",	{"G¹o nÕp",{tbProp={6,1,1654,1,0,0},},3} },
	{"AddOneMaterial",	{"§Ëu xanh",{tbProp={6,1,1655,1,0,0},},2} },
	{"AddOneMaterial",	{"ThÞt heo",{tbProp={6,1,1656,1,0,0},},1} },
	{"AddOneMaterial",	{"20000 l­îng",{nJxb=20000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1664,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm b¸nh ch­ng h¶o h¹ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"b¸nh ch­ng h¶o h¹ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L¸ b¸nh",{tbProp={6,1,1653,1,0,0},},4} },
		{"AddOneMaterial",	{"G¹o nÕp",{tbProp={6,1,1654,1,0,0},},3} },
		{"AddOneMaterial",	{"§Ëu xanh",{tbProp={6,1,1655,1,0,0},},2} },
		{"AddOneMaterial",	{"ThÞt heo",{tbProp={6,1,1656,1,0,0},},1} },
		{"AddOneMaterial",	{"BÝ quyÕt lµm b¸nh ch­ng h¶o h¹ng",{tbProp={6,1,1661,1,0,0},},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1663,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}
tbConfig[16] = --Sö Dông
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "Tói Trµ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4938,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H·y §Ó Trèng 10 ¤ Råi Më"} },
	},
	tbActition = 
	{
		{"ThisActivity:TuiTra", {nil}},
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
	szName = "Khi Khëi §éng Server SÏ T¶i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1657,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1658,1,0,0},},1,"3"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1659,1,0,0},},1,"1"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1657,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1658,1,0,0},},1,"3"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1659,1,0,0},},1,"1"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Mua Tói Trµ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tói Trµ",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,4938,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Ta muèn lµm b¸nh ch­ng th­îng h¹ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"b¸nh ch­ng th­îng h¹ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L¸ b¸nh",{tbProp={6,1,1653,1,0,0},},4} },
		{"AddOneMaterial",	{"G¹o nÕp",{tbProp={6,1,1654,1,0,0},},3} },
		{"AddOneMaterial",	{"§Ëu xanh",{tbProp={6,1,1655,1,0,0},},2} },
		{"AddOneMaterial",	{"ThÞt heo",{tbProp={6,1,1656,1,0,0},},1} },
		{"AddOneMaterial",	{"BÝ quyÕt lµm b¸nh ch­ng th­îng h¹ng",{tbProp={6,1,1660,1,0,0},},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1662,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}
tbConfig[23] = --Ò»¸öÏ¸½Ú
{
	nId = 23,
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
		{"AddDialogOpt",	{"Mua BÝ quyÕt lµm b¸nh ch­ng h¶o h¹ng",24} },
		{"AddDialogOpt",	{"Mua BÝ quyÕt lµm b¸nh ch­ng th­îng h¹ng",25} },
	},
}
tbConfig[24] = --Ò»¸öÏ¸½Ú
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "buy basket",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"BÝ quyÕt lµm b¸nh ch­ng h¶o h¹ng",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},100000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1661,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}
tbConfig[25] = --Ò»¸öÏ¸½Ú
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "buy basket",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"BÝ quyÕt lµm b¸nh ch­ng h¶o h¹ng",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},200000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1660,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}
tbConfig[26] = --§èi tho¹i
{
	nId = 26,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C©y Mai"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"Ta muèn treo liÔn Phóc - Léc - Thä ®Ó ®ãn tÕt",27} },
	},
}
tbConfig[27] = 
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "Ta muèn treo liÔn Phóc - Léc - Thä ®Ó ®ãn tÕt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"treo liÔn Phóc - Léc - Thä",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Phóc",{tbProp={6,1,1657,1,0,0},},1} },
		{"AddOneMaterial",	{"Léc",{tbProp={6,1,1658,1,0,0},},1} },
		{"AddOneMaterial",	{"Thä",{tbProp={6,1,1659,1,0,0},},1} },
		{"AddOneMaterial",	{"9999 l­îng",{nJxb=9999,},1} },
		{"PlayerFunLib:CheckLevel",	{50,"CÊp bËc qu¸ thÊp, cÇn ph¶i luyÖn tËp thªm ®Ó cã thÓ treo liÔn!",">="} },
		
	},
	tbActition = 
	{
		{"dostring",	{"if  GetTask(5782) < 100 then AddItem(6,1,random(122,124),1,0,0,0); end SetTask(5782, GetTask(5782)+1);"} },
		{"dostring",	{"Msg2Player(format([[B¹n ®· treo ®­îc %d liÔn]], GetTask(5782)))"} },
	},
}
tbConfig[28] = --§èi tho¹i
{
	nId = 28,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C©y §µo"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"Ta muèn treo liÔn Phóc - Léc - Thä ®Ó ®ãn tÕt",27} },
	},
}