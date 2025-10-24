	-- TËng kim

	function TaskShedule()

	TaskName( "T≠¨ng D≠¨ng chi’n dﬁch (tËng kim)" );

	TaskInterval( 1440 );

	TaskTime( 11, 50 );

	TaskCountLimit( 0 );

	-- OutputMsg( "                           Chien truong Tong - Kim - 11h (11 : 50) " );

	end

	function TaskContent()
	
	Battle_StartNewRound( 1, 1 );	-- GM chÿ l÷nh, khÎi ÆÈng tËng kim s¨ c p
	
	Battle_StartNewRound( 1, 2 );	-- GM chÿ l÷nh, khÎi ÆÈng tËng kim trung c p
	
	Battle_StartNewRound( 1, 3 );	-- GM chÿ l÷nh, khÎi ÆÈng tËng kim cao c p
	
	OutputMsg( " =========================Chien truong Tong - Kim So Cap 11 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Trung Cap 11 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Cao Cap 11 : 50 khoi dong --->")
	
	zMsg2SubWorld  = "<color=yellow>Chi’n tr≠Íng TËng - Kim<color> <color=0xa9ffe0>S¨ c p, Trung c p, Cao c p Æ∑ Æ’n giÍ b∏o danh, c∏c nh©n s‹ giang hÂ nhanh ch©n tham gia Æ«u qu©n, ThÍi gian b∏o danh lµ 11 phÛt."
	zAddLocalCountNews = "Chi’n tr≠Íng TËng Kim Æ∑ bæt Æ«u b∏o danh, c∏c nh©n s‹ giang hÂ mau Æ’n khu v˘c b∏o danh Æ” tham gia chi’n tr≠Íng."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",zAddLocalCountNews))
	
	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


