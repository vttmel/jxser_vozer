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
	Uworld36 = GetByte(GetTask(36),1)
	if (GetFaction() == "emei") or (Uworld36 == 127) then
		Say("®Ö tö bæn ph¸i ®Òu lµ n÷ nhi mÒm yÕu, v× thÕ ®a sè c¸c lo¹i binh ®ao ®Òu nhÑ nhµng linh ho¹t", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Ch­ëng m«n cã lÖnh: binh khÝ m«n ph¸i chØ b¸n cho tû muéi ®ång m«n!")
	end
end
end;

function yes()
Sale(51)
end;

function no()
end;
