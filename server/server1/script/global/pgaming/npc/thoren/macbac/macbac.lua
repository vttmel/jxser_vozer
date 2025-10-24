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
	-- Say("<color=green>Thî rÌn<color>: C¶ tr¨m dÆm gÇn ®©y ai kh«ng biÕt ®Õn ®¹i danh cña ta, tõ ®ao, kiÕm, c«n, th­¬ng, kÝch, m­êi t¸m mãn vò khÝ ta ®Òu cã ®ñ, kh¸ch quan muèn mua mãn nµo? Cßn muèn chÕ t¹o Trang bÞ HuyÒn Tinh hay trang bÞ Hoµng Kim ®Òu ph¶i ®Õn t×m ta, nhÊt ®Þnh gi¸ c¶ ph¶i ch¨ng!"..Note("thoren_macbacthaonguyen"), 3, "Giao dÞch/yes", "ChÕ t¹o/OnFoundry", "Nh©n tiÖn ghÐ qua th«i/no");
	Say("<color=green>Thî rÌn<color>: C¶ tr¨m dÆm gÇn ®©y ai kh«ng biÕt ®Õn ®¹i danh cña ta, tõ ®ao, kiÕm, c«n, th­¬ng, kÝch, m­êi t¸m mãn vò khÝ ta ®Òu cã ®ñ, kh¸ch quan muèn mua mãn nµo?"..Note("thoren_macbacthaonguyen"), 2, "Giao dÞch/yes", NOTTRADE);
end
end

function yes()
	Sale(13);  				
end;
