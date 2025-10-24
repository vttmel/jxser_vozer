Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")
Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\equip_system.lua");

function main(sel)
if TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen ~= 1 then
	Talk(1,"","Tİnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen == 1 then
	local tbOpt = {
		{"Giao DŞch",scriptthorenall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
else
	-- Say("X­a nay anh hïng phèi mü töu, danh kiÕm phèi hiÖp sÜ, mét cµnh liÔu còng cã thÓ ®¶ th­¬ng ®­îc ng­êi, nh­ng ng­êi häc vâ ai l¹i kh«ng thİch cã mét thanh b¶o kiÕm s¾c bĞn chø? NÕu muèn chÕ t¹o trang bŞ HuyÒn Tinh hoÆc trang bŞ Hoµng Kim th× cã thÓ ®Õn t×m ta gi¸ c¶ ph¶i ch¨ng th«i!", 3, "Giao dŞch/yes", "chÕ t¹o/onFoundry", "Nh©n tiÖn ghĞ qua th«i/no");
	Say("<color=green>Thî rÌn<color>: X­a nay anh hïng phèi mü töu, danh kiÕm phèi hiÖp sÜ, mét cµnh liÔu còng cã thÓ ®¶ th­¬ng ®­îc ng­êi, nh­ng ng­êi häc vâ ai l¹i kh«ng thİch cã mét thanh b¶o kiÕm s¾c bĞn chø?"..Note("thoren_daohoanguyen"), 2, "Giao dŞch/yes", NOTTRADE);
end
end;

function yes()
	Sale(40);  			--µ¯³ö½»Ò×¿ò
end;

function no()
end;







