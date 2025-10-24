IncludeLib("SETTING"); 

-- script viet hoa By http://tranhba.com  thèi lui ra trß ch¬i sau ®Ých sèng l¹i ®iÓm ID, còng chÝnh lµ ghi danh ®Ých chç ®ã ®i 
CS_RevId = 176; 
CS_RevData = 67; 

FACTIONTAB = {"ThiÕu L©m ","Thiªn v­¬ng ","§­êng m«n ","N¨m ®éc ","Nga Mi ","Thóy khãi ","C¸i Bang ","Ngµy nhÉn ","Vâ §­¬ng ","C«n L«n "} 

MapTab = 335; 

FRAME2TIME = 18; 
-- script viet hoa By http://tranhba.com  trß ch¬i lín nhÊt nh©n sè 
MAX_MEMBER_COUNT = 200; 
FIGHTS = 3; -- script viet hoa By http://tranhba.com  tranh tµi bµn vÒ ®Õm 
JOINTONGTIME = 1; -- script viet hoa By http://tranhba.com  vµo gióp thêi gian h¹n chÕ 


MS_STATE = 1; 
MS_LUN = 2; -- script viet hoa By http://tranhba.com  thø bao nhiªu ®æi phiªn ®Ých tranh tµi 
TOTALNUMBER = 3 -- script viet hoa By http://tranhba.com  dù thi nh©n viªn tæng sè 
FACTIONS = 4; -- script viet hoa By http://tranhba.com  m«n ph¸i ID 
FIGHT_MODE = 5; -- script viet hoa By http://tranhba.com  0 tÝch ph©n m« thøc , 1 ®µo th¶i m« thøc 
TOTALNUMBER1 = 6; 

OL_KEY = 7; -- script viet hoa By http://tranhba.com  0-100000000 ®Ých ngÉu nhiªn ®Õm 
MS_NEWSVALUE = 9; -- script viet hoa By http://tranhba.com  nhiÖm vô trung cÊt gi÷ tin tøc thay ®æi l­îng ®Ých ®Þa ph­¬ng 

TIME_NO1 = 23; -- script viet hoa By http://tranhba.com  ®Þnh lóc xóc ph¸t khÝ 
TIME_NO2 = 24; -- script viet hoa By http://tranhba.com  bang héi ®Þnh lóc xóc ph¸t khÝ 

TIMER_1 = 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  1 phót ®Ò kú mét lÇn ghi danh 
TIMER_2 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com  20 gi©y ®Ò kú mét lÇn tranh tµi thêi gian 
TIMER_3 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com  20 gi©y ®Ò kú mét lÇn vµo trµng 
TIMER_4 = 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  1 phót chê ®îi thêi gian 
TIMER_5 = 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  1 phót ®Ò kú mét lÇn bang héi ghi danh thêi gian 


END_TIME = 1 ; -- script viet hoa By http://tranhba.com  ghi danh thêi gian lµ 1 phót 
GO_TIME = 6 ; -- script viet hoa By http://tranhba.com  vµo trµng thêi gian 2 phót 
FIGHT_TIME = 6; -- script viet hoa By http://tranhba.com  tranh tµi thêi gian 2 phót 
END_TONG_TIME = 1; -- script viet hoa By http://tranhba.com  bang héi ghi danh thêi gian 1 phót 

JOINSTATE = 242; 
MISSIONID = 12; 

TASKFLAG = 623; -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng , bµy tá ®· ghi danh 
SCORE = 624; -- script viet hoa By http://tranhba.com  cÊt gi÷ thµnh tÝch 
TONGSCORE = 625; -- script viet hoa By http://tranhba.com  cÊt gi÷ bang héi kÕt qu¶ cña cuéc so tµi 
AREAID = 626; -- script viet hoa By http://tranhba.com  vµo cuéc so tµi trµng ®Ých dÊu hiÖu 
OLYMPICFLAG = 630; -- script viet hoa By http://tranhba.com  t­ c¸ch dù thi 


