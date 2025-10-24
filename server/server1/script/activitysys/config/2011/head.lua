---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==11 then
pActivity = ActivityClass:new()
pActivity.nId = 2011
pActivity.szName = "20/11"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "nil"
pActivity.nGroupId = 9
pActivity.nVersion = 3
else
pActivity = ActivityClass:new()
pActivity.nId = 2011
pActivity.szName = "20/11"
pActivity.nStartDate = 201211010000
pActivity.nEndDate = 201212010000
pActivity.szDescription = "nil"
pActivity.nGroupId = 9
pActivity.nVersion = 3
end