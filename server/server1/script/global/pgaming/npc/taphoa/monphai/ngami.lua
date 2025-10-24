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
	Uworld36 = GetByte(GetTask(36),1)
	if (GetFaction() == "emei") or (Uworld36 == 127) then
		Say("QuÇn ¸o giµy nãn nµy lµ do c¸c tû muéi cña bæn m«n lµm ra. RÊt thÝch hîp cho tû muéi Nga Mi ph¸i", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Ch­ëng m«n cã lÖnh: trang bÞ m«n ph¸i chØ b¸n cho tû muéi ®ång m«n!")
	end
end
end

function yes()
Sale(52)
end;

function no()
end;
