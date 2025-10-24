Include("\\script\\event\\wulin_2nd\\head.lua") 
IncludeLib("TITLE") 

_wulin_tb_mem = {} 
_wulin_tb_leader = {} 
function main() 
nClientID = wl_GetZone() 
if (nClientID == nil or nClientID == WULIN_TB_DISALLOWZONE[nClientID]) then 
wlls_descript("Vèn khu dïng/uèng kh«ng thuéc vÒ thø hai giíi ®¹i héi vâ l©m khu dïng/uèng chän lùa ph¹m vi , t­êng t×nh xin gÆp quan ph­¬ng trang web jx.kingsoft.com . ") 
return 
end 
if (gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) >= 3) then 
if (getn(_wulin_tb_mem) == 0) then 
local n_lid = LG_GetFirstLeague(WULIN_LGTYPE_REGISTER) 
while (not FALSE(n_lid)) do 
local rolename = LG_GetLeagueInfo(n_lid) 
				_wulin_tb_mem[getn(_wulin_tb_mem) + 1] = rolename
n_lid = LG_GetNextLeague(WULIN_LGTYPE_REGISTER, n_lid) 
end 
end 
if (gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) == 4) then 
if (getn(_wulin_tb_leader) == 0) then 
local n_lid = LG_GetFirstLeague(WULIN_LGTYPE_REGISTER) 
while(not FALSE(n_lid)) do 
local rolename = LG_GetLeagueInfo(n_lid) 
local leader_rank = LG_GetLeagueTask(n_lid, WULIN_LGTASK_LEADER) 
if (leader_rank ~= 0) then 
						_wulin_tb_leader[getn(_wulin_tb_leader) + 1] = {rolename, leader_rank}
end 
n_lid = LG_GetNextLeague(WULIN_LGTYPE_REGISTER, n_lid) 
end 
sort(_wulin_tb_leader, ascend) 
end 
end 
end 

local aryszContent = { 
register = { " ta muèn tuÇn tra nãi tr­íc vµo vi tuyÓn thñ danh s¸ch /wulin_query", 
" ta muèn x¸c nhËn ta tuyÓn thñ t­ c¸ch /wulin_register", 
" ta muèn tham dù tuyÓn thñ t­ c¸ch c¹nh ®Çu /wulin_compete", 
" ta mÊu chèt lÊy tuyÓn thñ ®Çu hµm /wulin_title",}, 
leader = { " ta muèn bá phiÕu lùa chän tæng lÜnh ®éi /wulin_leader", 
" ta muèn tuÇn tra ®¹i héi tuyÓn thñ danh s¸ch /wulin_queryfinal", 
" ta muèn lÊy trë vÒ c¹nh ®Çu t­ kim /wulin_giveback", 
" ta mÊu chèt lÊy tuyÓn thñ ®Çu hµm /wulin_title",}, 
over = { " ta muèn tuÇn tra tæng lÜnh ®éi /wulin_queryleader", 
" ta muèn tuÇn tra ®¹i héi tuyÓn thñ danh s¸ch /wulin_queryfinal", 
" ta muèn lÊy trë vÒ c¹nh ®Çu t­ kim /wulin_giveback", 
" ta mÊu chèt lÊy tuyÓn thñ ®Çu hµm /wulin_title",}, 
common = { " thø hai giíi ®¹i héi vâ l©m t­ c¸ch dù thi dù chän trî gióp /wulin_helpinfo", 
" hñy bá /OnCancel"} } 
local szMsg = " thø hai giíi ®¹i héi vâ l©m s¾p b¾t ®Çu , tr­íc m¾t xö vu tuyÓn thñ chän lùa giai ®o¹n , mçi phôc vô khÝ sÏ cã <color=yellow>"..WULIN_MAXMEMBER.." tªn <color> ra tuyÕn tuyÓn thñ . <color=yellow>3 th¸ng 3 ngµy ~3 th¸ng 16 ngµy <color> , ng­¬i cã thÓ ë chç nµy cña ta x¸c nhËn m×nh tuyÓn thñ t­ c¸ch hoÆc lµ tham dù tuyÓn thñ t­ c¸ch c¹nh ®Çu . ®ang chän tay danh s¸ch toµn bé x¸c ®Þnh sau <color=yellow>#3 th¸ng 17 ngµy ~3 th¸ng 23 ngµy #<color> , ®em tiÕn hµnh tuyÓn thñ phiÕu chän tæng lÜnh ®éi . cÆn kÏ dù chän quy t¾c xin gÆp quan ph­¬ng trang web <color=yellow>jx.kingsoft.com<color> . " 
local tbOpp = {} 
local curdate = tonumber(GetLocalDate("%m%d%H%M")) 
if (WULIN_TB_TIME.register.open <= curdate and WULIN_TB_TIME.register.close >= curdate and gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) == 1) then 
for i = 1, getn(aryszContent.register) do 
			tbOpp[getn(tbOpp) + 1] = aryszContent.register[i]
end 
elseif (WULIN_TB_TIME.leader.open<= curdate and gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) == 3) then 

for i = 1, getn(aryszContent.leader) do 
			tbOpp[getn(tbOpp) + 1] = aryszContent.leader[i]
end 
elseif (WULIN_TB_TIME.leader.close <= curdate and gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) == 4) then 

for i = 1, getn(aryszContent.over) do 
			tbOpp[getn(tbOpp) + 1] = aryszContent.over[i]
end 
end 
for i = 1, getn(aryszContent.common) do 
		tbOpp[getn(tbOpp) + 1] = aryszContent.common[i]
end 
wlls_descript(szMsg, tbOpp) 
end 

function wulin_register() 
local curdate = tonumber(GetLocalDate("%m%d%H%M")) 
local rolename = GetName() 
local n_gtype = wulin_canregister(rolename) 
if (n_gtype== nil) then 
elseif (n_gtype == 0) then 
wlls_descript("Ngµi kh«ng cô bÞ nãi tr­íc vµo vi t­ c¸ch , xin/mêi tuÇn tra vµo vi tuyÓn thñ danh s¸ch lÊy h¹ch ®èi víi b¶n th©n t­ c¸ch . t­êng t×nh xin gÆp quan ph­¬ng trang web <color=yellow>jx.kingsoft.com<color> . ") 
else 
local szParam = GetName().." "..GetAccount().." "..tostring(GetLevel()).." "..tostring(GetLastFactionNumber()).." "..tostring(n_gtype) 
-- script viet hoa By http://tranhba.com  th«ng b¸o relay , ®em b¶n th©n gia nhËp chiÕn ®èi víi , còng nhí log#Name#Account#Level#Faction 
LG_ApplyDoScript(1, "", "", "\\script\\event\\wulin_2nd\\members.lua", "wulin_register", szParam , "", "") 
SetTask(WULIN_TASK_LOGIN, 1) 
WriteLog(date().." Name:"..GetName().."\tAccount:"..GetAccount().."\t x¸c nhËn nãi tr­íc vµo vi ®¹i héi vâ l©m tuyÓn thñ t­ c¸ch ") 
end 
end 

