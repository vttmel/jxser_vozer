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
		--{"§æi tiÒn ®ång",DoiTienDong},
		--{"§æi Thñy Tinh",DoiThuyTinh},
		--{"§æi Phóc Duyªn",DoiPhucDuyen},
		--{"§æi Tinh Hång B¶o Th¹ch",DoiTinhHongBaoThach},
		--{"§æi Trang BÞ Viªm §Õ",DoiTrangBiViemDe},
		--{"§æi Trang BÞ §éng S¸t",DoiTrangBiDongSat},
		--{"§æi R­¬ng Hoµng Kim M«n Ph¸i",RuongHKMP},
		{"§æi LÖnh bµi gäi Boss Hoµng Kim",DoiLenhBaiBossHK},
		{"§æi ®å HKMP lÊy LÖnh bµi gäi Boss HKMP",doihkmprac},
		{"§æi R­¬ng TrÊn Bang Chi B¶o",DoiRuongTranBang},
		{"§æi Vâ L©m MËt TÞch",DoiVoLamMatTich},
		{"§æi TÈy Tñy Kinh",DoiTayTuyKinh},
		--{"§æi B«n Tiªu",DoiBonTieu},
		--{"§æi H·n HuyÕt Long C©u",DoiHHLC},
		{"§æi Tói m¸u Vozer",tuimauvozer},
		--{"§æi Vò KhÝ T©n Thñ",vukhitanthu},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn ®æi ®å kh«ng?<color>", tbOpt)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiLenhBaiBossHK()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ L©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 100 Vâ l©m lÖnh = 1 LÖnh bµi gäi Boss Hoµng Kim<enter>",11,
	"Ta ®ång ý/tadongybosshk",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function tadongybosshk()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 100 then
		ItemIndex = AddItem(6,1,4916,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(100,6,1,4903,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiRuongTranBang()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ L©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 50 Vâ l©m lÖnh = 1 R­¬ng TrÊn Bang (H¹n sö dông 7 ngµy)<enter>",11,
	"Ta ®ång ý/tadongytranbang",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function tadongytranbang()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 50 then
		ItemIndex = AddItem(6,1,4904,1,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(50,6,1,4903,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m lÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function RuongHKMP()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 100 Vâ l©m lÖnh = 1 R­¬ng Hoµng Kim M«n Ph¸i <enter>",11,
	"§æi cho ta r­¬ng Hoµng Kim Thiªn V­¬ng./hkmpthienvuong",
	"§æi cho ta r­¬ng Hoµng Kim ThiÕu L©m./hkmpthieulam",
	"§æi cho ta r­¬ng Hoµng Kim §­êng M«n./hkmpduongmon",
	"§æi cho ta r­¬ng Hoµng Kim Ngò §éc./hkmpngudoc",
	"§æi cho ta r­¬ng Hoµng Kim Nga My./hkmpngamy",
	"§æi cho ta r­¬ng Hoµng Kim Thóy Yªn./hkmpthuyyen",
	"§æi cho ta r­¬ng Hoµng Kim C¸i Bang./hkmpcaibang",
	"§æi cho ta r­¬ng Hoµng Kim Thiªn NhÉn./hkmpthiennhan",
	"§æi cho ta r­¬ng Hoµng Kim Vâ §ang./hkmpvodang",
	"§æi cho ta r­¬ng Hoµng Kim C«n L«n./hkmpconlon",
	"Ta sÏ quay l¹i sau!/no"
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTayTuyKinh()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 50 Vâ l©m lÖnh = 1 Vâ L©m MËt TÞch<enter>",11,
	"Ta ®ång ý ®æi/doittk",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function doittk()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/50
	AskClientForNumber("doittk2",0,nVoLamLenh, "50/1: ")
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
		ConsumeEquiproomItem(50,6,1,4903,-1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiVoLamMatTich()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 50 Vâ l©m lÖnh = 1 Vâ L©m MËt TÞch<enter>",11,
	"Ta ®ång ý ®æi/doivlmt",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function doivlmt()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/50
	AskClientForNumber("doivlmt2",0,nVoLamLenh, "50/1: ")
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
		ConsumeEquiproomItem(50,6,1,4903,-1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTienDong()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 100 Vâ l©m lÖnh = 150xu<enter>     <bclr=fire>§æi Ýt nhÊt 100 Vâ L©m lÖnh trë lªn<color><bclr>",11,
	"Ta ®ång ý ®æi/doixu",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function doixu()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/100
	AskClientForNumber("doixu2",0,nVoLamLenh, "100/150: ")
end

function doixu2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh«ng ®ñ r­¬ng chøa ®å")
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
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 5 Vâ l©m lÖnh = 1 Thñy Tinh<enter>",11,
	"§æi Lôc Thñy Tinh/luctt",
	"§æi Lam Thñy Tinh/lamtt",
	"§æi Tö Thñy Tinh/tutt",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function luctt()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/5
	AskClientForNumber("luctt2",0,nVoLamLenh, "5/1")
end

function luctt2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh«ng ®ñ r­¬ng chøa ®å")
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
		Talk(1,"","Kh«ng ®ñ r­¬ng chøa ®å")
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
		Talk(1,"","Kh«ng ®ñ r­¬ng chøa ®å")
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
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 5 Vâ l©m lÖnh = 1 Phóc Duyªn Lé §¹i<enter>",11,
	"§æi Phóc Duyªn Lé §¹i/PDLD",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function PDLD()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/5
	AskClientForNumber("PDLD2",0,nVoLamLenh, "5/1")
end

function PDLD2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh«ng ®ñ r­¬ng chøa ®å")
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
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 5 Vâ l©m lÖnh = 1 Tinh Hång B¶o Th¹ch<enter>",11,
	"§æi Tinh Hång B¶o Th¹ch/THBT",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function THBT()
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1)/5
	AskClientForNumber("THBT2",0,nVoLamLenh, "5/1")
end

function THBT2(n_key)
local nRuong = CalcFreeItemCellCount() 
if n_key > nRuong then
		Talk(1,"","Kh«ng ®ñ r­¬ng chøa ®å")
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
			"Bé trang bÞ To¹i Nh©n [Kim]",	
			{"To¹i Nh©n XÝch HuyÕt Nguyªn Vò Gi¸p",50,442,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{Gi¶m bít thêi gian ®éng t¸c s¸t th­¬ng}}45-55<enter>{{Gi¶m thêi gian cho¸ng}}30-50<enter>{{TrÞ phßng háa lín nhÊt}}25-30<enter>{{PhÇn tr¨m s¸t th­¬ng vËt lý hÖ ngo¹i c«ng}}30-50"},
			{"To¹i Nh©n B¸ch LuyÖn Kh«i",50,443,0,0,"<enter>{{Sinh lùc lín nhÊt}}180-240<enter>{{Háa phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian ®ãng b¨ng}}30-50<enter>{{PhÇn tr¨m s¸t th­¬ng vËt lý hÖ ngo¹i c«ng}}30-50"},
			{"To¹i Nh©n Trôc Thiªn Ngoa",50,445,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{T¨ng tèc ®é di chuyÓn}}40-50<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Phæ phßng lín nhÊt}}25-30<enter>{{T¨ng l«i s¸t hÖ néi c«ng}}80-120"},	
			{"To¸i Nh©n Kim Lò NhuyÔn Vi Hé UyÓn",50,446,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{B¨ng phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian cho¸ng}}30-50<enter>{{T¨ng háa s¸t hÖ néi c«ng}}80-120"},	
	},
	[2]={
			"Bé trang bÞ Phôc Hy [Méc]",	
			{"Phôc Hi Hoan ¶nh KÞch",50,455,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{T¨ng tèc ®é di chuyÓn}}40-50<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{B¨ng phßng lín nhÊt}}25-30<enter>{{PhÇn tr¨m s¸t th­¬ng vËt lý hÖ ngo¹i c«ng}}30-50"},	
			{"Phôc Hi V« L­îng TÞch Tµ Thñ",50,456,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{B¨ng phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian cho¸ng}}30-50<enter>{{T¨ng s¸t th­¬ng chÝ m¹ng}}3-5"},	
			{"Phôc Hi To¸i T©m",50,457,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{§éc phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian tróng ®éc}}30-50<enter>{{T¨ng ®éc s¸t hÖ néi c«ng}}50-60"},	
	},
	[3]={
			"Bé trang bÞ N÷ Oa [Thñy]",	
			{"N÷ Oa Hång Nhan Ph¸t §¸i",50,463,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{Phæ phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian cho¸ng}}30-50<enter>{{PhÇn tr¨m s¸t th­¬ng vËt lý hÖ ngo¹i c«ng}}30-50"},	
			{"N÷ Oa Lôc NghÖ Nghª Th­êng Thóc §¸i",50,464,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{L«i phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian tróng ®éc}}30-50<enter>{{S¸t th­¬ng chuyÓn thµnh néi c«ng}}6-10"},	
			{"N÷ Oa Hµn T­¬ng",50,467,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{B¨ng phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian tróng ®éc}}30-50<enter>{{T¨ng b¨ng s¸t hÖ néi c«ng}}200-300"},	
	},
	[4]={
			"Bé trang bÞ Chóc Dung [Háa]",
			{"Chóc Dung LiÖt DiÖm Né Phong Trang",50,472,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian ®éng t¸c bÞ th­¬ng}}45-55<enter>{{Gi¶m thêi gian tróng ®éc}}30-50<enter>{{Phæ phßng lín nhÊt}}25-30<enter>{{S¸t th­¬ng chuyÓn thµnh néi c«ng}}6-10"},	
			{"Chóc Dung Kinh ChÝch BÊt DiÖt Tr¶o",50,476,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{Phæ phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian ®ãng b¨ng}}30-50<enter>{{T¨ng b¨ng s¸t hÖ néi c«ng}}80-120"},	
			{"Chóc Dung Ph¸ NhËt",50,477,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{Háa phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian ®ãng b¨ng}}30-50<enter>{{T¨ng háa s¸t hÖ néi c«ng}}200-300"},	
	},
	[5]={
			"Bé trang bÞ ThÇn N«ng [Thæ]",	
			{"ThÇn N«ng Tiªu D­¬ng §Þa Hoµng Y",50,482,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian ®éng t¸c bÞ th­¬ng}}45-55<enter>{{Gi¶m thêi gian cho¸ng}}30-50<enter>{{Phæ phßng lín nhÊt}}25-30<enter>{{PhÇn tr¨m s¸t th­¬ng vËt lý hÖ ngo¹i c«ng}}30-50"},	
			{"ThÇn N«ng Né L«i §Çu Hoµn",50,483,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{L«i phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian ®ãng b¨ng}}30-50<enter>{{S¸t th­¬ng chuyÓn thµnh néi c«ng}}6-10"},	
			{"ThÇn N«ng Ngù Phong L÷",50,485,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{T¨ng tèc ®é di chuyÓn}}40-50<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{B¨ng phßng lín nhÊt}}25-30<enter>{{T¨ng háa s¸t hÖ néi c«ng}}80-120"},	
			{"ThÇn N«ng Tr¶m Nh¹c",50,487,0,0,"{{Sinh lùc lín nhÊt}}180-240<enter>{{§éc phßng lín nhÊt}}25-30<enter>{{Néi lùc lín nhÊt}}180-240<enter>{{Gi¶m thêi gian cho¸ng}}30-50<enter>{{T¨ng l«i s¸t hÖ néi c«ng}}200-300"},	
	},
}
function DoiTrangBiViemDe()
	local nlen = getn(YDBZ_tbgolditem)
	local tbfun =  {}
	tbfun[1] = "Xin mêi chän hoµng kim viªm ®Õ!!"
	tbfun[2] = "Ta chØ ghÐ ngang th«i./NoChoice"
	for i = nlen,1,-1 do 
		tinsert(tbfun,2,YDBZ_tbgolditem[i][1] .. format("/#YDBZ_golditem_chose(%s)",i) )
	end
	CreateTaskSay(tbfun)
