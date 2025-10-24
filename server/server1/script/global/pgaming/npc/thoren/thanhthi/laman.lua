Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")

TIEJIANG_DIALOG = "<dec><npc>Gian hµng thî rÌn nµy lµ do «ng tæ ta truyÒn l¹i, t¹i L©m An nµy kh«ng ng­êi nµo kh«ng biÕt, xin hái ®¹i hiÖp muèn mua mãn ®å nµo?";
function main()
if TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen == 1 then
	local tbOpt = {
		{"Giao DÞch",scriptthorenall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
else
	tiejiang_city(TIEJIANG_DIALOG..Note("thoren_laman"));
end
end;


function yes()
	Sale(1);
end;

