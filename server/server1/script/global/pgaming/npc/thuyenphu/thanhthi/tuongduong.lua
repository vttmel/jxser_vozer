CurWharf = 4;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Nhµ ta mÊy ®êi lªnh ®ªnh trªn Tr­êng Giang, ®õng thÊy thuyÒn ta nhá mµ xem th­êng, chë 4,5 ng­êi còng kh«ng hÒ hÊn g×!", 3, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel", "§i §µo Hoa ®¶o (3) /go_thd");
	else
		Say("Nhµ ta mÊy ®êi lªnh ®ªnh trªn Tr­êng Giang, ®õng thÊy thuyÒn ta nhá mµ xem th­êng, chë 4,5 ng­êi còng kh«ng hÒ hÊn g×!", 2, "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel");
	end

	if (GetLevel() >= 50) and CauCa == 1 then
		Say("Nhµ ta mÊy ®êi lªnh ®ªnh trªn Tr­êng Giang, ®õng thÊy thuyÒn ta nhá mµ xem th­êng, chë 4,5 ng­êi còng kh«ng hÒ hÊn g×!", 4,"§­a ta ®Õn ®Þa ®iÓm c©u c¸/dendiadiemcauca", "Ngåi thuyÒn/WharfFun", "Kh«ng ngåi/OnCancel", "§i §µo Hoa ®¶o (3) /go_thd");
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

   Say("Kh«ng cã tiÒn ngåi thuyÒn th× ng­¬i ®i bé vËy! ",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(237);
	-- if (nRet == 1) then
	--	Msg2Player("´¬·ò£º×î½üÈ¥ÌÒ»¨µºµÄÈË¿ÉÕæ¶à¡£ºÃ°É£¬Äã×øºÃà¶£¡")
	if (nRet == -1) then
		Talk(1,"","PhÝ ®i thuyÒn ®Õn §µo Hoa §¶o "..AEXP_TICKET.."L­îng, ng­¬i cã ®ñ kh«ng? ")
	end
end
---------------------------------------------------------------
