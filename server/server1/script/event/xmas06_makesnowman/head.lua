--   v¨n kiÖn tªn ##head.lua 
--   ng­êi khai s¸ng ##zhongchaolong 
--   khai s¸ng thêi gian #2014-06-08    -> 2014-07-08

xmas07_makeSnowMan_S = 14060800 
xmas07_makeSnowMan_E = 18070824 
xmas07_makeSnowMan_UseTime = 14070824  --  hîp thµnh ng­êi tuyÕt sö dông ng­êi tuyÕt 
xmas07_makeSnowMan_ActName = " Ho¹t ®éng t¹o ng­êi tuyÕt "; 

xmas2007_SnowManItem_TSK_ExpLimit = 1860 
xmas2007_SnowManItem_ExpMax = 1200000000 

function xmas07_makeSnowMan_isUsePeriod() 
local nDateH = tonumber(GetLocalDate("%y%m%d%H")); 
if nDateH >= xmas07_makeSnowMan_S and nDateH <= xmas07_makeSnowMan_UseTime then 
return 1; 
end 
return 0; 
end 

function xmas07_makeSnowMan_isActPeriod() 
local nDateH = tonumber(GetLocalDate("%y%m%d%H")); 
if nDateH >= xmas07_makeSnowMan_S and nDateH <= xmas07_makeSnowMan_E then 
return 1; 
end 
return 0; 
end 
function xmas2007_SnowManItem_GiveRandomItem(tbItemList) 

if tbItemList == nil then 
return 0 
end 
local rtotal = 1000000 
local rcur=random(1,rtotal); 
local rstep=0; 
for i=1,getn(tbItemList) do 
		rstep=rstep+floor(tbItemList[i][3]*rtotal/100);
if(rcur <= rstep) then 
xmas2007_SnowManItem_AddItem(tbItemList[i][1],tbItemList[i][2]) 
return 0; 
end 
end 
end 

function xmas2007_SnowManItem_AddItem(szItemName,tbItemProp) 
local nPropCount = getn(tbItemProp) 
if nPropCount == 6 then 
AddItem(tbItemProp[1],tbItemProp[2],tbItemProp[3],tbItemProp[4],tbItemProp[5],tbItemProp[6]); 
elseif nPropCount == 2 then 
AddGoldItem(tbItemProp[1],tbItemProp[2]) 
end 
Msg2Player(format("NhËn ®­îc %s",szItemName)) 
WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tget a item %s.",xmas07_makeSnowMan_ActName, 
GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(),szItemName )) 
end
