-- V¨n HuÖ ë Nam Nh¹c TrÊn - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");

function main(sel)
	if ( GetTask(1256) == 1 ) then
		SetTaskTemp(111,GetTaskTemp(111)+1)
		if ( GetTaskTemp(111) > 3 ) then
			Talk(1,"","Nghe nãi cã mét vŞ s­ th¸i kh«ng biÕt tõ miÕu nµo ®Õn, ph¸p lùc v« biªn ng­¬i ®i hái thö xem sao.")
			SetTask(1256, 2);
		return else
		 	Talk(1,"","C¸i bÖnh dŞch qu¸i ¸c nµy ®· phong táa ®­êng lªn nói Hoµnh S¬n, lµm ta hÕt ®­îc diÖn kiÕn §éc C« §¹i HiÖp råi.")
		return end
	return elseif ( GetTask(1256) == 2 ) then
		Talk(1,"","Nghe nãi cã mét vŞ s­ th¸i kh«ng biÕt tõ miÕu nµo ®Õn, ph¸p lùc v« biªn ng­¬i ®i hái thö xem sao.")
	return end

	Say("<color=green>V¨n HuÖ<color>: Ng­êi còng lªn nói b¸i kiÕn §éc C« §¹i hiÖp sao? Nh­ng «ng Êy lµ thÇn t­îng cña ta. GÆp ®­îc «ng ta, phiÒn «ng Êy viÕt cho ta mét ch÷ "..Note("vanhue_namnhactran"),0)
end;

