Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\banngua\\allbanngua.lua")

function main(sel)
if TatNPCBanNguaAllThanh == 1 and ScriptBanNgua ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCBanNguaAllThanh == 1 and ScriptBanNgua == 1 then
	local tbOpt = {
		{"Giao DÞch",scriptbannguaall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua thuèc g×?<color>", tbOpt)
else
Say("Ngùa cña ta ®Õu lµ gièng th­îng ®¼ng mang tõ M«ng Cæ vÒ! Ngµy ®i ngµn dÆm kh«ng cÇn nghØ! Ai cã duyªn míi mua ®­îc", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no");
end
end;


function yes()
Sale(47);  			
end;


function no()
end;
