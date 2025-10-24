IncludeLib("SETTING"); 
Include("\\script\\missions\\olympic\\head.lua");

function main() 

-- script viet hoa By http://tranhba.com  thiÕt trÝ trë vÒ ®iÓm 
x,y,z = GetWorldPos(); 
SetTask(300, x); 
SetTask(301, y); 
SetTask(302, z); 

idx = SubWorldID2Idx(MapTab); 
if (idx == -1) then 
ErrorMsg(3) 
return 
end; 

OldSubWorld = SubWorld; 
SubWorld = idx; 
ms_state = GetMissionV(MS_STATE); 
fs = GetMissionS(FACTIONS); 

if (ms_state == 0) then 
Say("Thèng lÜnh cÊm vÖ # b©y giê kh«ng cã bÊt kú tranh tµi , ng­¬i cÇn khëi ®éng tranh tµi sao ? ", 4,"Khëi ®éng tranh tµi mét m×nh ®Êu ®øng hµng vÞ cuéc so tµi /StartReady","Khëi ®éng bang héi t­ c¸ch cuéc so tµi /StartTong","Tra xÐt th­îng cÊp mét ®o¹n ®Ých tranh tµi kÕt qu¶ /Result","Kh«ng cÇn /OnCancel"); 
elseif (ms_state == 1) then 
Say("Thèng lÜnh cÊm vÖ # n¬i nµy lµ ®ång m«n ph¸i cao thñ ®øng hµng vÞ cuéc so tµi ®Ých cuéc so tµi trµng , b©y giê ®ang cö hµnh "..fs.." ®øng hµng vÞ tranh tµi , c¸c h¹ lµ hay kh«ng cã høng thó tham gia ? ", 3,"H¶o nha , ta tham gia /OnRegister","§øng hµng vÞ cuéc so tµi ®Ých quy t¾c lµ c¸i g× ? /OnHelp","Ta n÷a chuÈn bÞ mét chót /OnCancel"); 
elseif (ms_state == 2) then 
OnReady(); -- script viet hoa By http://tranhba.com  chuÈn bÞ vµo trµng 
elseif (ms_state == 3) then 
ErrorMsg(1) 
elseif (ms_state == 4) then 
Result() 
elseif (ms_state == 5) then 
Say("Thèng lÜnh cÊm vÖ # n¬i nµy ®ang cö hµnh ¸o vËn dù chän cuéc so tµi chi bang héi t­ c¸ch cuéc so tµi , ®¾t gióp cã hay kh«ng cã høng thó tham gia ? ", 4,"H¶o nha , ta tham gia /OnRegister1","So tµi quy t¾c lµ c¸i g× ? /OnHelp1","TuÇn tra mét c¸i cã nh÷ng bang ph¸i b¸o danh /LookRegister","Ta n÷a chuÈn bÞ mét chót /OnCancel"); 
elseif (ms_state == 6) then 
OnEntry() -- script viet hoa By http://tranhba.com  bang héi vµo trµng 
elseif (ms_state == 7) then 
ErrorMsg(1) -- script viet hoa By http://tranhba.com  bang héi vßng chiÕn 
elseif (ms_state == 8) then 
TongWait() -- script viet hoa By http://tranhba.com  bang héi bang héi vßng kÕ tiÕp 
elseif (ms_state == 9) then 
EndTong() -- script viet hoa By http://tranhba.com  bang héi kÕt thóc 
else 
ErrorMsg(3) 
end; 
SubWorld = OldSubWorld; 
end; 

function LookRegister() 
str = " bang héi t­ c¸ch cuéc so tµi ®· ghi danh ®Ých danh s¸ch nh­ sau #<enter><enter>"; 
maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
str = str.." "..qname 
end; 
Say(str,0); 
end; 

function EndTong() 
qname,qx,qy = TableSDD_GetValue("olympictab",1); 
if (GetTong() == qname) and (GetName() == GetTongMaster()) then 
SetTask(OLYMPICFLAG,30); 
Say("Ng­¬i ®· lÊy ®­îc lÜnh ®éi ®Ých t­ c¸ch , cÇn nhËn lÊy nh÷ng ®éi viªn kh¸c ®Ých vµo trµng kho¸n sao ? ",0); 
CloseMission(MISSIONID); 
else 
Say("Bang héi "..qname.." ®· lÊy ®­îc lÜnh ®éi ®Ých t­ c¸ch . ",0) 
end; 
end; 

function StartTong() 
OldSubWorld = SubWorld; 
idx = SubWorldID2Idx(MapTab); 
SubWorld = idx; 
ms_state = GetMissionV(MS_STATE); 

