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
	Uworld31 = GetByte(GetTask(31),2)
	if (GetFaction() == "kunlun") or (Uworld31 == 127) then
		Say("§Ö tö cña bæn ph¸i chó träng tu luyÖn ®¹o ph¸p bïa chó, ®èi víi binh ®ao, vâ c«ng th× kh«ng ®­îc tinh th«ng l¾m", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Ch­ëng m«n cã lÖnh: binh khÝ chØ ®­îc b¸n cho ®ång m«n.")
	end
end
end;

function yes()
	Sale(75)
end;

function no()
end;
