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
		
		--{"��i R��ng Tr�n Bang Chi B�o",DoiRuongTranBang},
		{"��i Trang B� ��ng S�t",DoiTrangBiDongSat},
		{"��i ��i Th�nh B� K�p 120",DoiDaiThanh120},
		{"��i Nh�t K� C�n Kh�n Ph�",DoiNhatKy},
		{"��i Phi Phong Ho�ng Kim",DoiPhiPhongHoangKim},
		{"��i Khu�n ��c Tuy�t ��nh Gi�i Ch�",DoiTuyetDinh},
		--{"��i V� L�m M�t T�ch",DoiVoLamMatTich},
		--{"��i T�y T�y Kinh",DoiTayTuyKinh},
		{"��i H�n Huy�t Long C�u",DoiHHLC},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ��i �� kh�ng?<color>", tbOpt)
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTuyetDinh()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     T� l� ��i 10000 Phong H�a l�nh = Khu�n ��c Tuy�t ��nh Gi�i Ch�<enter>",11,
	"Ta ��ng �/tadongytuyetdinh",
	"Ta s� quay l�i sau!/no"
	);
end

function tadongytuyetdinh()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 10000 then
		ItemIndex = AddItem(4,2053,0,0,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(10000,6,1,4926,-1)
	else
		Talk(1,"","B�n v�n ch�a �� Phong H�a l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiPhiPhongHoangKim()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     T� l� ��i 10000 Phong H�a l�nh = Phi Phong Ho�ng Kim<enter>",11,
	"Ta ��ng �/tadongyphiphong",
	"Ta s� quay l�i sau!/no"
	);
end

function tadongyphiphong()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 10000 then
		ItemIndex = AddItem(4,2055,0,0,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(10000,6,1,4926,-1)
	else
		Talk(1,"","B�n v�n ch�a �� Phong H�a l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiNhatKy()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     T� l� ��i 5000 Phong H�a l�nh = Nh�t K� C�n Kh�n Ph�<enter>",11,
	"Ta ��ng �/tadongynhatky",
	"Ta s� quay l�i sau!/no"
	);
end

function tadongynhatky()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 5000 then
		ItemIndex = AddItem(6,1,2126,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(5000,6,1,4926,-1)
	else
		Talk(1,"","B�n v�n ch�a �� Phong H�a l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiDaiThanh120()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     T� l� ��i 1000 Phong H�a l�nh = 1 ��i Th�nh B� K�p 120<enter>",11,
	"Ta ��ng �/tadongydaithanh120",
	"Ta s� quay l�i sau!/no"
	);
end

function tadongydaithanh120()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 1000 then
		ItemIndex = AddItem(6,1,2425,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(1000,6,1,4926,-1)
	else
		Talk(1,"","B�n v�n ch�a �� Phong H�a l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiRuongTranBang()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     T� l� ��i 20 Phong H�a l�nh = 1 R��ng Tr�n Bang (H�n s� d�ng 7 ng�y)<enter>",11,
	"Ta ��ng �/tadongytranbang",
	"Ta s� quay l�i sau!/no"
	);
end

function tadongytranbang()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 20 then
		ItemIndex = AddItem(6,1,4904,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(20,6,1,4926,-1)
	else
		Talk(1,"","B�n v�n ch�a �� Phong H�a l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTayTuyKinh()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     T� l� ��i 30 Phong H�a l�nh = 1 V� L�m M�t T�ch<enter>",11,
	"Ta ��ng � ��i/doittk",
	"Ta s� quay l�i sau!/no"
	);
end

function doittk()
	local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1)/30
	AskClientForNumber("doittk2",0,nPhongHoaLenh, "30/1: ")
end

function doittk2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh�ng �� r��ng ch�a ��")
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
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     T� l� ��i 30 Phong H�a l�nh = 1 V� L�m M�t T�ch<enter>",11,
	"Ta ��ng � ��i/doivlmt",
	"Ta s� quay l�i sau!/no"
	);
end

function doivlmt()
	local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1)/30
	AskClientForNumber("doivlmt2",0,nPhongHoaLenh, "30/1: ")
end

function doivlmt2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh�ng �� r��ng ch�a ��")
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
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     T� l� ��i 50 Phong H�a l�nh = 1 Trang B� ��ng S�t<enter>",11,
	"��ng S�t B�ch Ng�c C�n Kh�n B�i/ngocboids",
	"��ng S�t B�ch Kim �i�u Long Gi�i/nhan1ds",
	"��ng S�t B�ch Kim T� Ph�ng Gi�i/nhan2ds",
	"��ng S�t Ph� Th�y Ng�c H�ng Li�n/daychuyends",
	"Ta s� quay l�i sau!/no"
	);
end

function ngocboids()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>      T� l� ��i 50 Phong H�a l�nh = 1 Trang B� ��ng S�t",11,
	"Ta ��ng �/ngocboids2",
	"Ta s� quay l�i sau!/no"
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
		Talk(1,"","B�n v�n ch�a �� Phong H�a l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

function nhan1ds()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>      T� l� ��i 50 Phong H�a l�nh = 1 Trang B� ��ng S�t",11,
	"Ta ��ng �/nhan1ds2",
	"Ta s� quay l�i sau!/no"
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
		Talk(1,"","B�n v�n ch�a �� Phong H�a l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

function nhan2ds()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>      T� l� ��i 50 Phong H�a l�nh = 1 Trang B� ��ng S�t",11,
	"Ta ��ng �/nhan2ds2",
	"Ta s� quay l�i sau!/no"
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
		Talk(1,"","B�n v�n ch�a �� Phong H�a l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

function daychuyends()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>      T� l� ��i 50 Phong H�a l�nh = 1 Trang B� ��ng S�t",11,
	"Ta ��ng �/daychuyends2",
	"Ta s� quay l�i sau!/no"
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
		Talk(1,"","B�n v�n ch�a �� Phong H�a l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiHHLC()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	Describe("S� l��ng Phong H�a l�nh hi�n c�: <color=yellow>: "..nPhongHoaLenh.."<color><enter>     T� l� ��i 3000 Phong H�a l�nh = 1 H�n Huy�t Long C�u<enter>",11,
	"Ta ��ng �/tadongyhhlc",
	"Ta s� quay l�i sau!/no"
	);
end

function tadongyhhlc()
local nPhongHoaLenh = CalcEquiproomItemCount(6,1,4926,-1);
	if nPhongHoaLenh > 3000 then
		ItemIndex = AddItem(0,10,18,10,0,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(3000,6,1,4926,-1)
	else
		Talk(1,"","B�n v�n ch�a �� Phong H�a l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------