Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\banngua\\allbanngua.lua")

function main()
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
	Say("Ngµy tr­íc Chu Môc V­¬ng cã 8 con tuÊn m· v« ®Þch thiªn h¹. §­¬ng thêi x­ng lµ 'B¸t C©u'. Con ngùa nµy cña ta lµ hËu thÕ cña mét trong 8 con thÇn m· ®ã! Cã thÓ ngµy ®i ngh×n dÆm! Lµ mét con 'thÇn m·' khã mµ t×m thÊy con thø hai. Mäi ng­êi h·y ®Õn xem ®i! Gi¸ cao cùc kú! Muèn mua th× ®õng tiÕc tiÒn. NÕu kh«ng lóc hèi hËn sÏ kh«ng kÞp!", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
end
end;

function yes()
	Sale(43);  				--µ¯³ö½»Ò×¿ò
end;

function no()
end;