function wulin_canregister(rolename) 
if (not FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, rolename))) then 
wlls_descript("Tªn cña ngµi ®· ë thø hai giíi ®¹i héi vâ l©m biÖt hiÖu bé th­îng ghi danh , ngµi chØ cÇn an t©m lµm chuÈn bÞ , ®îi ®¹i héi vâ l©m ®Ých duy m¹c chÝnh thøc v¹ch trÇn , liÒn cã thÓ ®¹i triÓn th©n thñ , quyÕt chiÕn vâ l©m . ") 
return nil 
elseif (GetLevel()< 90) then 
wlls_descript("§¹i héi vâ l©m chÝnh lµ anh hïng thiªn h¹ luËn kiÕm tû vâ ®Êt , bän ng­¬i cÊp vÉn ch­a tíi 90 cÊp , thµnh tùu th­îng sî cßn thiÕu sãt chót háa hÇu , cßn lµ trë vÒ tiÕp tôc nghiªn tËp vâ nghÖ cho tháa ®¸ng #") 
return nil 
elseif (GetLastFactionNumber() == -1) then 
wlls_descript("§¹i héi vâ l©m chÝnh lµ anh hïng thiªn h¹ luËn kiÕm tû vâ ®Êt , ng­¬i ë ®©y thµnh tùu th­îng sî cßn thiÕu sãt chót háa hÇu , cßn lµ trë vÒ tiÕp tôc nghiªn tËp vâ nghÖ cho tháa ®¸ng #") 
return nil 
end 
local n_gtype = wulin_check_player(rolename) 
if (n_gtype == nil) then -- script viet hoa By http://tranhba.com  kh«ng cã ë ®©y danh s¸ch trung 
return 0 
elseif (n_gtype == 6) then -- script viet hoa By http://tranhba.com  th­îng giíi vÖ miÖn v« ®Þch 
if (GetTask(CP_TASKID_TITLE) ~= 9) then -- script viet hoa By http://tranhba.com  tªn cã thÓ cïng th­îng giíi vÖ miÖn v« ®Þch nÆng tªn , còng kh«ng cã ®· tham gia th­îng giíi ®¹i héi vâ l©m 
return 0 
end 
elseif (GetLevel() < 120) then -- script viet hoa By http://tranhba.com  liªn cuéc so tµi tuyÓn thñ ®Òu ë ®©y 120 cÊp th­îng 
return 0 
end 
return n_gtype 
end 

-- script viet hoa By http://tranhba.com  tõ kia giíi vâ l©m liªn cuéc so tµi ®¹t ®­îc ®Ých tuyÓn thñ t­ c¸ch 
function wulin_check_player(strRoleName) 
-- script viet hoa By http://tranhba.com  do return WULIN_TB_ROLES[nClientID][strRoleName] end 

for n_gtype, tb_gname in WULIN_TB_HISTORY[nClientID] do 
if n_gtype == 3 then 
for n_ftype, tb_fname in tb_gname do 
for i = 1, getn(tb_fname) do 
if (strRoleName == tb_fname[i]) then 
return n_gtype 
end 
end 
end 
else 
for i = 1, getn(tb_gname) do 
if (strRoleName == tb_gname[i]) then 
return n_gtype 
end 
end 
end 
end 
return nil 
end 

function wulin_query() 
local aryszContent = {"ThÕ giíi thËp ®¹i cao thñ # chÆn tíi 2 th¸ng 28 ngµy #/#wulin_want2query(1)", 
" lÇn thø nhÊt vâ l©m liªn cuéc so tµi chi hai ng­êi cuéc so tµi /#wulin_want2query(2)", 
" thø hai giíi vâ l©m liªn cuéc so tµi chi ®an h¹ng cuéc so tµi /#wulin_want2query(3)", 
" lÇn thø ba vâ l©m liªn cuéc so tµi chi thÇy trß cuéc so tµi /#wulin_want2query(4)", 
" lÇn thø t­ vâ l©m liªn cuéc so tµi chi hai ng­êi cuéc so tµi /#wulin_want2query(5)", 
" th­îng giíi ®¹i héi vâ l©m vÖ miÖn v« ®Þch /#wulin_want2query(6)",} 
local tbOpp = {"Trë vÒ /main", 
" hñy bá /OnCancel"} 
for i = 6, 1, -1 do 
if (not FALSE(getn(WULIN_TB_HISTORY[nClientID][i]))) then 
tinsert(tbOpp, 1, aryszContent[i]) 
end 
end 
if (gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_REGCNT) == 0) then 
wlls_descript("<color=red> tr­íc mÆt cßn kh«ng cã tuyÓn thñ tíi x¸c nhËn t­ c¸ch , xin/mêi lùa chän nãi tr­íc vµo vi t­ c¸ch tuyÓn thñ lo¹i kh¸c #<color>", tbOpp) 
else 
wlls_descript("<color=red> tr­íc mÆt ®· cã <color=yellow>"..gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_REGCNT).." tªn <color> tuyÓn thñ x¸c nhËn t­ c¸ch , xin/mêi lùa chän nãi tr­íc vµo vi t­ c¸ch tuyÓn thñ lo¹i kh¸c #<color>", tbOpp) 
end 
end 

function wulin_want2query(nSel) 
if (nSel == 3) then -- script viet hoa By http://tranhba.com  nÕu nh­ m«n ph¸i ®an h¹ng cuéc so tµi , ®Æc thï mét c¸i 
wulin_query2faction() 
else 
if (not WULIN_TB_HISTORY[nClientID][nSel] or getn(WULIN_TB_HISTORY[nClientID][nSel]) == 0) then 
wlls_descript("Nªn lo¹i h×nh vµo vi t­ c¸ch kh«ng cã nãi tr­íc vµo vi tuyÓn thñ . ","Trë vÒ /wulin_query","Hñy bá /OnCancel") 
return 
end 
wulin_query2member(WULIN_TB_HISTORY[nClientID][nSel]) 
end 
end 

