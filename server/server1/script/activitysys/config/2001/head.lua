---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==1 then
pActivity = ActivityClass:new()
pActivity.nId = 2001
pActivity.szName = "Phóc Léc Thä Th¸ng 1"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "nil"
pActivity.nGroupId = 20
pActivity.nVersion = 1
else
pActivity = ActivityClass:new()
pActivity.nId = 2001
pActivity.szName = "Phóc Léc Thä Th¸ng 1"
pActivity.nStartDate = 201201010000
pActivity.nEndDate = 201202010000
pActivity.szDescription = "nil"
pActivity.nGroupId = 20
pActivity.nVersion = 1
end