Include("\\script\\global\\global_zahuodian.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\taphoa\\alltaphoa.lua")
function main(sel)
if TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa == 1 then
	local tbOpt = {
		{"Giao DÞch",scripttaphoaall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
else
	local Buttons = store_sel_extend();
	Say("§­êng thñy D­¬ng Ch©u cña chóng ta th«ng ra bèn ng·, lµ n¬i cã ®ñ hµng hãa tõ Nam tíi B¾c, v× thÕ vËt phÈm chóng t«i cã ®ñ §«ng T©y Nam B¾c, thø g× còng cã, mua mét Ýt g× ®i?", getn(Buttons), Buttons);
end
end;


function yes()
Sale(5);  		
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;





