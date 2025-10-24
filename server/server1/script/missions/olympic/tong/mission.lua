Include("\\script\\missions\\olympic\\tong\\head.lua")
function InitMission() 
for i = 1, 40 do 
SetMissionV(i,0); 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 

SetMissionV(MS_STATE, 3); 
StartMissionTimer(MISSIONID, TIME_NO3, TIMER_1); -- script viet hoa By http://tranhba.com  b¾t ®Çu ghi danh tÝnh giê 

end; 

function RunMission() 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 

if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
SetFightState(1); 
end 
end; 
SetMissionV(MS_STATE, 4);-- script viet hoa By http://tranhba.com  b¾t ®Çu chiÕn ®Êu 
end; 

function EndMission() 
GameOver(); 
for i = 1, 40 do 
SetMissionV(i , 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 
StopMissionTimer(MISSIONID, TIME_NO3); 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
str2 = GetName().."<#> thèi lui ra khái chiÕn tr­êng "; 
SetCurCamp(GetCamp()) 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nhµ ch¬i r¬i tuyÕn còng sÏ tõ Mission trung OnLeave , v× vËy kh«ng thÓ ë chç nµy ®iÒu dông SetLogoutRV(0) , nhÊt ®Þnh ph¶i ë ®em nhµ ch¬i NewWorld ra Mission b¶n ®å ®Ých ®Þa ph­¬ng ®iÒu dông Fanghao_Wu 2006-3-21 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetPunish(1)-- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
ForbidChangePK(0); 
ForbitTrade(0); 
SetFightState(0); 
Msg2MSAll(MISSIONID, str2); 
SetTaskTemp(JOINSTATE, 0); 
end;