if (ms_state == 0) then 
OpenMission(MISSIONID); 

str = " b©y giê ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi b¾t ®Çu ghi danh , hoan nghªnh tÊt c¶ bang héi ®Ých bang chñ tíi tr­íc tr­íc khi an cöa hoµng cung ghi danh dù thi , tiÒn ghi danh 100 v¹n . "; 
AddGlobalNews(str); 
SetMissionV(MS_STATE,5); 
StartMissionTimer(MISSIONID, TIME_NO2, TIMER_5); -- script viet hoa By http://tranhba.com  b¾t ®Çu ghi danh tÝnh giê 
end; 

SubWorld = OldSubWorld; 
end; 

function TongWait() 
str = " bang héi t­ c¸ch cuéc so tµi tiÕn vµo vßng kÕ tiÕp tranh tµi danh s¸ch nh­ sau #<enter><enter>"; 
maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
if (qy == 0) then 
str = str.." "..qname.."# ®æi phiªn v« Ých <enter>" 
elseif (mod(qy,2) == 0) then 
str = str.." "..qname.." VS" 
else 
str = str.." "..qname.."<enter>" 
end; 
end; 
Say(str,0); 
end; 

function Result() 
if (GetMissionV(FIGHT_MODE) == 0) then 
maxn = TableSDD_Search("olympictab",""); 
maxn = maxn - 1; 
if (maxn > 16) then 
maxn = 16 
end; 
str = " hiÖn giai ®o¹n ®øng hµng vÞ cuéc so tµi tr­íc "..maxn.." tªn tÝch ph©n nh­ sau #<enter><enter>"; 
else 
str = " hiÖn giai ®o¹n cuéc thi vßng lo¹i tiÕn vµo h¹ ®æi phiªn tranh tµi danh s¸ch cïng tÝch ph©n nh­ sau #<enter><enter>"; 
maxn = GetMissionV(TOTALNUMBER1); 
end; 
if (maxn < 2) then 
str = " b©y giê cßn kh«ng cã bÊt kú so tµi tÝch ph©n . " 
else 
-- script viet hoa By http://tranhba.com  Msg2Player("maxn="..maxn); 

for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
px = floor(qx / 256); 
px = mod(px,256); 
if (qy == 0) then 
px = px - FIGHTS * 3 
str = str.." thø "..i.." tªn #"..qname.."#"..px.." ph©n , ®æi phiªn v« Ých <enter>" 
else 
str = str.." thø "..i.." tªn #"..qname.."#"..px.." ph©n <enter>" 
end; 
end; 
m = TableSDD_Search("olympictab","") - 1; 
if (GetMissionV(FIGHT_MODE) ~= 0) and (maxn < m) then 
			for i = maxn+1,m do
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
px = floor(qx / 256); 
px = mod(px,256); 
str = str.." thø "..i.." tªn #"..qname.."#"..px.." ph©n , kÕt thóc <enter>" 
end; 
end; 
end; 
Say(str,0); 
end; 

function OnHelp1() 
Talk(7, "","Thèng lÜnh cÊm vÖ # ¸o vËn dù chän cuéc so tµi bang héi t­ c¸ch cuéc so tµi lµ v× tham gia toµn khu toµn dïng/uèng së cö hµnh ®Ých ®¹i h×nh tranh tµi mµ vµo ®­îc dù chän cuéc so tµi , dù chän cuéc so tµi th«ng qua bang héi ®Ých h×nh thøc thèng nhÊt tham gia . ","Thèng lÜnh cÊm vÖ # muèn tham gia dù chän cuéc so tµi , ®Çu tiªn t¹i ta bªn nµy tiÕn hµnh ghi danh , tiÒn ghi danh v× 100 v¹n . ghi danh h¹n ng¹ch v× nhiÒu nhÊt 16 c¸ bang héi , ghi danh chÆn chØ ®· ®Õn giê buæi tr­a 12 ®iÓm kÕt thóc . ","Thèng lÜnh cÊm vÖ # mçi bang héi cho phÐp cã 16 ng­êi tham gia tranh tµi , nh­ng lµ vµo gióp thêi gian nhÊt ®Þnh ph¶i m·n 1 ngµy trë lªn . ","Thèng lÜnh cÊm vÖ # ghi danh sau khi kÕt thóc , tøc b¾t ®Çu tranh tµi vµo trµng thêi gian , vµo trµng thêi gian lµ 5 phót , ®îi vµo trµng chuÈn bÞ thêi gian sau khi kÕt thóc , tranh tµi liÒn chÝnh thøc b¾t ®Çu . " ,"Thèng lÜnh cÊm vÖ # tranh tµi thêi gian lµ 10 phót , ¸p dông ®µo th¶i chÕ , tranh tµi thêi gian sau khi kÕt thóc nh×n song ph­¬ng cßn d­ l¹i nh©n sè bao nhiªu ph¸n ®Þnh th¾ng b¹i . th¾ng ph­¬ng tiÕn vµo vßng kÕ tiÕp tranh tµi . ","Thèng lÜnh cÊm vÖ # kh¸c , nÕu nh­ tranh tµi giai ®o¹n trung bÊt kú thêi kh¾c mét ph­¬ng r¬i tuyÕn hoÆc lµ trë vÒ thµnh tøc xö v× tö vong #","Thèng lÜnh cÊm vÖ # tranh tµi cuèi cïng thñ th¾ng bang héi bang chñ ®em lµm lÜnh ®éi kh¸c n÷a chän lùa 29 tªn nh÷ng kh¸c bÊt kú ®éi viªn mang thËp ®¹i cao thñ cËp kú h¾n ®an h¹ng tranh tµi tr­íc 4 tªn ®¹i biÓu vèn dïng/uèng tham gia toµn khu toµn dïng/uèng ®Ých ¸o vËn héi . "); 
end; 

