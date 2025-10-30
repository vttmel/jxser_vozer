IL("TITLE");
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\lib\\common.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\pgaming\\testserver.lua")
Include("\\script\\global\\general\\thunghiem\\main.lua")
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\systemconfig.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\general\\nguyenlieuevent12thang.lua")
Include("\\script\\global\\pgaming\\trangbixanh\\tuychontrangbixanh.lua")
Include("\\script\\global\\gm\\gm_lib.lua");
Include("\\script\\global\\gm\\gm_help.lua");
Include("\\script\\global\\gm\\gm_script.lua");

Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\dailogsys\\dailogsay.lua")

Include("\\script\\global\\general\\thunghiem\\doiten.lua")
Include("\\script\\global\\general\\thunghiem\\kynangmonphai.lua")
Include("\\script\\global\\general\\thunghiem\\trangsuc.lua")
Include("\\script\\global\\general\\thunghiem\\nguhanhan.lua")
Include("\\script\\global\\general\\thunghiem\\phiphong.lua")
Include("\\script\\global\\general\\thunghiem\\point.lua")
Include("\\script\\global\\general\\thunghiem\\taytuynhanh.lua")
Include("\\script\\global\\general\\thunghiem\\thucuoi.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim_caocap.lua")
Include("\\script\\global\\general\\thunghiem\\trangbitim.lua")
Include("\\script\\global\\general\\thunghiem\\trangbixanh.lua")
Include("\\script\\global\\general\\thunghiem\\vatphamhotro.lua")
Include("\\script\\global\\general\\thunghiem\\dieukientaobanghoi.lua")


TITLEDIALOG = "T�n nh�n v�t: <color=green>%s<color>\n".."T�n t�i kho�n: <color=green>%s<color>\n".."Th�i gian: <color=green>Ng�y <color=yellow>%s<color> Th�ng <color=yellow>%s<color> N�m <color=yellow>20%s<color>, <color=yellow>%s<color> gi� <color=yellow>%s<color> ph�t<color>\n".."T�a ��: <color=green>%d, %d/%d<color>" 
function main(nItemIndex)
	dofile("script/global/mel/testserver.lua")
		local strFaction = GetFaction()
		local nW,nX,nY = GetWorldPos();
		local year = tonumber(date( "%y"))
		local mm = tonumber(date( "%m"))
		local day = tonumber(date( "%d"))
		local hour = tonumber(GetLocalDate("%H"))
		local mmin = tonumber(GetLocalDate("%M"))
		local tbSay = {format(TITLEDIALOG, GetName(), GetAccount(),day,mm,year,hour,mmin ,nW,nX,nY)};
			--tinsert(tbSay,"��i ti�n t�/doitien_main")
			tinsert(tbSay,"C� mu�n test em kh�ng anh trai/ThuNghiem")
			tinsert(tbSay, "Xin l�i anh ch� l� n�m th�ng th�i./no")
		CreateTaskSay(tbSay)
	return 1;
end

function ThuNghiem()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};
		tinsert(tbSay, "Nh�n c�c lo�i �i�m/CacLoaiDiem")
		tinsert(tbSay, "Nh�n nguy�n li�u test/nguyenlieutest")
		tinsert(tbSay, "Th� c��i/ThuCuoi")
		--tinsert(tbSay, "Trang b� ho�ng kim/TrangBiHoangKim")
		--tinsert(tbSay, "V�t ph�m h� tr�/VatPhamHoTro")
		--tinsert(tbSay, "H�c k� n�ng m�n ph�i/HocKyNangMonPhai")
		tinsert(tbSay, "L�y v�t ph�m/TakeSpecifiedItem");	
		--tinsert(tbSay, "�i�u ki�n t�o bang h�i/DieuKienTaoBangHoi")
		--tinsert(tbSay, "T�y t�y nhanh/TayTuyNhanh")
		--tinsert(tbSay, "��i t�n nh�n v�t/DoiTenNhanVat")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function DanhSachTrangBi()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};
		-- tinsert(tbSay, "Trang b� xanh/TrangBiXanh")
		-- tinsert(tbSay, "Trang b� t�m/TrangBiTim")
		tinsert(tbSay, "Trang b� ho�ng kim/TrangBiHoangKim")
		tinsert(tbSay, "Trang b� ho�ng kim cao c�p/TrangBiHoangKimCaoCap")
		tinsert(tbSay, "Trang s�c/TrangSuc")
		tinsert(tbSay, "Phi Phong/PhiPhong")
		tinsert(tbSay, "Ng� H�nh �n/NguHanhAn")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

--------------------------------------------------------------
--						L�y V�t Ph�m						--
--------------------------------------------------------------
function TakeSpecifiedItem()
%tbAloneScript:TakeSpecifiedItem()
end
function SkillsSystem()
%tbAloneScript:SkillsSystem()
end

--------------------------------------------------------------
--						Nguy�n li�u							--
--------------------------------------------------------------

function nguyenlieutest()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};

			tinsert(tbSay, "Nh�n Phong H�a L�nh/phonghoalenh");
			tinsert(tbSay, "Nh�n V� L�m L�nh/volamlenh");
			tinsert(tbSay, "Nh�n Kim Lo�i Hi�m/kimloaihiem");
			tinsert(tbSay, "K�t th�c ��i tho�i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

--------------------------------------------------------------
--						Phong H�a L�nh						--
--------------------------------------------------------------

function phonghoalenh()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};
			tinsert(tbSay, "Nh�p s� l��ng Phong H�a L�nh/phonghoalenh2");
			tinsert(tbSay, "K�t th�c ��i tho�i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

function phonghoalenh2()
AskClientForNumber("phonghoalenh3",0,1999,"Nh�p S� L��ng:") 
end

function phonghoalenh3(num)
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4926,1,0,0},nCount = num}, "test", 1);
end

--------------------------------------------------------------
--						V� L�m L�nh							--
--------------------------------------------------------------

function volamlenh()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};
			tinsert(tbSay, "Nh�p s� l��ng V� L�m L�nh/volamlenh2");
			tinsert(tbSay, "K�t th�c ��i tho�i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

function volamlenh2()
AskClientForNumber("volamlenh3",0,1999,"Nh�p S� L��ng:") 
end

function volamlenh3(num)
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4903,1,0,0},nCount = num}, "test", 1);
end

--------------------------------------------------------------
--						Kim Lo�i Hi�m						--
--------------------------------------------------------------

function kimloaihiem()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};
			tinsert(tbSay, "Nh�p s� l��ng Kim Lo�i Hi�m/kimloaihiem2");
			tinsert(tbSay, "K�t th�c ��i tho�i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

function kimloaihiem2()
AskClientForNumber("kimloaihiem3",0,1999,"Nh�p S� L��ng:") 
end

function kimloaihiem3(num)
		tbAwardTemplet:GiveAwardByList({tbProp = {4,2045,0,0,0,0},nCount = num}, "test", 1);
end













































pEventType:Reg("H� Tr� T�n Th�", "Th� nghi�m m�y ch�", ThuNghiem);