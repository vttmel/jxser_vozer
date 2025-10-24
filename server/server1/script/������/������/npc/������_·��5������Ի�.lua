-- V­¬ng Thñ NghÜa ë Nam Nh¹c TrÊn - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");

function main(sel)
	if ( GetTask(1256) == 1 ) then
		SetTaskTemp(111,GetTaskTemp(111)+1)

		if ( GetTaskTemp(111) > 3 ) then
		 	Talk(1,"","Nghe nãi cã mét vŞ s­ th¸i kh«ng biÕt tõ miÕu nµo ®Õn, ph¸p lùc v« biªn ng­¬i ®i hái thö xem sao.")
		 	SetTask(1256, 2)
		else
		 	Talk(1,"","Ng­¬i l¹i hái th¨m c¸i chÕt cña ThŞ Lang µh? ta cã biÕt ®©u? Nghe nãi §éc C« §¹i HiÖp cÊm con g¸i «ng ta §éc C« V¨n xuèng nói n÷a ®Êy, ®ñ thÊy c¸i dŞch bÖnh nµy ghª gím biÕt chõng nµo, hix......")
		return end
		return elseif ( GetTask(1256) == 2 ) then
		Talk(1,"","Nghe nãi cã mét vŞ s­ th¸i kh«ng biÕt tõ miÕu nµo ®Õn, ph¸p lùc v« biªn ng­¬i ®i hái thö xem sao.");
	return end

	i = random(0,2);

	if (i == 0) then
		Say("<color=green>V­¬ng Thñ NghÜa<color>: Nghe nãi phu nh©n cña §éc C« §¹i HiÖp kh«ng chØ râ vâ nghÖ cao c­êng, mµ cßn lµ mét mü nh©n n÷a."..Note("vuongthunghia_namnhactran"),0)
	return end;

	if (i == 1) then
		Say("<color=green>V­¬ng Thñ NghÜa<color>: Nghe nãi §éc C« §¹i HiÖp vµ §éc C« phu nh©n vèn lµ kÎ thï, kh«ng ngê l¹i yªu nhau vøt bá hiÒm nghi,kÕt thµnh gia quyÕn. Trªn giang hå cßn l­u l¹i mét giai tho¹i ®Êy."..Note("vuongthunghia_namnhactran"),0)
	return end;

	if (i == 2) then
		Say("<color=green>V­¬ng Thñ NghÜa<color>: Con g¸i §éc C« §¹i HiÖp §éc C« V¨n th­êng ®Õn thŞ trÊn ch¬i, lµ ng­êi nghŞch ngîm lanh lîi."..Note("vuongthunghia_namnhactran"),0)
	end;

end;

