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
	Uworld30 = GetByte(GetTask(30),1)
	if (GetFaction() == "tianren") or (Uworld30 == 127) then
		Say("Lo¹i vò khÝ nµy ®Òu do thî rÌn giái nhÊt Kim quèc lµm ra, ®Òu lµ hµng tèt.", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no");
	else
		Talk(1,"","Gi¸o chñ cã lÖnh, vò khÝ cña bæn gi¸o chØ b¸n cho c¸c ®Ö tö trung thµnh.")
	end
end
end;

function yes()
Sale(60)
end;

function no()
end;
