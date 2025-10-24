if (not __TONGRANDOMTASK_H__) then 
__TONGRANDOMTASK_H__ = 1; 

Include([[\script\tong\tong_statistics.lua]]); 

tab_Workshop = {[1] = " binh gi¸p ", [2] = " thiªn c«ng ", [3] = " mÆt n¹ ", [4] = " thö luyÖn ", [5] = " thiªn ý ", [6] = " lÔ vËt ", [7] = " ho¹t ®éng "}; 

TASK_LP_ITEMID = 1744; -- script viet hoa By http://tranhba.com  t¹m thêi ghi chÐp lÖnh bµi ®Ých vËt phÈm ID . 
TASK_LP_COUNT = 1745; -- script viet hoa By http://tranhba.com  ghi chÐp cÇn tiÕn s¸ch ®Ých sè l­îng . 
TASK_LP_ZONGGUANIDX = 1746; -- script viet hoa By http://tranhba.com  ghi chÐp lµ c¸i ®ã tæng qu¶n . 
TASK_LP_ZONGGUANLEVEL = 1756; -- script viet hoa By http://tranhba.com  ghi chÐp viÕt tiÕn s¸ch tæng qu¶n cÇn cÊp bËc . 
TASK_LP_TIMESLIMIT = 2566-- script viet hoa By http://tranhba.com  mçi ngµy hoµn thµnh 100 lÇn tíi h¹n #byte1# sè lÇn #byte2# nhËt kú #byte3# nguyÖt ph©n 
-- script viet hoa By http://tranhba.com # tËp ch#h nhi# v? r# pk - Modified by DinhHQ - 20110810 
-- script viet hoa By http://tranhba.com DAILY_MAX_TIMES = 2 -- script viet hoa By http://tranhba.com  söa ®æi mçi ngµy hoµn thµnh nhiÖm vô th­îng h¹n v× 2 lÇn by wangjingjun IB shop ®iÒu chØnh 
DAILY_MAX_TIMES = 100 
PER_ASSIGNMENT_PK = 1 -- script viet hoa By http://tranhba.com  mçi nhiÖm vô gi¶m bít pk trÞ gi¸ 1 ®iÓm by wangjingjun IB shop ®iÒu chØnh 

TASK_LP_IDX = {1747, 1748, 1749, 1750, 1751, 1752, 1753, 1754, 1755};-- script viet hoa By http://tranhba.com  ghi chÐp viÕt tiÕn s¸ch tæng qu¶n ®Ých bang héi . 

-- script viet hoa By http://tranhba.com  kiÓm tra cã ph¶i lµ hay kh«ng t­¬ng øng tæng qu¶n ®Ých ®èi tho¹i 
function rwlp_taskcheck(nTongID, nWorkshopID) 
local nWKSPType = TWS_GetType(nTongID, nWorkshopID); 
if (nWKSPType ~= GetTask(TASK_LP_ZONGGUANIDX)) then -- script viet hoa By http://tranhba.com  tæng qu¶n kh«ng ®óng 
return 2; 
end 
if (0 == rwlp_mapcheck()) then -- script viet hoa By http://tranhba.com  ë c«ng céng bang héi b¶n ®å 
return 0; 
end; 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  cïng c¸c §¹i tæng qu¶n ®Ých ®èi tho¹i 
function rwlp_dedaojianshu(nTongID, nWorkshopID) 
local nCount = rwlp_getjuanshucount(); 
local szLevel = "<color=yellow>"..GetTask(TASK_LP_ZONGGUANLEVEL).." cÊp <color>"; 
local szZGName = "<color=yellow>"..tab_Workshop[GetTask(TASK_LP_ZONGGUANIDX)].." ph­êng tæng qu¶n <color>"; 
if (nCount >= GetTask(TASK_LP_COUNT)) then -- script viet hoa By http://tranhba.com  nÕu nh­ nhiÖm vô ®· hoµn thµnh , trùc tiÕp trë vÒ 
Say("Ng­¬i ®· gãp nhÆt <color=yellow>"..nCount.."<color> c¸ tiÕn s¸ch , ®· vËy lµ ®ñ råi . nhanh ®i vÒ giao cho ®¾t gióp thiªn ý ph­êng tæng qu¶n ®i . ", 0) 
return 
end; 
if (rwlp_tongcheck() == 0) then 
Say("Bæn bang tr­ëng l·o ®· cho ng­¬i viÕt qu¸ tiÕn s¸ch , ng­¬i råi ®Õn chí gióp thö mét chót ®i . ", 0); 
Msg2Player("Nªn bang héi tr­ëng l·o ®· trî gióp qu¸ ng­¬i . ng­¬i céng thu ®­îc <color=yellow>"..nCount.." phong <color> tiÕn s¸ch , ng­¬i tæng céng muèn thu tËp <color=yellow>"..GetTask(TASK_LP_COUNT).." phong <color> tiÕn s¸ch "); 
return 
end; 

