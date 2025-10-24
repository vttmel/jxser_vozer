	-- ------------------------------------------------------------------

	-- FileName  : battle_1_honour. lua

	-- Author   : panyuyang

	-- Version  :

	-- Date    : 2010-10-26 16:00:02

	-- Description: B¶ ID10251 ®æi thµnh 10086(tèng kim cao thñ)

	------------------------------------------------------------------

	LG_SONGJINHONOUR = 535;

	LG_TSK_HONOURPOINT = 1;

	LG_TSK_TOTALPOINT = 2;

	function TaskShedule()

	-- thiÕt trÝ ph­¬ng ¸n tªn gäi

	TaskName( "Tèng kim vinh dù gi¸ trÞ" );

	-- Chñ NhËt 23 th× b¾t ®Çu míi mét vßng

	-- mét vßng mét tuÇn hoµn

	TaskInterval(1440);

	TaskTime(23, 0);

	TaskCountLimit(0);

	end

	function TaskContent()

	local nweek = tonumber(date( "%w "));

	if (nweek ~= 0) then

	return 0;

	end;

	Ladder_ClearLadder(10251);

	OutputMsg( "****************Clear Battle Honour Ladder******** ");

	for i = 1, 10 do

	local szname, nrank, nsect, ngender = Ladder_GetLadderInfo(10250, i);

	if (szname ~= nil and szname ~= " ") then

	Ladder_NewLadder(10251, szname, nrank, 0, nsect, ngender);

	end;

	end;

	Ladder_ClearLadder(10250);

	local nlg_idx = LG_GetFirstLeague(LG_SONGJINHONOUR);

	while (nlg_idx ~= nil and nlg_idx ~= 0) do

	local nlg_remv = nlg_idx;

	nlg_idx = LG_GetNextLeague(LG_SONGJINHONOUR, nlg_idx);

	local szlg_name = LG_GetLeagueInfo(nlg_remv);

	LG_ApplyRemoveLeague(LG_SONGJINHONOUR, szlg_name);

	end;

	OutputMsg( "****************Clear Battle Honour Ladder******** ");

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


