
function OnTongJoin() 
OpenMission(13); 
OnTongJoin1(); 
end; 

function OnTongJoin1() 
tname = GetTong() 
if (tname ~= "") then 
if (GetMissionS(1) == "") then 
SetMissionS(1,tname) 
elseif (GetMissionS(1) ~= tname) and (GetMissionS(2) == "") then 
SetMissionS(2,tname) 
end; 
end; 

if (tname == GetMissionS(1)) and (GetTask(626) > 0) then 
if (GetJoinTongTime() >= 1440) then 
JoinTongCamp(3); 
else 
Say("Ngµi gia nhËp bang héi thêi gian qu¸ ng¾n , kh«ng thÓ tham gia chiÕn ®Êu #", 0); 
end; 
elseif (tname == GetMissionS(2)) and (GetTask(626) > 0) then 
if (GetJoinTongTime() >= 1440) then 
JoinTongCamp(2); 
else 
Say("Ngµi gia nhËp bang héi thêi gian qu¸ ng¾n , kh«ng thÓ tham gia chiÕn ®Êu #", 0); 
end; 
else 
Say("Ng­¬i kh«ng ph¶i lµ tranh tµi song ph­¬ng thµnh viªn , kh«ng thÓ vµo trµng . ",0) 
end; 

end; 

function OnTongFighting() 
Say("Tr­íc m¾t song ph­¬ng tranh tµi ®ang tiÕn hµnh trong , kh«ng thÓ vµo trµng . ",0) 
end; 

function JoinTongCamp(Camp) 

SetFightState(0); 
LeaveTeam(); 
if (GetMSPlayerCount(13, Camp) >= 16) then 
Say("Tr­íc m¾t nªn ph­¬ng nh©n sè cña ®· ®Çy , kh«ng c¸ch nµo l¹i thªm vµo #",0) 
return 
end; 

AddMSPlayer(13, Camp); 
SetTaskTemp(242, 1); 
SetCurCamp(Camp); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cïng bang héi cã liªn quan thay ®æi l­îng , kh«ng cho phÐp ë chiÕn tr­êng trung söa ®æi mét bang héi trËn doanh ®Ých thao t¸c 
SetTaskTemp(200, 1); 

-- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra lóc , b¶o tån RV còng , t¹i h¹ lÇn chê vµo lóc dïng RV( thµnh phè sèng l¹i ®iÓm , kh«ng ph¶i lµ thèi lui ra ®iÓm ) 
SetLogoutRV(1); 

-- script viet hoa By http://tranhba.com  v« tö vong trõng ph¹t 
SetPunish(0); 

-- script viet hoa By http://tranhba.com  t¾t häp thµnh ®éi chøc n¨ng 
SetCreateTeam(0); 

-- script viet hoa By http://tranhba.com  më ra PK chèt më 
SetPKFlag(1) 
ForbidChangePK(1); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm , mét lo¹i lµ lùa chän tiÕn vµo nªn khu ®Ých thµnh phè 
SetRevPos(176, 67); 

-- script viet hoa By http://tranhba.com  thiÕt trÝ tr­íc mÆt nhµ ch¬i ®Ých tö vong ch©n vèn 
	SetDeathScript("\\script\\missions\\olympic\\tong\\death.lua");

x = GetTask(300); 
y = GetTask(301); 
z = GetTask(302); 
SetTempRevPos(x, y * 32, z * 32); 
if (Camp == 3) then 
str = GetName().."<#> gia nhËp "..GetMissionS(1).."<#> nhÊt ph­¬ng , tr­íc m¾t tæng nh©n sè v× "..GetMSPlayerCount(13,3); 
SetPos(CampPos1[1], CampPos1[2]) 
elseif (Camp == 2) then 
str = GetName().."<#> gia nhËp "..GetMissionS(2).."<#> nhÊt ph­¬ng , tr­íc m¾t tæng nh©n sè v× "..GetMSPlayerCount(13,2); 
SetPos(CampPos2[1], CampPos2[2]) 
else 
return 
end; 

Msg2MSAll(13, str); 
end; 
