Include("\\script\\activitysys\\g_activity.lua") 
Include("\\script\\misc\\taskmanager.lua") 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - côc bé thay ®æi l­îng ®Þnh nghÜa b¾t ®Çu -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - côc bé thay ®æi l­îng ®Þnh nghÜa kÕt thóc -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

local tbConfig = {} 
tbConfig[1] = -- script viet hoa By http://tranhba.com  mét chi tiÕt 
{ 
nId = 1, 
szMessageType = "nil", 
szName = "Test", 
nStartDate = nil, 
nEndDate = nil, 
tbMessageParam = {nil}, 
tbCondition = 
{ 
{"lib:CheckItemInBag", {"return {szName = \" nång t×nh X¶o Kh¾c Lùc \",tbProp = {6,1,445,1,0,0},}",1,"Tµi liÖu ch­a ®ñ "} }, 
}, 
tbActition = 
{ 
{"lib:ConsumeEquiproomItem", {"return {szName = \" nång t×nh X¶o Kh¾c Lùc \",tbProp = {6,1,445,1,0,0},}",1} }, 
}, 
} 
G_ACTIVITY:RegisteActivityDetailConfig(1, tbConfig) 
