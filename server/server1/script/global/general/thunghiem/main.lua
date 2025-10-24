
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

function ThuNghiem()
	local tbSay = {"<dec>Hç trî ng­êi ch¬i tham gia m¸y chñ thö nghiÖm"};
		tinsert(tbSay, "NhËn c¸c lo¹i ®iÓm/CacLoaiDiem")
		tinsert(tbSay, "Thó c­ìi/ThuCuoi")
		tinsert(tbSay, "VËt phÈm hç trî/VatPhamHoTro")
		tinsert(tbSay, "Trang bÞ hoµng kim/DanhSachTrangBi")
		tinsert(tbSay, "Häc kü n¨ng m«n ph¸i/HocKyNangMonPhai")
		tinsert(tbSay, "§iÒu kiÖn t¹o bang héi/DieuKienTaoBangHoi")
		tinsert(tbSay, "TÈy tñy nhanh/TayTuyNhanh")
		tinsert(tbSay, "§æi tªn nh©n vËt/DoiTenNhanVat")
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


pEventType:Reg("Hç Trî T©n Thñ", "Thö nghiÖm m¸y chñ", ThuNghiem);