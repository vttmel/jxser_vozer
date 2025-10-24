Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{
	{szName="[Cùc phÈm] §éng S¸t B¹ch Kim §iªu Long Giíi", nQuality=1, tbProp={0, 494}, nBindState = -2},
	{szName="[Cùc phÈm] §éng S¸t B¹ch Ngäc Cµn Kh«n Béi", nQuality=1, tbProp={0, 495}, nBindState = -2},
	{szName="[Cùc phÈm] §éng S¸t B¹ch Kim Tó Phông Giíi", nQuality=1, tbProp={0, 496}, nBindState = -2},
	{szName="[Cùc phÈm] §éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn", nQuality=1, tbProp={0, 497}, nBindState = -2},
}
function main()
	
	if  CountFreeRoomByWH(2, 5, 1) < 1 then
		Talk(1, "", format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", 1, 2, 5))
		return 1
	end
	
	
	tbAwardTemplet:GiveAwardByList(%tbItem, "§éng S¸t")
	
end