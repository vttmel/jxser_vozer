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
	Say("Bæn tiÖm tuy nhá nh­ng thø g× còng cã. Kh¸ch quan muèn mua g×?", getn(Buttons), Buttons);
end
end;


function yes()
Sale(20); 		
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;

