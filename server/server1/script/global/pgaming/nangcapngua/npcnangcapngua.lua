Include("\\script\\global\\pgaming\\nangcapngua\\nangcapngua.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\awardtemplet.lua");

function main()
Say("Thiªn h¹ ng­êi c­ìi ngùa th× nhiÒu, mµ ng­êi biÕt <enter>c¸ch ch¨m sãc ngùa hái cã mÊy ai?, vÞ thiÕu hiÖp cã  muèn mua ngùa cña ta kh«ng?", 3, 
	"VÒ viÖc ThuÇn hãa, n©ng cÊp chiÕn m·/pgHorseUpgradeMain", 
	"Mua D©y thõng 10v-1c /dongymua", 
	"Kh«ng cÇn ®©u/no");
end

function no()
end;

----------------------------------------------------

function dongymua()
	AskClientForNumber("GetDayThung",1,250,"NhËp sè l­îng cÇn mua")
end
function GetDayThung(nCount)
	local nSum = nCount * 100000
	if (GetCash() < nSum) then
		Talk(1,"","§¹i hiÖp kh«ng ®ñ ng©n l­îng, xin kiÓm tra l¹i !")
		return
	end
	Pay(nSum)
	local nItemIndex = AddStackItem(nCount, 6, 1, 4892, 0, 0, 0)
	SyncItem(nItemIndex)
	Msg2Player(format("§¹i hiÖp nhËn ®­îc %d D©y Thõng", nCount))
	
end