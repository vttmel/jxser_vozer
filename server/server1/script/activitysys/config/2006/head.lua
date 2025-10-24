---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==6 then
pActivity = ActivityClass:new()
pActivity.nId = 2006
pActivity.szName = "Sinh NhËt Vâ L©m"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "nil"
pActivity.nGroupId = 9
pActivity.nVersion = 3
else
pActivity = ActivityClass:new()
pActivity.nId = 2006
pActivity.szName = "Sinh NhËt Vâ L©m"
pActivity.nStartDate = 201206010000
pActivity.nEndDate = 201207010000
pActivity.szDescription = "nil"
pActivity.nGroupId = 9
pActivity.nVersion = 3
end