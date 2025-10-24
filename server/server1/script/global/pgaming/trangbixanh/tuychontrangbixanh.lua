Include("\\script\\dailogsys\\dailogsay.lua")
--Include("\\script\\00ff\\funclibex.lua")
tbItem = {
	{"§ång H¹ng Liªn",0,4,0,1},
	{"Ng©n H¹ng Liªn",0,4,0,2},
	{"Kim H¹ng Liªn",0,4,0,3},
	{"B¹ch Kim H¹ng Liªn",0,4,0,4},
	{"Ngäc Ch©u H¹ng Liªn",0,4,0,5},
	{"Lôc Tïng Th¹ch H¹ng Liªn",0,4,0,6},
	{"Thñy Tinh H¹ng Liªn ",0,4,0,7},
	{"Khæng T­íc Th¹ch H¹ng Liªn",0,4,0,8},
	{"Tr©n Ch©u H¹ng Liªn",0,4,0,9},
	{"Toµn Th¹ch H¹ng Liªn",0,4,0,10},
	{"Lôc Tïng Th¹ch Hé Th©n phï ",0,4,1,1},
	{"San H« Hé Th©n phï ",0,4,1,2},
	{"Miªu Nh·n Hé Th©n phï ",0,4,1,3},
	{"Hæ T×nh Hé Th©n phï ",0,4,1,4},
	{"Thñy Tinh Hé Th©n phï ",0,4,1,5},
	{"Hæ Ph¸ch Hé Th©n phï ",0,4,1,6},
	{"B¹ch PhØ Thóy Hé Th©n phï ",0,4,1,7},
	{"Hång PhØ Thóy Hé Th©n phï ",0,4,1,8},
	{"Tö PhØ Thóy Hé Th©n phï ",0,4,1,9},
	{"Lôc PhØ Thóy Hé Th©n phï ",0,4,1,10},
	
	{"Hoµng Ngäc Giíi ChØ",0,3,0,1},
	{"C¶m L·m Th¹ch Giíi ChØ",0,3,0,2},
	{"Phï Dung Th¹ch Giíi ChØ",0,3,0,3},
	{"PhØ Thóy Giíi ChØ",0,3,0,4},
	{"Thóy Lùu Th¹ch Giíi ChØ",0,3,0,5},
	{"Tæ MÉu Lôc Giíi ChØ",0,3,0,6},
	{"H¶i Lam B¶o Th¹ch Giíi ChØ",0,3,0,7},
	{"Hång B¶o Th¹ch Giíi ChØ",0,3,0,8},
	{"Lam B¶o Th¹ch Giíi ChØ",0,3,0,9},
	{"Toµn Th¹ch Giíi ChØ",0,3,0,10},


	{"Hu©n Y H­¬ng Nang",0,9,0,1},
	{"M¹t LÞ H­¬ng Nang",0,9,0,2},
	{"Nhò H­¬ng H­¬ng Nang",0,9,0,3},
	{"Lan Hoa H­¬ng Nang",0,9,0,4},
	{"Hîp Hoan H­¬ng Nang",0,9,0,5},
	{"Tö T« H­¬ng Nang",0,9,0,6},
	{"TrÇm §µn H­¬ng Nang",0,9,0,7},
	{"Tiªn X¹ H­¬ng Nang",0,9,0,8},
	{"Giµ Nam H­¬ng Nang",0,9,0,9},
	{"Long Tiªn H­¬ng Nang",0,9,0,10},
	{"Du Diªn Ngäc Béi ",0,9,1,1},
	{"Kinh B¹ch Ngäc Béi ",0,9,1,2},
	{"§µo Hoa Ngäc Béi ",0,9,1,3},
	{"Mai Hoa  Ngäc Béi ",0,9,1,4},
	{"Ngò S¾c Ngäc Béi ",0,9,1,5},
	{"Thanh Ngäc Ngäc Béi ",0,9,1,6},
	{"BÝch Ngäc Ngäc Béi ",0,9,1,7},
	{"MÆc Ngäc Ngäc Béi ",0,9,1,8},
	{"Hoµng Ngäc Ngäc Béi ",0,9,1,9},
	{"D­¬ng Chi B¹ch Ngäc",0,9,1,10},

}
tbOpItem = {
	{"Sinh lùc",1,99,85,200},
	{"Néi lùc",1,99,89,200},
	{"ThÓ lùc",1,99,93,200},
	--{"Phôc håi sinh lùc",1,99,88,6},
	--{"Phôc håi thÓ lùc",1,99,96,9},
	--{"Kh¸ng tÊt c¶",1,99,114,20},
	{"Kh¸ng ®éc (Kim)",0,0,101,25},
	{"Kh¸ng b¨ng (Thæ)",0,4,105,25},
	{"Kh¸ng háa (Thñy)",0,2,102,25},
	{"Kh¸ng l«i (Méc)",0,1,103,30},
	{"Thêi gian cho¸ng (Thñy)",0,2,110,40},
	{"Thêi gian lµm chËm (Háa)",0,3,106,40},
	{"Thêi gian tróng ®éc (Thæ)",0,4,108,40},
	{"Th©n ph¸p (Háa)",0,3,98,20},
	{"Søc m¹nh (Kim)",0,0,97,20},
	{"Sinh khÝ (Thñy)",0,2,99,20},
}
tbBuyMagic = {
	--{"OptionName",a,b,c,d,e},
	--OptionName : Tªn option, tªn nµo c?ng ®­îc chØ ®Ó hiÓn th~ th«i
	--a : 0 - Option Èn 1-Option hiÖn
	--b : Ngò hµnh, 0-Kim 1-Méc 2-Thñy 3-Háa 4-Thæ 99-Kh«ng Ngò hµnh
	--c : ID Option trong magicãttriblevel hoÆc magicãttriblevel_index
	--d : Lµ MAGATTRLVL_END trong magicãttriblevel_index
	--f : 5-Option chØ cã giÇy 2-ChØ cã ¸o 99-Lo¹i g× c?ng cã
	{"Tèc ®é di chuyÓn (GiÇy)",1,99,111,70,{5}}, --ChØ giÇy míi cã
	{"Ph¶n ®ßn vËt lu (¸o)",1,99,117,80,{2}}, --¸o
	{"Thêi gian phôc håi (¸o)",1,99,113,90,{2}}, --chØ ¸o
	{"Sinh lùc",1,99,85,150,{2,5,6,7,8}},
	{"Néi lùc",1,99,89,160,{2,5,6,7,8}},
	{"Phôc håi sinh lùc",1,99,88,180,{2,5,6,7,8}},
	{"ChuyÓn haa s¸t th­¬ng thµnh néi lùc (Kim)",0,0,134,270,{2,5,6,7,8}},
	{"Phßng thñ vËt lu (Háa)",0,3,104,280,{2,5,6,7,8}},
	{"Kh¸ng ®éc (Kim)",0,0,101,290,{2,5,6,7,8}},
	{"Kh¸ng b¨ng (Thæ)",0,4,105,300,{2,5,6,7,8}},
	{"Kh¸ng háa (Thñy)",0,2,102,310,{2,5,6,7,8}},
	{"Kh¸ng l«i (Méc)",0,1,103,320,{2,5,6,7,8}},
	{"Thêi gian cho¸ng (Thñy)",0,2,110,340,{2,5,6,7,8}},
	{"Thêi gian lµm chËm (Háa)",0,3,106,360,{2,5,6,7,8}},
	{"Th©n ph¸p (Háa)",0,3,98,370,{2,5,6,7,8}},
	{"Thêi gian tróng ®éc (Thæ)",0,4,108,380,{2,5,6,7,8}},
}

