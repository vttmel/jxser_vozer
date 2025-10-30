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


TITLEDIALOG = "Tªn nh©n vËt: <color=green>%s<color>\n".."Tªn tµi kho¶n: <color=green>%s<color>\n".."Thêi gian: <color=green>Ngµy <color=yellow>%s<color> Th¸ng <color=yellow>%s<color> N¨m <color=yellow>20%s<color>, <color=yellow>%s<color> giê <color=yellow>%s<color> phót<color>\n".."Täa ®é: <color=green>%d, %d/%d<color>" 
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
			--tinsert(tbSay,"§æi tiÒn tÖ/doitien_main")
			tinsert(tbSay,"Cã muèn test em kh«ng anh trai/ThuNghiem")
			tinsert(tbSay, "Xin lçi anh chØ lµ n»m th¼ng th«i./no")
		CreateTaskSay(tbSay)
	return 1;
end

function ThuNghiem()
	local tbSay = {"<dec>Hç trî ng­êi ch¬i tham gia m¸y chñ thö nghiÖm"};
		tinsert(tbSay, "NhËn c¸c lo¹i ®iÓm/CacLoaiDiem")
		tinsert(tbSay, "NhËn nguyªn liÖu test/nguyenlieutest")
		tinsert(tbSay, "Thó c­ìi/ThuCuoi")
		--tinsert(tbSay, "Trang bÞ hoµng kim/TrangBiHoangKim")
		--tinsert(tbSay, "VËt phÈm hç trî/VatPhamHoTro")
		--tinsert(tbSay, "Häc kü n¨ng m«n ph¸i/HocKyNangMonPhai")
		tinsert(tbSay, "LÊy vËt phÈm/TakeSpecifiedItem");	
		--tinsert(tbSay, "§iÒu kiÖn t¹o bang héi/DieuKienTaoBangHoi")
		--tinsert(tbSay, "TÈy tñy nhanh/TayTuyNhanh")
		--tinsert(tbSay, "§æi tªn nh©n vËt/DoiTenNhanVat")
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbSay)
end

function DanhSachTrangBi()
	local tbSay = {"<dec>Hç trî ng­êi ch¬i tham gia m¸y chñ thö nghiÖm"};
		-- tinsert(tbSay, "Trang bÞ xanh/TrangBiXanh")
		-- tinsert(tbSay, "Trang bÞ tÝm/TrangBiTim")
		tinsert(tbSay, "Trang bÞ hoµng kim/TrangBiHoangKim")
		tinsert(tbSay, "Trang bÞ hoµng kim cao cÊp/TrangBiHoangKimCaoCap")
		tinsert(tbSay, "Trang søc/TrangSuc")
		tinsert(tbSay, "Phi Phong/PhiPhong")
		tinsert(tbSay, "Ngò Hµnh Ên/NguHanhAn")
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbSay)
end

--------------------------------------------------------------
--						LÊy VËt PhÈm						--
--------------------------------------------------------------
function TakeSpecifiedItem()
%tbAloneScript:TakeSpecifiedItem()
end
function SkillsSystem()
%tbAloneScript:SkillsSystem()
end

--------------------------------------------------------------
--						Nguyªn liÖu							--
--------------------------------------------------------------

function nguyenlieutest()
	local tbSay = {"<dec>Hç trî ng­êi ch¬i tham gia m¸y chñ thö nghiÖm"};

			tinsert(tbSay, "NhËn Phong Háa LÖnh/phonghoalenh");
			tinsert(tbSay, "NhËn Vâ L©m LÖnh/volamlenh");
			tinsert(tbSay, "NhËn Kim Lo¹i HiÕm/kimloaihiem");
			tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

--------------------------------------------------------------
--						Phong Háa LÖnh						--
--------------------------------------------------------------

function phonghoalenh()
	local tbSay = {"<dec>Hç trî ng­êi ch¬i tham gia m¸y chñ thö nghiÖm"};
			tinsert(tbSay, "NhËp sè l­îng Phong Háa LÖnh/phonghoalenh2");
			tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

function phonghoalenh2()
AskClientForNumber("phonghoalenh3",0,1999,"NhËp Sè L­îng:") 
end

function phonghoalenh3(num)
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4926,1,0,0},nCount = num}, "test", 1);
end

--------------------------------------------------------------
--						Vâ L©m LÖnh							--
--------------------------------------------------------------

function volamlenh()
	local tbSay = {"<dec>Hç trî ng­êi ch¬i tham gia m¸y chñ thö nghiÖm"};
			tinsert(tbSay, "NhËp sè l­îng Vâ L©m LÖnh/volamlenh2");
			tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

function volamlenh2()
AskClientForNumber("volamlenh3",0,1999,"NhËp Sè L­îng:") 
end

function volamlenh3(num)
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4903,1,0,0},nCount = num}, "test", 1);
end

--------------------------------------------------------------
--						Kim Lo¹i HiÕm						--
--------------------------------------------------------------

function kimloaihiem()
	local tbSay = {"<dec>Hç trî ng­êi ch¬i tham gia m¸y chñ thö nghiÖm"};
			tinsert(tbSay, "NhËp sè l­îng Kim Lo¹i HiÕm/kimloaihiem2");
			tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

function kimloaihiem2()
AskClientForNumber("kimloaihiem3",0,1999,"NhËp Sè L­îng:") 
end

function kimloaihiem3(num)
		tbAwardTemplet:GiveAwardByList({tbProp = {4,2045,0,0,0,0},nCount = num}, "test", 1);
end













































pEventType:Reg("Hç Trî T©n Thñ", "Thö nghiÖm m¸y chñ", ThuNghiem);