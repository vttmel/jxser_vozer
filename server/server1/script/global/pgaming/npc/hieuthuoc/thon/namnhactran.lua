Include("\\script\\lib\\alonelib.lua");
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
	Say("<color=green>HiÖu thuèc<color>: Thuèc cña bæn tiÖm toµn lµ thø th­îng h¹ng, cã bÖnh trÞ bÖnh, kh«ng bÖnh c­êng th©n, cã muèn mua mét Ýt kh«ng?"..Note("hieuthuoc_namnhactran"), 2, "Giao dÞch/yes", NOTTRADE);
end
end;

function yes()
	Sale(36);  			
end;

function no()
end;