function OnHelp() 
Talk(6, "","Thèng lÜnh cÊm vÖ # ®øng hµng vÞ cuéc so tµi lµ v× tÊt c¶ 81 cÊp trë lªn ®ång m«n ph¸i ®Ých vâ l©m nh©n sÜ cö hµnh ®¹i h×nh mét m×nh ®Êu so tµi ®Þa ph­¬ng , ®øng hµng vÞ cuéc so tµi tæng céng cö hµnh 10 ®æi phiªn , ë mçi mét vßng trung hÖ thèng ®em ngÉu nhiªn ph©n phèi ®èi thñ . ","Thèng lÜnh cÊm vÖ # muèn tiÕn hµnh ®øng hµng vÞ cuéc so tµi , ®Çu tiªn t¹i ta bªn nµy tiÕn hµnh ghi danh , tiÒn ghi danh v× 100 v¹n . ghi danh chÆn chØ ®· ®Õn giê buæi tr­a 12 ®iÓm kÕt thóc . ","Thèng lÜnh cÊm vÖ # ghi danh sau khi kÕt thóc , tøc b¾t ®Çu tranh tµi vµo trµng thêi gian , vµo trµng thêi gian lµ 5 phót , ®îi vµo trµng chuÈn bÞ thêi gian sau khi kÕt thóc , tranh tµi liÒn chÝnh thøc b¾t ®Çu . " ,"Thèng lÜnh cÊm vÖ # so tµi thêi gian lµ 10 phót , nÕu nh­ ë 10 phót bªn trong song ph­¬ng ch­a ph©n th¾ng b¹i , lµ xö v× ngang tay . ","Thèng lÜnh cÊm vÖ # kh¸c , nÕu nh­ tranh tµi giai ®o¹n trung bÊt kú thêi kh¾c mét ph­¬ng r¬i tuyÕn hoÆc lµ trë vÒ thµnh tøc xö v× thÊt b¹i #","Thèng lÜnh cÊm vÖ # tranh tµi kÕ ph©n quy t¾c # th¾ng ph­¬ng ®¾c 3 ph©n , bÞ/cha/chÞu ph­¬ng ®¾c 0 ph©n , b×nh côc c¸c ph¶i 1 ph©n . ®îi 10 ®æi phiªn tranh tµi toµn bé sau khi kÕt thóc ®em cho ra tæng ®øng hµng . "); 
end; 


function StartReady() 
OldSubWorld = SubWorld; 
idx = SubWorldID2Idx(MapTab); 
SubWorld = idx; 
ms_state = GetMissionV(MS_STATE); 

if (GetLevel() > 80) and (GetLastFactionNumber() ~= -1) and (ms_state == 0) then 
OpenMission(MISSIONID); 
n = GetLastFactionNumber(); 
		str1 = FACTIONTAB[n+1];
SetMissionV(FACTIONS,n); 
SetMissionS(FACTIONS,str1); 

str = " b©y giê "..str1.." ®øng hµng vÞ cuéc so tµi b¾t ®Çu ghi danh , hoan nghªnh tÊt c¶ 81 cÊp trë lªn "..str1.." cao thñ tíi tr­íc tr­íc khi an cöa hoµng cung ghi danh dù thi , tiÒn ghi danh 100 v¹n . "; 
AddGlobalNews(str); 
end; 

