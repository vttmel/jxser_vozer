Include("\\script\\missions\\olympic\\tong\\head.lua");

function OnDeath(Launcher) 
curcamp = GetCurCamp(); 
DelMSPlayer(MISSIONID,curcamp); 

PlayerIndex1 = NpcIdx2PIdx(Launcher); -- script viet hoa By http://tranhba.com  murder hung thñ 
OrgPlayer = PlayerIndex; -- script viet hoa By http://tranhba.com  ng­êi chÕt 
DeathName = GetName(); 

SetFightState(0) 
if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 

		pkcount = GetTaskTemp(MS_TOTALPK) + 1; -- script viet hoa By http://tranhba.com ¼ÆËãµ±Ç°µÄpkÈËÊý
		SetTask(MS_TOTALPK, GetTask(MS_TOTALPK) + 1); -- script viet hoa By http://tranhba.com Í³¼Æ×Ü¹²µÄpkÈËÊý
SetTaskTemp(MS_TOTALPK, pkcount); 

if (curcamp == 3) then 
str = GetMissionS(2).."<#> d­íi tr­íng "..LaunName.."<#> bÞ th­¬ng nÆng ["..DeathName.."<#>] , PK nh©n sè t¨ng v× "..pkcount; 
-- script viet hoa By http://tranhba.com 			SetMissionV(MS_TONG2VALUE, GetMissionV(MS_TONG2VALUE) + 1);
elseif (curcamp == 2) then 
str = GetMissionS(1).."<#> d­íi tr­íng "..LaunName.."<#> bÞ th­¬ng nÆng ["..DeathName.."<#>] , PK nh©n sè t¨ng v× "..pkcount; 
-- script viet hoa By http://tranhba.com 			SetMissionV(MS_TONG1VALUE, GetMissionV(MS_TONG1VALUE) + 1);
end; 

Msg2MSAll(MISSIONID, str); 
PlayerIndex = OrgPlayer; 
end; 

SetCurCamp(GetCamp()) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
ForbidChangePK(0); 
ForbitTrade(0); 
SetLogoutRV(0) 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetTaskTemp(JOINSTATE, 0); 
end; 
