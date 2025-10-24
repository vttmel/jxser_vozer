Include("\\script\\global\\pgaming\\configserver\\configall.lua")
--Giang T©n Th«n
function main(sel)
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
if nDate < ThoiGianOpenServer then
if ( GetFightState() == 0 ) then	
	SetPos(3594, 6232)
	Msg2Player(""..ThoiGianOpenServerText.."")			
else
	SetPos(3594, 6232)	       		
	Msg2Player(""..ThoiGianOpenServerText.."")
end;
	AddStation(10)			
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
else
if ( GetFightState() == 0 ) then	
	SetPos(3596, 6237)		
	SetFightState(1)		
else
	SetPos(3594, 6232)		
	SetFightState(0)		
end;
	
end
end;