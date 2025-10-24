IncludeLib("SETTING"); 
Include("\\script\\missions\\olympic\\head.lua");

function OnTimer() 
timestate = GetMissionV(MS_STATE); 
	V = GetMissionV(MS_NEWSVALUE) + 1;
SetMissionV(MS_NEWSVALUE, V); 


-- script viet hoa By http://tranhba.com  ghi danh giai ®o¹n 
if (timestate == 1) then 
ReportMemberState(V); 
elseif (timestate == 2) then -- script viet hoa By http://tranhba.com  vµo trµng liÔu 
ReportEntry(V); 
elseif (timestate == 3) then -- script viet hoa By http://tranhba.com  vßng chiÕn 
ReportBattle(V); 
elseif (timestate == 4) then 
WaitTime(V); -- script viet hoa By http://tranhba.com  chiÕn ®Êu kÕt thóc , chê ®îi mét vßng 
else 
StopMissionTimer(MISSIONID, TIME_NO1); 
end; 
end; 

function WaitTime(V) 
str1 = GetMissionS(FACTIONS); 
		n = GetMissionV(MS_LUN) + 1;
SetMissionV(MS_LUN,n); 
		n = n+1;
str = str1.." ®øng hµng vÞ cuéc so tµi b©y giê b¾t ®Çu tiÕn vµo thø "..n.." ®æi phiªn ®Ých tranh tµi vµo trµng , xin/mêi ng­êi dù thi mau sím vµo trµng . "; 
AddGlobalNews(str); 
-- script viet hoa By http://tranhba.com  RandomCamp() 
SetMissionV(MS_STATE,2); 
StopMissionTimer(MISSIONID, TIME_NO1); 
StartMissionTimer(MISSIONID, TIME_NO1, TIMER_3); -- script viet hoa By http://tranhba.com  b¾t ®Çu vµo trµng tÝnh giê 
SetMissionV(MS_NEWSVALUE, 0); 
end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  ë ghi danh trong lóc , hÖ thèng ®Þnh kú th«ng b¸o nhµ ch¬i tr­íc mÆt ®Ých ghi danh t×nh huèng 

str1 = GetMissionS(FACTIONS); 
if (V == END_TIME) then 
maxn = TableSDD_Search("olympictab",""); 
if (maxn < 3) then 
str = str1.." ®øng hµng vÞ cuéc so tµi ghi danh ®· ®Õn giê , bëi v× ghi danh nh©n sè kh«ng ®ñ tranh tµi yªu cÇu , v× vËy tranh tµi hñy bá . "; 
AddGlobalCountNews(str); 
CloseMission(MISSIONID); 
else 
SetMissionV(TOTALNUMBER,maxn-1); 
str = str1.." ®øng hµng vÞ cuéc so tµi ghi danh ®· ®Õn giê , b©y giê b¾t ®Çu tiÕn vµo thø 1 ®æi phiªn ®Ých tranh tµi vµo trµng , xin/mêi ng­êi dù thi mau sím vµo trµng . "; 
AddGlobalNews(str); 
RandomCamp(); 
SetMissionV(MS_STATE,2); 
StopMissionTimer(MISSIONID, TIME_NO1); 
StartMissionTimer(MISSIONID, TIME_NO1, TIMER_3); -- script viet hoa By http://tranhba.com  b¾t ®Çu vµo trµng tÝnh giê 
SetMissionV(MS_NEWSVALUE, 0); 
end; 
else 
RestMin = END_TIME - V; 
str =str1.." ®øng hµng vÞ cuéc so tµi ghi danh thêi gian cßn cã "..RestMin.." phót , xin/mêi 81 cÊp trë lªn "..str1.." nh©n sÜ mau sím ®Õn tr­íc khi an cöa hoµng cung ghi danh . "; 
AddGlobalCountNews(str); 
end; 
end; 

function ReportEntry(V) -- script viet hoa By http://tranhba.com  vµo trµng thêi gian 
str1 = GetMissionS(FACTIONS); 
	n = GetMissionV(MS_LUN) + 1;
if (V == GO_TIME) then 
str = " thø "..n.." ®æi phiªn "..str1.." ®øng hµng vÞ cuéc so tµi vµo trµng thêi gian ®· chÆn chØ , tranh tµi chÝnh thøc b¾t ®Çu !"; 
AddGlobalCountNews(str); 
Msg2MSAll(MISSIONID,str); 
RunMission(MISSIONID); 
StopMissionTimer(MISSIONID, TIME_NO1); 
StartMissionTimer(MISSIONID, TIME_NO1, TIMER_2); -- script viet hoa By http://tranhba.com  b¾t ®Çu tranh tµi tÝnh giê 
SetMissionV(MS_NEWSVALUE, 0); 
else 
RestMin = floor((GO_TIME - V) / 3); 
RestSec = mod((GO_TIME - V),3) * 20; 

-- script viet hoa By http://tranhba.com  str = " thø "..n.." ®æi phiªn "..str1.." ®øng hµng vÞ cuéc so tµi vµo trµng thêi gian cßn cã "..RestMin.." phót , xin/mêi kh«ng/ch­a vµo trµng ng­êi mau sím vµo trµng . "; 
-- script viet hoa By http://tranhba.com  AddGlobalCountNews(str); 