function wulin_query2faction() 
local tbOpp = {"ThiÕu L©m ®an h¹ng cuéc so tµi /wulin_factmember", 
" Thiªn v­¬ng ®an h¹ng cuéc so tµi /wulin_factmember", 
" §­êng m«n ®an h¹ng cuéc so tµi /wulin_factmember", 
" n¨m ®éc ®an h¹ng cuéc so tµi /wulin_factmember", 
" Nga Mi ®an h¹ng cuéc so tµi /wulin_factmember", 
" thóy khãi ®an h¹ng cuéc so tµi /wulin_factmember", 
" C¸i Bang ®an h¹ng cuéc so tµi /wulin_factmember", 
" ngµy nhÉn ®an h¹ng cuéc so tµi /wulin_factmember", 
" Vâ §­¬ng ®an h¹ng cuéc so tµi /wulin_factmember", 
" C«n L«n ®an h¹ng cuéc so tµi /wulin_factmember", 
" trë vÒ /wulin_query", 
" hñy bá /OnCancel"} 
wlls_descript("<color=red> xin/mêi lùa chän ®an h¹ng cuéc so tµi m«n ph¸i #<color>", tbOpp) 
end 

function wulin_factmember(nSel) 
	local faction = nSel + 1
local tb_mem = WULIN_TB_HISTORY[nClientID][3][faction] 
if (getn(tb_mem) == 0) then 
wlls_descript("Nªn m«n ph¸i kh«ng cã tuyÓn thñ vµo vi . ","Trë vÒ /wulin_query2faction","Hñy bá /OnCancel") 
return 
end 
wulin_query2member(tb_mem) 
end 


function wulin_query2member(tb_mem) 
local szmsg = "<color=red> tuyÓn thñ danh s¸ch nh­ sau #<color>\n" 
for i = 1, getn(tb_mem) do 
if (not FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, tb_mem[i]))) then 
szmsg = safeshow(szmsg..tb_mem[i]).." <color=red># ®· ghi danh #<color>\n" 
else 
szmsg = safeshow(szmsg..tb_mem[i]).."\n" 
end 
end 
wlls_descript(szmsg) 
end 

-- script viet hoa By http://tranhba.com  c¹nh ®Çu tuyÓn thñ t­ c¸ch 
function wulin_compete() 
local curdate = tonumber(GetLocalDate("%m%d%H%M")) 
if (WULIN_TB_TIME.elector.open > curdate or WULIN_TB_TIME.elector.close < curdate) then 
wlls_descript("C¹nh ®Çu ®¹i héi vâ l©m tuyÓn thñ t­ c¸ch víi <color=yellow>2006 n¨m 3 th¸ng 10 ngµy 0#00~2006 n¨m 3 th¸ng 16 ngµy 24#00<color># lÊy phôc vô khÝ thêi gian lµ chÝnh x¸c # tiÕn hµnh . \n## tham dù c¹nh ®Çu ®Ých nhµ ch¬i cÊp bËc kh«ng nhá víi <color=yellow>90 cÊp <color> . mçi tªn nhµ ch¬i cã thÓ tù do ®Çu chó sè tiÒn , mçi lÇn lÊy <color=yellow>100 v¹n <color> v× thÊp nhÊt ®Çu ngän sè tiÒn . \n## c¹nh ®Çu thµnh c«ng nhµ ch¬i , kú ®Çu chó sè tiÒn ®em lµm c¹nh ®Çu t­ kim , tõ hÖ thèng thu lÊy # c¹nh ®Çu thÊt b¹i nhµ ch¬i , lµ cã thÓ toµn ng¹ch lÜnh héi m×nh ®Çu chó sè tiÒn . ") 
return 
end 

if (wulin_canregister(GetName()) == nil) then 

elseif(not FALSE(wulin_canregister(GetName()))) then 
wlls_descript("Ngµi ®· cô bÞ nãi tr­íc vµo vi ®¹i héi vâ l©m ®Ých t­ c¸ch , chØ cÇn ë chç nµy cña ta x¸c nhËn ghi danh lµ ®­îc cã chÝnh thøc tuyÓn thñ t­ c¸ch , kh«ng cÇn tham dù c¹nh ®Çu . ","Ta muèn x¸c nhËn tuyÓn thñ t­ c¸ch /wulin_register","Tr­íc hÕt ®Ó cho ta suy nghÜ mét chót /OnCancel") 
else 
local n_money, rank = LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_MONEY), LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_RANK) 
local szmsg = "" 
if (n_money ~= 0 and rank == 0) then 
szmsg = " ngµi tr­íc mÆt ®Ých c¹nh ®Çu sè tiÒn v× <color=red>"..(n_money * WULIN_MONEYBASE).."<color> hai , t¹m thêi cßn kh«ng cã h¹ng , cã thÓ sau nµy tuÇn tra ®øng hµng . \n##" 
elseif (n_money ~= 0 and rank ~= 0) then 
szmsg = " ngµi tr­íc mÆt ®Ých c¹nh ®Çu sè tiÒn v× <color=red>"..(n_money * WULIN_MONEYBASE).."<color> hai , tr­íc mÆt h¹ng v× thø <color=red>"..rank.."<color> tªn . \n##" 
end 
wlls_descript(szmsg.." vèn khu dïng/uèng nãi tr­íc vµo vi tuyÓn thñ céng <color=green>"..wl_GetMember().." tªn <color> , ®· x¸c nhËn vµo vi t­ c¸ch tuyÓn thñ danh ng¹ch v× <color=green>"..gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_REGCNT).." tªn <color> . \n##<color=yellow> c¹nh ®Çu danh ng¹ch <color># vèn khu dïng/uèng tæng céng cã <color=red>"..(WULIN_MAXMEMBER-wl_GetMember()).." tªn <color> cè ®Þnh ®¹i héi vâ l©m c¹nh ®Çu tuyÓn thñ danh ng¹ch . ®ång thêi , ë trong vßng thêi gian quy ®Þnh kh«ng cã x¸c nhËn ghi danh tham gia ®¹i héi vâ l©m ®Ých # cã vµo vi t­ c¸ch ®Ých # tuyÓn thñ kú danh ng¹ch , ®em tù ®éng kÕ vµo c¹nh ®Çu tuyÓn thñ danh ng¹ch trung , ta sÏ c¨n cø ®Çu chó sè tiÒn thuËn lÇn chän lÊy nhµ ch¬i lÊy ®­îc thø hai giíi ®¹i héi vâ l©m tuyÓn thñ t­ c¸ch . \n##<color=yellow> c¹nh ®Çu quy t¾c <color># mçi mét lÇn Ýt nhÊt ®Çu chó <color=red>100 v¹n <color> , nhiÒu nhÊt ®Çu chó <color=red>5 øc <color> . nhµ ch¬i nh­ng tiÕn hµnh <color=red> nhiÒu lÇn ®Çu chó <color> , ®Çu ngän tiÒn b¹c <color=red> th­îng h¹n kh«ng phong ®Ýnh <color> . tham dù c¹nh ®Çu ®Ých nhµ ch¬i cÊp bËc kh«ng nhá víi <color=red>90 cÊp <color> . c¹nh ®Çu thµnh c«ng nhµ ch¬i , kú ®Çu chó sè tiÒn ®em lµm c¹nh ®Çu t­ kim , tõ hÖ thèng thu lÊy # c¹nh ®Çu thÊt b¹i nhµ ch¬i , lµ cã thÓ toµn ng¹ch lÜnh héi m×nh ®Çu chó sè tiÒn . ","Ta muèn c¹nh ®Çu tuyÓn thñ t­ c¸ch /wulin_want2compete","Ta suy nghÜ mét chót tr­íc /OnCancel") 
end 
end 

