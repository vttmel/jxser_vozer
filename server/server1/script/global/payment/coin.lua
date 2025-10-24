-- HÖ thèng tiÒn ®ång t¹i NPC TiÒn Trang

PAYMENT_COIN_RENEWALTIME = 20; -- Sè l­îng tiÒn ®ång ®Ó ®æi ra thêi h¹n ch¬i
PAYMENT_COIN_TO_1KNB = 100;

function PaymentSystemCoin()
	local tbOpt = {"Ng­¬i t×m ta cã viÖc g×?"};
		tinsert(tbOpt, "Ta muèn rót TiÒn §ång/WithDrawnCoin")
		tinsert(tbOpt, "Ta muèn kiÓm tra TiÒn §ång/CheckCountCoin")
		tinsert(tbOpt, "Ta muèn ®æi tiÒn ®ång ra KNB/ChangeCoinToKNB")
		tinsert(tbOpt, "Ta muèn ®æi tiÒn ®ång ra tiÒn v¹n/ChangeCoinToCash")
		tinsert(tbOpt, "Ta muèn dïng "..PAYMENT_COIN_RENEWALTIME.." TiÒn §ång ®æi 7 ngµy ch¬i/ChangeCoinTo7Day")
		tinsert(tbOpt, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbOpt)
end

function WithDrawnCoin()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","ThËt xin lçi! TiÒn trang hiÖn ®ang ®­îc söa ch÷a, lÇn sau sau h·y ®Õn.")  
	return end

	if (GetBoxLockState() ~= 0) then
		Say("Tr­íc khi tiÕn hµnh rót <color=red>TiÒn ®ång<color>. Yªu cÇu ng­êi ch¬i më mËt khÈu r­¬ng tr­íc!", 0)
	return end
	
	local nCoin = GetExtPoint(1);
	if (nCoin >= 100000) then
		Talk(1,"", "Ph¸t hiÖn cã sai sãt, vui lßng liªn hÖ GM vÒ sù cè nµy!")
	return end
	
	if (nCoin <= 0) then
		Talk(1,"","B¹n kh«ng cã göi bÊt kú <color=red>TiÒn ®ång<color> nµo ë ®©y c¶!")
	return end
	
	AskClientForNumber("WithDrawnCoinEnter", 1, nCoin, "NhËp sè l­îng:")
end

function WithDrawnCoinEnter(nNum)
	local n_count = GetRoomCoinCount(nNum)
	if (CalcFreeItemCellCount() < 5) then
		Talk(1, "", format("Hµnh trang cña b¹n kh«ng ®ñ %d « trèng, vui lßng s¾p xÕp l¹i.",n_count))
	return end
	
	PayExtPoint(1, nNum)
	Msg2Player("HÖ thèng ®ang tiÕn hµnh rót tiÒn ®ång, vui lßng kh«ng tho¸t game ®Ó tr¸ch s¶y ra t×nh tr¹ng mÊt ®å.")
end

function ExtPointChange(nExtPointIndex, nChangeValue)
	nExtPoint = -nChangeValue;
	if (nExtPoint > 0) then
		for i = 1, nExtPoint do
			AddItem(4,417,1,0,0,0)
		end
		AddCardPayment(nExtPoint);
		SaveNow();
		Msg2Player(format("B¹n nhËn ®­îc %d TiÒn §ång t¹i TiÒn Trang (L©m An)", nExtPoint))
		Say(format("B¹n ®· rót thµnh c«ng %d TiÒn §ång, cßn göi l¹i %d TiÒn §ång", nExtPoint, GetExtPoint(nExtPointIndex)),0)
		WriteLog(format("[%s]\tTµi kho¶n: %s Tªn ng­êi ch¬i: %s ®· rót %d TiÒn §ång, sè l­îng cßn l¹i lµ %d", date("%Y%m%d %H%M%S"),GetAccount(),GetName(),nExtPoint,GetExtPoint(nExtPointIndex)))
	end
end

function GetRoomCoinCount(n_count)
	local n_maxstack = 100;
	local n_roomcount = 0;
	local n_coin = 0;
	for i = 1, n_count do
		n_coin = n_coin + 1;
		if (n_coin >= n_maxstack) then
			n_roomcount = n_roomcount + 1;
			n_coin = 0;
		end
	end
return n_roomcount end

