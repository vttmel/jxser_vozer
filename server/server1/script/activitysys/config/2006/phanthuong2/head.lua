---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==6 then
pActivity = ActivityClass:new()
pActivity.nId = 417
pActivity.szName = "2012 april_zhushuai"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "nil"
pActivity.nGroupId = 9
pActivity.nVersion = 3
else
pActivity = ActivityClass:new()
pActivity.nId = 417
pActivity.szName = "2012 april_zhushuai"
pActivity.nStartDate = 201206010000
pActivity.nEndDate = 201207010000
pActivity.szDescription = "nil"
pActivity.nGroupId = 9
pActivity.nVersion = 3
end
