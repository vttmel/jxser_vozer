Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\mel\\doihkmprac.lua")
Include("\\script\\global\\mel\\tuimauvozer.lua")
-----------------------------------------------
---------------------------------
function main() 
dofile("script/global/pgaming/npc/freepk/doivatpham.lua")
	local tbOpt = {
		--{"��i ti�n ��ng",DoiTienDong},
		--{"��i Th�y Tinh",DoiThuyTinh},
		--{"��i Ph�c Duy�n",DoiPhucDuyen},
		--{"��i Tinh H�ng B�o Th�ch",DoiTinhHongBaoThach},
		--{"��i Trang B� Vi�m ��",DoiTrangBiViemDe},
		--{"��i Trang B� ��ng S�t",DoiTrangBiDongSat},
		--{"��i R��ng Ho�ng Kim M�n Ph�i",RuongHKMP},
		{"��i L�nh b�i g�i Boss Ho�ng Kim",DoiLenhBaiBossHK},
		{"��i �� HKMP l�y L�nh b�i g�i Boss HKMP",doihkmprac},
		{"��i R��ng Tr�n Bang Chi B�o",DoiRuongTranBang},
		{"��i V� L�m M�t T�ch",DoiVoLamMatTich},
		{"��i T�y T�y Kinh",DoiTayTuyKinh},
		--{"��i B�n Ti�u",DoiBonTieu},
		--{"��i H�n Huy�t Long C�u",DoiHHLC},
		{"��i T�i m�u Vozer",tuimauvozer},
		--{"��i V� Kh� T�n Th�",vukhitanthu},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ��i �� kh�ng?<color>", tbOpt)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiLenhBaiBossHK()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� L�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 100 V� l�m l�nh = 1 L�nh b�i g�i Boss Ho�ng Kim<enter>",11,
	"Ta ��ng �/tadongybosshk",
	"Ta s� quay l�i sau!/no"
	);
end

function tadongybosshk()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4916,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiRuongTranBang()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� L�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 50 V� l�m l�nh = 1 R��ng Tr�n Bang (H�n s� d�ng 7 ng�y)<enter>",11,
	"Ta ��ng �/tadongytranbang",
	"Ta s� quay l�i sau!/no"
	);
end

function tadongytranbang()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 50 then
		ItemIndex = AddItem(6,1,4904,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m l�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function RuongHKMP()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 100 V� l�m l�nh = 1 R��ng Ho�ng Kim M�n Ph�i <enter>",11,
	"��i cho ta r��ng Ho�ng Kim Thi�n V��ng./hkmpthienvuong",
	"��i cho ta r��ng Ho�ng Kim Thi�u L�m./hkmpthieulam",
	"��i cho ta r��ng Ho�ng Kim ���ng M�n./hkmpduongmon",
	"��i cho ta r��ng Ho�ng Kim Ng� ��c./hkmpngudoc",
	"��i cho ta r��ng Ho�ng Kim Nga My./hkmpngamy",
	"��i cho ta r��ng Ho�ng Kim Th�y Y�n./hkmpthuyyen",
	"��i cho ta r��ng Ho�ng Kim C�i Bang./hkmpcaibang",
	"��i cho ta r��ng Ho�ng Kim Thi�n Nh�n./hkmpthiennhan",
	"��i cho ta r��ng Ho�ng Kim V� �ang./hkmpvodang",
	"��i cho ta r��ng Ho�ng Kim C�n L�n./hkmpconlon",
	"Ta s� quay l�i sau!/no"
	);
end
------------------------------Thien Vuong------------------------------
function hkmpthienvuong()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4879,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------Thieu Lam------------------------------
function hkmpthieulam()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4884,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------Duong Mon------------------------------
function hkmpduongmon()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4885,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------Ngu Doc------------------------------
function hkmpngudoc()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4880,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------Nga My------------------------------
function hkmpngamy()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4886,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------Thuy Yen------------------------------
function hkmpthuyyen()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4881,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------Cai Bang------------------------------
function hkmpcaibang()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4888,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------Thien Nhan------------------------------
function hkmpthiennhan()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4883,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------Vo Dang------------------------------
function hkmpvodang()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4887,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------Con Lon------------------------------
function hkmpconlon()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4882,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTayTuyKinh()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 50 V� l�m l�nh = 1 V� L�m M�t T�ch<enter>",11,
	"Ta ��ng � ��i/doittk",
	"Ta s� quay l�i sau!/no"
	);