function wulin_want2compete() 
AskClientForNumber("wulin_sure2compete", 1000000, 500000000,"Xin/mêi ®­a vµo ®Çu chó sè tiÒn :"); 
end 

function wulin_sure2compete(nMoney) 
-- script viet hoa By http://tranhba.com  kiÓm tra ®Çu chó sè tiÒn 
if (nMoney < 1000000 or nMoney > 500000000) then 
wlls_descript("Mçi lÇn c¹nh ®Çu thÊp nhÊt 100 v¹n , cao nhÊt kh«ng v­ît qua 5 øc , xin x¸c nhËn ng­¬i thua vµo ®Ých sè tiÒn . ") 
return 
end 
if (mod(nMoney, WULIN_MONEYBASE) ~= 0) then 
wlls_descript("C¹nh ®Çu mçi lÇn lÊy <color=red>100 v¹n <color> v× thÊp nhÊt ®Çu ngän sè tiÒn , c¹nh ®Çu sè tiÒn cÇn v× <color=red>100 v¹n <color> ®Ých chØnh sæ lÇn . xin/mêi lÇn n÷a c¹nh ®Çu . ") 
return 
end 
wlls_descript("Ngµi ®Çu chó ®Ých sè tiÒn v× <color=red>"..nMoney.." hai <color> , xin x¸c nhËn ngµi ®Ých sè tiÒn ®Õm . ","Ta x¸c nhËn /#wulin_final2compete("..nMoney..")","Hñy bá c¹nh ®Çu /OnCancel") 
end 

function wulin_final2compete(nMoney) 
-- script viet hoa By http://tranhba.com  lÇn n÷a x¸c nhËn c¹nh ®Çu t­ c¸ch 
if (wulin_canregister(GetName()) == nil or wulin_canregister(GetName()) == 1) then 
return 
end 
if (GetCash() >= nMoney) then 
local result, rank = wulin_docompete(GetName(), GetAccount(), nMoney) 
if (result) then 
Pay(nMoney) 
if (rank == 0) then 
wlls_descript("Ngµi thµnh c«ng tham dù lÇn nµy c¹nh ®Çu , tr­íc mÆt c¹nh ®Çu sè tiÒn v× <color=red>"..(result * WULIN_MONEYBASE).." hai <color> , t¹m thêi cßn kh«ng cã h¹ng , xin sau tuÇn tra ngµi ®Ých tr­íc mÆt h¹ng . ") 
else 
wlls_descript("Ngµi thµnh c«ng tham dù lÇn nµy c¹nh ®Çu , tr­íc mÆt c¹nh ®Çu sè tiÒn v× <color=red>"..(result * WULIN_MONEYBASE).." hai <color> , t¹m thêi ®øng hµng v× <color=yellow>"..rank.."<color> tªn , ®øng hµng cßn kh«ng cã cµ míi , xin sau trë l¹i tuÇn tra ngµi ®Ých tr­íc mÆt h¹ng . ") 
end 
WriteLog(date().."\tName:"..GetName().."\tAccount:"..GetAccount().."\t c¹nh ®Çu ®¹i héi vâ l©m tuyÓn thñ t­ c¸ch ®Çu nhËp "..nMoney.." hai , céng ®Çu nhËp "..(result * WULIN_MONEYBASE).." hai . ") 
else-- script viet hoa By http://tranhba.com  thÊt b¹i 
wlls_descript("C¹nh ®Çu x¶y ra vÊn ®Ò , xin hËu trë l¹i . ") 
end 
else 
wlls_descript("Ngµi trªn ng­êi gièng nh­ kh«ng cã mang ®ñ <color=red>"..nMoney.."<color> ng©n l­îng nga , lµ thËt muèn tíi c¹nh ®Çu sao ? còng kh«ng nªn khai ta c­êi giìn a # cßn lµ mang ®ñ ng©n l­îng trë l¹i ®i . ") 
end 
end 

