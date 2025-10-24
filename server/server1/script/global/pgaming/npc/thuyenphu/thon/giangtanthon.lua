--Î÷ÄÏ±±Çø ½­½ò´å ÂëÍ·´¬·ò¶Ô»°
--suyu
--200306015
-- Update: Dan_Deng(2003-08-21) ½µµÍ³ö´åµÈ¼¶ÒªÇóÎª5¼¶

CurWharf = 2;
Include("\\script\\global\\station.lua")
---------------------------------------------------------------
function main(sel)

if (GetLevel() >= 5) then		--µÈ¼¶´ïµ½Ê®¼¶
	Say("Muèn ngåi thuyÒn ®i ®©u vËy?", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel");
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
   Say("Kh«ng tiÒn kh«ng thÓ lªn thuyÒn! ",0)
end;

---------------------------------------------------------------
