Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-----------------------------------------------
---------------------------------
function main() 
dofile("script/global/mel/vozer.lua")
	local tbOpt = {
		
		--{"§æi R­¬ng TrÊn Bang Chi B¶o",DoiRuongTranBang},
		{"§æi Trang BÞ §éng S¸t",DoiTrangBiDongSat},
		{"§æi §¹i Thµnh BÝ KÝp 120",DoiDaiThanh120},
		{"§æi NhÊt Kû Cµn Kh«n Phï",DoiNhatKy},
		{"§æi Phi Phong Hoµng Kim",DoiPhiPhongHoangKim},
		{"§æi Khu«n ®óc TuyÖt §Ønh Giíi ChØ",DoiTuyetDinh},
		--{"§æi Vâ L©m MËt TÞch",DoiVoLamMatTich},
		--{"§æi TÈy Tñy Kinh",DoiTayTuyKinh},
		{"§æi H·n HuyÕt Long C©u",DoiHHLC},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn ®æi ®å kh«ng?<color>", tbOpt)
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTuyetDinh()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     Tû lÖ ®æi 10000 Phong Háa lÖnh = Khu«n ®óc TuyÖt §Ønh Giíi ChØ<enter>",11,
	"Ta ®ång ý/tadongytuyetdinh",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function tadongytuyetdinh()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 10000 then
		ItemIndex = AddItem(4,2053,0,0,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(10000,6,1,4926,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Phong Háa lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiPhiPhongHoangKim()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     Tû lÖ ®æi 10000 Phong Háa lÖnh = Phi Phong Hoµng Kim<enter>",11,
	"Ta ®ång ý/tadongyphiphong",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function tadongyphiphong()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 10000 then
		ItemIndex = AddItem(4,2055,0,0,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(10000,6,1,4926,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Phong Háa lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiNhatKy()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     Tû lÖ ®æi 5000 Phong Háa lÖnh = NhÊt Kû Cµn Kh«n Phï<enter>",11,
	"Ta ®ång ý/tadongynhatky",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function tadongynhatky()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 5000 then
		ItemIndex = AddItem(6,1,2126,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(5000,6,1,4926,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Phong Háa lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiDaiThanh120()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     Tû lÖ ®æi 1000 Phong Háa lÖnh = 1 §¹i Thµnh BÝ KÝp 120<enter>",11,
	"Ta ®ång ý/tadongydaithanh120",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function tadongydaithanh120()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 1000 then
		ItemIndex = AddItem(6,1,2425,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(1000,6,1,4926,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Phong Háa lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiRuongTranBang()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     Tû lÖ ®æi 20 Phong Háa lÖnh = 1 R­¬ng TrÊn Bang (H¹n sö dông 7 ngµy)<enter>",11,
	"Ta ®ång ý/tadongytranbang",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function tadongytranbang()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 20 then
		ItemIndex = AddItem(6,1,4904,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(20,6,1,4926,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Phong Háa lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTayTuyKinh()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     Tû lÖ ®æi 30 Phong Háa lÖnh = 1 Vâ L©m MËt TÞch<enter>",11,
	"Ta ®ång ý ®æi/doittk",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function doittk()
	local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1)/30
	AskClientForNumber("doittk2",0,nPhongHoaLenh, "30/1: ")
end

function doittk2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh«ng ®ñ r­¬ng chøa ®å")
		return 1
	end 
for i=1,n_key do
		ItemIndex = AddItem(6,1,22,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(30,6,1,4926,-1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiVoLamMatTich()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     Tû lÖ ®æi 30 Phong Háa lÖnh = 1 Vâ L©m MËt TÞch<enter>",11,
	"Ta ®ång ý ®æi/doivlmt",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function doivlmt()
	local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1)/30
	AskClientForNumber("doivlmt2",0,nPhongHoaLenh, "30/1: ")
end

function doivlmt2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh«ng ®ñ r­¬ng chøa ®å")
		return 1
	end 
for i=1,n_key do
		ItemIndex = AddItem(6,1,26,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(30,6,1,4926,-1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function DoiTrangBiDongSat()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     Tû lÖ ®æi 50 Phong Háa lÖnh = 1 Trang BÞ §éng S¸t<enter>",11,
	"§éng S¸t B¹ch Ngäc Cµn Kh«n Béi/ngocboids",
	"§éng S¸t B¹ch Kim §iªu Long Giíi/nhan1ds",
	"§éng S¸t B¹ch Kim Tó Phông Giíi/nhan2ds",
	"§éng S¸t Phû Thóy Ngäc H¹ng Liªn/daychuyends",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function ngocboids()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>      Tû lÖ ®æi 50 Phong Háa lÖnh = 1 Trang BÞ §éng S¸t",11,
	"Ta ®ång ý/ngocboids2",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function ngocboids2()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 50 then
		ItemIndex = AddGoldItem(0, 495)
		--ITEM_SetExpiredTime(ItemIndex, 4320);
		--SetItemBindState(ItemIndex, -2)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4926,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Phong Háa lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

function nhan1ds()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>      Tû lÖ ®æi 50 Phong Háa lÖnh = 1 Trang BÞ §éng S¸t",11,
	"Ta ®ång ý/nhan1ds2",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function nhan1ds2()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 50 then
		ItemIndex = AddGoldItem(0, 494)
		--ITEM_SetExpiredTime(ItemIndex, 4320);
		--SetItemBindState(ItemIndex, -2)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4926,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Phong Háa lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

function nhan2ds()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>      Tû lÖ ®æi 50 Phong Háa lÖnh = 1 Trang BÞ §éng S¸t",11,
	"Ta ®ång ý/nhan2ds2",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function nhan2ds2()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 50 then
		ItemIndex = AddGoldItem(0, 496)
		--ITEM_SetExpiredTime(ItemIndex, 4320);
		--SetItemBindState(ItemIndex, -2)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4926,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Phong Háa lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

function daychuyends()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>      Tû lÖ ®æi 50 Phong Háa lÖnh = 1 Trang BÞ §éng S¸t",11,
	"Ta ®ång ý/daychuyends2",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function daychuyends2()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 50 then
		ItemIndex = AddGoldItem(0, 497)
		--ITEM_SetExpiredTime(ItemIndex, 4320);
		--SetItemBindState(ItemIndex, -2)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4926,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Phong Háa lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiHHLC()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("Sè l­îng Phong Háa lÖnh hiÖn cã: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     Tû lÖ ®æi 3000 Phong Háa lÖnh = 1 H·n HuyÕt Long C©u<enter>",11,
	"Ta ®ång ý/tadongyhhlc",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function tadongyhhlc()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 3000 then
		ItemIndex = AddItem(0,10,18,10,0,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(3000,6,1,4926,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Phong Háa lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------