function wulin_docompete(rolename, roleaccount, n_money) 
local n_lid = LG_GetLeagueObj(WULIN_LGTYPE_ELECTOR, rolename) 
if (FALSE(n_lid)) then -- script viet hoa By http://tranhba.com  nÕu nh­ chiÕn ®éi cßn ch­a thµnh lËp , b©y giê khai s¸ng 
wulin_creatNewmember(WULIN_LGTYPE_ELECTOR, rolename, roleaccount) 
local n_level = GetLevel() 
local n_faction = GetLastFactionNumber() 
LG_ApplySetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_FACTION, n_faction) 
LG_ApplySetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_LEVEL, n_level) 
end 
-- script viet hoa By http://tranhba.com  local nNewLeagueID = LG_CreateLeagueObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
-- script viet hoa By http://tranhba.com  LG_SetLeagueInfo(nNewLeagueID, WULIN_LGTYPE_ELECTOR, rolename) -- script viet hoa By http://tranhba.com  thiÕt trÝ x· ®oµn tin tøc ( lo¹i h×nh # tªn ) 
-- script viet hoa By http://tranhba.com  LG_ApplyAddLeague(nNewLeagueID, "", "") 
-- script viet hoa By http://tranhba.com  LG_FreeLeagueObj(nNewLeagueID) 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  gia nhËp chiÕn ®éi lÊy tr­¬ng môc 
-- script viet hoa By http://tranhba.com  local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn thµnh viªn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  thiÕt trÝ x· ®oµn thµnh viªn ®Ých tin tøc ( vai trß tªn # chøc vÞ # x· ®oµn lo¹i h×nh # x· ®oµn tªn ) 
-- script viet hoa By http://tranhba.com  LGM_SetMemberInfo(nMemberID, roleaccount, 0, WULIN_LGTYPE_ELECTOR, rolename) 
-- script viet hoa By http://tranhba.com  LGM_ApplyAddMember(nMemberID, "", "") 
-- script viet hoa By http://tranhba.com  LGM_FreeMemberObj(nMemberID) 
-- script viet hoa By http://tranhba.com  end 
local pre_money = LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_MONEY) 
LG_ApplyAppendLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_MONEY, floor(n_money / WULIN_MONEYBASE)) -- script viet hoa By http://tranhba.com  ®Çu chó sè tiÒn 
LG_ApplySetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_DATE, tonumber(GetLocalDate("%d%H"))) -- script viet hoa By http://tranhba.com  ®Çu chó nhËt kú 
LG_ApplySetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_TIME, tonumber(GetLocalDate("%M%S"))) -- script viet hoa By http://tranhba.com  ®Çu chó thêi gian 
	return (pre_money + floor(n_money / WULIN_MONEYBASE)),LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_RANK)
end 

-- script viet hoa By http://tranhba.com  phiÕu chän tæng lÜnh ®éi 
function wulin_leader() 
if (gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) == 3) then 
-- script viet hoa By http://tranhba.com n_lid, rolename 
if (getn(_wulin_tb_mem) == 0) then 
local n_lid = LG_GetFirstLeague(WULIN_LGTYPE_REGISTER) 
while (not FALSE(n_lid)) do 
local rolename = LG_GetLeagueInfo(n_lid) 
				_wulin_tb_mem[getn(_wulin_tb_mem) + 1] = rolename
n_lid = LG_GetNextLeague(WULIN_LGTYPE_REGISTER, n_lid) 
end 
end 
if (not FALSE(wulin_check_canleader())) then 
wlls_descript("<color=yellow> phiÕu chän tæng lÜnh ®éi <color>#2006 n¨m 3 th¸ng 17 ngµy 0#00~2006 n¨m 3 th¸ng 23 ngµy 24#00# lÊy phôc vô khÝ thêi gian lµ chÝnh x¸c # trong lóc , ®ang x¸c ®Þnh ®Ých ®¹i héi vâ l©m tuyÓn thñ danh s¸ch trung , bá phiÕu lùa chän ngµi chç ë khu dïng/uèng ®Ých tæng lÜnh ®éi , mçi ng­êi giíi h¹n mét phiÕu . ngµi cã thÓ ë chç nµy cña ta bá phiÕu . ","C¨n cø chØ ®Þnh tuyÓn thñ bá phiÕu /wulin_askforleadername","C¨n cø ®¹i héi vâ l©m tuyÓn thñ liÖt biÓu bá phiÕu /#wulin_showmember(0,1)","Hñy bá /OnCancel") 
end 
end 
end 

function wulin_check_canleader() 
if (FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, GetName()))) then 
wlls_descript("Ngµi kh«ng ph¶i lµ thø hai giíi ®¹i héi vâ l©m tuyÓn thñ , kh«ng thÓ tham gia phiÕu chän tæng lÜnh ®éi . ") 
return nil 
elseif (LG_GetLeagueTask(WULIN_LGTYPE_REGISTER, GetName(), WULIN_LGTASK_CANVOTE) ~= 0) then-- script viet hoa By http://tranhba.com  ®· ®Çu qu¸ phiÕu 
wlls_descript("Ngµi ®· ®Çu qu¸ phiÕu , th× kh«ng thÓ n÷a ®èi víi tuyÓn thñ tiÕn hµnh bá phiÕu . ") 
return nil 
end 
return 1 
end 

function wulin_askforleadername() 
AskClientForString("wulin_want2leader", "", 1, 16,"Xin/mêi ®­a vµo vai trß tªn "); 
end 

function wulin_showmember(start, pages) 
local tbOpp = {} 
if (getn(_wulin_tb_mem) - start <= 10) then 
for i = 1, getn(_wulin_tb_mem) - start do 
			tbOpp[getn(tbOpp) + 1] = safeshow(_wulin_tb_mem[start + i]).."/#wulin_want2leader(\""..safestr(_wulin_tb_mem[start + i]).."\")"
end 
else 
for i = 1, 10 do 
			tbOpp[getn(tbOpp) + 1] = safeshow(_wulin_tb_mem[start + i]).."/#wulin_want2leader(\""..safestr(_wulin_tb_mem[start + i]).."\")"
end 
		tbOpp[getn(tbOpp) + 1] = "ÏÂÒ»Ò³/#wulin_showmember("..(start + 10)..","..(pages + 1)..")"
end 
if (pages ~= 1) then 
		tbOpp[getn(tbOpp) + 1] = "ÉÏÒ»Ò³/#wulin_showmember("..(start - 10)..","..(pages - 1)..")"
end 
	tbOpp[getn(tbOpp) + 1] = "È¡Ïû/OnCancel"
wlls_descript("Danh s¸ch nh­ sau , xin/mêi lùa chän #<color=red>#"..wulin_getPage(pages).."#<color>", tbOpp) 
end 

function wulin_want2leader(rolename) 
wlls_descript("Ngµi ®em sÏ ®èi <color=red>"..safeshow(rolename).."<color> tiÕn hµnh bá phiÕu sao ? ","Ta x¸c nhËn /#wulin_sure2leader(\""..safestr(rolename).."\")","Ta cßn ®ang suy nghÜ /OnCancel") 
end 

function wulin_sure2leader(rolename) 
if (FALSE(wulin_check_canleader())) then 
return 
end 
if (FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, rolename))) then 
wlls_descript("Nhµ ch¬i <color=red>"..rolename.."<color> kh«ng ph¶i lµ ®¹i héi vâ l©m tuyÓn thñ , kh«ng thÓ ®èi víi nªn nhµ ch¬i tiÕn hµnh bá phiÕu . ") 
return 
end 

	LG_ApplyAppendLeagueTask(WULIN_LGTYPE_REGISTER, rolename, WULIN_LGTASK_VOTEDCNT, 1)-- script viet hoa By http://tranhba.com Í¶Æ±+1
