IncludeLib("SETTING"); 
Include("\\script\\missions\\olympic\\head.lua");

function OnDeath(Launcher) 
DeathName = GetName(); 

pn = TableSDD_Search("olympictab",DeathName); 
pname,px,py = TableSDD_GetValue("olympictab",pn); 

DelMSPlayer(MISSIONID, py); 
SetLogoutRV(1); 

PlayerIndex1 = NpcIdx2PIdx(Launcher); -- script viet hoa By http://tranhba.com  murder hung thñ 
OrgPlayer = PlayerIndex; -- script viet hoa By http://tranhba.com  ng­êi chÕt 

if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 

str = " chiÕn huèng b¸o c¸o #"..LaunName.."<#> ë tranh tµi trung ®¸nh b¹i "..DeathName.."<#> . "; 
Msg2MSAll(MISSIONID, str); 

PlayerIndex = OrgPlayer; 
end; 

SetCurCamp(GetCamp()) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
ForbidChangePK(0); 
ForbitTrade(0); 
SetFightState(0); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetTaskTemp(JOINSTATE, 0); 
end; 
