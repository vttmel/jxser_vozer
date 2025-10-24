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
Say("Ng­êi hµnh tÈu giang hå ®Òu cÇn ph¶i cã mét con ngùa tèt, con ngùa cña ta tuy kh«ng ph¶i lµ danh c©u nh­ng søc chÞu ®ùng cña nã thËt kinh ng­êi, tÝnh nã l¹i «n hoµ, mµ gi¸ tiÒn còng kh«ng ®¾t l¾m.", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no");
end
end;


function yes()
Sale(49);  			
end;


function no()
end;