LG_ApplySetLeagueTask(WULIN_LGTYPE_REGISTER, rolename, WULIN_LGTASK_DATE, date("%d")) 
LG_ApplySetLeagueTask(WULIN_LGTYPE_REGISTER, rolename, WULIN_LGTASK_TIME, date("%H%M")) 
LG_ApplySetLeagueTask(WULIN_LGTYPE_REGISTER, GetName(), WULIN_LGTASK_CANVOTE, 1)-- script viet hoa By http://tranhba.com  ®· bá phiÕu 
wlls_descript("Ngµi ®èi víi <color=yellow>"..safeshow(rolename).."<color> ®Ých bá phiÕu thµnh c«ng #") 
WriteLog(date().." Name:"..GetName().." Account:"..GetAccount().."\t h­íng ["..rolename.."] bá phiÕu chän tæng lÜnh ®éi ") 
end 

function wulin_getPage(page) 
local tb_pagename = { 
[1] = " tê thø nhÊt ", 
[2] = " tê thø hai ", 
[3] = " thø ba tê ", 
[4] = " thø t­ tê ", 
[5] = " thø n¨m tê ", 
[6] = " thø s¸u tê ", 
[7] = " thø b¶y tê ", 
[8] = " thø t¸m tê ", 
[9] = " thø chÝn tê ", 
[10] = " thø m­êi tê ", 
[11] = " thø m­êi mét tê ", 
[12] = " thø m­êi hai tê ", 
} 
return tb_pagename[page] 
end 

function wulin_queryfinal() 
wulin_showqueryfinal(0,1) 
end 

function wulin_showqueryfinal(start, pages) 
local tbOpp = {} 
local szMsg = " tuyÓn thñ danh s¸ch nh­ sau #<color=red>#"..wulin_getPage(pages).."#<color>" 
if (getn(_wulin_tb_mem) - start <= 10) then 
for i = 1, getn(_wulin_tb_mem) - start do 
			szMsg = szMsg.."\n¡¡¡¡"..safeshow(_wulin_tb_mem[start + i])
end 
else 
for i = 1, 10 do 
			szMsg = szMsg.."\n¡¡¡¡"..safeshow(_wulin_tb_mem[start + i])
-- script viet hoa By http://tranhba.com 			tbOpp[getn(tbOpp) + 1] = _wulin_tb_mem[start + i].."/#wulin_showqueryfinal("..(start + 10)..","..(pages + 1)..")"
end 
		tbOpp[getn(tbOpp) + 1] = "ÏÂÒ»Ò³/#wulin_showqueryfinal("..(start + 10)..","..(pages + 1)..")"
end 
if (pages ~= 1) then 
		tbOpp[getn(tbOpp) + 1] = "ÉÏÒ»Ò³/#wulin_showqueryfinal("..(start - 10)..","..(pages - 1)..")"
end 
	tbOpp[getn(tbOpp) + 1] = "È¡Ïû/OnCancel"
wlls_descript(szMsg, tbOpp) 
end 

function wulin_giveback() 
if (FALSE(wulin_check_cangiveback())) then 
return 
end 
local n_money = LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_MONEY) 
if (n_money > 500) then 
wlls_descript("Bëi v× ngµi së ®Çu sè tiÒn v× <color=red>"..(n_money*WULIN_MONEYBASE).." hai <color> lín h¬n <color=red>5 øc <color> , ta ®em ph©n lÇn tr¶ l¹i ngµi ®Ých tÊt c¶ ®Çu chó sè tiÒn , mçi lÇn tr¶ l¹i sè tiÒn th­îng h¹n v× <color=red>5 øc <color> . ","HiÓu , xin/mêi tr¶ l¹i cho ta /#wulin_sure2giveback(500)","Ta chê mét chót trë l¹i nhËn lÊy /OnCancel") 
else 
wlls_descript("Ngµi ®Ých ®Çu chó sè tiÒn v× <color=red>"..(n_money*WULIN_MONEYBASE).."<color> hai , b©y giê thu håi sao ? ","D¹/õ , xin/mêi tr¶ l¹i cho ta /#wulin_sure2giveback("..n_money..")","Ta chê mét chót trë l¹i nhËn lÊy /OnCancel") 
end 
end 

function wulin_sure2giveback(n_money) 
if (FALSE(wulin_check_cangiveback())) then 
return 
end 
local curmoney = LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_MONEY) 
if (n_money > curmoney) then 
return 
end 
LG_ApplyAppendLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_MONEY, (-n_money)) 
Earn(n_money * WULIN_MONEYBASE) 
if (n_money == curmoney) then 
wlls_descript("Ngµi ®Ých ®Çu chó kim <color=red>"..(n_money * WULIN_MONEYBASE).."<color> hai , ®· tr¶ l¹i cho ngµi , xin/mêi nghiÖm thu . ") 
else 
wlls_descript("Ngµi ®Ých ®Çu chó kim <color=red>"..(n_money * WULIN_MONEYBASE).."<color> hai , ®· tr¶ l¹i cho ngµi , xin/mêi nghiÖm thu . ngµi cßn cã cßn thõa l¹i kho¶n ng¹ch "..((curmoney - n_money) * WULIN_MONEYBASE).." , xin nhí ph¶i tíi lÊy trë vÒ . ") 
end 
WriteLog(date().." Name:"..GetName().." Account:"..GetAccount().." nhËn lÊy trë vÒ ®Çu chó kim "..(n_money*WULIN_MONEYBASE)) 
end 

function wulin_check_cangiveback() 
if (FALSE(LG_GetLeagueObj(WULIN_LGTYPE_ELECTOR, GetName()))) then 
wlls_descript("Ngµi ch­a tõng cã tham gia ®¹i héi vâ l©m tuyÓn thñ t­ c¸ch ®Ých c¹nh ®Çu . chØ cã tham gia c¹nh ®Çu h¬n n÷a c¹nh ®Çu thÊt b¹i nhµ ch¬i míi cã thÓ dÉn trë vÒ toµn ng¹ch ®Ých ®Çu chó sè tiÒn . ") 
return nil 
else 
if (not FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, GetName()))) then 
wlls_descript("Ngµi thµnh c«ng c¹nh ®Çu v× ®¹i héi vâ l©m tuyÓn thñ , còng kh«ng cÇn cßn muèn trø cÇm trë vÒ ®Çu chó kim liÔu . ") 
return nil 
elseif (LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_MONEY) <= 0) then 
wlls_descript("Ngµi ®· toµn ng¹ch dÉn trë vÒ ®Çu chó kim , kh«ng cã g× cã thÓ tr¶ l¹i cho ngµi ®Ých l©u #") 
return nil 
elseif (GetCash() >= 1000000000) then 
wlls_descript("Ngµi trªn ng­êi mang ®Ých tiÒn qu¸ nhiÒu , ®Ó ngõa v¹n nhÊt , ngµi hay lµ tr­íc ®em tói ®eo l­ng ®Ých tiÒn chøa l¹i ®Õn lÊy ®i . ") 
return nil 
end 
end 
return 1 
end 

