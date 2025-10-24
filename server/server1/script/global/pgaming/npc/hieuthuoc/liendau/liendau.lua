Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
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
	Say("Ha ha! ThÊy nhiÒu cao thñ tô tËp ë ®©y thËt khiÕn ng­êi c¶m ®éng! Kh«ng giÊu g× ng­¬i d­îc phÈm ë tiÖm ta lµ rÎ nhÊt, muèn mua thø g×?", 2, "Ta chØ ®Õn xem!/want2sale", "Kh«ng mua ®©u/OnCancel")
end
end

function OnCancel()
end

function want2sale()
	Sale(53)
end