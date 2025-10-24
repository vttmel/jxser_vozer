IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10

function Hien1()
		Say("H·y Lùa Chän Thuéc TÝnh",13,
		"Tèc §é §¸nh Ngo¹i C«ng/TocDoDanhHien1",
		"T¨ng Sinh Lùc/TangSinhLucHien1",
		"T¨ng Néi Lùc/TangNoiLucHien1",
		"T¨ng S¸t Th­¬ng %/TangSatThuongHien1",
		"Hót Sinh Lùc/HutSinhLucHien1",
		"Hót Néi Lùc/HutNoiLucHien1",
		"C«ng KÝch ChÝnh X¸c/ChinhXacHien1",
		"Phôc Håi Sinh Lùc/PhucHoiSinhLucHien1",
		"Thêi Gian Phôc Håi/PhucHoiHien1",
		"Tèc §é Di ChuyÓn/DiChuyenHien1",
		"T¨ng Kh¸ng TÊt C¶/KhangTatCaHien1",
		"Ph¶n §ßn CËn ChiÕn/PhanDonCanChienHien1",
		"Hñy Bá/No")
		
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TocDoDanhHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={115,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangSinhLucHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={85,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ FREE_"..FREE_IDX.." ¤ Trèng")
	end
end

function TangNoiLucHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={89,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangSatThuongHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={126,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HutSinhLucHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={136,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HutNoiLucHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={137,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function ChinhXacHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={166,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function PhucHoiSinhLucHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={88,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function PhucHoiHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={113,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function DiChuyenHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={111,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function KhangTatCaHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={114,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function PhanDonCanChienHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={117,0,0,0,0,0}},"HuyÒn ThiÕt Kho¸ng")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end
----------------------------------------------------------------------------------------------------------------------------