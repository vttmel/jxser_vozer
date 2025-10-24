Include("\\script\\battles\\battleinfo.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
--¾üÐè¹Ù
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
--Say("HËu doanh do ta phô tr¸ch! Ng­¬i cã cÇn gióp ®ì g× kh«ng?",3,"Mua d­îc phÈm/salemedicine","T×m hiÓu quy t¾c Tèng Kim ®¹i chiÕn/help_sjbattle","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
	Say("HËu doanh do ta phô tr¸ch! Ng­¬i cã cÇn gióp ®ì g× kh«ng?",3,"Mua Ngò Hoa Ngäc Lé Hoµn Nhanh Full R­¬ng/nguhoangoclohoannhanh","Mua d­îc phÈm/salemedicine","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
	-- Talk(1, "", "HiÖn t¹i ta ®ang ®­îc b¶o tr×, c¸c h¹ h·y quay l¹i sau!")
end
end

function salemedicine(sel)
Sale(99, 1)
end