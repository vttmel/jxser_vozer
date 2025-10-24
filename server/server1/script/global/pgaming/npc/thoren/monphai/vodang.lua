Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")

function main(sel)
if TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen == 1 then
	local tbOpt = {
		{"Giao DÞch",scriptthorenall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
else
	Uworld31 = GetByte(GetTask(31),1)
	if (GetFaction() == "wudang") or (Uworld31 == 127) then
		Say("§Ö tö bæn ph¸i së tr­êng lµ dïng kiÕm, xem xem cã b¶o kiÕm thÝch hîp cho ng­¬i dïng kh«ng?.....", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Ch­ëng m«n cã lÖnh, binh khÝ bæn gi¸o chØ cã thÓ b¸n cho ®Ö tö Vâ §ang.")
	end
end
end;

function yes()
Sale(63)
end;

function no()
end;
