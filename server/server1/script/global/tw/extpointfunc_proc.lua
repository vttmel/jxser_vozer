COIN=100

function OnExtPointChange_Proc(nExtPointIndex, nChangeValue)
	if (ExtFunTab[nExtPointIndex + 1] == nil) then
		--print("Error!!!!!!!!, No ExtPoint Fun On"..nExtPointIndex)
		--WriteGoldLog("Importacne Error!!!!!!!!, No ExtPoint CallFun On"..nExtPointIndex..", "..GetAccount().." "..GetName().." nExtPointIndex"..nExtPointIndex.." nChangeValue"..nChangeValue, 0, 0, 0, 0)
		return 0;
	end
	ExtFunTab[nExtPointIndex + 1](nChangeValue)
	return 1;
end

function OnPayYuanBao(nChangeValue)
	nValue = -nChangeValue
	if (nValue == 10) then
	--ƒ√“¯‘™±¶
		 AddStackItem(COIN,4,417,1,1,0,0,0)--add tien dong
		AddItem(4,1326,1,0,0,0)
		SaveNow(); -- ¡¢º¥¥Ê≈Ã
		WriteGoldLog( GetAccount().."("..GetName()..") MAKE a SILVER with a LOW CARD", 0, 1, 0, 0 );
		local nCurValue = GetExtPoint(1)
		WriteLog(date("%Y%m%d %H%M%S").."\t".."RÛt Ti“n ßÂng"..GetAccount().."\t"..GetName().."\t".."RÛt "..COIN.." Ti“n ßÂng cﬂn lπi "..nCurValue*20)
 		Say("§ng chÒ ti“n trang: ß©y lµ "..COIN.." Ti“n ßÂng cÒa kh∏ch quan! Xin nhÀn l y!", 0)
		Msg2Player( "Bπn nhÀn Æ≠Óc <color=green>"..COIN.."<color> Ti“n ßÂng ! vµ <color=yellow>1 Ng‰c Linh Ch©u<color>");
 	elseif( nValue > 10) then
			WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO , MUST PAY(1) BUT PAY("..nValue..")!!!!", 0,0,0,0)
			Msg2Player("Thao t∏c Ti“n ßÂng  bﬁ lÁi, xin li™n h÷ GM Æ” gi∂i quy’t!")
	else
			WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO PAYVALUE <= 0", 0,0,0,0)
			Say("Xin lÁi! Kh∏ch quan kh´ng c„ gÎi Ti“n ßÂng  tπi bÊn ti÷m. ", 0)
	end
end

ExtFunTab=
{
	nil,
 	OnPayYuanBao,
 	nil,
 	nil,
 	nil,
 	nil,
 	nil,
 	nil
};