if (rwlp_workshopcheck() == 0) then 
Say(" l·o phu cïng ®¾t gióp "..szZGName.." lµm cã giao t×nh , ch¼ng qua lµ vèn tæng qu¶n qu¶n h¹t ®Ých x­ëng kh«ng ®ñ "..szLevel.." , ng­¬i ®Õn nh÷ng kh¸c bang héi ®i xem mét chót ®i . ng­¬i céng muèn thu tËp ®Ých <color=yellow>"..GetTask(TASK_LP_COUNT).." phong <color> tiÕn s¸ch , tr­íc m¾t ng­¬i ®· gãp nhÆt <color=yellow>"..rwlp_getjuanshucount().."<color> phong . ", 0); 
Msg2Player("Nªn bang héi ®Ých "..szZGName.." kh«ng ®ñ "..szLevel.." , kh«ng thÓ cho ng­¬i tiÕn s¸ch . "); 
return 0; 
end; 

add_a_juanshu(); 
Say("Nghe nãi ®¾t gióp <color=yellow>"..tab_Workshop[GetTask(TASK_LP_ZONGGUANIDX)].."<color> tæng qu¶n ®ang v× ®i thi thiÕu hôt tiÕn s¸ch mµ t©m ­u , l·o phu cïng kinh thµnh quan viªn cã mét Ýt lui tíi , ®em c¸i nµy phong <color=yellow> tiÕn s¸ch <color> dÉn ®i tin t­ëng sÏ cã mét Ýt trî gióp . ", 0); 
	Msg2Player("Äã»ñµÃÁËµÚ<color=yellow>"..(nCount + 1).."·â<color>¼öÊé£¬Äã×Ü¹²ÒªÊÕ¼¯<color=yellow>"..GetTask(TASK_LP_COUNT).."·â<color>¼öÊé");
end; 

tab_MapforAll = {586, 587, 688, 589, 590, 591, 592, 593, 594, 595, 596, 597}; 
-- script viet hoa By http://tranhba.com  kiÓm tr¾c cã hay kh«ng ë c«ng céng bang héi b¶n ®å 
function rwlp_mapcheck() 
local ww = GetWorldPos(); 
if (ww <= 597) then 
return 0 
end; 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  xem mét chót cã hay kh«ng v× ®· dÉn tr«i qua bang héi 
function rwlp_tongcheck() 
if (0 == rwlp_mapcheck()) then 
return 0; 
end; 
ww = GetWorldPos() 
for i = 1, getn(TASK_LP_IDX) do 
if (ww == GetTask(TASK_LP_IDX[i]) ) then 
return 0 
end; 
end; 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  kiÓm tra x­ëng ®Ých cÊp bËc lµ hay kh«ng hîp c¸ch 
function rwlp_workshopcheck() 
local ww = GetWorldPos(); 
local tab_work = {}; -- script viet hoa By http://tranhba.com  phï hîp cÊp bËc ®iÒu kiÖn ®Ých x­ëng së t¹i ®å 
tab_work = get_tongmap_list(GetTask(TASK_LP_ZONGGUANIDX), GetTask(TASK_LP_ZONGGUANLEVEL)); 
for i = 1, getn(tab_work) do 
if (ww == tab_work[i]) then 
return 1; 
end; 
end; 
return 0; 
end; 

function add_a_juanshu() 
local nCount = rwlp_getjuanshucount(); 
if (nCount == 9) then 
Say("Ng­¬i ®· t×m ®­îc 9 phong tiÕn s¸ch . cã thÓ trë vÒ ®i ®ãng nhiÖm vô . ", 0); 
return 0; 
end; 
ww = GetWorldPos(); 
	nt_SetTask(TASK_LP_IDX[nCount + 1], ww);
return 1; 
end; 

function rwlp_getjuanshucount() 
for i = 1, getn(TASK_LP_IDX) do 
if (0 == GetTask(TASK_LP_IDX[i]) ) then 
return i - 1; 
end; 
end; 
return 9; 
end; 

function rwlp_cleartask() 
for i = 1, getn(TASK_LP_IDX) do 
nt_SetTask(TASK_LP_IDX[i], 0); 
end; 
nt_SetTask(TASK_LP_ZONGGUANLEVEL, 0); 
nt_SetTask(TASK_LP_COUNT, 0); 
nt_SetTask(TASK_LP_ZONGGUANIDX, 0); 
end; 

function nt_SetTask(nTaskID, nTaskValue) 
if (nTaskID <= 0) then 
return 
end; 
SetTask(nTaskID, nTaskValue); 
SyncTaskValue(nTaskID); 
end; 

function OnCancel() 

end; 

end; -- script viet hoa By http://tranhba.com // end of __TONGRANDOMTASK_H__