function CheckCountCoin()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","ThËt xin lçi! TiÒn trang hiÖn ®ang ®­îc söa ch÷a, lÇn sau sau h·y ®Õn.")  
	return end
	
	local nCount = GetExtPoint(1);
	if (nCount <= 0) then
		Talk(1,"","B¹n kh«ng cã göi TiÒn §ång nµo cho ta c¶!")
	return end
	
	Say(format("B¹n ®ang göi ë ®©y <color=red>%d TiÒn §ång<color>", nCount), 0)
end

function ChangeCoinTo7Day()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","ThËt xin lçi! TiÒn trang hiÖn ®ang ®­îc söa ch÷a, lÇn sau sau h·y ®Õn.")  
	return end

	if (GetBoxLockState() ~= 0) then
		Say("Tr­íc khi tiÕn hµnh rót <color=red>TiÒn ®ång<color>. Yªu cÇu ng­êi ch¬i më mËt khÈu r­¬ng tr­íc!", 0)
	return end
	
	if (CalcEquiproomItemCount(4,417,1,-1) <= 0) then
		Talk(1,"","Ng­¬i kh«ng mang theo <color=red>TiÒn §ång<color>, lµm sao mµ ®æi ®©y?")
	return end
	
	Say("Ng­¬i ch¾c ch¾n muèn gia h¹n chø?",2,
	"§óng råi!/ChangeCoinToDayConfirm",
	"Kh«ng ®æi./no")
end

function ChangeCoinToDayConfirm()
	if (CalcEquiproomItemCount(4,417,1,-1) <= PAYMENT_COIN_RENEWALTIME) then
		Talk(1,"", format("B¹n kh«ng cã ®ñ <color=red>%d TiÒn §ång<color>", PAYMENT_COIN_RENEWALTIME))
	return end
	
	if (CalcEquiproomItemCount(4,417,1,-1) > 0) then
		if (ConsumeEquiproomItem(1,4,417,1,-1) ~= 1) then
			Msg2Player("Quy ®æi thµnh giê ch¬i thÊt b¹i!");
		return end
		UseSilver(1,1,1);
		SaveNow();
		Say(format("B¹n ®· dïng <color=red>%d TiÒn §ång<color> ®æi lÊy 7 ngµy ch¬i thµnh c«ng! Vui lßng kiÓm tra l¹i!", PAYMENT_COIN_RENEWALTIME), 0)
	end
end

function ChangeCoinToCash()
	local tbSay = {"Ng­¬i muèn ®æi bao nhiªu?"};
		tinsert(tbSay, "Dïng 100 tiÒn ®ång ®æi ra 1000 v¹n l­îng/Coin100_Cash1000")
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbSay)
end

function Coin100_Cash1000()
	if (CalcEquiproomItemCount(4,417,1,-1) < 100) then
		Talk(1,"","B¹n kh«ng ®ñ <color=red>100 tiÒn ®ång<color> ®Ó ®æi lÊy <color=red>1000 v¹n l­îng<color>. Cè g¾ng tÝch gãp ®Õn khi nµo ®ñ råi quay l¹i ®©ynhÐ!")
	return end
	
	ConsumeEquiproomItem(100,4,417,1,-1)
	Earn(1000*10000);
	Msg2Player("B¹n ®· dïng <color=yellow>100 tiÒn ®ång<color> ®æi lÊy <color=yellow>1000 v¹n l­îng<color> t¹i TiÒn Trang.")
end

function ChangeCoinToKNB()
	local nCoint = CalcEquiproomItemCount(4,417,1,-1);
	if (nCoint <= 0) then
		Talk(1,"","B¹n kh«ng ®ñ mang theo tiÒn, kh«ng thÓ tiÕn hµnh.")
	return end
	
	AskClientForNumber("ChangeCoinToKNBConfirm", 1, nCoint, "NhËp sè l­îng ®æi KNB:")
end

function ChangeCoinToKNBConfirm(n_count)
	local n_coincount = CalcEquiproomItemCount(4,417,1,-1);
	local n_curcount = PAYMENT_COIN_TO_1KNB*n_count;
	if (n_coincount < n_curcount) then
		Talk(1, "", format("Quy ®æi thÊt b¹i! B¹n kh«ng ®ñ <color=red>%d tiÒn ®ång<color> ®Ó ®æi thµnh <color=red>%d KNB<color>", n_curcount, n_count))
	return end
	ConsumeEquiproomItem(n_curcount,4,417,1,-1);
	for i = 1, n_count do
		AddItem(4,343,1,0,0,0);
	end
	Msg2Player(format("B¹n ®· ®æi <color=yellow>%d tiÒn ®ång<color> lÊy <color=yellow>%d KNB<color>", n_curcount, n_count))
end