end

function doittk()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/50
	AskClientForNumber("doittk2",0,nVoLamLenh, "50/1: ")
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
		ConsumeEquiproomItem(50,6,1,4903,-1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiVoLamMatTich()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 50 V� l�m l�nh = 1 V� L�m M�t T�ch<enter>",11,
	"Ta ��ng � ��i/doivlmt",
	"Ta s� quay l�i sau!/no"
	);
end

function doivlmt()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/50
	AskClientForNumber("doivlmt2",0,nVoLamLenh, "50/1: ")
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
		ConsumeEquiproomItem(50,6,1,4903,-1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTienDong()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 100 V� l�m l�nh = 150xu<enter>     <bclr=fire>��i �t nh�t 100 V� L�m l�nh tr� l�n<color><bclr>",11,
	"Ta ��ng � ��i/doixu",
	"Ta s� quay l�i sau!/no"
	);
end

function doixu()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/100
	AskClientForNumber("doixu2",0,nVoLamLenh, "100/150: ")
end

function doixu2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh�ng �� r��ng ch�a ��")
		return 1
	end 
for i=1,n_key do
		ItemIndex = AddStackItem(150,4,417,1,1,0,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(100,6,1,4903,-1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiThuyTinh()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 5 V� l�m l�nh = 1 Th�y Tinh<enter>",11,
	"��i L�c Th�y Tinh/luctt",
	"��i Lam Th�y Tinh/lamtt",
	"��i T� Th�y Tinh/tutt",
	"Ta s� quay l�i sau!/no"
	);
end

function luctt()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/5
	AskClientForNumber("luctt2",0,nVoLamLenh, "5/1")
end

function luctt2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh�ng �� r��ng ch�a ��")
		return 1
	end 
for i=1,n_key do
		ItemIndex = AddItem(4,240,1,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(5,6,1,4903,-1)
	end
end;

function lamtt()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/5
	AskClientForNumber("lamtt2",0,nVoLamLenh, "5/1")
end

function lamtt2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh�ng �� r��ng ch�a ��")
		return 1
	end 
for i=1,n_key do
		ItemIndex = AddItem(4,238,1,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(5,6,1,4903,-1)
	end
end;

function tutt()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/5
	AskClientForNumber("tutt2",0,nVoLamLenh, "5/1")
end

function tutt2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh�ng �� r��ng ch�a ��")
		return 1
	end 
for i=1,n_key do
		ItemIndex = AddItem(4,239,1,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(5,6,1,4903,-1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiPhucDuyen()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 5 V� l�m l�nh = 1 Ph�c Duy�n L� ��i<enter>",11,
	"��i Ph�c Duy�n L� ��i/PDLD",
	"Ta s� quay l�i sau!/no"
	);
end

function PDLD()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/5
	AskClientForNumber("PDLD2",0,nVoLamLenh, "5/1")
end

function PDLD2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh�ng �� r��ng ch�a ��")
		return 1
	end 
for i=1,n_key do
		ItemIndex = AddItem(6,1,124,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(5,6,1,4903,-1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTinhHongBaoThach()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 5 V� l�m l�nh = 1 Tinh H�ng B�o Th�ch<enter>",11,
	"��i Tinh H�ng B�o Th�ch/THBT",
	"Ta s� quay l�i sau!/no"
	);
end

function THBT()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/5
	AskClientForNumber("THBT2",0,nVoLamLenh, "5/1")
end

function THBT2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh�ng �� r��ng ch�a ��")
		return 1
	end 
for i=1,n_key do
		ItemIndex = AddItem(4,353,1,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(5,6,1,4903,-1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
YDBZ_item_suipian_ID = {6,1,4903}		
YDBZ_tbgolditem = {
	[1]={
			"B� trang b� To�i Nh�n [Kim]",	
			{"To�i Nh�n X�ch Huy�t Nguy�n V� Gi�p",50,442,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{Gi�m b�t th�i gian ��ng t�c s�t th��ng}}45-55<enter>{{Gi�m th�i gian cho�ng}}30-50<enter>{{Tr� ph�ng h�a l�n nh�t}}25-30<enter>{{Ph�n tr�m s�t th��ng v�t l� h� ngo�i c�ng}}30-50"},
			{"To�i Nh�n B�ch Luy�n Kh�i",50,443,0,0,"<enter>{{Sinh l�c l�n nh�t}}180-240<enter>{{H�a ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian ��ng b�ng}}30-50<enter>{{Ph�n tr�m s�t th��ng v�t l� h� ngo�i c�ng}}30-50"},
			{"To�i Nh�n Tr�c Thi�n Ngoa",50,445,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{T�ng t�c �� di chuy�n}}40-50<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Ph� ph�ng l�n nh�t}}25-30<enter>{{T�ng l�i s�t h� n�i c�ng}}80-120"},	
			{"To�i Nh�n Kim L� Nhuy�n Vi H� Uy�n",50,446,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{B�ng ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian cho�ng}}30-50<enter>{{T�ng h�a s�t h� n�i c�ng}}80-120"},	
	},
	[2]={
			"B� trang b� Ph�c Hy [M�c]",	
			{"Ph�c Hi Hoan �nh K�ch",50,455,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{T�ng t�c �� di chuy�n}}40-50<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{B�ng ph�ng l�n nh�t}}25-30<enter>{{Ph�n tr�m s�t th��ng v�t l� h� ngo�i c�ng}}30-50"},	
			{"Ph�c Hi V� L��ng T�ch T� Th�",50,456,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{B�ng ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian cho�ng}}30-50<enter>{{T�ng s�t th��ng ch� m�ng}}3-5"},	
			{"Ph�c Hi To�i T�m",50,457,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{��c ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian tr�ng ��c}}30-50<enter>{{T�ng ��c s�t h� n�i c�ng}}50-60"},	
	},
	[3]={
			"B� trang b� N� Oa [Th�y]",	
			{"N� Oa H�ng Nhan Ph�t ��i",50,463,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{Ph� ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian cho�ng}}30-50<enter>{{Ph�n tr�m s�t th��ng v�t l� h� ngo�i c�ng}}30-50"},	
			{"N� Oa L�c Ngh� Ngh� Th��ng Th�c ��i",50,464,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{L�i ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian tr�ng ��c}}30-50<enter>{{S�t th��ng chuy�n th�nh n�i c�ng}}6-10"},	
			{"N� Oa H�n T��ng",50,467,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{B�ng ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian tr�ng ��c}}30-50<enter>{{T�ng b�ng s�t h� n�i c�ng}}200-300"},	
	},
	[4]={
			"B� trang b� Ch�c Dung [H�a]",
			{"Ch�c Dung Li�t Di�m N� Phong Trang",50,472,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian ��ng t�c b� th��ng}}45-55<enter>{{Gi�m th�i gian tr�ng ��c}}30-50<enter>{{Ph� ph�ng l�n nh�t}}25-30<enter>{{S�t th��ng chuy�n th�nh n�i c�ng}}6-10"},	
			{"Ch�c Dung Kinh Ch�ch B�t Di�t Tr�o",50,476,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{Ph� ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian ��ng b�ng}}30-50<enter>{{T�ng b�ng s�t h� n�i c�ng}}80-120"},	
			{"Ch�c Dung Ph� Nh�t",50,477,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{H�a ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian ��ng b�ng}}30-50<enter>{{T�ng h�a s�t h� n�i c�ng}}200-300"},	
	},
	[5]={
			"B� trang b� Th�n N�ng [Th�]",	
			{"Th�n N�ng Ti�u D��ng ��a Ho�ng Y",50,482,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian ��ng t�c b� th��ng}}45-55<enter>{{Gi�m th�i gian cho�ng}}30-50<enter>{{Ph� ph�ng l�n nh�t}}25-30<enter>{{Ph�n tr�m s�t th��ng v�t l� h� ngo�i c�ng}}30-50"},	
			{"Th�n N�ng N� L�i ��u Ho�n",50,483,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{L�i ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian ��ng b�ng}}30-50<enter>{{S�t th��ng chuy�n th�nh n�i c�ng}}6-10"},	
			{"Th�n N�ng Ng� Phong L�",50,485,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{T�ng t�c �� di chuy�n}}40-50<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{B�ng ph�ng l�n nh�t}}25-30<enter>{{T�ng h�a s�t h� n�i c�ng}}80-120"},	
			{"Th�n N�ng Tr�m Nh�c",50,487,0,0,"{{Sinh l�c l�n nh�t}}180-240<enter>{{��c ph�ng l�n nh�t}}25-30<enter>{{N�i l�c l�n nh�t}}180-240<enter>{{Gi�m th�i gian cho�ng}}30-50<enter>{{T�ng l�i s�t h� n�i c�ng}}200-300"},	
	},
}
function DoiTrangBiViemDe()
	local nlen = getn(YDBZ_tbgolditem)
	local tbfun =  {}
	tbfun[1] = "Xin m�i ch�n ho�ng kim vi�m ��!!"
	tbfun[2] = "Ta ch� gh� ngang th�i./NoChoice"
	for i = nlen,1,-1 do 
		tinsert(tbfun,2,YDBZ_tbgolditem[i][1] .. format("/#YDBZ_golditem_chose(%s)",i) )
	end
	CreateTaskSay(tbfun)
end

function YDBZ_golditem_chose(nchose)
	local nlen = getn(YDBZ_tbgolditem[nchose])
	local tbfun =  {}
	tbfun[1] = format("Xin c�c h� h�y ch�n 50 V� L�m L�nh = 1 m�n Ho�ng Kim Vi�m ��<color=yellow>%s<color>.",YDBZ_tbgolditem[nchose][1])
	tbfun[2] = "Ta ch� gh� ngang th�i./NoChoice"
	for i = nlen-1,1,-1 do 
		tinsert(tbfun,2,YDBZ_tbgolditem[nchose][i+1][1] .. format("/#YDBZ_golditem_get(%s,%s)",nchose,i+1) )
	end
	CreateTaskSay(tbfun)	
end

function YDBZ_golditem_get(nchose,ni)
	local nlen = getn(YDBZ_tbgolditem[nchose])
	local tbfun =  {}
	tbfun[1] = format("<dec><npc>C�c h� mu�n <color=yellow>%s<color> c�n ph�i c� <color=yellow>%s<color> V� L�m L�nh m�i c� th� ��i ���c. C�c h� mu�n ��i kh�ng?<enter>V�i Thu�c T�nh:%s",YDBZ_tbgolditem[nchose][ni][1],YDBZ_tbgolditem[nchose][ni][2],YDBZ_tbgolditem[nchose][ni][6])
	tbfun[2] = format("��ng, ta c�n ��i/#YDBZ_golditem_getyes(%s,%s)",nchose,ni)
	tbfun[3] = "Ta ch� gh� ngang th�i./NoChoice"
	CreateTaskSay(tbfun)		
end

function YDBZ_golditem_getyes(nchose,ni)
	local nitemc = YDBZ_tbgolditem[nchose][ni][2]
	local g = YDBZ_item_suipian_ID[1]
	local d = YDBZ_item_suipian_ID[2]
	local p = YDBZ_item_suipian_ID[3]
	local ncount = CalcEquiproomItemCount(g,d,p,-1)
	if ncount < nitemc then
		Say("C�c h� kh�ng �� V� L�m L�nh �� ��i trang b� ho�ng kim vi�m �� n�y.",0)
		return
	end
	ConsumeEquiproomItem(nitemc, g, d, p, -1)
	local ng = YDBZ_tbgolditem[nchose][ni][3]
	ItemIndex = AddGoldItem(0, ng)
	ITEM_SetExpiredTime(ItemIndex, 4320);
	SetItemBindState(ItemIndex, -2)
	SyncItem(ItemIndex); 
	Msg2Player(format("C�c h� thu ���c 1 ho�ng kim vi�m �� - <color=yellow>%s<color>",YDBZ_tbgolditem[nchose][ni][1]))
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTrangBiDongSat()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 50 V� l�m l�nh = 1 Trang B� ��ng S�t<enter>",11,
	"��ng S�t B�ch Ng�c C�n Kh�n B�i/ngocboids",
	"��ng S�t B�ch Kim �i�u Long Gi�i/nhan1ds",
	"��ng S�t B�ch Kim T� Ph�ng Gi�i/nhan2ds",
	"��ng S�t Ph� Th�y Ng�c H�ng Li�n/daychuyends",
	"Ta s� quay l�i sau!/no"
	);
