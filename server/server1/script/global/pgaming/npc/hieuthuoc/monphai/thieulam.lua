Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")

function main(sel)
if TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc == 1 then
	local tbOpt = {
		{"Giao DÞch",scripthieuthuocall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua thuèc g×?<color>", tbOpt)
else
	Uworld38 = GetByte(GetTask(38),2)
	if (GetFaction() == "shaolin") or (Uworld38 == 127) then
		Say("Tuy nãi vâ c«ng bæn ph¸i t¨ng c­êng søc kháe, nh­ng còng cã lóc l©m bÖnh, nªn còng cÇn c¸c lo¹i thuèc men.", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Ch­ëng m«n cã lÖnh, thuèc cña bæn ph¸i chØ b¸n cho ®ång m«n")
	end
end
end;

function yes()
Sale(71)
end;

function no()
end;
