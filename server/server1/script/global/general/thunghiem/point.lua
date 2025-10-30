-- C�c h�m nh�n �i�m


IncludeLib("SETTING")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\misc\\eventsys\\type\\npc.lua");

function CacLoaiDiem()
	local tbSay  = {"<dec>Ng��i mu�n nh�n lo�i �i�m n�o?"}
		tinsert(tbSay, "T�ng �i�m kinh nghi�m/tangkinhnghiem")
		tinsert(tbSay, "N�ng c�p ��/dangcap200")
		tinsert(tbSay, "Th�m ti�n v�n/tienvan")
		--tinsert(tbSay, "T�m N�ng/pointtiemnang")
		--tinsert(tbSay, "K� N�ng/pointkynang")
		tinsert(tbSay, "Th�m ti�n ��ng/tiendong")
		--tinsert(tbSay, "Th�m kim nguy�n b�o/knb")
		--tinsert(tbSay, "Th�m danh v�ng/danhvong")
		tinsert(tbSay, "Th�m ph�c duy�n/phucduyen")
		--tinsert(tbSay, "Th�m t�i l�nh ��o/tailanhdao")
		tinsert(tbSay, "��i M�u/trangthai")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function CacLoaiDiem2()
	local tbSay  = {"<dec>Ng��i mu�n nh�n lo�i �i�m n�o?"}
		--tinsert(tbSay, "T�ng �i�m kinh nghi�m/tangkinhnghiem")
		--tinsert(tbSay, "N�ng c�p ��/dangcap200")
		tinsert(tbSay, "Th�m ti�n v�n/tienvan")
		--tinsert(tbSay, "T�m N�ng/pointtiemnang")
		--tinsert(tbSay, "K� N�ng/pointkynang")
		--tinsert(tbSay, "Th�m ti�n ��ng/tiendong")
		--tinsert(tbSay, "Th�m kim nguy�n b�o/knb")
		tinsert(tbSay, "Th�m danh v�ng/danhvong")
		--tinsert(tbSay, "Th�m ph�c duy�n/phucduyen")
		tinsert(tbSay, "Th�m t�i l�nh ��o/tailanhdao")
		--tinsert(tbSay, "��i M�u/trangthai")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function pointkynang()
AskClientForNumber("pointkynang1",0,1000,"Nh�p S� L��ng:") 
end;
function pointkynang1(nNum)
AddMagicPoint(nNum)		---Nh�n �i�m k� n�ng
Msg2Player("B�n nh�n ���c <color=yellow>"..nNum.."<color> �i�m K� N�ng.")
end

function pointtiemnang()
AskClientForNumber("pointtiemnang1",0,1000000,"Nh�p S� L��ng:") 
end;
function pointtiemnang1(nNum)
AddProp(nNum)		---Nh�n �i�m ti�m n�ng
Msg2Player("B�n nh�n ���c <color=yellow>"..nNum.."<color> �i�m Ti�m N�ng.")
end

---------Trang Thai--------------
function trangthai()
local szTitle = "Xin ch�o <color=red>"..GetName().."<color>"
local tbOpt =
	{
		{"Luy�n C�ng",luyencong},
		{"Ch�nh Ph�i",chinhphai},
		{"Trung L�p",trunglap},
		{"T� Ph�i",taphai},
		{"S�t Th�",satthu},
		{"Tr� L�i",main},
		{"Tho�t"},
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
	Msg2Player("B�n nh�n ���c 10.000 v�n l��ng");
end

function tiendong()
AskClientForNumber("tiendong1",0,1999,"Nh�p S� L��ng:") 
end;
function tiendong1(sltiendong)
for i = 1, sltiendong do
AddStackItem(1,4,417,1,1,0,0,0)
end
Msg2Player("B�n nh�n ���c <color=yellow>"..sltiendong.." <color>ti�n ��ng.")
end

function knb()
	if (CalcFreeItemCellCount() < 5) then
		Talk(1, "", "H�nh trang c�a b�n kh�ng �� 5 � tr�ng �� nh�n.")
	return end
	tbAwardTemplet:GiveAwardByList({tbProp={4,343,1,0,0,0}, nCount=5}, "H� tr� th� nghi�m")
end

function danhvong()
	AddRepute(1000000)
	Msg2Player("B�n nh�n ���c 1.000.000 �i�m danh v�ng");
end

function phucduyen()
	FuYuan_Start();
	FuYuan_Add(1000000);
	Msg2Player("B�n nh�n ���c 1.000.000 �i�m ph�c duy�n");
end

function tailanhdao()
	for i = 1, 250 do
		AddLeadExp(1000000000)
	end
	Msg2Player("B�n nh�n ���c 100 c�p t�i l�nh ��o");
end

function dangcap200()
AskClientForNumber("level",0,200,"Nh�p C�p ��:") 
end

function level(num)
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c <color=yellow>"..num.."<color> c�p ��.") 
end

function tangkinhnghiem()
	AddOwnExp(2000000000);
	Msg2Player("B�n nh�n ���c 2.000.000.000 �i�m kinh nghi�m")
end

function conghien()
	AddContribution(1000000);
	Msg2Player("B�n nh�n ���c 1.000.000 �i�m c�ng hi�n")
end

function trungsinh()
	ST_DoTransLife();
end

-- pEventType:Reg("T�nh n�ng th� nghi�m", "C�c lo�i �i�m", CacLoaiDiem);
-- pEventType:Reg("L�nh b�i T�n Th�", "C�c lo�i �i�m", CacLoaiDiem);