if (RestMin > 0) and (RestSec == 0) then 
str = " thø "..n.." ®æi phiªn "..str1.." ®øng hµng vÞ cuéc so tµi vµo trµng thêi gian cßn cã "..RestMin.." phót , xin/mêi kh«ng/ch­a vµo trµng ng­êi mau sím vµo trµng . "; 
Msg2MSAll(MISSIONID, str); 
if ((GO_TIME - V) == 3) then 
str = " thø "..n.." ®æi phiªn "..str1.." ®øng hµng vÞ cuéc so tµi vµo trµng thêi gian cßn cã cuèi cïng 1 phót , xin/mêi kh«ng/ch­a vµo trµng ng­êi mau sím vµo trµng . "; 
AddGlobalCountNews(str) 
elseif ((GO_TIME - V) == 15) then 
str = " thø "..n.." ®æi phiªn "..str1.." ®øng hµng vÞ cuéc so tµi vµo trµng thêi gian cßn d­ l¹i 5 phót , xin/mêi kh«ng/ch­a vµo trµng ng­êi mau sím vµo trµng . "; 
AddGlobalCountNews(str) 
end 
elseif (RestMin == 0) then 
str = " thø "..n.." ®æi phiªn "..str1.." ®øng hµng vÞ cuéc so tµi vµo trµng thêi gian cßn cã "..RestSec.." gi©y . "; 
Msg2MSAll(MISSIONID, str); 
end; 
end; 
end; 

function ReportBattle(V) -- script viet hoa By http://tranhba.com  chiÕn ®Êu tiÕn hµnh trong qu¸ tr×nh 

if (V == FIGHT_TIME) then 
CalcScore(); 
EndFight(); 
else 
if ScanFight() == 0 then 
SortScore() 
EndFight() 
else 
RestMin = floor((FIGHT_TIME - V) / 3); 
RestSec = mod((FIGHT_TIME - V),3) * 20; 

if (RestMin == 0) then 
Msg2MSAll(MISSIONID, "<#> chiÕn ®Êu giai ®o¹n , tranh tµi cßn thõa l¹i thêi gian "..RestSec.."<#> gi©y . "); 
elseif (RestSec == 0) then 
Msg2MSAll(MISSIONID, "<#> chiÕn ®Êu giai ®o¹n , tranh tµi cßn thõa l¹i thêi gian "..RestMin.."<#> phót . "); 
else 
Msg2MSAll(MISSIONID, "<#> chiÕn ®Êu giai ®o¹n , tranh tµi cßn thõa l¹i thêi gian "..RestMin.."<#> ph©n "..RestSec.."<#> gi©y . "); 
end; 
end; 
end; 
end; 

function ScanFight() 
OldPlayer = PlayerIndex; 
	maxn = floor((GetMissionV(TOTALNUMBER) + 1) / 2);
kflag = 0; 
for i = 1,maxn do 
j = i*2; 
idx , pidx = GetNextPlayer(MISSIONID, 0, j-1); 
idy , pidy = GetNextPlayer(MISSIONID, 0, j); 

if (pidx > 0) and (pidy == 0) then 
PlayerIndex = pidx; 
AddScore(3); 
elseif (pidy > 0) and (pidx == 0) then 
PlayerIndex = pidy; 
AddScore(3); 
elseif (pidx > 0) and (pidy > 0) then 
kflag = 1; 
end; 
end; 
PlayerIndex = OldPlayer; 
return kflag; 
end; 

function EndFight() 
str1 = GetMissionS(FACTIONS); 
	n = GetMissionV(MS_LUN) + 1;
if (n >= FIGHTS) then 
maxn = GetMissionV(TOTALNUMBER1); 
		SetMissionV(FIGHT_MODE,GetMissionV(FIGHT_MODE) + 1);		

if (maxn < 5) then 
for i = 1,maxn do 
pname,px,py = TableSDD_GetValue("olympictab",i); 
				px = px + 65536;
TableSDD_SetValue("olympictab",i,pname,px,py); 
end; 
end; 

if (maxn == 2) then 
pname,px,py = TableSDD_GetValue("olympictab",1); 
str = str1.." ®øng hµng vÞ cuéc so tµi thø "..n.." ®æi phiªn tranh tµi kÕt thóc , ®Õn ®©y tÊt c¶ tranh tµi ®· toµn bé kÕt thóc . v« ®Þch lµ #"..pname; 
AddGlobalNews(str); 
CloseMission(MISSIONID); 
else 
maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
TableSDD_SetValue("olympictab",i,qname,qx,0); 
end; 
str = str1.." ®øng hµng vÞ cuéc so tµi thø "..n.." ®æi phiªn tranh tµi kÕt thóc , xin/mêi ng­êi dù thi chuÈn bÞ mét cuéc tranh tµi , tranh tµi ®em ë 5 phót sau vµo trµng . "; 
AddGlobalNews(str); 
SetMissionV(MS_STATE,4); 
StopMissionTimer(MISSIONID, TIME_NO1); 
StartMissionTimer(MISSIONID, TIME_NO1, TIMER_4); -- script viet hoa By http://tranhba.com  b¾t ®Çu vµo trµng tÝnh giê 
SetMissionV(MS_NEWSVALUE,0); 
RandomCamp(); 
end; 
else 
str = str1.." ®øng hµng vÞ cuéc so tµi thø "..n.." ®æi phiªn tranh tµi kÕt thóc , xin/mêi ng­êi dù thi chuÈn bÞ mét cuéc tranh tµi , tranh tµi ®em ë 5 phót sau vµo trµng . "; 
AddGlobalNews(str); 
SetMissionV(MS_STATE,4); 
StopMissionTimer(MISSIONID, TIME_NO1); 
StartMissionTimer(MISSIONID, TIME_NO1, TIMER_4); -- script viet hoa By http://tranhba.com  b¾t ®Çu vµo trµng tÝnh giê 
SetMissionV(MS_NEWSVALUE,0); 
RandomCamp(); 
end; 
end; 
