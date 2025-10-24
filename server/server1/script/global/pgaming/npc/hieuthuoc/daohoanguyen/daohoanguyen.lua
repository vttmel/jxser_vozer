Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
Include("\\script\\lib\\alonelib.lua");

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
	Say("<color=green>HiÖu thuèc<color>: M­êi dÆm quanh ®©y chØ cã mçi d­îc ®iÕm cña bæn tiÖm th«i! Nh­ng b¶o ®¶m kh¸ch quan sÏ võa ý!"..Note("hieuthuoc_daohoanguyen"), 2, "Giao dÞch/yes", NOTTRADE);
end
end;


function yes()
	Sale(42);  			
end;


function no()
end;







