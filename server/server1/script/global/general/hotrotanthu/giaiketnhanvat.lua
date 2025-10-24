
function GiaiKetNhanVat()
	local nW, nX, nY = GetWorldPos();
	if (nW == 246) then
	Msg2Player("Map nµy kh«ng thÓ sö dông tÝnh n¨ng nµy!")
	return 1
	end
	if (nW == 53) then
		SetPos(1626,3179);
	else
		NewWorld(53, 1626, 3179);
	end
	SetFightState(0);
	Msg2Player("Gi¶i kÑt nh©n vËt thµnh c«ng!")
end
