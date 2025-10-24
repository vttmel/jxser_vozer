function main(sel)
if ( GetFightState() == 0 ) then	
	SetPos(1289, 3165)		
	SetFightState(1)
	SetFightState(1)
	SetPKFlag(1)
	ForbidChangePK(1)		
else			       		
	SetPos(1283, 3152)		
	SetFightState(0)		
end;
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end;