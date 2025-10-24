Include("\\script\\global\\pgaming\\cauca\\lib\\inc.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\equipex\\head.lua")

function main()
Say("Ta cã b¸n c¸c lo¹i dông cô ®¸nh b¾t c¸. Kh¸ch quan nÕu bá lì kh«ng mua th× thËt v« cïng ®¸ng tiÕc!", 5, 
	"CÇn c©u Tróc/muacancau", 
	"L­íi ®¸nh c¸/mualuoi",
	"B¸n c¸ R« §ång 3 v¹n l­îng 1 con/carodong", 
	"B¸n c¸ MËp 10 v¹n l­îng 1 con/cachephong", 
	"Kh«ng cÇn ®©u/no");
end

function mualuoi()
Say("Lµ mét CÇn thñ ch©n chÝnh, yÕu tè quan träng nhÊt lµ T©m ph¶i TÞnh - ThÇn ph¶i TØnh.", 2, 
	"L­íi ®¸nh c¸ gi¸ 5 xu/dongymua2", 
	"Kh«ng cÇn ®©u/OnCancelBuy_xxg");
end

function muacancau()
Say("Lµ mét CÇn thñ ch©n chÝnh, yÕu tè quan träng nhÊt lµ T©m ph¶i TÞnh - ThÇn ph¶i TØnh.", 2, 
	"CÇn c©u tróc gi¸ 20 v¹n l­îng/dongymua", 
	"Kh«ng cÇn ®©u/OnCancelBuy_xxg");
end

function dongymua()
local nJxb = 200000
if GetCash() < nJxb then
		Msg2Player(format("Mua cÇn c©u tróc cÇn ph¶i cã %d ng©n l­îng, h·y chuÈn bÞ kü råi quay l¹i",nJxb))
		return
	end
Pay(nJxb)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4896,1,0,0}, nExpiredTime=120, nBindState=-2}, "test", 1);
end

function dongymua222()
local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney <= 0) then
		Talk(1, "", "Trªn ng­êi c¸c h¹ kh«ng cã TiÒn §ång, ch¾c c¸c h¹ ®ang trªu chäc ta ph¶i kh«ng?")
	else
	ConsumeEquiproomItem(5, 4, 417, 1, 1)
	AddItem(6,1,4895,0,0,0)
	 end
end
---------------------------L­íi----------------------------------------------
function dongymua2()
	local nXu = CalcEquiproomItemCount(4,417,1,-1)/5
	AskClientForNumber("dongymua22",0,nXu, "Mêi nhËp sè l­îng: ")
end

function dongymua22(n_key)
	local nRuong = CalcFreeItemCellCount() 
	if n_key > nRuong then
		Talk(1,"","Kh«ng ®ñ r­¬ng chøa ®å")
		return 1
	end 
	for i=1,n_key do
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4895,1,0,0}}, "test", 1);	
	end
	ConsumeEquiproomItem(n_key*5, 4, 417, 1, 1)
	
end


---------------------------ca ro dong----------------------------------------------
function CountCa(nIndex)
	local nCa = CalcEquiproomItemCount(6,1,nIndex,-1)
	return floor(nCa/1)
end

function DelNguyenLieu(nIndex,count)
	ConsumeEquiproomItem(count,6,1,nIndex,-1)
end

function FindCa(nIndex)
	local nCa = CountCa(4898)
	return min(nCa)
end

function carodong()
	local nCa = FindCa(4898)
	AskClientForNumber("banca",0,nCa, "Mêi nhËp sè l­îng c¸: ")
end

function banca(n_key)
	local nCa = FindCa(4898)
	if (n_key < 0 or n_key > nCa) then
		return
	end
	
	for i=1,n_key do
		local nIndex = Earn(30000)
		DelNguyenLieu(4898,1)		
	end
end

---------------------------ca map----------------------------------------------
function CountCa2(nIndex)
	local nCa2 = CalcEquiproomItemCount(6,1,nIndex,-1)
	return floor(nCa2/1)
end

function DelNguyenLieu2(nIndex,count)
	ConsumeEquiproomItem(count,6,1,nIndex,-1)
end

function FindCa2(nIndex)
	local nCa2 = CountCa2(4902)
	return min(nCa2)
end

function cachephong()
	local nCa2 = FindCa2(4902)
	AskClientForNumber("banCa2",0,nCa2, "Mêi nhËp sè l­îng c¸: ")
end

function banCa2(n_key)
	local nCa2 = FindCa2(4902)
	if (n_key < 0 or n_key > nCa2) then
		return
	end
	
	for i=1,n_key do
		local nIndex = Earn(100000)
		DelNguyenLieu2(4902,1)		
	end
end

-------------------------------------------------------------------------

























