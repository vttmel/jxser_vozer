	-- ®óng giê sè liÖu thèng kª

	--------------------------------------------------------------------------

	-- c«ng t¸c thèng kª chiÕn ®éi tin tøc

	LGTYPE_STATINFO 			= 10000 -- chiÕn ®éi lo¹i h×nh

	LGNAME_STAT_GOODS_SALE 		= "stat_goodssale" -- chiÕn ®éi tªn gäi

	LOGNAME_GOODS_SALE			= "Logs/stat_goodssale_"

	---------------------------------------------------------

	-- c«ng t¸c thèng kª h¹ng môc nhiÖm vô l­îng biÕn ®æi ID ®Þnh nghÜa

	LG_STATITEM_TASKID_TOTAL	= 0; -- tæng thèng kÕ nhí sæ (LeagueMember TaskID)

	LG_STATITEM_TASKID_TODAY	= 1; -- cïng ngµy c«ng t¸c thèng kª nhí sæ (LeagueMember TaskID)

	-- 1 ~ 12 12 th¸ng ph©n c«ng t¸c thèng kª nhí sæ

	-- 2005 niªn: 501~512

	-- 2006 niªn: 601~612

	--LG_STAT_TASKID_CURDATE		= 0; -- tr­íc mÆt c«ng t¸c thèng kª ngµy (League TaskID)

	--------------------------------------------------------------------------

	function TaskShedule()

	TaskName( "Tiªu thô vËt phÈm c«ng t¸c thèng kª ");

	-- 8*60 phót mét lÇn

	TaskInterval(8*60);

	-- kh«ng thiÕt TaskTme, cßn l¹i lµ Relay khëi ®éng th× mµ b¾t ®Çu

	-- 0 ®iÓm 00 xa nhau thñy

	TaskTime(0, 0);

	TaskCountLimit(0);

	--OutputMsg( "Khëi ®éng vËt phÈm tiªu thô c«ng t¸c thèng kª. . .");

	end

	function TaskContent()

	local logName = LOGNAME_GOODS_SALE..(date("%Y%m%d%H%M%s"))..".log";

	local szMsg = "";

	local nLeagueID = LG_GetLeagueObj(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE)

	if (nLeagueID == 0) then

	--szMsg = "[Error]NotFound StatInfo: ".. LGNAME_STAT_GOODS_SALE;

	--WriteStringToFile(logName, szMsg);

	return 0;

	end

	-- tab head

	szMsg = "ItemName\tTotal\tToDay\r\n" -- vËt phÈm danh 	Tæng thèng kÕ 	Cïng ngµy c«ng t¸c thèng kª

	WriteStringToFile(logName, szMsg);

	local nMemberCount = LG_GetMemberCount(nLeagueID);

	if (nMemberCount <= 0) then

	return 0;

	end

	OutputMsg( "C«ng t¸c thèng kª vËt phÈm sè l­îng: ".. nMemberCount);

	local i = 0;

	for i = 0, nMemberCount-1 do

	local szMemberName, nJob = LG_GetMemberInfo(nLeagueID, i);

	local nTotal = LG_GetMemberTask(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE, szMemberName, LG_STATITEM_TASKID_TOTAL);

	local nToDay = LG_GetMemberTask(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE, szMemberName, LG_STATITEM_TASKID_TODAY);

	szMsg = szMemberName.."\t "..nTotal.."\t "..nToDay.."\r\n "; -- vËt phÈm danh 	Tæng thèng kÕ 	Cïng ngµy c«ng t¸c thèng kª

	OutputMsg( "C«ng t¸c thèng kª vËt phÈm sè l­îng: ".. szMsg);

	WriteStringToFile(logName, szMsg);

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