end

function YDBZ_golditem_chose(nchose)
	local nlen = getn(YDBZ_tbgolditem[nchose])
	local tbfun =  {}
	tbfun[1] = format("Xin c¸c h¹ h·y chän 50 Vâ L©m LÖnh = 1 mãn Hoµng Kim Viªm §Õ<color=yellow>%s<color>.",YDBZ_tbgolditem[nchose][1])
	tbfun[2] = "Ta chØ ghÐ ngang th«i./NoChoice"
	for i = nlen-1,1,-1 do 
		tinsert(tbfun,2,YDBZ_tbgolditem[nchose][i+1][1] .. format("/#YDBZ_golditem_get(%s,%s)",nchose,i+1) )
	end
	CreateTaskSay(tbfun)	
end

function YDBZ_golditem_get(nchose,ni)
	local nlen = getn(YDBZ_tbgolditem[nchose])
	local tbfun =  {}
	tbfun[1] = format("<dec><npc>C¸c h¹ muèn <color=yellow>%s<color> cÇn ph¶i cã <color=yellow>%s<color> Vâ L©m LÖnh míi cã thÓ ®æi ®­îc. C¸c h¹ muèn ®æi kh«ng?<enter>Víi Thuéc TÝnh:%s",YDBZ_tbgolditem[nchose][ni][1],YDBZ_tbgolditem[nchose][ni][2],YDBZ_tbgolditem[nchose][ni][6])
	tbfun[2] = format("§óng, ta cÇn ®æi/#YDBZ_golditem_getyes(%s,%s)",nchose,ni)
	tbfun[3] = "Ta chØ ghÐ ngang th«i./NoChoice"
	CreateTaskSay(tbfun)		