function TrangBiXanhOf1DongTuyChon()
dofile("script/global/pgaming/trangbixanh/tuychontrangbixanh.lua")
	local tb = {
	"<dec>C¸c h¹ cÇn nhËn g×?",
	}
	tinsert(tb,"D©y chuyÒn./#Item(4)") 
	tinsert(tb,"Ngäc béi./#Item(9)")
	tinsert(tb,"NhÉn./#Item(3)")
	--Sè 4 hay 9 hay 3 ë ®©y lµ ParticularType cña D©y chuyÒn ngäc béi hay nhÉn xem b¶ng tbItem sÏ hiÓu.
	tinsert(tb,"Quay l¹i.")
	tinsert(tb,"Tho¸t./Quit")
	CreateTaskSay(tb)
end

function Item(nType)
	if nType ~= 3 then --ko phai nhan
		local tb = {
		"<dec>H·y lùa chän giíi tÝnh trang bÞ",
		}
		tinsert(tb,"Nam./#Item1("..nType..",1)")
		tinsert(tb,"N÷./#Item1("..nType..",0)")
		tinsert(tb,"Quay l¹i.")
		tinsert(tb,"Tho¸t./Quit")
		CreateTaskSay(tb)
	else
		local tb = {
		"<dec>Chän lÊy lo¹i nhÉn",
		}
		tinsert(tb,"§Ó ta chän nhÉn./#Item1("..nType..",0)")
		tinsert(tb,"Quay l¹i.")
		tinsert(tb,"Tho¸t./Quit")
		CreateTaskSay(tb)
	end
