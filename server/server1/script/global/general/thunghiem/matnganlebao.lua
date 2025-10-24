IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10

function Hien2()
		Say("H·y Lùa Chän Thuéc TÝnh",13,
		"Tèc §é §¸nh Ngo¹i C«ng/TocDoDanhHien2",
		"T¨ng Sinh Lùc/TangSinhLucHien2",
		"T¨ng Néi Lùc/TangNoiLucHien2",
		"T¨ng S¸t Th­¬ng %/TangSatThuongHien2",
		"Hót Sinh Lùc/HutSinhLucHien2",
		"Hót Néi Lùc/HutNoiLucHien2",
		"C«ng KÝch ChÝnh X¸c/ChinhXacHien2",
		"Phôc Håi Sinh Lùc/PhucHoiSinhLucHien2",
		"Thêi Gian Phôc Håi/PhucHoiHien2",
		"Tèc §é Di ChuyÓn/DiChuyenHien2",
		"T¨ng Kh¸ng TÊt C¶/KhangTatCaHien2",
		"Ph¶n §ßn CËn ChiÕn/PhanDonCanChienHien2",
		"Hñy Bá/No")
		
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TocDoDanhHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={115,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangSinhLucHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={85,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ FREE_"..FREE_IDX.." ¤ Trèng")
	end
end

function TangNoiLucHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={89,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangSatThuongHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={126,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HutSinhLucHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={136,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HutNoiLucHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={137,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function ChinhXacHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={166,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function PhucHoiSinhLucHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={88,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function PhucHoiHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={113,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function DiChuyenHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={111,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function KhangTatCaHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={114,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function PhanDonCanChienHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={117,0,0,0,0,0}},"MËt Ng©n Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end
----------------------------------------------------------------------------------------------------------------------------