WULIN_TB_INFO = { 
"######<color=red> ®¹i héi vâ l©m nãi tr­íc t­ c¸ch x¸c nhËn <color>\n## cô bÞ vµo vi t­ c¸ch ®Ých tuyÓn thñ , ë nhÊt ®Þnh kú h¹n <color=yellow>#3 th¸ng 3 ngµy ~3 th¸ng 16 ngµy #<color> bªn trong , ë chç nµy cña ta x¸c ®Þnh ghi danh tham gia thø hai giíi ®¹i héi vâ l©m , lµ cã thÓ ®¹t ®­îc thø hai giíi ®¹i héi vâ l©m - tuyÓn thñ t­ c¸ch . ë trong vßng thêi gian quy ®Þnh , ch­a cã x¸c ®Þnh ghi danh tuyÓn thñ tham gia lµ coi lµ <color=yellow> tù ®éng bá cuéc <color> , kú danh ng¹ch tù ®éng kÕ vµo c¹nh ®Çu tuyÓn thñ danh ng¹ch trung . \n##<color=yellow> cô cã nãi tr­íc vµo vi t­ c¸ch ®Ých tuyÓn thñ bao gåm #<color>\n## kiÕp tr­íc giíi thËp ®¹i cao thñ # chÆn chØ 2006 n¨m 2 th¸ng 28 ngµy 24#00# . \n## th­îng giíi ®¹i héi vâ l©m tÊt c¶ tranh tµi # ®oµn thÓ cuéc so tµi ngo¹i trõ # ®Ých vÖ miÖn v« ®Þch . \n## c¸c giíi vâ l©m liªn cuéc so tµi tr­íc 4 tªn # c¨n cø c¸c khu dïng/uèng còng dïng/uèng ®Ých bÊt ®ång t×nh huèng cã ®iÒu bÊt ®ång #\n<color=red> t­êng t×nh xin gÆp quan ph­¬ng trang web jx.kingsoft.com<color>", 
"######<color=red> ®¹i héi vâ l©m tuyÓn thñ t­ c¸ch c¹nh ®Çu <color>\n## mçi tæ phôc vô khÝ cã <color=yellow>"..WULIN_MAXMEMBER.." tªn <color> ®¹i héi vâ l©m tuyÓn thñ , trõ ®i nãi tr­íc vµo vi t­ c¸ch ®Ých tuyÓn thñ , sÏ cßn sãt l¹i nhÊt ®Þnh c¹nh ®Çu tuyÓn thñ danh ng¹ch , ®ång thêi ë trong vßng thêi gian quy ®Þnh , ch­a cã x¸c ®Þnh ghi danh tham gia ®¹i héi vâ l©m ®Ých # cã vµo vi t­ c¸ch ®Ých # tuyÓn thñ lµ coi lµ tù ®éng bá cuéc , kú danh ng¹ch tù ®éng kÕ vµo c¹nh ®Çu tuyÓn thñ danh ng¹ch trung . \n## c¹nh ®Çu ph­¬ng ph¸p chän lùa <color=yellow> thÇm ngän c¹nh ®Çu <color> . mçi tªn nhµ ch¬i cã thÓ tù do ®Çu chó sè tiÒn , nh­ng chØ cã thÓ tuÇn tra m×nh <color=yellow> ®Çu chó sè tiÒn cïng víi ®øng hµng t×nh huèng <color> . ë c¹nh ®Çu thêi gian <color=yellow>#3 th¸ng 10 ngµy ~3 th¸ng 16 ngµy #<color> sau khi kÕt thóc , sÏ c¨n cø ®Çu chó sè tiÒn ®øng hµng , cho cïng t­¬ng øng tuyÓn thñ thø hai giíi ®¹i héi vâ l©m - tuyÓn thñ t­ c¸ch . \n## c¹nh ®Çu thµnh c«ng tuyÓn thñ , kú ®Çu chó sè tiÒn ®em lµm c¹nh ®Çu t­ kim , tõ hÖ thèng thu lÊy # c¹nh ®Çu thÊt b¹i tuyÓn thñ , lµ cã thÓ toµn ng¹ch dÉn trë vÒ m×nh ®Çu chó kim . mçi lÇn nhiÒu nhÊt lui ph¶n cho tuyÓn thñ ®Ých sè tiÒn th­îng h¹n v× 5 øc . \n## tham dù c¹nh ®Çu ®Ých nhµ ch¬i cÊp bËc nhÊt ®Þnh ph¶i <color=yellow> kh«ng nhá víi 90 cÊp <color> , h¬n n÷a xÕp vµo qu¸ mét <color=yellow> m«n ph¸i <color> . ®· lÊy ®­îc nãi tr­íc vµo vi t­ c¸ch cïng ®¹i héi vâ l©m tuyÓn thñ t­ c¸ch ®Ých tuyÓn thñ kh«ng thÓ tham dù c¹nh ®Çu . ", 
"######<color=red> phiÕu chän ®¹i héi vâ l©m tæng lÜnh ®éi <color>\n## ë ®¹i héi vâ l©m tuyÓn thñ t­ c¸ch x¸c ®Þnh sau nµy , tÊt c¶ tuyÓn thñ cã thÓ ë chç nµy cña ta bá phiÕu lùa chän vèn khu dïng/uèng ®Ých tæng lÜnh ®éi , lùa chän ph­¬ng ph¸p v× <color=yellow> ®iÒn viÕt tªn hoÆc trùc tiÕp nhãm ra tuyÓn thñ tªn chän h¹ng <color> , mçi tªn tuyÓn thñ chØ cã thÓ <color=yellow> ®Çu 1 phiÕu <color> . bá phiÕu thêi gian <color=yellow>#3 th¸ng 17 ngµy ~3 th¸ng 23 ngµy #<color> chÆn chØ sau , sè phiÕu ®Ö nhÊt tuyÓn thñ trë thµnh nªn khu dïng/uèng ®Ých <color=yellow> tæng lÜnh ®éi <color># tøc ®¹i héi vâ l©m phôc vô khÝ nªn phôc vô khÝ bang héi ®Ých bang chñ ## sè phiÕu thø 2-8 tªn lµ v× ®¹i héi vâ l©m phôc vô khÝ nªn phôc vô khÝ bang héi ®Ých <color=yellow> tr­ëng l·o <color> . " 
} 
-- script viet hoa By http://tranhba.com  ®¹i héi vâ l©m dù chän trî gióp 
function wulin_helpinfo() 
wlls_descript(WULIN_TB_INFO[1],"§¹i héi vâ l©m tuyÓn thñ t­ c¸ch c¹nh ®Çu /wulin_helpinfo_1","PhiÕu chän ®¹i héi vâ l©m tæng lÜnh ®éi /wulin_helpinfo_2","C¸m ¬n , ta râ rµng /OnCancel") 
end 

