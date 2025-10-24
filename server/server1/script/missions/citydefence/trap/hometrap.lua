function main()
	if ( GetFightState() == 1 ) then
		SetPos(GetMissionV(homeoutposx), GetMissionV(homeoutposy))
		SetFightState(0)
	else
		SetPos(GetMissionV(centerposx), GetMissionV(centerposy))
		SetFightState(1)
		AddStation(10)			-- 记录角色曾经到过巴陵县
		SetProtectTime(18*5)
		AddSkillState(963, 1, 0, 18*5) 
	end
end