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
	Uworld30 = GetByte(GetTask(30),1)
	if (GetFaction() == "tianren") or (Uworld30 == 127) then
		Say("Y thuËt cña §¹i Kim chóng ta kh«ng thua kÐm g× nhµ Tèng, danh y, h¶o d­îc ®Òu kh«ng thiÕu… ", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Gi¸o chñ cã lÖnh, thuèc cña bæn gi¸o chØ b¸n cho c¸c ®Ö tö trung thµnh.")
	end
end
end;

function yes()
Sale(62)
end;

function no()
end;
