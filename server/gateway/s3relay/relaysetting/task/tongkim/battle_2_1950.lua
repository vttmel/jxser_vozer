function TaskShedule()
	TaskName( "Quoc Chien 20:49" );
	TaskInterval( 1440 );
	TaskTime( 19, 50);
	TaskCountLimit( 0 );
	OutputMsg( "====================> Quoc Chien 19:50 <====================" );

end

function TaskContent()
	local nWeekday = tonumber(date("%w"));
	if nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and (CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil) then	
	if CW_GetOccupant(4) == CW_GetOccupant(7) then
			local szMsg  = format("ChiÕu c¸o thiªn h¹ : <color=cyan>\%s\<color> ®ång thêi chiÕm ®­îc <color=yellow>L©m An<color> vµ <color=yellow>BiÖn Kinh<color>, bang chñ cã thÓ trùc tiÕp lªn ng«i thiªn tö", CW_GetOccupant(4));
			local szNews = format("dw AddLocalCountNews([[%s]], 2)", szMsg);
			zMsg2SubWorld  = format("ChiÕu c¸o thiªn h¹ : <color=cyan>\%s\<color> ®ång thêi chiÕm ®­îc <color=yellow>L©m An<color> vµ <color=yellow>BiÖn Kinh<color> : <color=cyan>Bang Chñ<color> cã thÓ trùc tiÕp lªn ng«i <color=cyan>Hoµng §Õ<color>", CW_GetOccupant(4));
			GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
			GlobalExecute(szNews);
			Battle_StartNewRound( 1, 3 );
			--RemoteExecute("\\script\\global\\newlife\\tinhnang\\msg2subworld.lua","TongKim", 0)
			for i = 0,10 do
			NW_SetTask(i, 0);
			end
			NW_Abdicate();
			NW_SetTask(0, 1);
			return
		end
		local szMsg  =  format("<color=yellow>Quèc ChiÕn<color> : <color=cyan>N­íc Tèng <color=yellow>(\%s\)<color> N­íc Kim <color=yellow>(\%s\)<color> thiªn tö ®o¹t ng«i ®· më, xin mêi c¸c vÞ t­íng sÜ ®Õn tèng kim ®Ó ghi danh tham chiÕn !", CW_GetOccupant(7), CW_GetOccupant(4));
		local szNews = format("dw AddLocalCountNews([[%s]], 2)", szMsg);
		zMsg2SubWorld  = format("<color=yellow>ChiÕn Tr­êng Quèc ChiÕn<color> : <color=cyan>N­íc Tèng <color=yellow>(\%s\)<color> N­íc Kim <color=yellow>(\%s\)<color> thiªn tö ®o¹t ng«i ®· më, xin mêi c¸c vÞ t­íng sÜ ®Õn tèng kim ®Ó ghi danh tham chiÕn !", CW_GetOccupant(7), CW_GetOccupant(4));
		GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
		GlobalExecute(szNews);
		Battle_StartNewRound( 2, 3 );
	end
	
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
