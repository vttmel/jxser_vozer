CurWharf = 10;
Include("\\script\\global\\station.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

function main(sel)
	if (GetLevel() >= 5) then		
		Say("Chóng ta lµm c«ng ë trªn thuyÒn nµy th©t lµ cùc khæ! N¾ng ch¸y! Giã quËt! B©y giê l¹i gÆp sãng to giã lín, e r»ng sÏ kh«ng ai sèng sãt!", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel")
	else		
		Talk(1,"","Bªn ngoµi lo¹n l¹c, xem ng­¬i trãi gµ kh«ng chÆt! Ra ngoµi th«n ta e kh«ng gi÷ ®­îc m¹ng ®©u!")
	end
end;

---------------------------------------------------------------
function dendiadiemcauca()
local nRanDom = random(1,2)
if nRanDom == 1 then
NewWorld(1009, 1241, 3081)
SetFightState(0)
else
NewWorld(1009, 1566, 2511)
SetFightState(0)
end
end
---------------------------------------------------------------
function  OnCancel()
   Talk(1,"","Kh«ng tiÒn kh«ng thÓ ngåi thuyÒn! ")
end;