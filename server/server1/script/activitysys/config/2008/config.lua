---------------Youtube PGaming---------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("ITEM")
IncludeLib("RELAYLADDER");
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0901"
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tTongKim1000]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTongKim3000]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tVuotAi17]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tVuotAi28]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietThuyTacDauLinh]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietThuyTacDaiDauLinh]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},25,"[Event_Mõng Sinh NhËt VLTK] [tVuotAiViemDe10]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},20,"[Event_Mõng Sinh NhËt VLTK] [tTinSu10]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},10,"[Event_Mõng Sinh NhËt VLTK] [tVLMC]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},50,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietBossTheGioi]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},5,"[Event_Mõng Sinh NhËt VLTK] [tTieuDietBossS¸tThñ]"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},1,"2"} },
	},
}
tbConfig[13] = --§èi tho¹i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Môc L·o"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"§æi 10 mËt ®å thÇn bÝ lÊy r­¬ng b¹c",14} },
	{"AddDialogOpt",	{"§æi 10 mËt ®å thÇn bÝ vµ kim th¹ch lÊy r­¬ng vµng",15} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "§æi 10 mËt ®å thÇn bÝ lÊy r­¬ng b¹c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"r­¬ng b¹c",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"MËt ®å thÇn bÝ",{tbProp={6,1,196,1,0,0},},10} },
	--{"AddOneMaterial",	{"100000 l­îng",{nJxb=300000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1378,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "§æi 10 mËt ®å thÇn bÝ vµ kim th¹ch lÊy r­¬ng vµng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"r­¬ng vµng",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"MËt ®å thÇn bÝ",{tbProp={6,1,196,1,0,0},},10} },
	{"AddOneMaterial",	{"Kim Th¹ch",{tbProp={6,1,1376,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1377,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}
tbConfig[16] = --Sö Dông
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "R­¬ng B¸u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4946,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H·y §Ó Trèng 10 ¤ Råi Më"} },
	},
	tbActition = 
	{
		{"ThisActivity:RuongBau", {nil}},
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},1,"2"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},1,"2"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Mua R­¬ng B¸u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"R­¬ng B¸u",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,4946,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Kem]"} },
	},
}
tbConfig[22] = --§èi tho¹i
{
	nId = 22,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Xa L·o Th¸i"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	--{"AddDialogOpt",	{"Ta muèn tÆng bã hoa hång",25} },
	--{"AddDialogOpt",	{"Ta muèn tÆng bã hoa cóc",26} },
	},
}
tbConfig[23] = --§èi tho¹i
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thóy Thóy"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	--{"AddDialogOpt",	{"Ta muèn tÆng bã hoa hång",25} },
	--{"AddDialogOpt",	{"Ta muèn tÆng bã hoa cóc",26} },
	},
}
tbConfig[24] = --§èi tho¹i
{
	nId = 24,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mü Nh©n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	--{"AddDialogOpt",	{"Ta muèn tÆng bã hoa hång",25} },
	--{"AddDialogOpt",	{"Ta muèn tÆng bã hoa cóc",26} },
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Ta muèn tÆng bã hoa hång",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"bã hoa hång",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Bã Hoa Hång",{tbProp={6,1,1681,1,0,0},},1} },
		{"PlayerFunLib:CheckLevel",	{50,"CÊp bËc qu¸ thÊp, cÇn ph¶i luyÖn tËp thªm ®Ó cã thÓ tÆng hoa!",">="} },
		
	},
	tbActition = 
	{
		{"dostring",	{"local nRandomKeyValue = random(1, 100);if (nRandomKeyValue < 2) then AddItem(4,238,1,1,0,0,0);end;if (nRandomKeyValue <= 10 and nRandomKeyValue>2) then AddItem(4,353,1,1,0,0,0);end;if(nRandomKeyValue <= 12 and nRandomKeyValue>10) then AddItem(4,240,1,1,0,0,0);end;if(nRandomKeyValue <= 14 and nRandomKeyValue>12) then ItemIndex = AddItem(6,1,1181,1,0,0,0);ITEM_SetExpiredTime(ItemIndex, nTime);SyncItem(ItemIndex);end;if(nRandomKeyValue <= 16 and nRandomKeyValue>14) then AddItem(4,239,1,1,0,0,0);end;if(nRandomKeyValue <= 18 and nRandomKeyValue>16) then ItemIndex = AddItem(6,1,71,1,0,0,0);ITEM_SetExpiredTime(ItemIndex, nTime);SyncItem(ItemIndex);end;if(nRandomKeyValue <= 30 and nRandomKeyValue>18) then AddItem(6,1,147,3,0,0,0);end;if(nRandomKeyValue <= 65 and nRandomKeyValue>30) then AddItem(6,1,122,1,0,0,0);end;if(nRandomKeyValue <= 70 and nRandomKeyValue>65) then AddItem(6,1,124,1,0,0,0);end;if(nRandomKeyValue <= 80 and nRandomKeyValue>70) then AddItem(6,1,123,1,0,0,0);end;if(nRandomKeyValue <= 100 and nRandomKeyValue>80) then AddItem(0,0,0,0,0,0,0);end;if  GetTask(5853) < 5000 then AddOwnExp(1000); end SetTask(5853, GetTask(5853)+1);"} },
		{"dostring",	{"Msg2Player(format([[B¹n ®· tÆng ®­îc %d hoa hång]], GetTask(5853)))"} },
	},
}
tbConfig[26] = 
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "Ta muèn tÆng bã hoa cóc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"bã hoa cóc",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Bã Hoa Cóc",{tbProp={6,1,1682,1,0,0},},1} },
		{"PlayerFunLib:CheckLevel",	{50,"CÊp bËc qu¸ thÊp, cÇn ph¶i luyÖn tËp thªm ®Ó cã thÓ tÆng hoa!",">="} },
		
	},
	tbActition = 
	{
		{"dostring",	{"if  GetTask(5852) < 2000 then AddOwnExp(500);AddItem(6,1,random(122,124),1,0,0,0); end SetTask(5852, GetTask(5852)+1);"} },
		{"dostring",	{"Msg2Player(format([[B¹n ®· tÆng ®­îc %d hoa cóc]], GetTask(5852)))"} },
	},
}
tbConfig[27] = --Ò»¸öÏ¸½Ú
{
	nId = 27,
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
		{"AddDialogOpt",	{"Mua Kim Th¹ch",28} },
	},
}
tbConfig[28] = --Ò»¸öÏ¸½Ú
{
	nId = 28,
	szMessageType = "CreateCompose",
	szName = "buy basket",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua Kim Th¹ch",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=1},300000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1376,1,0,0},},1,"[Event_Mõng Sinh NhËt VLTK] [B¸nh Sinh NhËt]"} },
	},
}