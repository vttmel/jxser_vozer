
Include("\\script\\lib\\alonelib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\global\\general\\hotrotanthu\\hotrolandau.lua")
Include("\\script\\global\\general\\hotrotanthu\\phanthuonghotro.lua")
Include("\\script\\global\\general\\hotrotanthu\\vongsangtanthu.lua")

Include("\\script\\global\\general\\thunghiem\\kynangmonphai.lua")

Include("\\script\\event\\bingo_machine\\bingo_machine_gs.lua")
function HoTroTanThu()
	local tbSay = {"<dec>Hç trî ng­êi ch¬i tham gia m¸y chñ thö nghiÖm"};
		tinsert(tbSay, "Vßng quay may m¾n/vongquaymayman")
		tinsert(tbSay, "NhËn mèc phÇn th­ëng hç trî theo tõng cÊp ®é/PhanThuongHoTro")
		tinsert(tbSay, "NhËn tói m¸u hç trî t©n thñ/NhanTuiMauTanThu")
		tinsert(tbSay, "NhËn LÖnh bµi T©n Thñ/LenhBaiTanThu")
		tinsert(tbSay, "Häc tÊt c¶ c¸c kü n¨ng m«n ph¸i/HocKyNangMonPhai")
		tinsert(tbSay, "NhËn vßng s¸ng t©n thñ/VongSangTanThu")
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbSay)
end

function NhanTuiMauTanThu()
	if (CalcEquiproomItemCount(6,1,4852,-1) > 0) then
		Talk(1, "", "B¹n ®· nhËn tói m¸u råi, h·y kiÓm tra l¹i hµnh trang!")
	return end
	
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,4852,1,0,0}, nBindState=-2}, "LÖnh bµi T©n Thñ")
end

function vongquaymayman()
	OpenBingoMachine()
end

function LenhBaiTanThu()
	if (CalcEquiproomItemCount(6,1,4851,-1) > 0) then
		Talk(1, "", "Ng­¬i ®· cã råi, cßn muèn nhËn thªm nöa µ?")
	return end
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,4851,1,0,0}, nBindState=-2}, "Tói m¸u T©n Thñ")
end

pEventType:Reg("Hç Trî T©n Thñ", "Hç trî ng­êi ch¬i", HoTroTanThu);