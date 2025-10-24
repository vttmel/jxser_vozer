Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )
Include("\\script\\config\\cfg_features.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
OPTIONS = {}

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
	Say("TiÖm ta sèng nhê §iÓm Th­¬ng s¬n, trªn ®ã cã hµng ngµn lo¹i th¶o d­îc.",
		getn(OPTIONS),
		OPTIONS)
end
end;

function yes()
	Sale(12)  		
end

if TEACHERSWITCH then
	tinsert(OPTIONS, "Gióp ta cÊt d­îc töu/brew")
end
tinsert(OPTIONS, "Giao dÞch/yes")
if CFG_HONNGUYENLINHLO == 1 then
	tinsert(OPTIONS, "Ta muèn chÕ t¹o Hçn Nguyªn Linh Lé/refine")
end
tinsert(OPTIONS, "Kh«ng giao dÞch/Cancel")
