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
	Uworld31 = GetByte(GetTask(31),1)
	if (GetFaction() == "wudang") or (Uworld31 == 127) then
		Say("C¸c läai thuèc nµy ®Òu dïng th¶o d­îc sinh tr­ëng trªn Vâ §ang s¬n chÕ thµnh, cã thÓ cÇm m¸u ch÷a th­¬ng, l¹i cã thÓ t¨ng c­êng søc kháe.", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Ch­ëng m«n cã lÖnh,d­îc phÈm bæn gi¸o chØ cã thÓ b¸n cho m«n h¹ Vâ §ang.")
	end
end
end;

function yes()
Sale(65);  			
end;

function no()
end;






