CurWharf = 9;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("ë ®©y tuy kh«ng cã bÕu tµu nh­ng ta còng cã c¸ch ®­a ng­¬i ®i!", 2,"§i §µo Hoa ®¶o (6) /go_thd", "Kh«ng ngåi/OnCancel")
	else
		Talk(1, "", "Kh«ng biÕt bao giê ë ®©y míi cã mét bÕn tµu!")
	end

	if (GetLevel() >= 50) and CauCa == 1 then
		Say("ë ®©y tuy kh«ng cã bÕu tµu nh­ng ta còng cã c¸ch ®­a ng­¬i ®i!", 3,"§­a ta ®Õn ®Þa ®iÓm c©u c¸/dendiadiemcauca", "§i §µo Hoa ®¶o (6) /go_thd", "Kh«ng ngåi/OnCancel")
	end
end;

function  OnCancel()
   Talk(1,"","Kh«ng tiÒn kh«ng thÓ ngåi thuyÒn! ")
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
function go_thd()
	nRet = aexp_gotothd(240);
	-- if (nRet == 1) then
	--	Msg2Player("´¬·ò£º×î½üÈ¥ÌÒ»¨µºµÄÈË¿ÉÕæ¶à¡£ºÃ°É£¬Äã×øºÃà¶£¡")
	if (nRet == -1) then
		Talk(1,"","PhÝ ®i thuyÒn ®Õn §µo Hoa §¶o "..AEXP_TICKET.."L­îng, ng­¬i cã ®ñ kh«ng? ")
	end
end
---------------------------------------------------------------
