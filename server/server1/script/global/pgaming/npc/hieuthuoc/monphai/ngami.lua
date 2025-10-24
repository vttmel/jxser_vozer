Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
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
	if allbrother_0801_CheckIsDialog(208) == 1 then
		allbrother_0801_FindNpcTaskDialog(208)
		return 0;
	end
	Uworld36 = GetByte(GetTask(36),1)
	if (GetFaction() == "emei") or (Uworld36 == 127) then
		Say("th¶o d­îc trªn nói Nga Mi rÊt nhiÒu, ®Ö tö bæn ph¸i dïng nh÷ng lo¹i th¶o d­îc nµy ®Ó lµm ra nhiÒu thÇn d­îc trÞ th­¬ng. ", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Ch­ëng m«n cã lÖnh: D­îc phÈm m«n ph¸i chØ b¸n cho tû muéi ®ång m«n!")
	end
end
end;

function yes()
Sale(53)
end;

function no()
end;
