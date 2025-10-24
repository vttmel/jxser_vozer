IncludeLib("SETTING"); 

function main()
--	if (GetNpcExpRate() <= 100) then
		AddSkillState(1214, 1, 1, 7*24*60*60*18,1);
	local _,nX32,nY32 = GetWorldPos()
	CastSkill(1204, 1, nX32*32, nY32*32)
	Msg2Player("NhËn tr¹ng th¸i håi phôc sinh lùc vµ néi lùc trong vßng 7 ngµy.")

--	else
--		Say("ThËt ®¸ng tiÕc, t¹m thêi kh«ng sö dông ®­îc Tiªn Th¶o Lé ®Æc biÖt.", 0)
--		return 1;
--	end;
--	return 0;
end;