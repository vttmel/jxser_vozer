	-- chiÕn dŞch hÖ thèng

	-- Fanghao_Wu 2004-12-6

	function TaskShedule()

	-- thiÕt trİ ph­¬ng ¸n tªn gäi

	TaskName( "Tù ®éng tin tøc - th«ng c¸o" );

	-- 10 phót mét lÇn

	TaskInterval( 1 );

	-- 0 th× 0 xa nhau thñy (kh«ng thiÕt TaskTme, cßn l¹i lµ Relay khëi ®éng th× mµ b¾t ®Çu)

	--	TaskTime( 18, 32 );

	-- thiÕt trİ g©y ra sè lÇn, 0 biÓu thŞ v« h¹n sè lÇn

	TaskCountLimit( 0 );

	-- ph¸t ra khëi ®éng tin tøc

	OutputMsg( "BATTLE 1 startup. . ." );

	end

	function TaskContent()

	Battle_StartNewRound( 1, 1 );	-- GM chØ lÖnh, khëi ®éng t©n chiÕn cuéc

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


