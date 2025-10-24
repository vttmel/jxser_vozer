---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==8 then
pActivity = ActivityClass:new()
pActivity.nId = 2008
pActivity.szName = "MËt ®å thÇn bÝ ®æi b¶o r­¬ng"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "nil"
pActivity.nGroupId = 20
pActivity.nVersion = 1
else
pActivity = ActivityClass:new()
pActivity.nId = 2008
pActivity.szName = "MËt ®å thÇn bÝ ®æi b¶o r­¬ng"
pActivity.nStartDate = 201208010000
pActivity.nEndDate = 201209010000
pActivity.szDescription = "nil"
pActivity.nGroupId = 20
pActivity.nVersion = 1
end