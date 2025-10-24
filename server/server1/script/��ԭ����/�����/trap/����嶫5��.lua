Include("\\script\\global\\pgaming\\configserver\\configall.lua")
--§¹o H­¬ng Th«n
function main(sel)
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
if nDate < ThoiGianOpenServer then
if ( GetFightState() == 0 ) then	
	SetPos(1771, 3230)	
	Msg2Player(""..ThoiGianOpenServerText.."")		
else
	SetPos(1771, 3230)	
	Msg2Player(""..ThoiGianOpenServerText.."")	
end;
	AddStation(10)			
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
else
if ( GetFightState() == 0 ) then	
	SetPos(1772, 3235)
	SetFightState(1)		
else
	SetPos(1771, 3230)
	SetFightState(0)		
end;
	AddStation(13)
end
end;