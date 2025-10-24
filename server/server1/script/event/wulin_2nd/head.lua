-- script viet hoa By http://tranhba.com  tuyÓn thñ danh s¸ch 
IL("LEAGUE") 
Include("\\script\\event\\wulin_2nd\\data.lua") 
Include("\\script\\lib\\gb_taskfuncs.lua") 
Include("\\script\\lib\\common.lua") 

CP_TASKID_TITLE = 1085 
WULIN_TASK_LOGIN = 1570 
-- script viet hoa By http://tranhba.com Const Value-- script viet hoa By http://tranhba.com  
WULIN_LGTYPE_REGISTER = 7 
WULIN_LGTYPE_ELECTOR = 8 
WULIN_LGTYPE_ACCOUNT = 9 
WULIN_FILE_MEMBERS_REGISTER = "relay_log\\wulin_2nd\\register.log" 
WULIN_FILE_MEMBERS_ALL = "relay_log\\wulin_2nd\\wulin_finalmember.log" 
WULIN_FILE_TONGMASTER = "relay_log\\wulin_2nd\\wulin_tongmaster.log" 
WULIN_MAXMEMBER = 100 -- script viet hoa By http://tranhba.com  mçi tæ phôc vô khÝ céng 100 tªn tuyÓn thñ 
WULIN_MAXLEADER = 8 -- script viet hoa By http://tranhba.com  bang chñ cïng tr­ëng l·o 
WULIN_GB_NAME = " thø hai giíi ®¹i héi vâ l©m " 
WULIN_MONEYBASE = 1000000 
WULIN_TB_TIME = { 
register = {open = 03030000, close = 03162400}, -- script viet hoa By http://tranhba.com  x¸c nhËn t­ c¸ch thêi gian 
elector = {open = 03100000, close = 03162400}, -- script viet hoa By http://tranhba.com  c¹nh chän thêi gian 
leader = {open = 03162400, close = 03232400} -- script viet hoa By http://tranhba.com  phiÕu chän tæng lÜnh ®éi 
} 

-- script viet hoa By http://tranhba.com LG Value-- script viet hoa By http://tranhba.com ELECTOR -- script viet hoa By http://tranhba.com  c¹nh ®Çu ®Ých t­¬ng quan tin tøc 
WULIN_LGTASK_MONEY = 1 -- script viet hoa By http://tranhba.com  ®Çu chó sè tiÒn 
WULIN_LGTASK_RANK = 3 -- script viet hoa By http://tranhba.com  tr­íc mÆt ®øng hµng 
WULIN_LGTASK_DATE = 4 -- script viet hoa By http://tranhba.com  ®Çu chó nhËt kú 
WULIN_LGTASK_TIME = 5 -- script viet hoa By http://tranhba.com  ®Çu chó thêi gian 

-- script viet hoa By http://tranhba.com LG Value-- script viet hoa By http://tranhba.com REGISTER 
WULIN_LGTASK_VOTEDCNT = 1 
WULIN_LGTASK_CANVOTE = 2 
WULIN_LGTASK_LEADER = 3 
WULIN_LGTASK_DATE = 4 -- script viet hoa By http://tranhba.com  ®Çu chó nhËt kú 
WULIN_LGTASK_TIME = 5 -- script viet hoa By http://tranhba.com  ®Çu chó thêi gian 
WULIN_LGTASK_FACTION = 6 -- script viet hoa By http://tranhba.com  m«n ph¸i Number 
WULIN_LGTASK_LEVEL = 7 -- script viet hoa By http://tranhba.com  cÊp bËc 

-- script viet hoa By http://tranhba.com GB Value-- script viet hoa By http://tranhba.com  
WULIN_GBTASK_SWITH = 1 -- script viet hoa By http://tranhba.com  thi hµnh qu¸ tr×nh 0 kh«ng b¾t ®Çu , 1 b¾t ®Çu ghi danh cïng c¹nh ®Çu , 2 ghi danh kÕt thóc cã thÓ b¾t ®Çu chän lÊy c¹nh ®Çu thµnh c«ng tuyÓn thñ , 3 ®¹i héi vâ l©m tuyÓn thñ danh s¸ch ®· x¸c ®Þnh cã thÓ b¾t ®Çu chän lÜnh ®éi 
WULIN_GBTASK_REGCNT = 2 -- script viet hoa By http://tranhba.com  nãi tr­íc vµo chän ®· ghi danh nh©n sè 

-- script viet hoa By http://tranhba.com  lÊy ®­îc ®èi tho¹i Npc tªn 
function wulin_npcname() 
return " ®¹i héi vâ l©m quan viªn " 
end 

-- script viet hoa By http://tranhba.com Describe ®èi tho¹i 
function wlls_descript(str, ...) 
str = "<link=image[0,1]:\\spr\\npcres\\passerby\\passerby092\\passerby092_st.spr>"..wulin_npcname().."<link>\n##"..str 
if (type(arg[1]) == "table") then 
arg = arg[1] 
end 
if (getn(arg) <= 0) then 
Describe(str, 1,"KÕt thóc ®èi tho¹i /OnCancel") 
else 
Describe(str, getn(arg), arg) 
end 
end 

-- script viet hoa By http://tranhba.com  nÕu v× nil hoÆc 0 , trë vÒ 1 , nÕu kh«ng trë vÒ 0 
function FALSE(nValue) 
if (nValue == nil or nValue == 0 or nValue == "") then 
return 1 
else 
return nil 
end 
end 

-- script viet hoa By http://tranhba.com  ®¹t ®­îc khu dïng/uèng ID 
function wl_GetZone() 
return WULIN_TB_ZONEID[GetGateWayClientID()] 
end 

function wl_GetMember() 
return WULIN_TB_ROLES[GetGateWayClientID()].n 
end 

function ascend(tb_lg1, tb_lg2)-- script viet hoa By http://tranhba.com jiang 
if (tb_lg1[2] == tb_lg2[2]) then 
if (tb_lg1[3] == nil) then 
return nil 
else 
return (tb_lg1[3] < tb_lg2[3]) 
end 
else 
return (tb_lg1[2] > tb_lg2[2]) 
end 
end
