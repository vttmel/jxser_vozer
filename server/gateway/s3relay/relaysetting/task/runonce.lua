	-- ®Ö tr×nh thö v¨n kiÖn ghi nhí kü ®ång thêi ®Ö tr×nh TaskLit. ini! ! !

	RUNONCE_NAME	= "C¾t bá v« dông chiÕn ®éi "

	function TaskShedule()

	-- thiÕt trÝ ph­¬ng ¸n tªn gäi

	TaskName(RUNONCE_NAME)

	-- chØ chÊp hµnh mét lÇn

	TaskInterval( 244000 )

	-- thiÕt trÝ g©y ra sè lÇn, 0 biÓu thÞ v« h¹n sè lÇn

	TaskCountLimit(1)

	-- ph¸t ra khëi ®éng tin tøc

	end

	function TaskContent()

	if (tonumber(date( "%Y%m%d ")) > 20060228) then

	OutputMsg( "[ ".. RUNONCE_NAME.."] nhiÖm vô ®· qua kú, së dÜ bÊt n¨ng chÊp hµnh.")

	return

	end

	for n_lgtype = 2, 4 do

	local n_count	= 0

	local n_lid		= LG_GetFirstLeague(n_lgtype)

	while (n_lid ~= 0) do

	local str_lgname = LG_GetLeagueInfo(n_lid)

	n_lid = LG_GetNextLeague(n_lgtype, n_lid)

	LG_ApplyRemoveLeague(n_lgtype, str_lgname)

	n_count	= n_count + 1

	end

	OutputMsg( "C¾t bá chiÕn ®éi, lo¹i h×nh: ".. n_lgtype..". Sè l­îng: ".. n_count)

	end

	OutputMsg( "Da hoan thanh nhiem vu [ ".. RUNONCE_NAME.."]!")

	end

	function GameSvrConnected(dwGameSvrIP)


	end

	function GameSvrReady(dwGameSvrIP)

	end