function wulin_helpinfo_1() 
wlls_descript(WULIN_TB_INFO[2],"§¹i héi vâ l©m nãi tr­íc t­ c¸ch x¸c nhËn /wulin_helpinfo","PhiÕu chän ®¹i héi vâ l©m tæng lÜnh ®éi /wulin_helpinfo_2","C¸m ¬n , ta râ rµng /OnCancel") 
end 

function wulin_helpinfo_2() 
wlls_descript(WULIN_TB_INFO[3],"§¹i héi vâ l©m nãi tr­íc t­ c¸ch x¸c nhËn /wulin_helpinfo","§¹i héi vâ l©m tuyÓn thñ t­ c¸ch c¹nh ®Çu /wulin_helpinfo_1","C¸m ¬n , ta râ rµng /OnCancel") 
end 

function OnCancel() 
end 

-- script viet hoa By http://tranhba.com  tuÇn tra tæng lÜnh ®éi 
function wulin_queryleader() 
local szMsg = " tæng lÜnh ®éi # bang chñ # cïng phã lÜnh ®éi # tr­ëng l·o # nh­ sau #" 
for i = getn(_wulin_tb_leader), 1, -1 do 
if (_wulin_tb_leader[i][2] == 1) then 
szMsg = szMsg.."\n##"..safeshow(_wulin_tb_leader[i][1]).."<color=red># bang chñ #<color>" 
else 
szMsg = szMsg.."\n##"..safeshow(_wulin_tb_leader[i][1]).."<color=red># tr­ëng l·o #<color>" 
end 
end 
wlls_descript(szMsg) 
end 

function wulin_creatNewmember(n_lgtype, pname, paccount) 
-- script viet hoa By http://tranhba.com  khai s¸ng chiÕn ®éi 
local nNewLeagueID = LG_CreateLeagueObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
LG_SetLeagueInfo(nNewLeagueID, n_lgtype, pname) -- script viet hoa By http://tranhba.com  thiÕt trÝ x· ®oµn tin tøc ( lo¹i h×nh # tªn ) 
LG_ApplyAddLeague(nNewLeagueID, "", "") 
LG_FreeLeagueObj(nNewLeagueID) 

-- script viet hoa By http://tranhba.com  gia nhËp chiÕn ®éi 
-- script viet hoa By http://tranhba.com  ®em account lµm thµnh mét ng­êi kh¸c chiÕn ®éi 
-- script viet hoa By http://tranhba.com WULIN_LGTYPE_ACCOUNT 
-- script viet hoa By http://tranhba.com roleaccount 
if (FALSE(LG_GetLeagueObj(WULIN_LGTYPE_ACCOUNT, paccount))) then 
local nNewLeagueID = LG_CreateLeagueObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
LG_SetLeagueInfo(nNewLeagueID, WULIN_LGTYPE_ACCOUNT, paccount) -- script viet hoa By http://tranhba.com  thiÕt trÝ x· ®oµn tin tøc ( lo¹i h×nh # tªn ) 
LG_ApplyAddLeague(nNewLeagueID, "", "") 
LG_FreeLeagueObj(nNewLeagueID) 
end 

-- script viet hoa By http://tranhba.com  gia nhËp chiÕn ®éi lÊy tr­¬ng môc 
local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn thµnh viªn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ x· ®oµn thµnh viªn ®Ých tin tøc ( vai trß tªn # chøc vÞ # x· ®oµn lo¹i h×nh # x· ®oµn tªn ) 
LGM_SetMemberInfo(nMemberID, pname, 0, WULIN_LGTYPE_ACCOUNT, paccount) 
LGM_ApplyAddMember(nMemberID, "", "") 
LGM_FreeMemberObj(nMemberID) 
end 

function wulin_title() 
wlls_descript("TÊt c¶ ®¹t ®­îc thø hai giíi ®¹i héi vâ l©m tuyÓn thñ t­ c¸ch ®Ých nhµ ch¬i , cã thÓ nhËn lÊy <color=red>“ thø hai giíi ®¹i héi vâ l©m tuyÓn thñ ”<color> ®Ých danh hiÖu . nªn danh hiÖu kÐo dµi thêi gian tíi <color=red>4 th¸ng 30 ngµy <color> , ngµi x¸c ®Þnh b©y giê nhËn lÊy sao ? ","Ta mÊu chèt lÊy /wulin_sure2title","Hñy bá /OnCancel") 
end 

function wulin_sure2title() 
if (not FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, GetName()))) then 
Title_AddTitle(99, 2, 4302359); -- script viet hoa By http://tranhba.com  lÊy trß ch¬i thêi gian chÆn chØ , th¸ng ngµy lóc/khi 
Title_ActiveTitle(99); 
SetTask(1122, 99) 
wlls_descript("Chóc mõng ngµi ®¹t ®­îc <color=red>“ thø hai giíi ®¹i héi vâ l©m tuyÓn thñ danh hiÖu ”<color> . ") 
else 
wlls_descript("Ngµi b©y giê kh«ng ph¶i lµ thø hai giíi ®¹i héi vâ l©m tuyÓn thñ , xin/mêi ngµi th«ng qua x¸c nhËn nãi tr­íc vµo vi t­ c¸ch hoÆc lµ c¹nh ®Çu ®¹i héi tuyÓn thñ lÊy ®­îc tuyÓn thñ t­ c¸ch sau trë l¹i nhËn lÊy tuyÓn thñ ®Çu hµm . ") 
end 
end
