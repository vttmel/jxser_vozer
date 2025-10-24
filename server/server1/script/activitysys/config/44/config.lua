Include("\\script\\activitysys\\config\\44\\variables.lua") 
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");



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
local TaskVarIdx_YeSou		= 23
-------¾Ö²¿±äÁ¿¶¨Òå ½áÊø---
tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢äÁ«Åº±ý",
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
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"8"} },
	},
}
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢ä¢Ì¶¹±ý",
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
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"8"} },
	},
}
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "´ß¹Öµ«¢äÓãÍ·",
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
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"8"} },
	},
}
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "Íæ¼Òµã»÷ÇÚÀÍÀÏÅ©",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T©y H¹ Th­¬ng Nh©n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>LÖnh bµi boss Kim Quang lµ mét vËt phÈm v« cïng quý gi¸, nÕu gäi h¾n ra vµ ®¸nh b¹i ®­îc h¾n, phÇn th­ëng sÏ v« cïng gi¸ trÞ ?"} },
		{"AddDialogOpt",	{"Ta muèn ®æi Kim Bµi.",5} },
		{"AddDialogOpt",	{"Ta muèn ®æi Ngäc Bµi.",6} },
                
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Ta muèn ®æi Kim Bµi",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"Kim Bµi",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M¶nh Kim Bµi",{tbProp={6,1,1774,1,0,0},},100} },
                {"AddOneMaterial",	{"2000000 l­îng",{nJxb=2000000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1481,1,0,0},nExpiredTime=43200,},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Ta muèn ®æi Ngäc Bµi",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"Ngäc Bµi",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M¶nh Ngäc Bµi",{tbProp={6,1,1775,1,0,0},},200} },
                {"AddOneMaterial",	{"5000000 l­îng",{nJxb=5000000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi tham gia ho¹t ®éng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1482,1,0,0},nExpiredTime=43200,},1,"[TÝnh n¨ng socola] [Hîp thµnh socola]"} },
	},
}