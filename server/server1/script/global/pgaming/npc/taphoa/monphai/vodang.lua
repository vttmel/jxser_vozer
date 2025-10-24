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
	Uworld31 = GetByte(GetTask(31),1)
	if (GetFaction() == "wudang") or (Uworld31 == 127) then
		Say("§¹o bµo ®Ñp ai mµ kh«ng thÝch? Lùa mét c¸i ®i?", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Ch­ëng m«n cã lÖnh, c¸c trang bÞ cña bæn gi¸o chØ cã thÓ b¸n cho ®Ö tö Vâ §ang.")
	end
end
end;

function yes()
Sale(64)
end;

function no()
end;
