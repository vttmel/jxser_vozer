-- HÖ thèng KNB t¹i NPC TiÒn Trang

PAYMENT_KNB_RENEWALTIME = 1; -- Sè l­îng KNB ®Ó ®æi ra thêi h¹n ch¬i
PAYMENT_VALUE_COIN = 100; --Sè l­îng tiÒn ®ång ®­îc ®æi ra tõ KNB

function PaymentSystemKNB()
	local tbOpt = {"Ng­¬i t×m ta cã viÖc g×?"};
		tinsert(tbOpt, "Ta muèn rót KNB/WithDrawnKNB")
		tinsert(tbOpt, "Ta muèn kiÓm tra KNB/CheckCountKNB")
		tinsert(tbOpt, "Ta muèn ®æi KNB ra tiÒn ®ång/ChangeKNBToCoin")
		--tinsert(tbOpt, "Ta muèn ®æi KNB ra tiÒn v¹n/ChangeKNBToCash")
		tinsert(tbOpt, "Ta muèn dïng "..PAYMENT_KNB_RENEWALTIME.." KNB ®æi 7 ngµy ch¬i/ChangeKNBTo7Day")
		tinsert(tbOpt, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbOpt)
end

function WithDrawnKNB()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","ThËt xin lçi! TiÒn trang hiÖn ®ang ®­îc söa ch÷a, lÇn sau sau h·y ®Õn.")  
	return end

	if (GetBoxLockState() ~= 0) then
		Say("Tr­íc khi tiÕn hµnh rót <color=red>KNB<color>. Yªu cÇu ng­êi ch¬i më mËt khÈu r­¬ng tr­íc!", 0)
	return end
	
	local nKNB = GetExtPoint(1);
	if (nKNB >= 32768) then
		Talk(1,"", "Ph¸t hiÖn cã sai sãt, vui lßng liªn hÖ GM vÒ sù cè nµy!")
	return end
	
	if (nKNB <= 0) then
		Talk(1,"","B¹n kh«ng cã göi bÊt kú <color=red>KNB<color> nµo ë ®©y c¶!")
	return end
	
	AskClientForNumber("WithDrawnKNBEnter", 1, nKNB, "NhËp sè l­îng:")
end

function WithDrawnKNBEnter(nNum)
	if (CalcFreeItemCellCount() < nNum) then
		Talk(1, "", format("Hµnh trang cña b¹n kh«ng ®ñ %d « trèng, vui lßng s¾p xÕp l¹i.",nNum))
	return end
	
	PayExtPoint(1, nNum)
	Msg2Player("HÖ thèng ®ang tiÕn hµnh rót KNB, vui lßng kh«ng tho¸t game ®Ó tr¸ch s¶y ra t×nh tr¹ng mÊt ®å.")
end

function ExtPointChange(nExtPointIndex, nChangeValue)
	nExtPoint = -nChangeValue;
	if (nExtPoint > 0) then
		for i = 1, nExtPoint do
			AddItem(4,343,1,0,0,0)
		end
		AddCardPayment(nExtPoint);
		SaveNow();
		Msg2Player(format("B¹n ®· rót %d KNB t¹i TiÒn Trang (L©m An)", nExtPoint))
		Say(format("B¹n ®· rót thµnh c«ng %d KNB, cßn göi l¹i %d KNB", nExtPoint, GetExtPoint(nExtPointIndex)),0)
		WriteLog(format("[%s]\tTµi kho¶n: %s Tªn ng­êi ch¬i: %s ®· rót %d KNB, sè l­îng cßn l¹i lµ %d", date("%Y%m%d %H%M%S"),GetAccount(),GetName(),nExtPoint,GetExtPoint(nExtPointIndex)))
	end
end

function CheckCountKNB()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","ThËt xin lçi! TiÒn trang hiÖn ®ang ®­îc söa ch÷a, lÇn sau sau h·y ®Õn.")  
	return end
	
	local nCount = GetExtPoint(1);
	if (nCount <= 0) then
		Talk(1,"","B¹n kh«ng cã göi KNB nµo cho ta c¶!")
	return end
	
	Say(format("B¹n ®ang göi ë ®©y <color=red>%d KNB<color>", nCount), 0)
