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
	Uworld37 = GetByte(GetTask(37),1)
	if (GetFaction() == "tangmen") or (Uworld37 == 127) then
		Say("Nh÷ng binh khÝ nµy ®Òu do 'Phßng ¸m khÝ' vµ 'Phßng háa khÝ' bæn m«n ta chÕ t¹o, kh«ng ë n¬i nµo cã!", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","M«n chñ cã lÖnh, binh khÝ cña bæn m«n kh«ng thÓ b¸n cho ng­êi ngoµi!")
	end
end
end;

function yes()
Sale(54)
end;

function no()
end;