end
function Item1(nType,nSex) --2 tham sè: Lo¹i item(D©y hay nhÉn hay ngäc) - Giíi tÝnh
--B­íc nµy hiÖn lªn c¸c lo¹i to cÊp 1 ®On 10 ®Ó lùa chän
	local tb = {
	"<dec>H·y lùa chän lo¹i ng­¬i cÇn.",
	}
	for i=1,getn(tbItem) do
		if tbItem[i][3] == nType then
			if nType ~= 3 then --Kh«ng ph¶i lµ nhÉn
				if tbItem[i][4] == nSex then
					tinsert(tb,tbItem[i][1].."/#Item2("..nType..","..nSex..","..tbItem[i][5]..")")
				end
			else --NhÉn
				tinsert(tb,tbItem[i][1].."/#Item2("..nType..",0,"..tbItem[i][5]..")")
			end
		end
	end
	tinsert(tb,"Quay l¹i.")
	tinsert(tb,"Tho¸t./Quit")
	CreateTaskSay(tb)
end
function Item2(nType,nSex,nLevel) --truy?n ®­îc 3 tham sè lµ DC(Ngäc béi hay nhÉn) - Giíi tÝnh - Level
--ë b­íc nµy cho chän HÖ
	local tb = {
	"<dec>H·y lùa chän Ngò hµnh cho trang bÞ",
	}
	tinsert(tb,"Kim./#Item3("..nType..","..nSex..","..nLevel..",0)")
	tinsert(tb,"Méc./#Item3("..nType..","..nSex..","..nLevel..",1)")
	tinsert(tb,"Thñy./#Item3("..nType..","..nSex..","..nLevel..",2)")
	tinsert(tb,"Háa./#Item3("..nType..","..nSex..","..nLevel..",3)")
	tinsert(tb,"Thæ./#Item3("..nType..","..nSex..","..nLevel..",4)")
	tinsert(tb,"Quay l¹i.")
	tinsert(tb,"Tho¸t./Quit")
	CreateTaskSay(tb)
end
function Item3(nType,nSex,nLevel,nSeries) --truy?n ®­îc 4 tham sè Lo¹i (Ngäc béi, d©y chuyÒn, nhÉn) - Giíi tÝnh - Level - Ngò Hµnh
--B­íc nµy cho chän thuéc tÝnh
	local tb = {
	"<dec>H·y lùa chän lo¹i ng­¬i cÇn.",
	}
	tinsert(tb,"H·y cho ta chän thuéc tÝnh [HiÖn] cña trang bÞ/#Item4("..nType..","..nSex..","..nLevel..","..nSeries..",1)") --hiÖn lµ 1
	tinsert(tb,"H·y cho ta chän thuéc tÝnh [¢n] cña trang bÞ/#Item4("..nType..","..nSex..","..nLevel..","..nSeries..",0)") --Èn lµ 0
	tinsert(tb,"Quay l¹i.")
	tinsert(tb,"Tho¸t./Quit")
	CreateTaskSay(tb)
end

