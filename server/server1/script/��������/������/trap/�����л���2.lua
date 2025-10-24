Include("\\script\\global\\pgaming\\configserver\\configall.lua")
--Long M«n TrÊn
function main(sel)
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
if nDate < ThoiGianOpenServer then
if ( GetFightState() == 0 ) then	
	SetPos(1979, 4615)
	Msg2Player(""..ThoiGianOpenServerText.."")			
else
	SetPos(1979, 4615)
	Msg2Player(""..ThoiGianOpenServerText.."")
end;
	AddStation(10)			
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
else
if ( GetFightState() == 0 ) then	
	SetPos(1983, 4626)
	SetFightState(1)		
else
	SetPos(1979, 4615)
	SetFightState(0)		
end;

end
end;