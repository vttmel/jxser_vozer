-- ¶¨Ê±ÏòÒ»×é·þÎñÆ÷µÄËùÓÐGameserver·¢ÏµÍ³¹«¸æ
function TaskShedule()
	TaskName("THONG BAO TIN TUC TU DONG");
	
	-- 20·ÖÖÓÒ»´Î
	TaskInterval(20);
	
	-- ²»ÉèTaskTme, ÔòÊÇRelayÆô¶¯Ê±¾Í¿ªÊ¼
	-- 0µã00·Ö¿ªÊ¼
	-- TaskTime(0, 0);
	
	TaskCountLimit(0);
	
	OutputMsg("=====> THONG BAO TIN TUC TU DONG");
end

g_strTipMsg = 
	{
		--"Ã¿¸öÃÅÅÉÓÐ2-3ÌõÇåÎúµÄ¼¼ÄÜ·¢Õ¹¢·Ïß£¬¸÷Ìõ¢·ÏßµÄÌØµã¸üÎªÏÊÃ÷",
		--"ÔÚÓÎÏ·ÊÀ½çÖÐÓë¸÷´ó³ÇÊÐµÄ³ÇÃÅÎÀ±øºÍÐ¢ÊÖ´åµÄÃÅÅÉ½ÓÒýµÜ×Ó¶Ô»°£¬¿ÉÁË½â±¾ÃÅµÄ¼¼ÄÜ·¢Õ¹¢·ÏßºÍ×îÊÊºÏÁ·¼¶µÄ³¡Ëù",
		--"ÔÚÓÎÏ·ÊÀ½çÖÐÓë¸÷´ó³ÇÊÐµÄ³ÇÃÅÎÀ±øºÍÐ¢ÊÖ´åµÄÃÅÅÉ½ÓÒýµÜ×Ó¶Ô»°£¬¿ÉÁË½â±¾ÃÅµÄ¼¼ÄÜ·¢Õ¹¢·ÏßºÍ×îÊÊºÏÁ·¼¶µÄ³¡Ëù",
		--"ÔÚÓÎÏ·ÊÀ½çÖÐÓë¸÷´ó³ÇÊÐµÄ³ÇÃÅÎÀ±øºÍÐ¢ÊÖ´åµÄÃÅÅÉ½ÓÒýµÜ×Ó¶Ô»°£¬¿ÉÁË½â±¾ÃÅµÄ¼¼ÄÜ·¢Õ¹¢·ÏßºÍ×îÊÊºÏÁ·¼¶µÄ³¡Ëù",
		--"ÔÚÓÎÏ·ÊÀ½çÖÐÓë¸÷´ó³ÇÊÐµÄ³ÇÃÅÎÀ±øºÍÐ¢ÊÖ´åµÄÃÅÅÉ½ÓÒýµÜ×Ó¶Ô»°£¬¿ÉÁË½â±¾ÃÅµÄ¼¼ÄÜ·¢Õ¹¢·ÏßºÍ×îÊÊºÏÁ·¼¶µÄ³¡Ëù",
		"ë trß ch¬i trªn thÕ giíi cïng c¸c ®¹i thµnh thÞ ®Ých cöa thµnh vÖ binh cïng tay míi th«n ®Ých m«n ph¸i tiÕp dÉn ®Ö tö ®èi tho¹i , nh­ng hiÓu râ bæn m«n ®Ých kü n¨ng ph¸t triÓn lé tuyÕn cïng thÝch hîp nhÊt luyÖn cÊp ®Ých trµng së",
		--"ÒýÈë¡¼¼¼ÄÜ¼Ó³É¡½µÄ¸ÅÄî£¬µÈ¼¶¸ß¼¼ÄÜµã¶µµÄ½ÇÉ«µÄÓÅÊÆ½«¸ü¼ÓµÃµ½ÌåÏÖ",
		--"¡¼¼¼ÄÜ¼Ó³É¡½µÍ¼¶Õ½¶·¼¼ÄÜ¶Ô¸ß¼¶Õ½¶·¼¼ÄÜÊÇÖ¸¼Ó³É¸ß¼¶¼¼ÄÜµÄÉËº¦",
		--"È«Ð¢µÄ¡¼ÎåÐÐÏµ¿Ë¡½ÏµÍ³£¬ÈÎºÎÃÅÅÉÔÚºÍ±»×Ô¼º¿ËµÄÃÅÅÉPKÊ±½«»áÓµÓÐ¸ü¼ÓÃ÷ÏÔµÄÓÅÊÆ",
		--"7Ô¢16ÈÕÖ®ºóµÚÒ»´ÎµÇ¢½ÓÎÏ·ÊÀ½ç£¬ÏµÍ³»á¸ù¾Ý½ÇÉ«µÄ¾É¼¼ÄÜ×´¿ö×Ô¶¯ÐÞÕýÎªÐ¢µÄ¼¼ÄÜ£¬Ç±ÄÜµã»Ö¸´µ½Ô­Ê¼Î´·ÖÅä×´Ì¬",
		--"¡¼¼¼ÄÜÊìÁ·¶È¡½Í¨¹ý²»¶ÏÊ¹ÓÃ´Ë¼¼ÄÜ¹¥»÷µÐÈË»ñµÃÌáÉý£¬ÓëµÐÈËµÈ¼¶ºÍÍæ¼Ò»ñµÃµÄÁ·¼¶¾­ÑéÎÞ¹Ø",
		--"Êó±êÒÆµ½NPCÉíÉÏ£¬¿ÉÏÔÊ¾¡¼ÎåÐÐÊôÐÔÍ¼±ê¡½",
		--"NPCÖ»µô¢äÏµÓ¦ÎåÐÐÊôÐÔµÄ±¦Îï£¬ÈçÏëÒªµÃµ½±ùÇ¹£¬¿ÉÒÔÈ¥´òË®ÏµµÄNPC",
		--"NPCÖ»µô¢äÏµÓ¦ÎåÐÐÊôÐÔµÄ±¦Îï£¬ÈçÏëÒªµÃµ½ÐÒÔË×°±¸£¬¿ÉÒÔÈ¥´òÄ¾ÏµµÄNPC",
		--"NPCÎåÐÐÊôÐÔÍ¼±ê£º½ðÉ«-½ðÏµ£»À¶É«-Ë®Ïµ£»¢ÌÉ«-Ä¾Ïµ£»ºìÉ«-»ðÏµ£»ºÖÉ«-ÍÁÏµ",
		--"¡¼NPCµ÷Õû¡½É³Ä®ÃÔ¹¬NPC²»½öµÈ¼¶¸ß¡¢¾­Ñé¶µ¡¢Ë¢Ð¢¿ì£¬¶øÇÒµô±¦¢ÊÊÇÆÕÍ¨NPCµÄ¶þµ½Èý±¶",
		-- "¡¼×é¶Ó¡½×îºóÒ»»÷µÄÍæ¼ÒµÃµ½µÄ¾­Ñé½«ÊÇµ¥ÈË¾­ÑéµÄ1.3±¶",		
		--"¡¼×é¶Ó¡½¶ÓÎé³ÉÔ±µÄÐÒÔËÖµ½«¸ù¾Ý¶ÓÎéÖÐÈËÊýµÃµ½ÏµÓ¦ÌáÉý",
		--"¡¼×é¶Ó¡½¶ÓÎé³ÉÔ±µÄÐÒÔËÖµ½«¸ù¾Ý¶ÓÎéÖÐÈËÊýµÃµ½ÏµÓ¦ÌáÉý£»µô¢ä×°±¸µÄÊôÐÔ½«¸ù¾Ý×îºóÒ»»÷Íæ¼Ò½ÇÉ«ÐÒÔËÖµÀ´¾ö¶¨",
		--"¡¼×é¶Ó½¨Òé¡½¸ßµÈ¼¶Íæ¼Ò´øµÍµÈ¼¶Íæ¼Ò£¬µÈ¼¶Ïµ²î70¼¶ÒÔÉÏÊ±£¬¸÷×ÔµÄÉý¼¶ËÙ¶È½«Ìá¸ß20£¥ÒÔÉÏ",
		--"¡¼×é¶ÓËÀÍö³Í·£¡½×é¶ÓÈËÊýÔ½¶µ£¬ËÀÍöºóµôµÄ¾­ÑéÔ½ÉÙ£»Èô¶ÓÎéÖÐÈËÊý´ïµ½°ËÈË£¬ËÀÍöºó½«²»µô¾­Ñé",
		--"¡¼ÌÒ»¨µº¡½ÏòÌÒ»¨ÒþÊ¿¹º¢òÀ°°ËÖµ£¬¼®×ÅµºÉÏµÄÁéÆø£¬À°°ËÖµµÄÉñÆæ¹¦Ð§½«ÖúÄãÇáËÉÐÞÁ·¡£",
		"nÕu nh­ ph¸t triÓn m×nh ®· häc ®­îc kü n¨ng bÝ mËt , xin/mêi trë vÒ s­ , ®em häc ®­îc c¸c lo¹i kü n¨ng , nh­ , huyÕt chiÕn b¸t ph­¬ng , kh«ng lßng d¹ nµo chÐm , Thiªn v­¬ng chiÕn y ( Thiªn v­¬ng gióp ), lßng d¹ , cïng víi la ®Þa mÊt ( §­êng m«n ).",
		--"¡¼Ï´Ëèµº¡½ÕýÊ½¿ª·Å£¬50¼¶»òÒÔÉÏµÄ·Ç°×ÃûÍæ¼ÒÓÐ¡¼Ò»´ÎÃâ·Ñ¡½½øÈë»ú»á¡£½øµººó¿ÉËæÒâÏ´¡¼Ç±ÄÜµã¡½Óë¡¼¼¼ÄÜµã¡½£¬²¢¿ÉÔÚµºÉÏ»ò×é¶ÓÈë¶´ÌåÑé¼ÓµãÐ§¹û",
		--"Ãâ·Ñ½øÈë¡¼Ï´Ëèµº¡½µÄ»ú»áÖ»ÓÐÒ»´Î¡£Àë¿ªÏ´Ëèµº£¬ÄãµÄ¡¼Ç±ÄÜ/¼¼ÄÜ¡½·ÖÅä½«¾Í´ËÈ·¶¨£¬Àë¿ªÊ±ÇëÈýË¼ÔÙÈýË¼£¡£¡",	
		"mét phÇn nhµ ch¬i hoµn thµnh 90 cÊp nhiÖm vô sau , vÉn kh«ng thÓ ®¹t ®­îc kü n¨ng , trë vÒ s­ sau , trë vÒ tr­íc khi an chØnh c¶i [183,182])",
		" mét phÇn §­êng m«n nhµ ch¬i ë häc [ tô tµi b¾n cung . m­a sa lª hoa ] gÆp ph¶i kh«ng thÓ sö dông m­a sa lª hoa ®Ých t×nh huèng , trë vÒ s­ sau , ®Õn tr­íc khi an ®iÒu chØnh [183,182]) ",
		"mét phÇn Vâ §­¬ng nhµ ch¬i gÆp ph¶i mÊt ®i kü n¨ng ®iÓm ®Ých t×nh huèng , trë vÒ s­ sau , ®Õn tr­íc khi an ®iÒu chØnh [183,182])",
		--"¡¼ÉùÍû²éÑ¯¡½Çëµ½¸÷´ó³ÇÊÐµÄËãÃüÏÈÉú¡¼ÕÅÌú×ì¡½´¦£¬ÏåÑô[192,193]",
		--"¡¼Ë®¾§·ç±©¡½2004Äê7Ô¢22ÈÕÔç11£º00ÒÔºó£¬³äÖµ35ÔªÐé¿¨»òÕßÊµ¿¨¶¼¿ÉÒÔÔÚÐ¢ÊÖ´åÒ°ÛÅÄÇÀïËæ»úÁìÈ¡Ò»¿ÅË®¾§£¬»î¶¯ÑÓ³Ùµ½2004Äê8Ô¢8ÈÕ½áÊø",
		--"¡¼ÎäÆ÷Í¼Æ×¡½ÓÃÖÐÔ­ÎäÁÖµÄÉñÆæ¡¼Ë®¾§¡½£¬ÓëÒìÓòÉñÃØÉÌÈË»»È¡¡¼ÎäÆ÷Í¼Æ×¡½¡£ÔÙÈÃ¡¼Ìú½³¡½²ÎÕÕÍ¼Æ×£¬°Ù·Ö°ÙµØ°ïÄã°ÑÎäÆ÷ÌáÉýÒ»¸öµÈ¼¶",
		--"¡¼ÎäÆ÷Í¼Æ×¡½ÒìÓòÉñÃØÉÌÈË³öÏÖÔÚÑïÖÝ[207,193]ÓëÁÙ°²[164,177]Á½µØ£¬Òª»»Í¼Æ×Éý¼¶ÎäÆ÷µÄÍæ¼ÒÇëËÙËÙÐÐ¶¯",
		--"¡¼À¶Ãû¹ÖÎï¡½¾ªÏÖ½­ºþ(Ãû×ÖÏÔÊ¾ÎªÀ¶É«)£¬Ð¯´ø²»ÉÙ½ðÇ®ºÍ×°±¸£¬»¹¿ÉÄÜ´øÓÐ¡¼Ë®¾§¡½¡¢¡¼ÐÉºì±¦Ê¯¡½¡¢¡¼»Æ½ð×°±¸¡½¡¢¡¼¼¼ÄÜÊé¡½",
		--"¡¼»Æ½ð×°±¸¡½¡¼¶¨¹ú¡½¡¼°²°î¡½»Æ½ð×°±¸Ì××°ÏÖÉí½­ºþ£¬´ò¡¼À¶Ãû¹ÖÎï¡½¼´ÓÐ»ú»á»ñµÃ¡£²Î¼Ó°¢ÔË¾¹²¢»î¶¯£¬Ã¿ÌìÒ²½«Ëæ»úÒ»¼þ",
		" [ ¸o vËn t­ëng bµi ®­a ®¹i lÔ ] mçi lÇn Trung quèc ®éi ®¹t ®­îc t­ëng th­ëng , nhµ ch¬i cã thÓ ®Õn [ lÔ quan ] chç dÉn t­ëng : kim bµi - kim cá lé , ng©n bµi - b¹ch c©u hoµn , ®ång bµi - lÔ hoa ", 
		"[¸o vËn t­ëng bµi ®­a ®¹i lÔ] nhËn lÊy lÔ phÈm tr­íc tiªn ®o¹n : B¾c Kinh thêi gian 10:00~14:00 nhËn lÊy tr­íc mét ngµy 22:00~ ngµy ®ã 4:00 ®Ých phÇn th­ëng ", 
		"[ ¸o vËn t­ëng bµi ®­a ®¹i lÔ ] nhËn lÊy lÔ phÈm thø hai thêi gian ®o¹n :19:00~20:00 nhËn lÊy ngµy ®ã 14:00~18:00 ®Ých phÇn th­ëng ", 
		"[ ¸o vËn t­ëng bµi ®­a ®¹i lÔ ] nhËn lÊy lÔ phÈm thø ba thêi gian ®o¹n :23:00~ ngµy kÕ 0:00 nhËn lÊy ngµy ®ã 18:00~22:00 ®Ých phÇn th­ëng ", 
		" [ ¸o vËn t­ëng bµi ®­a ®¹i lÔ ] dÉn t­ëng cã lóc h¹n , nhµ ch¬i h¼n chó ý vèn ®éi ®Ých tranh tµi , ®Õn [ lÔ quan ] chç kÞp thêi dÉn t­ëng .", 
		" sö dông [ kim cá lé ] ë mét giê néi luyÖn cÊp , ®em ®¹t ®­îc gÊp ®«i kinh nghiÖm trÞ gi¸ : ë trong vßng mét canh giê sö dông [ b¹ch c©u hoµn ] ®em ®¹t ®­îc [ tù ®éng ®¸nh tr¸ch ].2 lo¹i thuèc men chøc n¨ng ®em ë ngµy ®ã më ra ", 
		" [ dù ®o¸n ¸o vËn cuéc so tµi chuyÖn ] ë thµnh phè ®Ých [ lÔ quan ] chç tham gia ¸o vËn cuéc so tµi chuyÖn dù ®o¸n ", 
		"[ ¸o vËn cuéc so tµi chuyÖn c¸nh ®o¸n ] c¸nh ®o¸n tróng t­ëng ®Ých nhµ ch¬i ë ®¹t ®­îc tiÒn th­ëng håi b¸o ®Ých ®ång thêi , cßn cã cã thÓ ®¹t ®­îc ? ®Þnh n­íc ?? an bang ? hÖ liÖt hoµng kim trang bÞ trung ®Ých mét mãn ", 
		" tÊt c¶ cuéc so tµi chuyÖn sau khi kÕt thóc , hÖ thèng ®em ë ®o¸n tróng Trung quèc ®éi ®¹t ®­îc ®Ých kim ? ng©n ? ®ång bµi sè l­îng ®Ých nhµ ch¬i trung sinh ra mét vÞ siªu cÊp may m¾n nhµ ch¬i , t­ëng th­ëng ¸o vËn hÖ liÖt hoµng kim trang bÞ s¸o trang ", 
		"[¸o vËn t­ëng bµi c¸nh ®o¸n ] Trung quèc t­ëng bµi sè l­îng c¸nh ®o¸n , ®em ë 2004.8.17 ngµy buæi s¸ng duy tr× tr­íc chÆn chØ . muèn tham gia nhµ ch¬i xin/mêi n¾m chÆc thêi gian mua lo¹i nµy vÐ sè ", 
		" [ ¸o vËn hoµng kim trang bÞ ] bao gåm 2 bé/vá [ nh· ®iÓn chi hån ], [ B¾c Kinh chi méng ]", 
		"[ ¸o vËn chi hån ] ¸o vËn lßng  thuéc tÝnh ®Òu v× ? tÊt c¶ vâ c«ng cÊp bËc thªm 1? , ®¸i ®ñ sau tù ®éng kÝch ho¹t toµn th©n trang bÞ ®Ých tÊt c¶ thÇm thuéc tÝnh ", 
		" [ phóc duyªn hÖ thèng ] th«ng qua ch¬i thêi gian gia t¨ng ®Ó ®æi lÊy phóc duyªn trÞ gi¸ , dïng phóc duyªn trÞ gi¸ ®Õn [ thÇn bÝ th­¬ng nh©n liÔu Êt ] chç ®æi lÊy c¸c lo¹i ®Æc biÖt vËt phÈm ", 
		" [ phóc duyªn hÖ thèng ] cïng thµnh phè ®Ých [ vâ l©m truyÒn nh©n ] ®èi tho¹i , hiÓu râ cÆn kÏ tin tøc .", 
		" [ trung thu ho¹t ®éng ] ¨n trung thu b¸nh Trung thu , ng¾m tr¨ng , mæ mª ng÷ ---- ho¹t ®éng ®ang toµn diÖn tiÕn hµnh , phÇn th­ëng chê ng­¬i . mêi ®­îc lÔ quan chç hái cÆn kÏ tin tøc .", 
		" [ hoa ®µo ®¶o ] ¸o vËn v¹n ng­êi cïng nh¹c , ë hÖ thèng dõng ky b¶o tu , tõ 14/8/2004 ®Õn 30/8/2004, miÔn phÝ ë hoa ®µo ®¶o tu luyÖn ."
	};
	
