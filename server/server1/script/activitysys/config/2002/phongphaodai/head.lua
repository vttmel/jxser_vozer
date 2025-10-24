---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==2 then
pActivity = ActivityClass:new()
pActivity.nId = 414
pActivity.szName = "Gh–p Ph∏o"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "nil"
pActivity.nGroupId = 9
pActivity.nVersion = 3
else
pActivity = ActivityClass:new()
pActivity.nId = 414
pActivity.szName = "Gh–p Ph∏o"
pActivity.nStartDate = 201202010000
pActivity.nEndDate = 201203010000
pActivity.szDescription = "nil"
pActivity.nGroupId = 9
pActivity.nVersion = 3
end