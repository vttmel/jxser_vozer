--
IncludeLib("SETTING");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\dailogsys\\dailogsay.lua");

function main(nItemIndex)
	dofile("script/global/general/hotrotanthu/tuimautanthu.lua")
	if (ST_GetTransLifeCount() > 5) then
		Talk(1, "", "ChØ hç trî ng­êi ch¬i chuyÓn sinh 5 lÇn trë xuèng!");
	return 1 end;
	if (CalcFreeItemCellCount() < 20) then
		Talk(1, "", "Hµnh trang kh«ng ®ñ 20 « trèng ®Ó nhËn m¸u hç trî");
	return 1 end;
	tbAwardTemplet:GiveAwardByList({tbProp={1,8,0,4,0,0}, nCount=30, nBindState=-2}, "Tói m¸u t©n thñ")
return 1 end;