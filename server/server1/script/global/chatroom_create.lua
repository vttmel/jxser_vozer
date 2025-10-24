MONEY_CREATECHATROOM = 50000

function Checkup()
	if (GetCash() < MONEY_CREATECHATROOM) then
		Msg2Player("Trong hµnh trang cÒa bπn kh´ng c„ ÆÒ <color=yellow>" .. MONEY_CREATECHATROOM.." l≠Óng<color> Æ” tπo phﬂng t∏n g…u nµy!")
	return 0 end
return 1 end

function Consume()
	return Pay(MONEY_CREATECHATROOM)
end
