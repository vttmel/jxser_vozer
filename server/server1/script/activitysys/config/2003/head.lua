---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==3 then
pActivity = ActivityClass:new()
pActivity.nId = 2003
pActivity.szName = "8/3"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "nil"
pActivity.nGroupId = 20
pActivity.nVersion = 1
else
pActivity = ActivityClass:new()
pActivity.nId = 2003
pActivity.szName = "8/3"
pActivity.nStartDate = 201203010000
pActivity.nEndDate = 201204010000
pActivity.szDescription = "nil"
pActivity.nGroupId = 20
pActivity.nVersion = 1
end