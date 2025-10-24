Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")

TIEJIANG_DIALOG = "<dec><npc>TiÖm thî rÌn cña ta do nhê häc vâ chÕ t¹o vò khÝ lËp nªn, ®ao kiÕm c«n th­¬ng kÝch, m­êi t¸m lo¹i binh khÝ ®ñ c¶, ®¹i hiÖp muèn mua lo¹i nµo?"

function main(sel)
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
	tiejiang_city(TIEJIANG_DIALOG);
end
end;

function yes()
	Sale(16);  				
end;

