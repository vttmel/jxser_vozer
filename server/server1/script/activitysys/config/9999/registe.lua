Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")

Include("\\script\\activitysys\\config\\9999\\head.lua")
Include("\\script\\activitysys\\config\\9999\\config.lua")
pActivity.tbConfig = tbConfig
pActivity:InitTaskGroup()
G_ACTIVITY:AddActivity(pActivity)