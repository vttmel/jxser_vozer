	-- Tèng kim

	function TaskShedule()

	TaskName( "T­¬ng D­¬ng chiÕn dÞch (tèng kim)" );

	TaskInterval( 1440 );

	TaskTime( 20, 50 );

	TaskCountLimit( 0 );

	-- OutputMsg( "                           Chien truong Tong - Kim - 21h (20 : 50) " );

	end

	function TaskContent()
	Battle_StartNewRound( 1, 1 );	-- GM chØ lÖnh, khëi ®éng tèng kim s¬ cÊp
	
	Battle_StartNewRound( 1, 2 );	-- GM chØ lÖnh, khëi ®éng tèng kim trung cÊp
	
	Battle_StartNewRound( 1, 3 );	-- GM chØ lÖnh, khëi ®éng tèng kim cao cÊp
	
	OutputMsg( " =========================Chien truong Tong - Kim So Cap 20 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Trung Cap 20 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Cao Cap 20 : 50 khoi dong --->")
	
	zMsg2SubWorld  = "<color=yellow>ChiÕn tr­êng Tèng - Kim<color> <color=0xa9ffe0>S¬ cÊp, Trung cÊp, Cao cÊp ®· ®Õn giê b¸o danh, c¸c nh©n sÜ giang hå nhanh ch©n tham gia ®Çu qu©n, Thêi gian b¸o danh lµ 10 phót."
	zAddLocalCountNews = "ChiÕn tr­êng Tèng Kim ®· b¾t ®Çu b¸o danh, c¸c nh©n sÜ giang hå mau ®Õn khu vùc b¸o danh ®Ó tham gia chiÕn tr­êng."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])","<color=white>Tèng Kim 21 giê tÝch lòy kÕt thóc trËn sÏ ®­îc <color><color=yellow>x2<color><color=white> so víi b×nh th­êng, h·y mau n¾m b¾t thêi c¬!"))
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",zAddLocalCountNews))

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


