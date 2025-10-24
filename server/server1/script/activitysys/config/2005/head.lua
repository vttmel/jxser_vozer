---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==5 then
pActivity = ActivityClass:new()
pActivity.nId = 2005
pActivity.szName = "nÊu b¸nh th¸ng 5"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "nil"
pActivity.nGroupId = 20
pActivity.nVersion = 1
else
pActivity = ActivityClass:new()
pActivity.nId = 2005
pActivity.szName = "nÊu b¸nh th¸ng 5"
pActivity.nStartDate = 201205010000
pActivity.nEndDate = 201206010000
pActivity.szDescription = "nil"
pActivity.nGroupId = 20
pActivity.nVersion = 1
end