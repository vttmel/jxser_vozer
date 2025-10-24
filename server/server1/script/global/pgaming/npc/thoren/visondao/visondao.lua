Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")
Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\equip_system.lua");

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
	--Say("Muèn sèng ®­îc trªn T©y S¬n Tù µh, kh«ng cã binh khÝ lîi h¹i cña ta e r»ng ng­¬i chÞu nhiÒu thiÖt thßi ®ã. Ng­¬i cã muèn mua g× kh«ng? Cßn muèn chÕ t¹o Trang bÞ HuyÒn Tinh hoÆc trang bÞ Hoµng Kim th× cø ®Õn t×m ta gi¸ c¶ ph¶i ch¨ng th«i!", 3, "Giao dÞch/yes", "chÕ t¹o/onFoundry", "Nh©n tiÖn ghÐ qua th«i/no")
	Say("<color=green>Thî rÌn<color>: Muèn sèng ®­îc trªn Vi S¬n ®¶o µh, kh«ng cã binh khÝ lîi h¹i cña ta e r»ng ng­¬i chÞu nhiÒu thiÖt thßi ®ã. Ng­¬i cã muèn mua g× kh«ng?"..Note("thoren_visondao"), 2, "Giao dÞch/yes", NOTTRADE);
end
end

function yes()
	Sale(13);  				
end;