SubWorld = OldSubWorld; 
end; 

function OnRegister() 

OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(MapTab); 
factionx = GetMissionV(FACTIONS); 
r = GetMissionV(OL_KEY); 
SubWorld = OldSubWorld; 

if (GetLevel() < 81) or (GetLastFactionNumber() ~= factionx) then 
ErrorMsg(5) 
return 
end; 

if GetTask(TASKFLAG) == r then 
ErrorMsg(4) 
return 
end; 

n = TableSDD_Search("olympictab",""); 
if (n == 0) or (n > MAX_MEMBER_COUNT) then 
ErrorMsg(7) 
return 
end; 

if GetCash() < 1000000 then 
ErrorMsg(2) 
return 
end; 

Pay(1000000); 
SetTask(TASKFLAG,r); 
SetTask(SCORE,0); 
SetTask(OLYMPICFLAG,0); 
x = GetName(); 
TableSDD_SetValue("olympictab",n,x,0,0) 

SubWorld = OldSubWorld; 
Msg2Player("Ng­¬i ®· b¸o danh tranh tµi , xin/mêi kiªn nhÉn chê vµo trµng th«ng b¸o . "); 
Say("Thèng lÜnh cÊm vÖ # ng­¬i ®· b¸o danh tranh tµi , xin/mêi kiªn nhÉn chê vµo trµng th«ng b¸o . ",0); 
end; 



function OnRegister1() -- script viet hoa By http://tranhba.com  bang héi ghi danh 
if (GetName() ~= GetTongMaster()) then 
ErrorMsg(9) 
return 
end 

OldSubWorld = SubWorld; 

-- script viet hoa By http://tranhba.com  if GetTask(TASKFLAG) == r then 
-- script viet hoa By http://tranhba.com  ErrorMsg(4) 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end; 

tname,tt = GetTong(); 
if (TableSDD_Search("olympictab",tname) ~= 0) then 
ErrorMsg(4) 
return 
end; 

n = TableSDD_Search("olympictab",""); 
if (n == 0) or (n > 16) then 
ErrorMsg(7) 
return 
end; 

if GetCash() < 1000000 then 
ErrorMsg(2) 
return 
end; 

Pay(1000000); 
TableSDD_SetValue("olympictab",n,tname,0,0) 

SubWorld = OldSubWorld; 
Msg2Player("Ng­¬i bang héi ®· b¸o danh tranh tµi , xin/mêi kiªn nhÉn chê vµo trµng th«ng b¸o . "); 
Say("Thèng lÜnh cÊm vÖ # ng­¬i bang héi ®· b¸o danh tranh tµi , xin/mêi kiªn nhÉn chê vµo trµng th«ng b¸o . ",0); 
end; 

function OnReady() 

OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(MapTab); 
r = GetMissionV(OL_KEY); 
SubWorld = OldSubWorld 

if GetTask(TASKFLAG) == r then 
OnJoin() 
else 
ErrorMsg(8) 
end; 
end; 

function OnEntry() -- script viet hoa By http://tranhba.com  bang héi vµo trµng 

tname,tt = GetTong(); 
n = TableSDD_Search("olympictab",tname) 
if (n == 0) then 
str = " ng­¬i bang héi kh«ng cã ghi danh dù thi hoÆc lµ ®· bÞ ®µo th¶i , b©y giê bang héi t­ c¸ch cuéc so tµi dù thi danh s¸ch nh­ sau #<enter><enter>"; 
maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
if (qy == 0) then 
str = str.." "..qname.."# ®æi phiªn v« Ých <enter>" 
elseif (mod(qy,2) == 0) then 
str = str.." "..qname.." VS" 
else 
str = str.." "..qname.."<enter>" 
end; 
end; 
Say(str,0); 
return 
end 

ny,n1,n2 = TableSDD_GetValue("olympictab",n) 
if (n2 == 0) then 
str = " ng­¬i bang héi vèn ®æi phiªn tranh tµi ®æi phiªn v« Ých , b©y giê bang héi t­ c¸ch cuéc so tµi dù thi danh s¸ch nh­ sau #<enter><enter>"; 

maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
if (qy == 0) then 
str = str.." "..qname.."# ®æi phiªn v« Ých <enter>" 
elseif (mod(qy,2) == 0) then 
str = str.." "..qname.." VS" 
else 
str = str.." "..qname.."<enter>" 
end; 
end; 
Say(str,0); 
return 
end; 

