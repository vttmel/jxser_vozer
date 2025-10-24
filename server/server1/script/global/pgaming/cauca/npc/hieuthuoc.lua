Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )
Include("\\script\\config\\cfg_features.lua")

function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

OPTIONS = {}

function main(sel)
	Say("TiÖm ta thuèc nµo còng cã, d­ìng th©n kiÖn thÓ, kÐo dµi tuæi thä, bæ m¸u Ých khÝ, ng­¬i muèn mua g×?",
		getn(OPTIONS),
		OPTIONS)
end

function yes()
	Sale(9) 
end

if TEACHERSWITCH then
	tinsert(OPTIONS, "Gióp ta cÊt d­îc töu/brew")
end
tinsert(OPTIONS, "Giao dÞch/yes")
if CFG_HONNGUYENLINHLO == 1 then
	tinsert(OPTIONS, "Ta muèn chÕ t¹o Hçn Nguyªn Linh Lé/refine")
end
tinsert(OPTIONS, "Kh«ng giao dÞch/Cancel")
