IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10

function Hien3()
		Say("H·y Lùa Chän Thuéc TÝnh",13,
		"Tèc §é §¸nh Ngo¹i C«ng/TocDoDanhHien3",
		"T¨ng Sinh Lùc/TangSinhLucHien3",
		"T¨ng Néi Lùc/TangNoiLucHien3",
		"T¨ng S¸t Th­¬ng %/TangSatThuongHien3",
		"Hót Sinh Lùc/HutSinhLucHien3",
		"Hót Néi Lùc/HutNoiLucHien3",
		"C«ng KÝch ChÝnh X¸c/ChinhXacHien3",
		"Phôc Håi Sinh Lùc/PhucHoiSinhLucHien3",
		"Thêi Gian Phôc Håi/PhucHoiHien3",
		"Tèc §é Di ChuyÓn/DiChuyenHien3",
		"T¨ng Kh¸ng TÊt C¶/KhangTatCaHien3",
		"Ph¶n §ßn CËn ChiÕn/PhanDonCanChienHien3",
		"Hñy Bá/No")
		
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TocDoDanhHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={115,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangSinhLucHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={85,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ FREE_"..FREE_IDX.." ¤ Trèng")
	end
end

function TangNoiLucHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={89,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangSatThuongHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={126,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HutSinhLucHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={136,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HutNoiLucHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={137,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function ChinhXacHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={166,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function PhucHoiSinhLucHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={88,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function PhucHoiHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={113,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function DiChuyenHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={111,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function KhangTatCaHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={114,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function PhanDonCanChienHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={117,0,0,0,0,0}},"Chu Sa Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end
----------------------------------------------------------------------------------------------------------------------------