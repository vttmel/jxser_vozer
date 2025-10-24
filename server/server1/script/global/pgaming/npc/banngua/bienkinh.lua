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
Say("Ngùa cña ta cao lín, c­íc lùc l¹i tèt! Cã thÓ ch¹y liÒn 1 ngµy 1 ®ªm kh«ng nghØ, ch¾c ch¾n lµ ngùa tèt! Mua 1 con ®i! ", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no");
end
end

function yes()
Sale(45);  			
end;


function no()
end;



