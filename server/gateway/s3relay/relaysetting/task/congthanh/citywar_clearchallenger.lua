	Include("\\relaySetting\\task\\congthanh\\citywar_head.lua")

	LEAGUETYPE_CITYWAR_SIGN = 508;

	LEAGUETYPE_CITYWAR_FIRST = 509;

	function TaskShedule()

	TaskName( "Bang sÏ hñy bá b¸o danh c«ng thµnh chiÕn ");

	TaskInterval(1440);	-- mçi ngµy

	-- TaskTime(0, 0);			--0 ®iÓm g©y ra
	TaskTime(17, 59);			--0 ®iÓm g©y ra

	TaskCountLimit(0);	-- v« h¹n thø

	clearCityWarLeague();

	checkCityWarLeague();
	
	OutputMsg( "  ");
	OutputMsg( " ========================================================================================");
	OutputMsg( "                           Cong Thanh Chien - Clear Challenger - OK");

	end

function TaskContent()
	if Ctc3truCheckIsLimitOpenCityWar(1) == 0 then return end
	clearCityWarLeague();
	checkCityWarLeague();
	OutputMsg( " ========================= Cong Thanh Chien - Clear Challenger ---> ")
end;

	function checkCityWarLeague()

	-- khëi ®éng th× kiÓm tra cã hay kh«ng tån t¹i chiÕn ®éi

	for i = 1, 7 do

	local szLg = cityid_to_lgname(i);

	local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szLg);

	if (FALSE(nlid)) then

	local nNewLeagueID = LG_CreateLeagueObj()	-- sanh thµnh x· ®oµn sè liÖu ®èi t­îng (ph¶n håi ®èi t­îng ID)

	LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_SIGN, szLg)	-- thiÕt trÝ x· ®oµn tin tøc (lo¹i h×nh, tªn gäi)

	local ret = LG_ApplyAddLeague(nNewLeagueID, "", "");

	LG_FreeLeagueObj(nNewLeagueID);

	end;

	nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLg);

	if (FALSE(nlid)) then

	local nNewLeagueID = LG_CreateLeagueObj()	-- sanh thµnh x· ®oµn sè liÖu ®èi t­îng (ph¶n håi ®èi t­îng ID)

	LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_FIRST, szLg)	-- thiÕt trÝ x· ®oµn tin tøc (lo¹i h×nh, tªn gäi)

	local ret = LG_ApplyAddLeague(nNewLeagueID, "", "");

	LG_FreeLeagueObj(nNewLeagueID);

	end;

	end;

	end;

	function clearCityWarLeague()

	--	 ë 24 th× chÊp hµnh phÝa d­íi thao t¸c

	for i = 1, 7 do

	local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[i][3]);

	if (not FALSE(nlid)) then

	local nCount = LG_GetMemberCount(nlid);

	for k= 0, nCount -1 do

	local szMemberName = LG_GetMemberInfo(nlid, k);

	LGM_ApplyRemoveMember(LEAGUETYPE_CITYWAR_FIRST, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[i][3], szMemberName, "", "", 0);

	end;

	end;

	nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[i][3]);

	if (not FALSE(nlid)) then

	nCount = LG_GetMemberCount(nlid);

	local tbTemMem = {};

	for k = 0, nCount -1 do

	local szMemberName = LG_GetMemberInfo(nlid, k);

	tbTemMem[getn(tbTemMem)+1] = szMemberName;

	end;

	for k = 1, getn(tbTemMem) do

	LGM_ApplyRemoveMember(LEAGUETYPE_CITYWAR_SIGN, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[i][3], tbTemMem[k], "", "", 0);

	end;

	end;

	end;

	end;

	function cityid_to_lgname(nCityID)

	return Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[nCityID][3];

	end;

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


