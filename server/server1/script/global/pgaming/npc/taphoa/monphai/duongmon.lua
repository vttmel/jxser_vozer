Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\taphoa\\alltaphoa.lua")

function main(sel)
if TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa == 1 then
	local tbOpt = {
		{"Giao DÞch",scripttaphoaall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
else
	Uworld37 = GetByte(GetTask(37),1)
	if (GetFaction() == "tangmen") or (Uworld37 == 127) then
		Say("§Ö tö bæn m«n th©n ph¸p nhanh nhÑn, thÝch hîp trang bÞ nh÷ng vò khÝ nhá gän!", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","M«n chñ cã lÖnh: trang bÞ m«n ph¸i chØ b¸n cho tû muéi ®ång m«n!")
	end
end
end;

function yes()
Sale(55)
end;

function no()
end;
