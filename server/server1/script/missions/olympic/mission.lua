IncludeLib("SETTING"); 
Include("\\script\\missions\\olympic\\head.lua")
function InitMission() 
TableSDD_Close("olympictab"); 
TableSDD_Open("olympictab"); 
	for i = 1, MAX_MEMBER_COUNT+10 do
TableSDD_SetValue( "olympictab", i, "", 0, 0) 
end 

for i = 1, 40 do 
SetMissionV(i,0); 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 
SetMissionV(MS_STATE, 1); 
	SetMissionV(OL_KEY, random(10000000)+1);

StartMissionTimer(MISSIONID, TIME_NO1, TIMER_1); -- script viet hoa By http://tranhba.com  b¾t ®Çu ghi danh tÝnh giê 
-- script viet hoa By http://tranhba.com  StartMissionTimer(MISSIONID, TIME_NO2, TIMER_2); 

end; 

function RunMission() 
OldPlayer = PlayerIndex; 

maxn = GetMissionV(TOTALNUMBER); 
for i = 1,maxn do 
idx , pidx = GetNextPlayer(MISSIONID, 0, i); 
if (pidx > 0) then 
PlayerIndex = pidx; 
SetFightState(1); 
end; 
end; 

PlayerIndex = OldPlayer; 
SetMissionV(MS_STATE, 3); 
end; 

function EndMission() 
for i = 1, 40 do 
SetMissionV(i , 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 

StopMissionTimer(MISSIONID, TIME_NO1); 
StopMissionTimer(MISSIONID, TIME_NO2); 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
SetCurCamp(GetCamp()) 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nhµ ch¬i r¬i tuyÕn còng sÏ tõ Mission trung OnLeave , v× vËy kh«ng thÓ ë chç nµy ®iÒu dông SetLogoutRV(0) , nhÊt ®Þnh ph¶i ë ®em nhµ ch¬i NewWorld ra Mission b¶n ®å ®Ých ®Þa ph­¬ng ®iÒu dông Fanghao_Wu 2006-3-21 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetPunish(1)-- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
ForbidChangePK(0); 
ForbitTrade(0); 
SetFightState(0); 
SetTaskTemp(JOINSTATE, 0); 
end;
