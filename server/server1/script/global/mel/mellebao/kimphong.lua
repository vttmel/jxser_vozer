Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{
		{szName="Kim Phong Thanh D­¬ng Kh«i", tbProp={0,177}, nQuality=1, nBindState=-2},
		{szName="Kim Phong Kú L©n HuyÕt", tbProp={0,178}, nQuality=1, nBindState=-2},
		{szName="Kim Phong Tr¹c Liªn Quang", tbProp={0,179}, nQuality=1, nBindState=-2},
		{szName="Kim Phong C«ng CÈn Tam Th¸n", tbProp={0,180}, nQuality=1, nBindState=-2},
		{szName="Kim Phong §o¹t Hån Ngäc ®¸i", tbProp={0,181}, nQuality=1, nBindState=-2},
		{szName="Kim Phong HËu NghÖ dÉn cung", tbProp={0,182}, nQuality=1, nBindState=-2},
		{szName="Kim Phong Lan §×nh Ngäc", tbProp={0,183}, nQuality=1, nBindState=-2},
		{szName="Kim Phong Thiªn Lý Th¶o Th­îng Phi", tbProp={0,184}, nQuality=1, nBindState=-2},
		{szName="Kim Phong §ång T­íc Xu©n Th©m", tbProp={0,185}, nQuality=1, nBindState=-2},
}
function main()
	
	if (CalcFreeItemCellCount() < 40) then
		Talk(1, "", "Hµnh trang kh«ng ®ñ 40 « trèng ®Ó nhËn.")
	return 1
	end
	
	
	tbAwardTemplet:GiveAwardByList(%tbItem, "Kim Phong")
	
end