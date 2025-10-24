Include("\\script\\global\\pgaming\\configserver\\configall.lua")
IL("TITLE");
--30  *24*60 t­¬ng ®­¬ng 30 ngµy, 18*60 t­¬ng ®­¬ng 1 phót (30*24*60*18*60)
function VongSangTanThu()
	if (GetLevel() > GioiHanCapNhanHoTroVongSang) then
		Talk(1, "", "§¼ng cÊp "..GioiHanCapNhanHoTroVongSang.." trë xuèng míi cã thÓ nhËn ®­îc vßng s¸ng hç trî nµy.")
	return end
	AddSkillState(314,12,1,60*60*18) -- 60 lµ 60 phót --12 level skill
	local _,nX32,nY32 = GetWorldPos()
	CastSkill(1204, 1, nX32*32, nY32*32)
	Msg2Player("NhËn tr¹ng th¸i håi phôc "..TocDoHoiPhucMauVongSangHoTro.." m¸u vµ "..TocDoHoiPhucManaVongSangHoTro.." mana trong vßng 60 phót")
end