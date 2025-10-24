IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10

function An1()
	Say("H·y Lùa Chän Thuéc TÝnh",12,
		"ChuyÓn Hãa S¸t Th­¬ng Thµnh Néi Lùc/ChuyenHoaAn1",
		"T¨ng Th©n Ph¸p/TangThanPhapAn1",
		"T¨ng Sinh KhÝ/TangSinhKhiAn1",
		"T¨ng Kh¸ng §éc/TangKhangDocAn1",
		"T¨ng Kh¸ng Háa/TangKhangHoaAn1",
		"T¨ng Kh¸ng L«i/TangKhangLoiAn1",
		"T¨ng Phßng Thñ/TangPhongThuAn1",
		"T¨ng Kh¸ng B¨ng/TangKhangBangAn1",
		"Thêi Gian Lµm ChËm/LamChamAn1",
		"Thêi Gian Tróng §éc/TrungDocAn1",
		"Thêi Gian Cho¸ng/LamChoangAn1",
		"Trang KÕ/TrangKeAn1",
		"Hñy Bá/No")
		
end

function TrangKeAn1()
	Say("H·y Lùa Chän Thuéc TÝnh",12,
	"T¨ng S¸t Th­¬ng VËt Lý ngo¹i c«ng/SatThuongNgoaiAn1",
	"T¨ng S¸t Th­¬ng VËt Lý néi c«ng/SatThuongNoiAn1",
	"B¨ng S¸t Ngo¹i C«ng/BangSatNgoaiAn1",
	"B¨ng S¸t Néi C«ng/BangSatNoiAn1",
	"§éc S¸t Ngo¹i C«ng/DocSatNgoaiAn1",
	"§éc S¸t N«i C«ng/DocSatNoiAn1",
	"Háa S¸t Ngo¹i C«ng/HoaSatNgoaiAn1",
	"Háa S¸t Néi C«ng/HoaSatNoiAn1",
	"L«i S¸t Ngo¹i C«ng/LoiSatNgoaiAn1",
	"L«i S¸t Néi C«ng/LoiSatNoiAn1",
	"Quay L¹i/An1",
	"Hñy Bá/No")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function SatThuongNgoaiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function SatThuongNoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,0,0,0},nCount=1,tbParam={168,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HoaSatNgoaiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,3,0,0},nCount=1,tbParam={122,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LoiSatNgoaiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,4,0,0},nCount=1,tbParam={124,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end


function ChuyenHoaAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,1,0,0},nCount=1,tbParam={134,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangThanPhapAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,3,0,0},nCount=1,tbParam={98,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangSinhKhiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,2,0,0},nCount=1,tbParam={99,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangDocAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,0,0,0},nCount=1,tbParam={101,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangHoaAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,2,0,0},nCount=1,tbParam={102,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangLoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,1,0,0},nCount=1,tbParam={103,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangPhongThuAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,3,0,0},nCount=1,tbParam={104,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangBangAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,4,0,0},nCount=1,tbParam={105,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LamChamAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,3,0,0},nCount=1,tbParam={106,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TrungDocAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,4,0,0},nCount=1,tbParam={108,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LamChoangAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,2,0,0},nCount=1,tbParam={110,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function SatThuongDiemAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function BangSatNgoaiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,2,0,0},nCount=1,tbParam={123,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function BangSatNoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,2,0,0},nCount=1,tbParam={169,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function DocSatNgoaiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,1,0,0},nCount=1,tbParam={125,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function DocSatNoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,1,0,0},nCount=1,tbParam={172,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HoaSatNoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,3,0,0},nCount=1,tbParam={170,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LoiSatNoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,4,0,0},nCount=1,tbParam={171,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end
----------------------------------------------------------------------------------------------------------------------------