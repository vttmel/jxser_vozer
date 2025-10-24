Include("\\script\\config\\cfg_features.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")

function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

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
	local tbSay = {}
	tinsert(tbSay,"Giao dÞch/yes")
	if CFG_HONNGUYENLINHLO == 1 then
	tinsert(tbSay,"Ta muèn chÕ t¹o Hçn Nguyªn Linh Lé/refine")
	end
	tinsert(tbSay,"Kh«ng giao dÞch/Cancel")
	Say(10855,getn(tbSay),tbSay)
end
end;

function yes()
	Sale(12)  				
end
