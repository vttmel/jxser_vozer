Include("\\script\\event\\other\\xunmashu\\class.lua")
Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{
	{szName="Cµn Kh«n Giíi ChØ", nQuality=1, tbProp={0, 428}, nExpiredTime = 10080, nBindState = -2},
	
}
function main()
	
	if  CountFreeRoomByWH(2, 5, 1) < 1 then
		Talk(1, "", format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", 1, 2, 5))
		return 1
	end
	
	
	tbAwardTemplet:GiveAwardByList(%tbItem, "hongying baoxiang")
	
end