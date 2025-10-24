---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2010\\variables.lua")
local nTask_HuDie		= 1
local nTask_XinXin		= 2
local nTask_ZhuXin_YuanXin		= 3
local nTask_ChenDu		= 4
local nTask_DaLi		= 5
local nTask_FengXiang		= 6
local nTask_XiangYang		= 7
local nTask_BianJin		= 8
local nTask_LinAn		= 9
local nTask_YangZhou		= 10
local nTask_GiveCount		= 11
local nTask_Activi_Point		= 2794
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
local nTime2 = "20"..nYear.."1001"
tbConfig = {}
tbConfig[1] = --?»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢äÁ«Åº±u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1220,1,0,0},nExpiredTime=nTime,},1,"5"} },
	},
}
tbConfig[2] = --?»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢ä¢`¶¹±u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1220,1,0,0},nExpiredTime=nTime,},1,"5"} },
	},
}
tbConfig[3] = --?»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢äÓaÍ·",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1220,1,0,0},nExpiredTime=nTime,},1,"1"} },
	},
}
tbConfig[4] = --?»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "Íæ¼?µa»÷ÇÚÀÍÀÏÅ©",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H»ng Nga"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>§· ®On mïa tr¨ng trßn. H»ng Nga h¹ giíi xuèng trÇn ch¬i. C¸c h¹ muèn ®æi th­ëng kh«ng?"} },
		{"AddDialogOpt",	{"Ta muèn hîp thµnh lång ®Ìn",5} },
                {"AddDialogOpt",	{"Ta muèn ®æi lång ®Ìn ®Æc biÖt",12} },
                {"AddDialogOpt",	{"§æi b¸nh trung thu",19} },
	},
}
tbConfig[5] = --?»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "ºÏ³É»®·ÖµÈ¼¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C¸c h¹ muèn hîp thµnh lo¹i lång ®Ìn nµo ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp thµnh lång ®Ìn b­¬m b­ím",6} },
		{"AddDialogOpt",	{"Hîp thµnh lång ®Ìn ng«i sao",7} },
		{"AddDialogOpt",	{"Hîp thµnh lång ®Ìn èng",8} },
		{"AddDialogOpt",	{"Hîp thµnh lång ®Ìn trßn",9} },
                {"AddDialogOpt",	{"Hîp thµnh lång ®Ìn c¸ chÐp",10} },
		{"AddDialogOpt",	{"Hîp thµnh lång ®Ìn kÐo qu©n",11} },
	},
}
tbConfig[6] = --?»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh lång ®Ìn b­¬m b­ím",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hîp thµnh Lång ®Ìn b­¬m b­ím",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"GiÊy KiÕng vµng",{tbProp={6,1,1221,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D©y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"50000 l­îng",{nJxb=50000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1241,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn b­¬m b­ím]"} },
	},
}
tbConfig[7] = --?»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh lång ®Ìn ng«i sao",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hîp thµnh lång ®Ìn ng«i sao",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"GiÊy KiÕng lam",{tbProp={6,1,1222,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D©y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"100000 l­îng",{nJxb=100000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1242,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[8] = --?»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh lång ®Ìn èng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hîp thµnh lång ®Ìn èng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"GiÊy KiÕng lôc",{tbProp={6,1,1223,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D©y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"200000 l­îng",{nJxb=200000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1243,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[9] = --?»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh lång ®Ìn trßn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hîp thµnh lång ®Ìn trßn",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"GiÊy KiÕng ®á",{tbProp={6,1,1224,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D©y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"300000 l­îng",{nJxb=300000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1244,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[10] = --?»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh lång ®Ìn c¸ chÐp",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hîp thµnh lång ®Ìn c¸ chÐp",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"GiÊy KiÕng cam",{tbProp={6,1,1225,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D©y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"400000 l­îng",{nJxb=400000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1245,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[11] = --?»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh lång ®Ìn kÐo qu©n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hîp thµnh lång ®Ìn kÐo qu©n",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"GiÊy KiÕng cam",{tbProp={6,1,1225,1,0,0},},5} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D©y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1246,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[12] = --?»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "§æi lång ®Ìn ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C¸c h?muèn ®æi lo¹i lång ®Ìn ®Æc biÖt nµo ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"§æi lång ®Ìn b­¬m b­ím ®Æc biÖt",13} },
		{"AddDialogOpt",	{"§æi lång ®Ìn ng«i sao ®Æc biÖt",14} },
		{"AddDialogOpt",	{"§æi lång ®Ìn èng ®Æc biÖt",15} },
		{"AddDialogOpt",	{"§æi lång ®Ìn trßn ®Æc biÖt",16} },
                {"AddDialogOpt",	{"§æi lång ®Ìn c¸ chÐp ®Æc biÖt",17} },
		{"AddDialogOpt",	{"§æi lång ®Ìn kÐo qu©n ®Æc biÖt",18} },
	},
}
tbConfig[13] = --?»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "§æi lång ®Ìn b­¬m b­ím ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi lång ®Ìn b­¬m b­ím ®Æc biÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn b­¬m b­ím",{tbProp={6,1,1241,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"100000 l­îng",{nJxb=100000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1229,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[14] = --?»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "§æi lång ®Ìn ng«i sao ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi lång ®Ìn ng«i sao ®Æc biÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn ng«i sao",{tbProp={6,1,1242,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"200000 l­îng",{nJxb=200000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1230,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[15] = --?»¸öÏ¸½Ú
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "§æi lång ®Ìn èng ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi lång ®Ìn èng ®Æc biÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn èng",{tbProp={6,1,1243,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"300000 l­îng",{nJxb=300000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1231,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[16] = --?»¸öÏ¸½Ú
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "§æi lång ®Ìn trßn ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi lång ®Ìn trßn ®Æc biÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn trßn",{tbProp={6,1,1244,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"400000 l­îng",{nJxb=400000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1232,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[17] = --?»¸öÏ¸½Ú
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "§æi lång ®Ìn c¸ chÐp ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi lång ®Ìn c¸ chÐp ®Æc biÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn c¸ chÐp",{tbProp={6,1,1245,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1233,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[18] = --?»¸öÏ¸½Ú
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "§æi lång ®Ìn kÐo qu©n ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi lång ®Ìn kÐo qu©n ®Æc biÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn kÐo qu©n",{tbProp={6,1,1246,1,0,0},},1} },
                {"AddOneMaterial",	{"NÕn",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"600000 l­îng",{nJxb=600000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1234,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[19] = --?»¸öÏ¸½Ú
{
	nId = 19,
	szMessageType = "CreateDialog",
	szName = "ºÏ³É»®·ÖµÈ¼¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C¸c h?muèn hîp thµnh lo¹i b¸nh trung thu nµo ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"§æi b¸nh trung thu th­êng.",20} },
		{"AddDialogOpt",	{"§æi b¸nh trung thu ®Ëu xanh.",21} },
		{"AddDialogOpt",	{"§æi b¸nh trung thu nh©n trøng.",22} },
		{"AddDialogOpt",	{"§æi b¸nh trung thu ®Æc biÖt.",24} },
                {"AddDialogOpt",	{"§æi b¸nh trung thu h¹t sen.",25} },
		{"AddDialogOpt",	{"§æi b¸nh trung thu con heo.",26} },
	},
}
tbConfig[20] = --?»¸öÏ¸½Ú
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "§æi b¸nh trung thu th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi b¸nh trung thu th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn b­¬m b­ím ®Æc biÖt",{tbProp={6,1,1229,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1235,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[21] = --?»¸öÏ¸½Ú
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "§æi b¸nh trung thu ®Ëu xanh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi b¸nh trung thu ®Ëu xanh",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn ng«i sao ®Æc biÖt",{tbProp={6,1,1230,1,0,0},},1} },
                {"AddOneMaterial",	{"B¸nh trung thu th­êng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1236,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[22] = --?»¸öÏ¸½Ú
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "§æi b¸nh trung thu nh©n trøng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi b¸nh trung thu nh©n trøng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn èng ®Æc biÖt",{tbProp={6,1,1231,1,0,0},},1} },
                {"AddOneMaterial",	{"B¸nh trung thu th­êng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1237,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[23] = --?»¸öÏ¸½Ú
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "§æi b¸nh trung thu nh©n trøng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi b¸nh trung thu nh©n trøng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn trßn ®Æc biÖt",{tbProp={6,1,1232,1,0,0},},1} },
                {"AddOneMaterial",	{"B¸nh trung thu th­êng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1237,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[24] = --?»¸öÏ¸½Ú
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "§æi b¸nh trung thu ®Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi b¸nh trung thu ®Æc biÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn c¸ chÐp ®Æc biÖt",{tbProp={6,1,1233,1,0,0},},1} },
                {"AddOneMaterial",	{"B¸nh trung thu th­êng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1238,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[25] = --?»¸öÏ¸½Ú
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "§æi b¸nh trung thu h¹t sen",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi b¸nh trung thu h¹t sen",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Lång ®Ìn kÐo qu©n ®Æc biÖt",{tbProp={6,1,1234,1,0,0},},1} },
                {"AddOneMaterial",	{"B¸nh trung thu th­êng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1239,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[26] = --?»¸öÏ¸½Ú
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "§æi b¸nh trung thu con heo",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§æi b¸nh trung thu con heo",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B¸nh trung thu h¹t sen",{tbProp={6,1,1239,1,0,0},},1} },
                {"AddOneMaterial",	{"B¸nh trung thu th­êng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l­îng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho¹t ®éng ®· kOt thóc."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1240,1,0,0},nExpiredTime=nTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
	},
}
tbConfig[27] = --?»¸öÏ¸½Ú
{
	nId = 27,
	szMessageType = "ServerStart",
	szName = "·?ÎñÆ÷´?¿ª½«¼ÓÔØNPC",
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
