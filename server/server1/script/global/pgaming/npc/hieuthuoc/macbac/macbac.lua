Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
Include("\\script\\lib\\alonelib.lua");

function main()
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
	Say("<color=green>HiÖu thuèc<color>: Tuy n¬i nµy lµ cùc B¾c nh­ng còng cã nh÷ng lo¹i d­îc quÝ hiÕm do thiªn nhiªn ban tÆng, lÇn nµy ta ph¶i kiÕm l¹i chót ®Ønh, vÞ kh¸ch quan nµy anh muèn mua g×?"..Note("hieuthuoc_macbacthaonguyen"), 2, "Giao dÞch/yes", NOTTRADE);
end
end

function yes()
	Sale(100);
end;