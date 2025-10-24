Include("\\script\\activitysys\\config\\1000\\variables.lua")
tbConfig = {}
tbConfig[1] = --Tèng kim 1000 ®iÓm
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 1000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_MungPBM\tTongKim1000"} },
	},
}
tbConfig[2] = --Tèng kim 3000 ®iÓm
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_MungPBM\tTongKim3000"} },
	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 17 giai ®o¹n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tVuotAi17"} },
	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 28 giai ®o¹n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tVuotAi28"} },
	},
}
tbConfig[5] = --Thñy tÆc ®Çu lÜnh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt chÕt 1 thñy tÆc ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tTieuDietThuyTacDauLinh"} },
	},
}
tbConfig[6] = --thuû tÆc ®¹i ®Çu lÜnh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt thuû tÆc ®¹i ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_MungPBM\tTieuDietThuyTacDaiDauLinh"} },
	},
}
tbConfig[7] = --Viªm ®Õ
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V­ît qua ¶i Viªm §Õ thø 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_MungPBM\tVuotAiViemDe10"} },
	},
}
tbConfig[8] = --Boss thÕ giíi
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt boss thÕ giíi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},50,"Event_MungPBM\tTieuDietBossTheGioi"} },
	},
}
tbConfig[9] = --boss s¸t thñ
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô s¸t thñ cÊp 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},2,"Event_MungPBM\tTieuDietBossS¸tThñ"} },
	},
}
--Giai ®o¹n 2
tbConfig[10] = --Tèng kim 1000 ®iÓm
{
	nId = 10,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 1000 ®iÓm",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},5,"Event_MungPBM\tTongKim1000"} },
	},
}
tbConfig[11] = --Tèng kim 3000 ®iÓm
{
	nId = 11,
	szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 3000 ®iÓm",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tTongKim3000"} },
	},
}
tbConfig[12] =
{
	nId = 12,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 17 giai ®o¹n 2",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},5,"Event_MungPBM\tVuotAi17"} },
	},
}
tbConfig[13] =
{
	nId = 13,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 28 giai ®o¹n 2",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},5,"Event_MungPBM\tVuotAi28"} },
	},
}
tbConfig[14] = --Thñy tÆc ®Çu lÜnh
{
	nId = 14,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt chÕt 1 thñy tÆc ®Çu lÜnh",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},3,"Event_MungPBM\tTieuDietThuyTacDauLinh"} },
	},
}
tbConfig[15] = --thuû tÆc ®¹i ®Çu lÜnh
{
	nId = 15,
	szMessageType = "NpcOnDeath",
	szName = "Tiªu diÖt thuû tÆc ®¹i ®Çu lÜnh",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tTieuDietThuyTacDaiDauLinh"} },
	},
}
tbConfig[16] = --Viªm ®Õ
{
	nId = 16,
	szMessageType = "YDBZguoguan",
	szName = "V­ît qua ¶i Viªm §Õ thø 10",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tVuotAiViemDe10"} },
	},
}
--add dßng ®èi tho¹i npc
tbConfig[17] = --§èi tho¹i Ch­ëng §¨ng Cung N÷
{
	nId = 17,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo Ch­ëng §¨ng Cung N÷",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch­ëng §¨ng Cung N÷"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ho¹t ®éng chµo mõng phiªn b¶n míi",18} },		
	},
}
tbConfig[18] =
{
	nId = 18,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i víi Ch­ëng §¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xem ra giang hå l¹i cã mét phen dËy sãng"},

	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp thµnh nguyªn liÖu", 23} },
		{"AddDialogOpt",	{"TÆng hoa cho Ch­ëng §¨ng Cung N÷", 26} },
		{"AddDialogOpt",	{"NhËn phÇn th­ëng tham gia tÝnh n¨ng tuÇn", 19} },
	},
}
tbConfig[19] =
{
	nId = 19,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i víi Ch­ëng §¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Trong tuÇn, h·y th­êng xuyªn tham gia c¸c tÝnh n¨ng Tèng Kim, V­ît ¶i, Viªm §Õ råi ®Õn gÆp ta ®Ó nhËn phÇn th­ëng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Xem sè lÇn tham gia tÝnh n¨ng tuÇn nµy",29} },
		{"AddDialogOpt",	{"NhËn phÇn th­ëng tham gia 15 trËn Tèng Kim",20} },
		{"AddDialogOpt",	{"NhËn phÇn th­ëng tham gia 15 lÇn V­ît ¶i",21} },
		{"AddDialogOpt",	{"NhËn phÇn th­ëng tham gia 10 lÇn Viªm §Õ",22} },
	},
}
--PhÇn th­ëng tÝnh n¨ng hµng tuÇn
tbConfig[20] = --Tèng Kim tuÇn
{
	nId = 20,
	szMessageType = "nil",
	szName = "NhËn th­ëng hoµn thµnh 15 lÇn Tèng Kim 2000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_TONGKIM_WEEKLY_MATCH_COUNT, 15, ">=", "Ng­¬i vÉn ch­a tham gia ®ñ 15 trËn Tèng Kim, cÇn ph¶i cè g¾ng h¬n"}},
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_TONGKIM_WEEKLY_AWARD, 0, "<=", "TuÇn nµy ng­¬i ®· nhËn th­ëng råi, h·y ch¨m chØ tham gia c¸c tÝnh n¨ng, tuÇn sau råi h·y quay l¹i nhËn th­ëng."}},
	},
	tbActition = 
	{
		{"ThisActivity:VngAddWeeklyTaskCount", {nTSK_TONGKIM_WEEKLY_AWARD, 1},},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30115,1,0,0},nExpiredTime=nItemExpiredTime, nBindState = -2},10,"Event_MungPBM\tPhanThuongTongKimTrongTuan"} },
	},
}
tbConfig[21] = --V­ît ¶i tuÇn
{
	nId = 21,
	szMessageType = "nil",
	szName = "NhËn th­ëng hoµn thµnh 15 lÇn v­ît ¶i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_VUOTAI_WEEKLY_MATCH_COUNT, 15, ">=", "Ng­¬i vÉn ch­a hoµn thµnh 15 lÇn v­ît ¶i, ®õng nghÜ tíi chuyÖn nhËn th­ëng"}},
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_VUOTAI_WEEKLY_AWARD, 0, "<=", "Ng­¬i ®· nhËn phÇn th­ëng cña tuÇn nµy råi, tuÇn sau råi h·y quay l¹i"}},
	},
	tbActition = 
	{
		{"ThisActivity:VngAddWeeklyTaskCount", {nTSK_VUOTAI_WEEKLY_AWARD, 1},},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30115,1,0,0},nExpiredTime=nItemExpiredTime, nBindState = -2},10,"Event_MungPBM\tPhanThuongVuotAiTrongTuan"} },
	},
}
tbConfig[22] = --Viªm §Õ
{
	nId = 22,
	szMessageType = "nil",
	szName = "NhËn th­ëng hoµn thµnh 10 lÇn v­ît ¶i Viªm §Õ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_VIEMDE_WEEKLY_MATCH_COUNT, 10, ">=", "Ng­¬i kh«ng ®ñ ®iÒu kiÖn nhËn th­ëng, cÇn ph¶i cè g¾ng h¬n n÷a"}},
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_VIEMDE_WEEKLY_AWARD, 0, "<=", "Mçi tuÇn chØ nhËn ®­îc phÇn th­ëng nµy 1 lÇn, h·y cè g¾ng ®Ó nhËn phÇn th­ëng cña tuÇn tíi nhÐ!"}},
	},
	tbActition = 
	{
		{"ThisActivity:VngAddWeeklyTaskCount", {nTSK_VIEMDE_WEEKLY_AWARD, 1},},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30115,1,0,0},nExpiredTime=nItemExpiredTime, nBindState = -2},10,"Event_MungPBM\tPhanThuongViemDeTrongTuan"} },
	},
}
--GhÐp nguyªn liÖu
tbConfig[23] =
{
	nId = 23,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i víi Ch­ëng §¨ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Hîp thµnh nguyªn liÖu"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp thµnh B×nh Hå L«",24} },
		{"AddDialogOpt",	{"Hîp thµnh ThiÕt T©m Töu",25} },
	},
}
tbConfig[24] = --®æi b×nh hå l«
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "§æi b×nh hå l«",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B×nh hå l«",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Hoa cóc vµng",{tbProp={6,1,30112,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
		{"AddOneMaterial",	{"Hoa cóc tÝm",{tbProp={6,1,30114,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30115,1,0,0},nExpiredTime=nItemExpiredTime,},1,"Event_MungPBM\tHopThanhBinhHoLo"} },
	},
}
tbConfig[25] = --®æi thiÕt t©m töu
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "§æi thiÕt t©m töu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ThiÕt t©m töu",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Hoa cóc vµng",{tbProp={6,1,30112,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
		{"AddOneMaterial",	{"Hoa cóc tr¾ng",{tbProp={6,1,30113,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
		{"AddOneMaterial",	{"Hoa cóc tÝm",{tbProp={6,1,30114,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30116,1,0,0},nExpiredTime=nItemExpiredTime,},1,"Event_MungPBM\tHopThanhThietTamTuu"} },
	},
}
tbConfig[26] = --tÆng hoa cóc vµng
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "Nép hoa cóc vµng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>TÆng Hoa cóc vµng",1,1,1,0},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"ThisActivity:VngGiveDaisyLimit", {nil}},
		{"AddOneMaterial",	{"Hoa cóc vµng",{tbProp={6,1,30112,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },		
	},
	tbActition = 
	{
		{"ThisActivity:VngGiveDaisy", {nil}},
	},
}
tbConfig[27] = --sö dông b×nh hå l«
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "Sö dông b×nh hå l«",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30115,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, kh«ng thÓ sö dông vËt phÈm",">="} },		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"ThisActivity:VngGourdUseLimit", {nil}},
	},
	tbActition = 
	{
		{"ThisActivity:VngUseGourd", {nil}},
	},
}
tbConfig[28] = --sö dông thiÕt t©m töu
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "Sö dông thiÕt t©m töu",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30116,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, kh«ng thÓ sö dông vËt phÈm",">="} },		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"PlayerFunLib:CheckTaskDaily",	{nTSK_GOURD_USE_DAYLIMIT,10,"H«m nay ®· sö dông 10 ThiÕt T©m Töu, mai h·y sö dông tiÕp.","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddTaskDaily",	{nTSK_GOURD_USE_DAYLIMIT,1} },
		{"ThisActivity:VngUseSteelHeartWine", {nil}},
	},
}
tbConfig[29] = --xem sè lÇn tham gia tÝnh n¨ng
{
	nId = 29,
	szMessageType = "nil",
	szName = "kiÓm tra sè lÇn tham gia tÝnh n¨ng tuÇn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },		
	},
	tbActition = 
	{
		{"ThisActivity:VngCheckWeeklyFeatureMatchCount", {nTSK_TONGKIM_WEEKLY_MATCH_COUNT, nTSK_VUOTAI_WEEKLY_MATCH_COUNT, nTSK_VIEMDE_WEEKLY_MATCH_COUNT},},		
	},
}