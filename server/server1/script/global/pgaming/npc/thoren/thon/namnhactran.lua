Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")
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
	Say("<color=green>Thî rÌn<color>: Ng­êi trong giang hå sao kh«ng cã c©y kiÕm bªn m×nh ®­îc? ë ®©y chóng ta cã ®ñ c¸c lo¹i binh khÝ tèt nhÊt, anh tõ tõ chän."..Note("thoren_namnhactran"), 2, "Giao dÞch/yes", NOTTRADE);
end
end;

function yes()
	Sale(34);  			
end






