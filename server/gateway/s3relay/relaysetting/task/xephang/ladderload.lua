	-- chiÕn dÞch hÖ thèng

	-- Fanghao_Wu 2004-12-6

	function GameSvrConnected(dwGameSvrIP)

	SyncAllLadder(dwGameSvrIP)

	end;

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thiÕt trÝ ph­¬ng ¸n tªn gäi

	TaskName( "Relay b¶ng xÕp h¹ng" );

	-- 10 phót mét lÇn

	-- TaskInterval( 2440 );
	TaskInterval( 1440 ); -- cËp nhËt l¹i c¸c id b¶ng x?p h¹ng trong 1 ngµy

	-- thiÕt trÝ g©y ra sè lÇn, 0 biÓu thÞ v« h¹n sè lÇn

	TaskCountLimit( 0 );

	-- ph¸t ra khëi ®éng tin tøc

	OutputMsg( " ========================================================================================" );
	OutputMsg( "                            Ladder startup. . . 10.001 -> 10500" );

	-- for i=10001, 10300 do
	for i=10001, 10500 do

	LoadLadder(i)

	end

	end

	function TaskContent()

	-- OutputMsg( "SDBLadder Loaded" );
	OutputMsg( "KHOI DONG LAI BANG XEP HANG" );
	OutputMsg( " ========================================================================================");	OutputMsg( " ");
	OutputMsg( "                               Vo Lam Voz Offline by Mel  ");
	OutputMsg( " ");
	OutputMsg( " ========================================================================================");
	
	end


