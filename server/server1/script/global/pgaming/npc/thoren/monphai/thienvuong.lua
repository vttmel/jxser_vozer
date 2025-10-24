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
	Uworld38 = GetByte(GetTask(38),1)
	if (GetFaction() == "tianwang") or (Uworld38 == 127) then
		Say("Xem binh khÝ Thiªn V­¬ng bang do chóng ta tù chÕ t¹o ®©y!", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Bang chñ cã lÖnh: binh khÝ cña bæn bang chØ b¸n cho huynh ®Ö ®ång m«n")
	end
end
end;

function yes()
Sale(57);  			
end;

function no()
end;