end

function ChangeKNBTo7Day()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","ThËt xin lçi! TiÒn trang hiÖn ®ang ®­îc söa ch÷a, lÇn sau sau h·y ®Õn.")  
	return end

	if (GetBoxLockState() ~= 0) then
		Say("Tr­íc khi tiÕn hµnh rót <color=red>KNB<color>. Yªu cÇu ng­êi ch¬i më mËt khÈu r­¬ng tr­íc!", 0)
	return end
	
	if (CalcEquiproomItemCount(4,343,1,-1) < 1) then
		Talk(1,"","Ng­¬i kh«ng mang theo <color=red>KNB<color>, lµm sao mµ ®æi ®©y?")
	return end
	
	Say("Ng­¬i ch¾c ch¾n muèn gia h¹n chø?",2,
	"§óng råi!/ChangeKNBToDayConfirm",
	"Kh«ng ®æi./no")
end

function ChangeKNBToDayConfirm()
	if (CalcEquiproomItemCount(4,343,1,-1) <= PAYMENT_KNB_RENEWALTIME) then
		Talk(1,"", format("B¹n kh«ng cã ®ñ <color=red>%d TiÒn §ång<color>", PAYMENT_KNB_RENEWALTIME))
	return end
	
	if (CalcEquiproomItemCount(4,343,1,-1) > 0) then
		if (ConsumeEquiproomItem(1,4,343,1,-1) ~= 1) then
			Msg2Player("Quy ®æi thµnh giê ch¬i thÊt b¹i!");
		return end
		UseSilver(1,1,1);
		SaveNow();
		Say(format("B¹n ®· dïng <color=red>%d KNB<color> ®æi lÊy 7 ngµy ch¬i thµnh c«ng! Vui lßng kiÓm tra l¹i!", PAYMENT_KNB_RENEWALTIME), 0)
	end
end

function ChangeKNBToCash()
	local tbSay = {"Ng­¬i muèn ®æi bao nhiªu?"};
		tinsert(tbSay, "Dïng 1 KNB ®æi ra 1000 v¹n l­îng/KNB100_Cash1000")
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbSay)
end

function KNB100_Cash1000()
	if (CalcEquiproomItemCount(4,343,1,-1) < 1) then
		Talk(1,"","B¹n kh«ng ®ñ <color=red>1 KNB<color> ®Ó ®æi lÊy <color=red>1000 v¹n l­îng<color>. Cè g¾ng tÝch gãp ®Õn khi nµo ®ñ råi quay l¹i ®©ynhÐ!")
	return end
	
	ConsumeEquiproomItem(1,4,343,1,-1)
	Earn(1000*10000);
	Msg2Player("B¹n ®· dïng <color=yellow>1 KNB<color> ®æi lÊy <color=yellow>1000 v¹n l­îng<color> t¹i TiÒn Trang.")
end

function ChangeKNBToCoin()
	local nKNB = CalcEquiproomItemCount(4,343,1,-1);
	if (nKNB <= 0) then
		Talk(1,"","B¹n kh«ng ®ñ mang theo tiÒn, kh«ng thÓ tiÕn hµnh.")
	return end
	
	AskClientForNumber("ChangeKNBToCoinConfirm", 1, nKNB, "NhËp sè l­îng KNB ®æi:")
end

function ChangeKNBToCoinConfirm(n_count)
	local n_coincount = CalcEquiproomItemCount(4,343,1,-1);
	if (n_coincount < n_count) then
		Talk(1, "", format("Quy ®æi thÊt b¹i! B¹n kh«ng ®ñ <color=red>%d KNB<color> ®Ó ®æi thµnh <color=red>%d tiÒn ®ång<color>", n_count, n_count*PAYMENT_VALUE_COIN))
	return end
	ConsumeEquiproomItem(n_count,4,343,1,-1);
	for i = 1, n_count*PAYMENT_VALUE_COIN do
		AddItem(4,417,1,0,0,0);
	end
	Msg2Player(format("B¹n ®· ®æi <color=yellow>%d KNB<color> lÊy <color=yellow>%d tiÒn ®ång<color>", n_count, n_count*PAYMENT_VALUE_COIN))
end