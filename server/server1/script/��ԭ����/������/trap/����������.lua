Include("\\script\\global\\pgaming\\configserver\\configall.lua")
--Chu Tiªn TrÊn
function main(sel)
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
if nDate < ThoiGianOpenServer then
if ( GetFightState() == 0 ) then	
	SetPos(1599, 3200)
	Msg2Player(""..ThoiGianOpenServerText.."")		
else
	SetPos(1599, 3200)	
	Msg2Player(""..ThoiGianOpenServerText.."")
end;
	AddStation(10)			
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
else
if ( GetFightState() == 0 ) then	
	SetPos(1597, 3204)	
	SetFightState(1)		
else
	SetPos(1599, 3200)
	SetFightState(0)		
end;
	AddStation(15)
end
end;