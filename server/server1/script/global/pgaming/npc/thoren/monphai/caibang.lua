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
	Uworld30 = GetByte(GetTask(30),2)
	if (GetFaction() == "gaibang") or (Uworld30 == 127) then
		Say("§¶ cÈu Bæng cña bæn bang ®· vang danh thiªn h¹. TÊt c¶ c¸c lo¹i binh khÝ c«n, roi, d©y… ë d©y ®Òu cã ®Çy ®ñ c¶ ", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Bang chñ cã lÖnh: Binh khÝ cña bæn m«n kh«ng ®­îc b¸n cho ng­êi ngoµi")
	end
end
end

function yes()
	Sale(72)
end;

function no()
end;
