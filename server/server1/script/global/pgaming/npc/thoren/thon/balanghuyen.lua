Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")
TIEJIANG_DIALOG = "<dec><npc>ViÖc bu«n b¸n ë ®©y rÊt thuËn lîi, ®Õn ngay c¶ c¸c huynh ®Ö cña Thiªn V­¬ng Bang th­êng ®Õn ®©y nhê ta chÕ t¹o binh khÝ."..Note("thoren_balanghuyen");

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
	tiejiang_village()
end
end;


function yes()
Sale(37);  			
end;
