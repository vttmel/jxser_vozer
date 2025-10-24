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
	Uworld38 = GetByte(GetTask(38),2)
	if (GetFaction() == "shaolin") or (Uworld38 == 127) then
		Say("Ng­êi xuÊt gia kh«ng thÓ xa hoa, c¸c lo¹i ¸o mò nµy ®Òu do c¸c s­ huynh ®Ö tù lµm lÊy.", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Ch­ëng m«n cã lÖnh, trang bÞ cña bæn ph¸i chØ b¸n cho ®ång m«n")
	end
end
end;

function yes()
Sale(70)
end;

function no()
end;
