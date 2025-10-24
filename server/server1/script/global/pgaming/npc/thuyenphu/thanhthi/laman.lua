CurWharf = 11;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

function main(sel)
	if (GetLevel() >= 50) then
		Say("ThuyÒn cña ta kh«ng ph¶i tÇm th­êng! Tõng chë qua ®¹i thÇn tÓ t­íng cña triÒu ®×nh! Muèn ®i ®©u ph¶i ®Æt tr­íc!", 3, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel", "<#> §i §µo Hoa ®¶o (1) ["..AEXP_TICKET.."<#> L­îng]/go_thd");
	else
		Say("ThuyÒn cña ta kh«ng ph¶i tÇm th­êng! Tõng chë qua ®¹i thÇn tÓ t­íng cña triÒu ®×nh! Muèn ®i ®©u ph¶i ®Æt tr­íc!", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel")
	end

	if (GetLevel() >= 50) and CauCa == 1 then
		Say("ThuyÒn cña ta kh«ng ph¶i tÇm th­êng! Tõng chë qua ®¹i thÇn tÓ t­íng cña triÒu ®×nh! Muèn ®i ®©u ph¶i ®Æt tr­íc!", 4,"§­a ta ®Õn ®Þa ®iÓm c©u c¸/dendiadiemcauca", "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel", "<#> §i §µo Hoa ®¶o (1) ["..AEXP_TICKET.."<#> L­îng]/go_thd");
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

function go_thd()
	nRet = aexp_gotothd(235);
	-- if (nRet == 1) then
	--	Msg2Player("´¬·ò£º×î½üÈ¥ÌÒ»¨µºµÄÈË¿ÉÕæ¶à¡£ºÃ°É£¬Äã×øºÃà¶£¡")
	if (nRet == -1) then
		Talk(1,"","<#> PhÝ ®i §µo Hoa ®¶o"..AEXP_TICKET.."<#> ng©n l­îng, ng­¬i tr¶ næi kh«ng?")
	end
end
