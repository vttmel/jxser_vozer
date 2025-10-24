Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")

function main(sel)
if TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc == 1 then
	local tbOpt = {
		{"Giao DÞch",scripthieuthuocall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua thuèc g×?<color>", tbOpt)
else
	Uworld37 = GetByte(GetTask(37),1)
	if (GetFaction() == "tangmen") or (Uworld37 == 127) then
		Say(" thuËt cña TuyÖt Xu©n TÈu bæn m«n cã thÓ nãi lµ ®éc bé thiªn h¹. TuyÖt Xu©n TÈu ®iÒu chÕ nh÷ng d­îc hoµn nµy.", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","M«n chñ cã lÖnh, d­îc phÈm cña bæn m«n kh«ng thÓ b¸n cho ng­êi ngoµi!")
	end
end
end;

function yes()
Sale(56)
end;

function no()
end;