if (GetJoinTongTime() < JOINTONGTIME) then 
ErrorMsg(12) 
return 
end; 

SetTask(300, 334); 
SetTask(301, 1480); 
SetTask(302, 3048); 
SetTask(AREAID,n2); 
	n3 = floor(n2/2) + 212;
NewWorld(n3,1633,3292); 
end; 


function ErrorMsg(ErrorId) 
-- script viet hoa By http://tranhba.com  Msg2Player("ErrorId="..ErrorID) 
if (ErrorId == 1) then 
Say("Thèng lÜnh cÊm vÖ # b©y giê tranh tµi ®ang tiÕn hµnh trung , kh«ng thÓ vµo trµng . ",0) 
elseif (ErrorId == 2) then 
Say("Thèng lÜnh cÊm vÖ # trªn ng­êi ng­¬i mang ng©n l­îng kh«ng ®ñ . ",0) 
elseif (ErrorId == 3) then 
Say("Thèng lÜnh cÊm vÖ # ghi danh x¶y ra vÊn ®Ò , xin/mêi cïng quan ph­¬ng liªn l¹c #",0); 
elseif (ErrorId == 4) then 
Say("Thèng lÜnh cÊm vÖ # ng­¬i ®· b¸o danh tranh tµi , xin/mêi kiªn nhÉn chê vµo trµng th«ng b¸o . ", 0); 
elseif (ErrorId == 5) then 
Say("Thèng lÜnh cÊm vÖ # m«n ph¸i cña ng­¬i kh«ng phï hîp yªu cÇu hoÆc lµ cÊp bËc kh«ng ®ñ 81 cÊp . ",0); 
elseif (ErrorId == 6) then 
Say("Thèng lÜnh cÊm vÖ # b©y giê vßng kÕ tiÕp tranh tµi lËp tøc sÏ ph¶i b¾t ®Çu , xin chê chèc l¸t . ",0); 
elseif (ErrorId == 7) then 
Say("Thèng lÜnh cÊm vÖ # thËt xin lçi , ghi danh danh ng¹ch ®· ®Çy . ",0); 
elseif (ErrorId == 8) then 
Say("Thèng lÜnh cÊm vÖ # ng­¬i kh«ng cã ghi danh tranh tµi , v× vËy kh«ng thÓ vµo n¬i so tµi . ",0); 
elseif (ErrorId == 9) then 
Say("Thèng lÜnh cÊm vÖ # bang héi tranh tµi ph¶i lµ bang chñ míi cã thÓ ghi danh . ",0); 
elseif (ErrorId == 10) then 
Say("Thèng lÜnh cÊm vÖ # ng­¬i bang héi kh«ng cã ghi danh tham gia tranh tµi . ",0) 
elseif (ErrorId == 11) then 
Say("Thèng lÜnh cÊm vÖ # ng­¬i bang héi vèn ®æi phiªn tranh tµi ®æi phiªn v« Ých . ",0) 
elseif (ErrorId == 12) then 
Say("Thèng lÜnh cÊm vÖ # ng­¬i gia nhËp bang héi ®Ých thêi gian kh«ng ®ñ 1 ngµy , kh«ng thÓ tham gia tranh tµi . ",0) 
elseif (ErrorId == 13) then 
Say("Thèng lÜnh cÊm vÖ # ng­¬i vèn ®æi phiªn tranh tµi ®æi phiªn v« Ých hoÆc ®· bÞ tranh tµi ®µo th¶i . ",0) 
else 

end; 
return 
end; 


function OnJoin() 
idx = SubWorldID2Idx(MapTab); 

OldSubWorld = SubWorld; 
SubWorld = idx; 

-- script viet hoa By http://tranhba.com  DisplayMsg(); 

nx = GetName(); 
n = TableSDD_Search("olympictab",nx); 
if n ~= 0 then 
ny,n1,n2 = TableSDD_GetValue("olympictab",n) 
if (n2 == 0) then 
ErrorMsg(13) 
else 
if (n1 > 65536) then 
SetTask(OLYMPICFLAG,1); 
Msg2Player("Chóc mõng ng­¬i , ng­¬i ®· lÊy ®­îc tham gia toµn khu toµn dïng/uèng ¸o vËn héi so tµi t­ c¸ch . ",0) 
end 
JoinCamp(n2) 
end 
else 
ErrorMsg(3) 
end; 
SubWorld=OldSubWorld; 
end; 


function OnCancel() 
end; 
