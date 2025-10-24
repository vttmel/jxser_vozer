	-- chi’n dﬁch h÷ thËng

	-- Fanghao_Wu 2004-12-6

	Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )

	function TaskShedule()

	-- thi’t tr› ph≠¨ng ∏n t™n g‰i

	TaskName( "TËng kim chi’n dﬁch tÊng chÿ huy" );

	TaskSetMode(1);

	-- mÁi tu«n (ngµy th¯ Hai) bæt Æ«u mÌi mÈt vﬂng

	TaskSetStartDay(1, 3);

	-- mÈt vﬂng mÈt tu«n hoµn

	TaskInterval(7);

	TaskTime(2, 0);

	TaskCountLimit(0);

	end

	function TaskContent()

	OutputMsg( "****************Create XIANGYANG New Battle******** ")

	battle_StartNewIssue(1, 1 );

	battle_StartNewIssue(1, 2 );

	battle_StartNewIssue(1, 3 );

	OutputMsg( "*************************************************** ")

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


