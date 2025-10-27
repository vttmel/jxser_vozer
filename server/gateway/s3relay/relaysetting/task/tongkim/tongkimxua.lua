	-- TËng kim
INTERVAL_TIME = 120	
function GetNextTime()
	local nhour = tonumber(date("%H"));
	if nhour == 24 then
		nhour = 0;
	end
	if nhour == (floor(nhour / 2)*2) then
		nhour = nhour + 1;
	else
		nhour = nhour;
		
	end
	return nhour, 0;
end
function TaskShedule()

	TaskName( "T≠¨ng D≠¨ng chi’n dﬁch (tËng kim)" );
	local h, m = GetNextTime();
	TaskInterval( INTERVAL_TIME );

	TaskTime( 13, 0 );
	OutputMsg(format("=====> CHIEN TRUONG TONG KIM BAT DAU DA LEN LICH GIO LE"));
	TaskCountLimit( 0 );

-- OutputMsg( "                           Chien truong Tong - Kim - 11h (9 : 50) " );

end

function TaskContent()

	Battle_StartNewRound( 1, 1 );	-- GM chÿ l÷nh, khÎi ÆÈng tËng kim s¨ c p

	Battle_StartNewRound( 1, 2 );	-- GM chÿ l÷nh, khÎi ÆÈng tËng kim trung c p

	Battle_StartNewRound( 1, 3 );	-- GM chÿ l÷nh, khÎi ÆÈng tËng kim cao c p

	OutputMsg( " =========================Chien truong Tong - Kim So Cap 9 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Trung Cap 9 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Cao Cap 9 : 50 khoi dong --->")

	zMsg2SubWorld  = "<color=yellow>Chi’n tr≠Íng TËng - Kim<color> <color=0xa9ffe0>S¨ c p, Trung c p, Cao c p Æ∑ Æ’n giÍ b∏o danh, c∏c nh©n s‹ giang hÂ nhanh ch©n tham gia Æ«u qu©n, ThÍi gian b∏o danh lµ 5 phÛt."
	zAddLocalCountNews = "Chi’n tr≠Íng TËng Kim Æ∑ bæt Æ«u b∏o danh, c∏c nh©n s‹ giang hÂ mau Æ’n khu v˘c b∏o danh Æ” tham gia chi’n tr≠Íng."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",zAddLocalCountNews))

end

function GameSvrConnected(dwGameSvrIP)

end

function GameSvrReady(dwGameSvrIP)

end


