---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2002\\phongphaotieu\\head.lua")
Include("\\script\\activitysys\\config\\2002\\phongphaotieu\\config.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")
pActivity.tbConfig = tbConfig
pActivity:InitTaskGroup()
G_ACTIVITY:AddActivity(pActivity)
