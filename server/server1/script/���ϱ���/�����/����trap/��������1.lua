Include("\\script\\global\\pgaming\\configserver\\configall.lua")
--Giang T©n Th«n
function main(sel)
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
if nDate < ThoiGianOpenServer then
if ( GetFightState() == 0 ) then	
	SetPos(3490, 6243)
	Msg2Player(""..ThoiGianOpenServerText.."")	
else
	SetPos(3490, 6243)		       		
	Msg2Player(""..ThoiGianOpenServerText.."")
end;
	AddStation(10)			
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
else
if ( GetFightState() == 0 ) then	
	SetPos(3486, 6248)			
	SetFightState(1)		
else
	SetPos(3490, 6243)		
	SetFightState(0)		
end;
AddStation(8)	
end
end;