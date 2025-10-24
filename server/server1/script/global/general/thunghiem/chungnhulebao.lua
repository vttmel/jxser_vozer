IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10


function An3()
		Say("H·y Lùa Chän Thuéc TÝnh",12,
		"ChuyÓn Hãa S¸t Th­¬ng Thµnh Néi Lùc/ChuyenHoaAn3",
		"T¨ng Th©n Ph¸p/TangThanPhapAn3",
		"T¨ng Sinh KhÝ/TangSinhKhiAn3",
		"T¨ng Kh¸ng §éc/TangKhangDocAn3",
		"T¨ng Kh¸ng Háa/TangKhangHoaAn3",
		"T¨ng Kh¸ng L«i/TangKhangLoiAn3",
		"T¨ng Phßng Thñ/TangPhongThuAn3",
		"T¨ng Kh¸ng B¨ng/TangKhangBangAn3",
		"Thêi Gian Lµm ChËm/LamChamAn3",
		"Thêi Gian Tróng §éc/TrungDocAn3",
		"Thêi Gian Cho¸ng/LamChoangAn3",
		"Trang KÕ/TrangKeAn3",
		"Hñy Bá/No")
		
end

function TrangKeAn3()
	Say("H·y Lùa Chän Thuéc TÝnhAn3",12,
	"T¨ng S¸t Th­¬ng VËt Lý ngo¹i c«ng/SatThuongNgoaiAn3",
	"T¨ng S¸t Th­¬ng VËt Lý néi c«ng/SatThuongNoiAn3",
	"B¨ng S¸t Ngo¹i C«ng/BangSatNgoaiAn3",
	"B¨ng S¸t Néi C«ng/BangSatNoiAn3",
	"§éc S¸t Ngo¹i C«ng/DocSatNgoaiAn3",
	"§éc S¸t N«i C«ng/DocSatNoiAn3",
	"Háa S¸t Ngo¹i C«ng/HoaSatNgoaiAn3",
	"Háa S¸t Néi C«ng/HoaSatNoiAn3",
	"L«i S¸t Ngo¹i C«ng/LoiSatNgoaiAn3",
	"L«i S¸t Néi C«ng/LoiSatNoiAn3",
	"Quay L¹i/An3",
	"Hñy Bá/No")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function SatThuongNgoaiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function SatThuongNoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,0,0,0},nCount=1,tbParam={168,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HoaSatNgoaiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,3,0,0},nCount=1,tbParam={122,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LoiSatNgoaiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,4,0,0},nCount=1,tbParam={124,0,0,0,0,0}},"Khæng T­íc Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end




function ChuyenHoaAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,1,0,0},nCount=1,tbParam={134,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangThanPhapAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,3,0,0},nCount=1,tbParam={98,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangSinhKhiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,2,0,0},nCount=1,tbParam={99,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangDocAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,0,0,0},nCount=1,tbParam={101,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangHoaAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,2,0,0},nCount=1,tbParam={102,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangLoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,1,0,0},nCount=1,tbParam={103,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangPhongThuAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,3,0,0},nCount=1,tbParam={104,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TangKhangBangAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,4,0,0},nCount=1,tbParam={105,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LamChamAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,3,0,0},nCount=1,tbParam={106,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function TrungDocAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,4,0,0},nCount=1,tbParam={108,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LamChoangAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,2,0,0},nCount=1,tbParam={110,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function SatThuongDiemAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function BangSatNgoaiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,2,0,0},nCount=1,tbParam={123,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function BangSatNoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,2,0,0},nCount=1,tbParam={169,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function DocSatNgoaiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,1,0,0},nCount=1,tbParam={125,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function DocSatNoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,1,0,0},nCount=1,tbParam={172,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function HoaSatNoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,3,0,0},nCount=1,tbParam={170,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end

function LoiSatNoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,4,0,0},nCount=1,tbParam={171,0,0,0,0,0}},"Chung Nhò Th¹ch")
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ "..FREE_IDX.." ¤ Trèng")
	end
end
----------------------------------------------------------------------------------------------------------------------------