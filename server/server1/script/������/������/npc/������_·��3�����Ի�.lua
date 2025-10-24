-- A Phóc ë Nam Nh¹c TrÊn - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");

function main(sel)
	if ( GetTask(1256) == 1) then
		SetTaskTemp(111,GetTaskTemp(111)+1)
		if ( GetTaskTemp(111) > 3 ) then
		 	Talk(1,"","Nghe nãi cã mét vŞ s­ th¸i kh«ng biÕt tõ miÕu nµo ®Õn, ph¸p lùc v« biªn ng­¬i ®i hái thö xem sao.")
		 	SetTask(1256, 2);
		else
			Talk(1,"","Ng­¬i ®Õn thËt ®óng lóc. Chóng ta mau ®i t×m c¨n nguyªn cña dŞch bÖnh nµy ®i! §iÒn Bµ Bµ kh«ng xong råi, lµm ng­êi ta lo l¾ng qu¸.")	 	
		end
	return elseif ( GetTask(1256) == 2) then
		Talk(1,"","Nghe nãi cã mét vŞ s­ th¸i kh«ng biÕt tõ miÕu nµo ®Õn, ph¸p lùc v« biªn ng­¬i ®i hái thö xem sao.")
	return end
	Say("<color=green>A Phóc<color>: Ta muèn lªn Hoµnh S¬n häc vâ, muèn lµm ng­êi nh­ §éc C« §¹i HiÖp, diÖt trõ c­êng b¹o, gióp ®ì kÎ yÕu, thay trêi hµnh ®¹o, uy phong lÉm liÖt!"..Note("aphuc_namnhactran"),0)
end;

