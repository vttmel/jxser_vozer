IncludeLib("SETTING"); 
Include("\\script\\missions\\olympic\\head.lua");

function OnTimer() 
timestate = GetMissionV(MS_STATE); 
	V = GetMissionV(MS_NEWSVALUE) + 1;
SetMissionV(MS_NEWSVALUE, V); 


-- script viet hoa By http://tranhba.com  ghi danh giai ®o¹n 
if (timestate == 5) then 
ReportMemberState(V); 
elseif (timestate == 6) then -- script viet hoa By http://tranhba.com  vµo trµng liÔu 
ReportEntry(V); 
elseif (timestate == 7) then -- script viet hoa By http://tranhba.com  vßng chiÕn 
ReportBattle(V); 
elseif (timestate == 8) then 
WaitTime(V); -- script viet hoa By http://tranhba.com  chiÕn ®Êu kÕt thóc , chê ®îi mét vßng 
else 
StopMissionTimer(MISSIONID, TIME_NO2); 
end; 
end; 

function WaitTime(V) 
		n = GetMissionV(MS_LUN) + 1;
SetMissionV(MS_LUN,n); 
		n = n+1;
str = " ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi b©y giê b¾t ®Çu tiÕn vµo thø "..n.." ®æi phiªn ®Ých tranh tµi vµo trµng , xin/mêi ng­êi dù thi mau sím vµo trµng . "; 
AddGlobalNews(str); 
-- script viet hoa By http://tranhba.com  SortTong(); 
SetMissionV(MS_STATE,6); 
StopMissionTimer(MISSIONID, TIME_NO2); 
StartMissionTimer(MISSIONID, TIME_NO2, TIMER_3); -- script viet hoa By http://tranhba.com  b¾t ®Çu vµo trµng tÝnh giê 
SetMissionV(MS_NEWSVALUE, 0); 
end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  ë ghi danh trong lóc , hÖ thèng ®Þnh kú th«ng b¸o nhµ ch¬i tr­íc mÆt ®Ých ghi danh t×nh huèng 

if (V == END_TIME) then 
maxn = TableSDD_Search("olympictab",""); 
if (maxn < 2) then 
str = " ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi ghi danh ®· ®Õn giê , bëi v× v« bang héi ghi danh cÇu xin , v× vËy tranh tµi hñy bá . "; 
AddGlobalCountNews(str); 
CloseMission(MISSIONID); 
elseif (maxn == 2) then 
qname,qx,qy = TableSDD_GetValue("olympictab",1); 
str = " ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi ghi danh ®· ®Õn giê , bëi v× chØ cã mét bang héi "..qname.." ghi danh , v× vËy trùc tiÕp ®¹t ®­îc x©y dùng ®¹i biÓu ®éi t­ c¸ch , xin/mêi "..qname.." bang chñ mau sím ®Õn tr­íc khi an cöa hoµng cung lÊy ®­îc t­ c¸ch chøng . "; 
AddGlobalCountNews(str); 
SetMissionV(MS_STATE,9); 
StopMissionTimer(MISSIONID, TIME_NO2); 
else 
SetMissionV(TOTALNUMBER,maxn-1); 
str = " ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi ghi danh ®· ®Õn giê , b©y giê b¾t ®Çu tiÕn vµo thø 1 ®æi phiªn ®Ých tranh tµi vµo trµng , xin/mêi ng­êi dù thi mau sím vµo trµng . "; 
AddGlobalNews(str); 
SortTong(); 
SetMissionV(MS_STATE,6); 
StopMissionTimer(MISSIONID, TIME_NO2); 
StartMissionTimer(MISSIONID, TIME_NO2, TIMER_3); -- script viet hoa By http://tranhba.com  b¾t ®Çu vµo trµng tÝnh giê 
SetMissionV(MS_NEWSVALUE, 0); 
end; 
else 
RestMin = END_TIME - V; 
str =" ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi ghi danh thêi gian cßn cã "..RestMin.." phót , xin tr¶ kh«ng cã ghi danh ®Ých bang ph¸i bang chñ mau sím ®Õn tr­íc khi an cöa hoµng cung ghi danh . "; 
AddGlobalCountNews(str); 
end; 
end; 

function ReportEntry(V) -- script viet hoa By http://tranhba.com  vµo trµng thêi gian 
	n = GetMissionV(MS_LUN) + 1;
if (V == GO_TIME) then 
str = " thø "..n.." ®æi phiªn ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi vµo trµng thêi gian ®· chÆn chØ , tranh tµi lËp tøc b¾t ®Çu !"; 
AddGlobalCountNews(str); 
SetMissionV(MS_STATE,7); 
StopMissionTimer(MISSIONID, TIME_NO1); 
else 
if ((GO_TIME - V) == 3) then 
str = " thø "..n.." ®æi phiªn ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi vµo trµng thêi gian cßn cã cuèi cïng 1 phót , xin/mêi kh«ng/ch­a vµo trµng ng­êi mau sím vµo trµng . "; 
AddGlobalCountNews(str) 
elseif ((GO_TIME - V) == 15) then 
str = " thø "..n.." ®æi phiªn ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi vµo trµng thêi gian cßn d­ l¹i 5 phót , xin/mêi kh«ng/ch­a vµo trµng ng­êi mau sím vµo trµng . "; 
AddGlobalCountNews(str) 
end; 
end; 
end; 

function ReportBattle(V) 

end; 