end

function ngocboids()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>      T� l� ��i 50 V� l�m l�nh = 1 Trang B� ��ng S�t",11,
	"Ta ��ng �/ngocboids2",
	"Ta s� quay l�i sau!/no"
	);
end

function ngocboids2()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 50 then
		ItemIndex = AddGoldItem(0, 495)
		ITEM_SetExpiredTime(ItemIndex, 4320);
		SetItemBindState(ItemIndex, -2)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

function nhan1ds()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>      T� l� ��i 50 V� l�m l�nh = 1 Trang B� ��ng S�t",11,
	"Ta ��ng �/nhan1ds2",
	"Ta s� quay l�i sau!/no"
	);
end

function nhan1ds2()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 50 then
		ItemIndex = AddGoldItem(0, 494)
		ITEM_SetExpiredTime(ItemIndex, 4320);
		SetItemBindState(ItemIndex, -2)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

function nhan2ds()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>      T� l� ��i 50 V� l�m l�nh = 1 Trang B� ��ng S�t",11,
	"Ta ��ng �/nhan2ds2",
	"Ta s� quay l�i sau!/no"
	);
end

function nhan2ds2()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 50 then
		ItemIndex = AddGoldItem(0, 496)
		ITEM_SetExpiredTime(ItemIndex, 4320);
		SetItemBindState(ItemIndex, -2)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end

