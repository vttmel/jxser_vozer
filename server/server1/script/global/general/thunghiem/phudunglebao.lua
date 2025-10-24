IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10

function An2()
		Say("H·y Lùa Chän Thuéc TÝnh",12,
		"ChuyÓn Hãa S¸t Th­¬ng Thµnh Néi Lùc/ChuyenHoaAn2",
		"T¨ng Th©n Ph¸p/TangThanPhapAn2",
		"T¨ng Sinh KhÝ/TangSinhKhiAn2",
		"T¨ng Kh¸ng §éc/TangKhangDocAn2",
		"T¨ng Kh¸ng Háa/TangKhangHoaAn2",
		"T¨ng Kh¸ng L«i/TangKhangLoiAn2",
		"T¨ng Phßng Thñ/TangPhongThuAn2",
		"T¨ng Kh¸ng B¨ng/TangKhangBangAn2",
		"Thêi Gian Lµm ChËm/LamChamAn2",
		"Thêi Gian Tróng §éc/TrungDocAn2",
		"Thêi Gian Cho¸ng/LamChoangAn2",
		"Trang KÕ/TrangKeAn2",
		"Hñy Bá/No")
		
end

function TrangKeAn2()
	Say("H·y Lùa Chän Thuéc TÝnh",12,
	"T¨ng S¸t Th­¬ng VËt Lý ngo¹i c«ng/SatThuongNgoaiAn2",
	"T¨ng S¸t Th­¬ng VËt Lý néi c«ng/SatThuongNoiAn2",
	"B¨ng S¸t Ngo¹i C«ng/BangSatNgoaiAn2",
	"B¨ng S¸t Néi C«ng/BangSatNoiAn2",
	"§éc S¸t Ngo¹i C«ng/DocSatNgoaiAn2",
	"§éc S¸t N«i C«ng/DocSatNoiAn2",
	"Háa S¸t Ngo¹i C«ng/HoaSatNgoaiAn2",
	"Háa S¸t Néi C«ng/HoaSatNoiAn2",
	"L«i S¸t Ngo¹i C«ng/LoiSatNgoaiAn2",
	"L«i S¸t Néi C«ng/LoiSatNoiAn2",
	"Quay L¹i/An2",
	"Hñy Bá/No")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function SatThuongNgoaiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function SatThuongNoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,0,0,0},nCount=1,tbParam={168,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HoaSatNgoaiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,3,0,0},nCount=1,tbParam={122,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LoiSatNgoaiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,4,0,0},nCount=1,tbParam={124,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end


function ChuyenHoaAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,1,0,0},nCount=1,tbParam={134,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangThanPhapAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,3,0,0},nCount=1,tbParam={98,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangSinhKhiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,2,0,0},nCount=1,tbParam={99,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangDocAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,0,0,0},nCount=1,tbParam={101,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangHoaAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,2,0,0},nCount=1,tbParam={102,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangLoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,1,0,0},nCount=1,tbParam={103,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangPhongThuAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,3,0,0},nCount=1,tbParam={104,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangBangAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,4,0,0},nCount=1,tbParam={105,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LamChamAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,3,0,0},nCount=1,tbParam={106,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TrungDocAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,4,0,0},nCount=1,tbParam={108,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LamChoangAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,2,0,0},nCount=1,tbParam={110,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function SatThuongDiemAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function BangSatNgoaiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,2,0,0},nCount=1,tbParam={123,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function BangSatNoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,2,2,0},nCount=1,tbParam={169,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function DocSatNgoaiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,1,0,0},nCount=1,tbParam={125,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function DocSatNoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,1,0,0},nCount=1,tbParam={172,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HoaSatNoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,3,0,0},nCount=1,tbParam={170,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LoiSatNoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,4,0,0},nCount=1,tbParam={171,0,0,0,0,0}},"Phï Dung Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end
----------------------------------------------------------------------------------------------------------------------------