-- ÐÂ¹¦ÄÜÔ¤¸æÐÅÏ¢
g_nFutureDate = 20240723;
STR_HEAD_FUTURE = " [Giang Hå truyÒn r»ng]";
g_strFutureMsg = 
	{
		"chuc ¼´½«¿ª·Å¡¼µ¥Á·µØÍ¼¡½¡¢¡¼´ò±¦µØÍ¼¡½",
		"mung ¡¼Ï´Ëèµº¡½Ï´¼¼ÄÜµã¹¦ÄÜ½«ÔÚ2004Äê7ÔÂ24ÈÕ¿ª·Å£¬50¼¶»òÒÔÉÏµÄ·Ç°×ÃûÍæ¼ÒÓÐÒ»´ÎÃâ·Ñ½øÈë»ú»á",
		"nam ½èÖú¡¼×ÏË®¾§¡½»òÉñÃØ¡¼ÎäÆ÷Í¼Æ×¡½¿ÉÒÔÌáÉýÎäÆ÷µÈ¼¶",
		"moi ¡¼À¶Ãû¹ÖÎï¡½(Ãû×ÖÏÔÊ¾ÎªÀ¶É«)´À´ÀÓû¶¯£¬¾ÝËµ½«Ð¯´ø²»ÉÙ½ðÇ®ºÍ×°±¸ÏÂÉ½£¬»¹¿ÉÄÜ´øÓÐ¡¼Ë®¾§¡½¡¢¡¼ÐÉºì±¦Ê¯¡½¡¢¡¼»Æ½ð×°±¸¡½¡¢¡¼¼¼ÄÜÊé¡½",
		"2013¡¼»Æ½ð×°±¸¡½¡¼¶¨¹ú¡½¡¼°²°î¡½»Æ½ð×°±¸Ì××°ÏÖÉí½­ºþ£¬´ò¡¼À¶Ãû¹ÖÎï¡½¼´ÓÐ»ú»á»ñµÃ",
		"2014¡¼Ë«±¶½ðÇ®Ë«±¶¾­Ñé¡½90¼¶¼¼ÄÜ¾«²ÊÎ¨ÃÀ£»½£Íø×é¶Ó³É·ç£¬´ò¹ÖÁ·¼¶»ð±¬¡£´ðÐ»ÐÂÀÏÍæ¼Ò£¬½üÆÚ½«»áÓÐË«±¶½ðÇ®Ë«±¶¾­Ñé»î¶¯",
		
	};
