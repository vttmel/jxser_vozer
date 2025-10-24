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
	Uworld30 = GetByte(GetTask(30),2)
	if (GetFaction() == "gaibang") or (Uworld30 == 127) then
		Say("TÊt c¶ c¸c d­îc phÈm æ ®©y ®Òu do huynh ®Ö c¸i bang tù bµo chÕ c¶ ", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Bang chñ cã lÖnh: D­îc phÈm cña bæn m«n kh«ng ®­îc b¸n cho ng­êi ngoµi")
	end
end
end;

function yes()
	Sale(74)
end;

function no()
end;