function Item4(nType,nSex,nLevel,nSeries,OptionType) --5 tham sè Lo¹i(Ngäc béi, d©y chuyÒn, nhÉn) - Giíi tÝnh - Level - Ngò hµnh - V~ trU (Dßng Èn hay hiÖn)
	--OptionType = 1 : HiÖn
	--OptionType = 0 : Èn
	local tb = {
	"<dec>H·y lùa chän thuéc tÝnh cho trang bÞ. Sau ®a nhËp vµo gi¸ trÞ ®Çu vµ cuèi cña gi¸ trÞ thuéc tÝnh",
	}
	if OptionType == 1 then --tøc lµ dßng hiÖn
		for i=1,getn(tbOpItem) do
			if tbOpItem[i][2] == OptionType then --Option hiÖn
				tinsert(tb,tbOpItem[i][1].."/#Item5("..nType..","..nSex..","..nLevel..","..nSeries..","..tbOpItem[i][4]..","..tbOpItem[i][5]..","..OptionType..")")
				--tbOpItem[i][4] : ID cña Option
				--tbOpItem[i][1]: Tªn cña Option
				--tbOpItem[i][5]; gi¸ trÞ max cña option
			end
		end
	else --Lóc nµy OptionType = 0 (Dßng Èn)
		for i=1,getn(tbOpItem) do
			if tbOpItem[i][2] == OptionType then --Option Èn
				if tbOpItem[i][3] == nSeries then
					tinsert(tb,tbOpItem[i][1].."/#Item5("..nType..","..nSex..","..nLevel..","..nSeries..","..tbOpItem[i][4]..","..tbOpItem[i][5]..","..OptionType..")")
				end
			end
		end
	end
	tinsert(tb,"Quay l¹i.")
	tinsert(tb,"Tho¸t./Quit")
	CreateTaskSay(tb)
end
function Item5(nType,nSex,nLevel,nSeries,IDOp,MaxOpValue,OptionT)
	GioiTinh = nSex
	LoaiTrangBi = nType
	Level = nLevel
	Series = nSeries
	ThuocTinh = IDOp
	MaxOp = MaxOpValue
	ViTriThuocTinh = OptionT --Dßng Èn hay dßng hiÖn
	local tb = {
	"<dec>H·y nhËp vµo gi¸ trÞ ®Çu vµ gi¸ trÞ cuèi cña thuéc tÝnh mµ ng­¬i muèn cã trªn trang bÞ cña ng­¬i. Trang bÞ nhËn ®­îc sÏ cã thuéc tÝnh cÇn thiÕt n»m trong kho¶ng gi÷a gi¸ trÞ ®Çu vµ gi¸ trÞ cuèi",
	}
	tinsert(tb,"NhËp gi¸ trÞ ®Çu vµ cuèi./DayChuyen6_GTD")
	tinsert(tb,"Quay l¹i.")
	tinsert(tb,"Tho¸t./Quit")
	CreateTaskSay(tb)
end
function DayChuyen6_GTD()
	AskClientForNumber("DayChuyen6_GTC", 1, MaxOp, "gi¸ trÞ ®Çu");
end
function DayChuyen6_GTC(ValueGTD)
	GTD = ValueGTD
	AskClientForNumber("DayChuyen7", 1, MaxOp, "gi¸ trÞ cuèi");
end
function DayChuyen7(ValueGTC)
	GTC = ValueGTC
	local IDOption, p1
	if ViTriThuocTinh == 1 then --Dßng hiÖn
		while	IDOption~=ThuocTinh or p1> GTC or p1<GTD do
			local Item = AddItem(0,LoaiTrangBi,GioiTinh,Level,Series,100,10)
			IDOption, p1 = GetItemMagicattrib(Item,1) --LÊy th«ng tin cña thuéc tÝnh dßng 1. ID thuéc tÝnh vµ gi¸ trÞ thuéc tÝnh
			--p1 : GUa trÞ cña Option magictype1. VU dô Option lµ m¸u th× p1 lµ bao nhiªu m¸u
			if IDOption ~= ThuocTinh or p1> GTC or p1<GTD then
				RemoveItemByIndex(Item)
			end
		end
	else
		while	IDOption~=ThuocTinh or p1> GTC or p1<GTD do
			local Item = AddItem(0,LoaiTrangBi,GioiTinh,Level,Series,100,10)
			IDOption, p1 = GetItemMagicattrib(Item,2) --LÊy th«ng tin dßng 2
			if IDOption ~= ThuocTinh or p1> GTC or p1<GTD then
				RemoveItemByIndex(Item)
			end
		end
	end
end