function daychuyends()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>      T� l� ��i 50 V� l�m l�nh = 1 Trang B� ��ng S�t",11,
	"Ta ��ng �/daychuyends2",
	"Ta s� quay l�i sau!/no"
	);
end

function daychuyends2()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 50 then
		ItemIndex = AddGoldItem(0, 497)
		ITEM_SetExpiredTime(ItemIndex, 4320);
		SetItemBindState(ItemIndex, -2)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiBonTieu()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 50 V� l�m l�nh = 1 B�n Ti�u<enter>",11,
	"Ta ��ng �/tadongybt",
	"Ta s� quay l�i sau!/no"
	);
end

function tadongybt()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 50 then
		ItemIndex = AddItem(0,10,6,10,0,0,0)
		ITEM_SetExpiredTime(ItemIndex, 4320);
		SetItemBindState(ItemIndex, -2)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiHHLC()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("S� l��ng V� l�m l�nh hi�n c�: <color=yellow>: "..nVoLamLenh.."<color><enter>     T� l� ��i 2000 V� l�m l�nh = 1 H�n Huy�t Long C�u<enter>",11,
	"Ta ��ng �/tadongyhhlc",
	"Ta s� quay l�i sau!/no"
	);
end

function tadongyhhlc()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 2000 then
		ItemIndex = AddItem(0,10,18,10,0,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(2000,6,1,4903,-1)
	else
		Talk(1,"","B�n v�n ch�a �� V� L�m L�nh, h�y c� g�ng thu th�p th�m")
		return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OnTimer(nNpcIndex,nTimeOut)
    local tab_Chat = {
			"     <pic=115><pic=115><pic=115><bclr=blue><enter>Mu�n ��i g� mau t�m ta n� <pic=00>!!!<color><bclr>",
            "     <pic=36><bclr=blue><enter>Ch�c c�c nh�n s� g�p nhi�u may m�n v� ph�t t�i...! <bclr>",            
    }
    local ran = random(1,getn(tab_Chat))
    NpcChat(nNpcIndex,tab_Chat[ran])
    local ranTimer = random(10,20)
    SetNpcTimer(nNpcIndex,ranTimer*18)
    SetNpcScript(nNpcIndex,"\\script\\global\\pgaming\\npc\\freepk\\doivatpham.lua") 
end

function Add_Npc_DoiVatPham()
    local tb_npc_hotro = {
        {1603,3230},
    }
    local nMapIndex = SubWorldID2Idx(78)
    for i=1,getn(tb_npc_hotro) do
            local npcID    = (250)
            local npcName = "��i V�t Ph�m"
            local npcdialog = AddNpc(npcID,0,nMapIndex,(tb_npc_hotro[i][1])*32,(tb_npc_hotro[i][2])*32,0,npcName,1)
            SetNpcTimer(npcdialog,5*18)
            SetNpcScript(npcdialog,"\\script\\global\\pgaming\\npc\\freepk\\doivatpham.lua")     
    end
end