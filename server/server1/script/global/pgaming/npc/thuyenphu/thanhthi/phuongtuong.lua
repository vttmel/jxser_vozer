CurWharf = 1;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Hoµng hµ chÝn khóc uèn quanh, em bê bªn Êy cßn anh bªn nµy....", 3, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel", "§i §µo Hoa ®¶o (7) /go_thd");
	else
		Say("Hoµng hµ chÝn khóc uèn quanh, em bê bªn Êy cßn anh bªn nµy....", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel");
	end

	if (GetLevel() >= 50) and CauCa == 1 then
		Say("Hoµng hµ chÝn khóc uèn quanh, em bê bªn Êy cßn anh bªn nµy....", 4, "§­a ta ®Õn ®Þa ®iÓm c©u c¸/dendiadiemcauca","Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel", "§i §µo Hoa ®¶o (7) /go_thd");
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
function go_thd()
	nRet = aexp_gotothd(241);
	-- if (nRet == 1) then
	--	Msg2Player("´¬·ò£º×î½üÈ¥ÌÒ»¨µºµÄÈË¿ÉÕæ¶à¡£ºÃ°É£¬Äã×øºÃà¶£¡")
	if (nRet == -1) then
		Talk(1,"","PhÝ ®i thuyÒn ®Õn §µo Hoa §¶o "..AEXP_TICKET.."L­îng, ng­¬i cã ®ñ kh«ng? ")
	end
end
---------------------------------------------------------------
