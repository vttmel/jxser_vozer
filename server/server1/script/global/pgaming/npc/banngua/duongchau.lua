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
Say("Anh hïng cÇn ph¶i cã ngùa tèt! Kh¸ch quan chän mét con ®i!", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no");
end
end;


function yes()
Sale(44);  			--µ¯³ö½»Ò×¿ò
end;


function no()
end;






