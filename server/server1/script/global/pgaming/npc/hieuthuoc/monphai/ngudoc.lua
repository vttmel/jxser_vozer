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
	Uworld37 = GetByte(GetTask(37),2)
	if (GetFaction() == "wudu") or (Uworld37 == 127) then
		Say("C«ng phu cña bæn ph¸i mÆc dï lµ lÊy ®éc lµm chñ. Nh­ng mµ h¶o d­îc 'diÖu thñ håi xu©n' còng kh«ng thiÕu. Cã muèn xem thö kh«ng", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Gi¸o chñ cã lÖnh: thuèc cña b¶n ph¸i kh«ng ®­îc b¸n cho ng­êi ngoµi")
	end
end
end

function yes()
Sale(80)
end;

function no()
end;
