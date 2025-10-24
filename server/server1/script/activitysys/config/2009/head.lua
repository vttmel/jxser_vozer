---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==9 then
pActivity = ActivityClass:new()
pActivity.nId = 2009
pActivity.szName = "Quèc Kh¸nh"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "nil"
pActivity.nGroupId = 9
pActivity.nVersion = 3
else
pActivity = ActivityClass:new()
pActivity.nId = 2009
pActivity.szName = "Quèc Kh¸nh"
pActivity.nStartDate = 201209010000
pActivity.nEndDate = 201210010000
pActivity.szDescription = "nil"
pActivity.nGroupId = 9
pActivity.nVersion = 3
end