end

function YDBZ_golditem_getyes(nchose,ni)
	local nitemc = YDBZ_tbgolditem[nchose][ni][2]
	local g = YDBZ_item_suipian_ID[1]
	local d = YDBZ_item_suipian_ID[2]
	local p = YDBZ_item_suipian_ID[3]
	local ncount = CalcEquiproomItemCount(g,d,p,-1)
	if ncount < nitemc then
		Say("C¸c h¹ kh«ng ®ñ Vâ L©m LÖnh ®Ó ®æi trang bÞ hoµng kim viªm ®Õ nµy.",0)
		return
	end
	ConsumeEquiproomItem(nitemc, g, d, p, -1)
	local ng = YDBZ_tbgolditem[nchose][ni][3]
	ItemIndex = AddGoldItem(0, ng)
	ITEM_SetExpiredTime(ItemIndex, 4320);
	SetItemBindState(ItemIndex, -2)
	SyncItem(ItemIndex); 
	Msg2Player(format("C¸c h¹ thu ®­îc 1 hoµng kim viªm ®Õ - <color=yellow>%s<color>",YDBZ_tbgolditem[nchose][ni][1]))
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTrangBiDongSat()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 50 Vâ l©m lÖnh = 1 Trang BÞ §éng S¸t<enter>",11,
	"§éng S¸t B¹ch Ngäc Cµn Kh«n Béi/ngocboids",
	"§éng S¸t B¹ch Kim §iªu Long Giíi/nhan1ds",
	"§éng S¸t B¹ch Kim Tó Phông Giíi/nhan2ds",
	"§éng S¸t Phû Thóy Ngäc H¹ng Liªn/daychuyends",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function ngocboids()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>      Tû lÖ ®æi 50 Vâ l©m lÖnh = 1 Trang BÞ §éng S¸t",11,
	"Ta ®ång ý/ngocboids2",
	"Ta sÏ quay l¹i sau!/no"
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

