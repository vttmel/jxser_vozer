	-- dïng cho gi¶i quyÕt 2005 niªn 11 th¸ng tèng kim cµ ph©n bug chuyÖn hËu xö lı, cè chÕ t¸c thanh trõ së h÷u tèng kim b¶ng xÕp h¹ng c«ng n¨ng

	TAB_SJ_LADDERID =

	{	10008	,

	10009	,

	10011	,

	10012	,

	10013	,

	10014	,

	10017	,

	10018	,

	10020	,

	10021	,

	10022	,

	10023	,

	10036	,

	10037	,

	10038	,

	10039	,

	10040	,

	10041	,

	10044	,

	10045	,

	10046	,

	10047	,

	10048	,

	10049	,

	10052	,

	10053	,

	10054	,

	10055	,

	10056	,

	10057	,

	10060	,

	10061	,

	10062	,

	10063	,

	10064	,

	10065	,

	10068	,

	10069	,

	10070	,

	10071	,

	10072	,

	10073	,

	10076	,

	10077	,

	10078	,

	10079	,

	10080	,

	10081	,

	10084	,

	10085	,

	10085	,

	10086	,

	10086	,

	10087	,

	10088	,

	10089	,

	10090	,

	10097	,

	10098	,

	10099	,

	10100	,

	10101	,

	10102	,

	10103	,

	10104	,

	10105	,

	10106	,

	10107	,

	10108	,

	10109	,

	10110	,

	10111	,

	10112	,

	10113	,

	10114	,

	10115	,

	10116	,

	10147	,

	10148	,

	10149	,

	10150	,

	10151	,

	10152	,

	10153	,

	10154	,

	10155	,


	10156	,

	10157	,

	10158	,

	10159	,

	10160	,

	10161	,

	10162	,

	};

	function sj_ClearAllLadder()

	for i = 1, getn(TAB_SJ_LADDERID) do

	Ladder_ClearLadder(TAB_SJ_LADDERID[i])

	end

	OutputMsg( "C¾t bá tèng kim t­¬ng quan bµi danh b¶ng t­ liÖu!")

	end

	function TaskShedule()

	-- thiÕt trİ ph­¬ng ¸n tªn gäi

	TaskName( "C¾t bá tèng kim t­¬ng quan bµi danh b¶ng t­ liÖu!" );

	-- chØ chÊp hµnh mét lÇn, dïng cho gi¶i quyÕt 2005 niªn 11 th¸ng tèng kim cµ ph©n bug chuyÖn hËu xö lı

	TaskInterval( 244000 );

	-- thiÕt trİ g©y ra sè lÇn, 0 biÓu thŞ v« h¹n sè lÇn

	TaskCountLimit(1);

	-- ph¸t ra khëi ®éng tin tøc

	end

	function TaskContent()

	if (tonumber(date( "%Y%m%d ")) > 20051116) then

	OutputMsg(" [ c¾t bá tèng kim t­¬ng quan bµi danh b¶ng t­ liÖu ] nhiÖm vô ®· qua kú, bÊt n¨ng chÊp hµnh.")

	return

	end

	sj_ClearAllLadder();

	OutputMsg( "§· c¾t bá hoµn së h÷u tèng kim ®øng hµng thø t­ liÖu! ");

	end


