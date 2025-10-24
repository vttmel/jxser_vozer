Include("\\script\\event\\wulin_2nd\\data.lua") 
-- script viet hoa By http://tranhba.com Role Value-- script viet hoa By http://tranhba.com  
WULIN_TASK_LOGIN = 1570 

WULIN_TB_TIME = { 
register = {open = 03030000, close = 03162400}, -- script viet hoa By http://tranhba.com  x¸c nhËn t­ c¸ch thêi gian 
elector = {open = 03100000, close = 03162400}, -- script viet hoa By http://tranhba.com  c¹nh chän thêi gian 
leader = {open = 03162400, close = 03232400} -- script viet hoa By http://tranhba.com  phiÕu chän tæng lÜnh ®éi 
} 

function wulin_canInfo2Player() 
nClientID = WULIN_TB_ZONEID[GetGateWayClientID()] 
if (nClientID == nil or nClientID == 0) then 
return 
end 
local curdate = tonumber(date("%m%d%H%M")) 
if (curdate >= WULIN_TB_TIME.register.open and curdate <= WULIN_TB_TIME.register.close) then 
if (GetTask(WULIN_TASK_LOGIN) == 0) then 
if (WULIN_TB_ROLES[nClientID][GetName()]) then 
Msg2Player("“ thø hai giíi ®¹i héi vâ l©m ” nãi tr­íc vµo vi tuyÓn thñ t­ c¸ch x¸c nhËn ®· b¾t ®Çu , ngµi cã thÓ ë <color=yellow> tr­íc khi an - ®¹i héi vâ l©m quan viªn (202,202)<color> chç x¸c nhËn ngµi ®Ých t­ c¸ch . x¸c nhËn t­ c¸ch nhËt kú chÆn chØ <color=yellow>2006 n¨m 3 th¸ng 17 ngµy sè kh«ng lóc <color> . ") 
else 
SetTask(WULIN_TASK_LOGIN, -1) 
end 
end 
end 
end 

if login_add then login_add(wulin_canInfo2Player, 2) end