function nhan1ds()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>      Tû lÖ ®æi 50 Vâ l©m lÖnh = 1 Trang BÞ §éng S¸t",11,
	"Ta ®ång ý/nhan1ds2",
	"Ta sÏ quay l¹i sau!/no"
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

function nhan2ds()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>      Tû lÖ ®æi 50 Vâ l©m lÖnh = 1 Trang BÞ §éng S¸t",11,
	"Ta ®ång ý/nhan2ds2",
	"Ta sÏ quay l¹i sau!/no"
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end

function daychuyends()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>      Tû lÖ ®æi 50 Vâ l©m lÖnh = 1 Trang BÞ §éng S¸t",11,
	"Ta ®ång ý/daychuyends2",
	"Ta sÏ quay l¹i sau!/no"
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiBonTieu()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 50 Vâ l©m lÖnh = 1 B«n Tiªu<enter>",11,
	"Ta ®ång ý/tadongybt",
	"Ta sÏ quay l¹i sau!/no"
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
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiHHLC()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	Describe("Sè l­îng Vâ l©m lÖnh hiÖn cã: <color=yellow>: "..nVoLamLenh.."<color><enter>     Tû lÖ ®æi 2000 Vâ l©m lÖnh = 1 H·n HuyÕt Long C©u<enter>",11,
	"Ta ®ång ý/tadongyhhlc",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function tadongyhhlc()
local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 2000 then
		ItemIndex = AddItem(0,10,18,10,0,0,0)
		SyncItem(ItemIndex); 
		ConsumeEquiproomItem(2000,6,1,4903,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp thªm")
		return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OnTimer(nNpcIndex,nTimeOut)
    local tab_Chat = {
			"     <pic=115><pic=115><pic=115><bclr=blue><enter>Muèn ®æi g× mau t×m ta nÌ <pic=00>!!!<color><bclr>",
            "     <pic=36><bclr=blue><enter>Chóc c¸c nh©n sü gÆp nhiÒu may m¾n vµ ph¸t tµi...! <bclr>",            
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
            local npcName = "§æi VËt PhÈm"
            local npcdialog = AddNpc(npcID,0,nMapIndex,(tb_npc_hotro[i][1])*32,(tb_npc_hotro[i][2])*32,0,npcName,1)
            SetNpcTimer(npcdialog,5*18)
            SetNpcScript(npcdialog,"\\script\\global\\pgaming\\npc\\freepk\\doivatpham.lua")     
    end
end