--°ï»áÐûÕ½£¬Ö÷º¯Êý
function ClaimWar(nClaimWarSrcTongID, nClaimWarDestTongID, nLeftMinutes)
	local strSrcTongName  = GetTongNameByID(nClaimWarSrcTongID);
	local strDestTongName = GetTongNameByID(nClaimWarDestTongID);
	
	local szMsg = format("Bng héi %s ®· tuyªn chiÕn víi bang h«i %s, thêi gian chiÕn ®Êu cßn l¹i lµ %d phót.", strSrcTongName, strDestTongName, nLeftMinutes);
	local szEndMsg = format("Bang héi %s kÕt thóc tuyªn chiÕn víi bang héi %s.", strSrcTongName, strDestTongName);
	if (nLeftMinutes == 0) then
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", szEndMsg));
	else
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg));
	end;
end