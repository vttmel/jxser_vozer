Include("\\script\\config\\cfg_features.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

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
	local tbSay = {}
	tinsert(tbSay,"Giao dÞch/yes")
	if CFG_HONNGUYENLINHLO == 1 then
		tinsert(tbSay,"Ta muèn chÕ t¹o Hçn Nguyªn Linh Lé/refine")
	end
	tinsert(tbSay,"Kh«ng giao dÞch/Cancel")
	Say("Lóc ta cßn trÎ, muèn lµm mét danh y gièng nh­ Hoa §µ, sau nµy lËp gia thÊt sinh con ®Î c¸i, v× nu«i mÊy miÖng ¨n mµ chØ cã thÓ më c¸i tiÖm thuèc nµy th«i. Chao!Con ng­êi cña ta, nhiÒu chuyÖn n·y giê mµ vÉn ch­a hái kh¸ch quan cÇn mua thuèc g×?",getn(tbSay),tbSay)
end
end

function yes()
	Sale(15) 	
end