function TaskContent()
	str = "";
	nFutureCount = getn(g_strFutureMsg);
	nCount = getn(g_strTipMsg) + nFutureCount;
	nIndex = random(1, nCount);
	if (nIndex <= nFutureCount) then -- 1-È¡Ô¤¸æÐÅÏ¢£¬2-È¡ÌáÊ¾ÐÅÏ¢
		str = getFutureMsg();
		if (strlen(str) <= 0) then -- Ã»ÓÐÔ¤¸æÐÅÏ¢£¬¾ÍÈ¡ÌáÊ¾ÐÅÏ¢
			str = getTipMsg();
		end
	else
		str = getTipMsg();
	end
	
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", str));
end

-- È¡ÌáÊ¾ÐÅÏ¢
function getTipMsg()

	nCount = getn(g_strTipMsg);
	nIndex = random(1, nCount);

	return g_strTipMsg[nIndex];
end

-- È¡Ô¤¸æÐÅÏ¢
function getFutureMsg()
	nCurDate = tonumber(date("%Y%m%d"));
	str = "";
	if (g_nFutureDate > nCurDate) then -- ÊÇ·ñÔÚÖ¸¶¨ÈÕÆÚÖ®Ç°£¬·ñÔò²»·¢
		nCount = getn(g_strFutureMsg);
		nIndex = random(1, nCount);
		str = STR_HEAD_FUTURE..(g_strFutureMsg[nIndex]);
	end
	
	return str;
end