function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nhµ ch¬i yªu cÇu rêi ®i trß ch¬i 
function LeaveGame(leavetype) 
-- script viet hoa By http://tranhba.com leavetype = 0 bµy tá , ®em vÞ trÝ thiÕt trªn ®Êt ®å ®Ých bªn ngoµi s©n khu vùc # kh«ng ph¶i lµ chiÕn ®Êu khu vùc # 
-- script viet hoa By http://tranhba.com leavetype = 1 bµy tá , ®em vÞ trÝ thiÕt ë mét chç kh¸c ®å , tøc hoµn toµn rêi ®i chiÕn tr­êng 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh«i phôc nguyªn thñy trËn doanh 
SetRevPos(CS_RevId, CS_RevData); 

SetFightState(0); 
SetPunish(1); -- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0); -- script viet hoa By http://tranhba.com  t¾t PK chèt më 
-- script viet hoa By http://tranhba.com  SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
ForbitTrade(0); 
SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
NewWorld(GetLeavePos()); 
end; 

function CalcScore() 
OldPlayer = PlayerIndex; 
	maxn = floor((GetMissionV(TOTALNUMBER) + 1) / 2);
for i = 1,maxn do 
j = i*2 
idx , pidx = GetNextPlayer(MISSIONID, 0, j-1); 
idy , pidy = GetNextPlayer(MISSIONID, 0, j); 

if (pidx > 0) and (pidy > 0) then 
if (GetMissionV(FIGHT_MODE) == 0) then 
PlayerIndex = pidx; 
AddScore(1); 
PlayerIndex = pidy; 
AddScore(1); 
else 
PlayerIndex = pidx; 
lv1 = GetLevel(); 
PlayerIndex = pidy; 
lv2 = GetLevel(); 
if (lv2 > lv1) then 
AddScore(3); 
else 
PlayerIndex = pidx; 
AddScore(3); 
end 
end 
elseif (pidx > 0) then 
PlayerIndex = pidx; 
AddScore(3); 
elseif (pidy > 0) then 
PlayerIndex = pidy; 
AddScore(3); 
end; 
end; 
SortScore(); 
end; 

-- script viet hoa By http://tranhba.com  theo nh­ thµnh tÝch s¾p xÕp thø tù 

function SortScore() 
-- script viet hoa By http://tranhba.com  maxn = GetMissionV(TOTALNUMBER) - 1; 
maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
pname,px,py = TableSDD_GetValue("olympictab",i); 
		for j = i+1,maxn+1 do
qname,qx,qy = TableSDD_GetValue("olympictab",j); 
if (px < qx) then 
TableSDD_SetValue("olympictab",i,qname,qx,qy); 
TableSDD_SetValue("olympictab",j,pname,px,py); 
px = qx; 
end; 
end; 
end; 
PlayerIndex = OldPlayer; 
end; 

function AddScore(pscore) 
if (GetMissionV(FIGHT_MODE) ~= 0) then 
pscore = FIGHTS * pscore 
end; 
k = GetTask(SCORE); 
	SetTask(SCORE,k+pscore);
pname = GetName(); 
Msg2Player("Ng­¬i ë ®©y vèn ®æi phiªn tranh tµi trung ph¶i ph©n "..pscore.." ph©n , b©y giê mÖt mái kÕ tæng ph©n "..GetTask(SCORE).." ph©n . ") 
pn = TableSDD_Search("olympictab",pname); 
pname,px,py = TableSDD_GetValue("olympictab",pn); 
	px = pscore * 256 + px
TableSDD_SetValue("olympictab",pn,pname,px,py); 
LeaveGame(1); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function JoinCamp(Camp) 

LeaveTeam() 

AddMSPlayer(MISSIONID, Camp); 
-- script viet hoa By http://tranhba.com  SetTaskTemp(JOINSTATE, 1); 

Camp1 = Camp - 1; 
	Camp1 = mod(Camp1,2) + 2;
SetCurCamp(Camp1); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë s©n ®Êu chiÕn söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200,1); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ tr¹ng th¸i chiÕn ®Êu 
SetFightState(0); 

-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
SetLogoutRV(1); 

-- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetPunish(0); 

-- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
SetCreateTeam(0); 

-- script viet hoa By http://tranhba.com  më ra PK chèt më kh«ng cho phÐp giao dÞch 
SetPKFlag(1) 
ForbidChangePK(1); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm , mét lo¹i lµ lùa chän tiÕn vµo nªn khu ®Ých thµnh phè 
SetRevPos(CS_RevId, CS_RevData); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ tr­íc mÆt nhµ ch¬i ®Ých tö vong ch©n vèn 
	SetDeathScript("\\script\\missions\\olympic\\death.lua");

