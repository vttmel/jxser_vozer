-- C¸c hµm nhËn ®iÓm


IncludeLib("SETTING")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\misc\\eventsys\\type\\npc.lua");

function CacLoaiDiem()
	local tbSay  = {"<dec>Ng­¬i muèn nhËn lo¹i ®iÓm nµo?"}
		tinsert(tbSay, "T¨ng ®iÓm kinh nghiÖm/tangkinhnghiem")
		tinsert(tbSay, "N©ng cÊp ®é/dangcap200")
		tinsert(tbSay, "Thªm tiÒn v¹n/tienvan")
		--tinsert(tbSay, "T×m N¨ng/pointtiemnang")
		--tinsert(tbSay, "Kû N¨ng/pointkynang")
		tinsert(tbSay, "Thªm tiÒn ®ång/tiendong")
		tinsert(tbSay, "Thªm kim nguyªn b¶o/knb")
		tinsert(tbSay, "Thªm danh väng/danhvong")
		tinsert(tbSay, "Thªm phóc duyªn/phucduyen")
		tinsert(tbSay, "Thªm tµi l·nh ®¹o/tailanhdao")
		tinsert(tbSay, "§æi Mµu/trangthai")
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbSay)
end

function CacLoaiDiem2()
	local tbSay  = {"<dec>Ng­¬i muèn nhËn lo¹i ®iÓm nµo?"}
		--tinsert(tbSay, "T¨ng ®iÓm kinh nghiÖm/tangkinhnghiem")
		--tinsert(tbSay, "N©ng cÊp ®é/dangcap200")
		tinsert(tbSay, "Thªm tiÒn v¹n/tienvan")
		--tinsert(tbSay, "T×m N¨ng/pointtiemnang")
		--tinsert(tbSay, "Kû N¨ng/pointkynang")
		--tinsert(tbSay, "Thªm tiÒn ®ång/tiendong")
		--tinsert(tbSay, "Thªm kim nguyªn b¶o/knb")
		tinsert(tbSay, "Thªm danh väng/danhvong")
		--tinsert(tbSay, "Thªm phóc duyªn/phucduyen")
		tinsert(tbSay, "Thªm tµi l·nh ®¹o/tailanhdao")
		--tinsert(tbSay, "§æi Mµu/trangthai")
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbSay)
end

function pointkynang()
AskClientForNumber("pointkynang1",0,1000,"NhËp Sè L­îng:") 
end;
function pointkynang1(nNum)
AddMagicPoint(nNum)		---NhËn ®iÓm kü n¨ng
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..nNum.."<color> ®iÓm Kü N¨ng.")
end

function pointtiemnang()
AskClientForNumber("pointtiemnang1",0,1000000,"NhËp Sè L­îng:") 
end;
function pointtiemnang1(nNum)
AddProp(nNum)		---NhËn ®iÓm tiÒm n¨ng
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..nNum.."<color> ®iÓm TiÒm N¨ng.")
end

---------Trang Thai--------------
function trangthai()
local szTitle = "Xin chµo <color=red>"..GetName().."<color>"
local tbOpt =
	{
		{"LuyÖn C«ng",luyencong},
		{"Chİnh Ph¸i",chinhphai},
		{"Trung LËp",trunglap},
		{"Tµ Ph¸i",taphai},
		{"S¸t Thñ",satthu},
		{"Trë L¹i",main},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function luyencong()
SetCurCamp(0)
SetCamp(0)
end
function chinhphai()
SetCurCamp(1)
SetCamp(1)
end
function trunglap()
SetCurCamp(3)
SetCamp(3) 
end
function taphai()
SetCurCamp(2)
SetCamp(2) 
end
function satthu()
SetCurCamp(4)
SetCamp(4) 
end
----------------------------------------------------------------------

function tienvan()
	Earn(100000000);
	Msg2Player("B¹n nhËn ®­îc 10.000 v¹n l­îng");
end

function tiendong()
AskClientForNumber("tiendong1",0,1999,"NhËp Sè L­îng:") 
end;
function tiendong1(sltiendong)
for i = 1, sltiendong do
AddStackItem(1,4,417,1,1,0,0,0)
end
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..sltiendong.." <color>tiÒn ®ång.")
end

function knb()
	if (CalcFreeItemCellCount() < 5) then
		Talk(1, "", "Hµnh trang cña b¹n kh«ng ®ñ 5 « trèng ®Ó nhËn.")
	return end
	tbAwardTemplet:GiveAwardByList({tbProp={4,343,1,0,0,0}, nCount=5}, "Hç trî thö nghiÖm")
end

function danhvong()
	AddRepute(1000000)
	Msg2Player("B¹n nhËn ®­îc 1.000.000 ®iÓm danh väng");
end

function phucduyen()
	FuYuan_Start();
	FuYuan_Add(1000000);
	Msg2Player("B¹n nhËn ®­îc 1.000.000 ®iÓm phóc duyªn");
end

function tailanhdao()
	for i = 1, 250 do
		AddLeadExp(1000000000)
	end
	Msg2Player("B¹n nhËn ®­îc 100 cÊp tµi l·nh ®¹o");
end

function dangcap200()
AskClientForNumber("level",0,200,"NhËp CÊp §é:") 
end

function level(num)
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp ®é.") 
end

function tangkinhnghiem()
	AddOwnExp(2000000000);
	Msg2Player("B¹n nhËn ®­îc 2.000.000.000 ®iÓm kinh nghiÖm")
end

function conghien()
	AddContribution(1000000);
	Msg2Player("B¹n nhËn ®­îc 1.000.000 ®iÓm cèng hiÕn")
end

function trungsinh()
	ST_DoTransLife();
end

-- pEventType:Reg("Tİnh n¨ng thö nghiÖm", "C¸c lo¹i ®iÓm", CacLoaiDiem);
-- pEventType:Reg("LÖnh bµi T©n Thñ", "C¸c lo¹i ®iÓm", CacLoaiDiem);