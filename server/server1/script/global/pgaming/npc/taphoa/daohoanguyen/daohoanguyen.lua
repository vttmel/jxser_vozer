Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\taphoa\\alltaphoa.lua")
Include("\\script\\lib\\alonelib.lua");

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
	Say("<color=green>T¹p hãa<color>: TiÖm tuy nhá nh­ng thø g× còng cã! Kh¸ch quan muèn mua g×?"..Note("taphoa_daohoanguyen"), 2, "Giao dÞch/yes", NOTTRADE);
end
end;

function yes()
	Sale(41);  			--µ¯³ö½»Ò×¿ò
end;

function no()
end;