-- script viet hoa By http://tranhba.com  thiÕt trÝ lÇn sau tö vong sèng l¹i ®iÓm 

x = GetTask(300); 
y = GetTask(301); 
z = GetTask(302); 
SetTempRevPos(x, y * 32, z * 32); 

-- script viet hoa By http://tranhba.com  vµo trµng 
Camp1 = floor((Camp - 1) / 2); 
	nx = floor(Camp1 / 10) + 1;
	ny = mod(Camp1,10) + 1;
GotoMap(nx,ny); 

str = GetName().."<#> ®· tiÕn vµo tranh tµi cuéc so tµi trµng . "; 
Msg2MSAll(MISSIONID, str); 
end; 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function GotoMap(nx,ny) 
	nnx = (nx + ny) * 43 + 1187;
	nny = (ny - nx) * 44 + 3465;
NewWorld(MapTab,nnx,nny); 
end; 

function RandomCamp() 
Ptab = {}; 
maxn = GetMissionV(TOTALNUMBER); 
if (GetMissionV(FIGHT_MODE) == 1) then 
if (maxn > 16) then 
maxn = 16 
k1 = 0 
elseif (maxn > 8) then 
k1 = 16 - maxn 
elseif (maxn > 4) then 
k1 = 8 - maxn 
elseif (maxn > 2) then 
k1 = 4 - maxn 
else 
k1 = 0 
end; 

for i = 1,k1 do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
			qx = qx + FIGHTS * 256 * 3;
TableSDD_SetValue("olympictab",i,qname,qx,0); 
end; 
n = maxn - k1; 

elseif (GetMissionV(FIGHT_MODE) > 1) then 
k1 = 0; 
if (GetMissionV(TOTALNUMBER) == GetMissionV(TOTALNUMBER1)) then 
maxn = maxn / 2; 
end; 
n = maxn; 
else 
n = maxn; 
k1 = 0; 
end; 

SetMissionV(TOTALNUMBER1,maxn); 
if (n == maxn) then 
SetMissionV(TOTALNUMBER,n); 
else 
SetMissionV(TOTALNUMBER,maxn - n / 2); 
end; 

for i = 1,n do 
Ptab[i] = i 
end; 

for i = 1,n do 
		x = random(n-i+1);
m = Ptab[x]; 
		Ptab[x] = Ptab[n-i+1];
		qname,qx,qy = TableSDD_GetValue("olympictab",k1+i);
		TableSDD_SetValue("olympictab",k1+i,qname,qx,m);
end; 
end; 

function DisplayMsg() 
for i = 1,16 do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
Msg2Player(qname..","..qx..","..qy); 
end; 
end; 

function SortTong() 
qname,qx,qy = TableSDD_GetValue("olympictab",2); 
if (qname == "") then 
qname,qx,qy = TableSDD_GetValue("olympictab",1); 
str = " ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi tranh tµi ®Õn ®©y ®· toµn bé kÕt thóc , bang héi "..qname.." cuèi cïng ®¹t ®­îc x©y dùng ®¹i biÓu ®éi t­ c¸ch , xin/mêi "..qname.." bang chñ mau sím ®Õn tr­íc khi an cöa hoµng cung lÊy ®­îc t­ c¸ch chøng . "; 
AddGlobalNews(str); 
SetMissionV(MS_STATE,9); 
StopMissionTimer(MISSIONID, TIME_NO2); 
-- script viet hoa By http://tranhba.com  CloseMission(MISSIONID); 
else 
maxn = TableSDD_Search("olympictab","") - 1; 
if (maxn > 8) then 
k1 = 16 - maxn 
elseif (maxn > 4) then 
k1 = 8 - maxn 
elseif (maxn > 2) then 
k1 = 4 - maxn 
else 
k1 = 0 
end 
if (k1 > 0) then 
for i = 1,k1 do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
TableSDD_SetValue("olympictab",i,qname,1,0); 
end 
end 
-- script viet hoa By http://tranhba.com  k2 = maxn - 1; 
j = 2; 
		for i = k1+1,maxn do
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
TableSDD_SetValue("olympictab",i,qname,0,j); 
			j = j + 1;
end; 
end; 
end; 
