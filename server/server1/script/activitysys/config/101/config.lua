Include("\\script\\activitysys\\g_activity.lua")
pActivity = ActivityClass:new()

local tbConfig = {}
tbConfig[1] = --npc death
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "List Map Drop By Monster",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{80,"",">="} },
		{"NpcFunLib:CheckInMap",	{"341,342"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropMonster",	{nil} },
		
	},
}

pActivity.tbConfig = tbConfig
G_ACTIVITY:AddActivity(pActivity)
