----------------------------------------------------------------
--FileName:	headinfo.lua
--Creater:	firefox
--Date:		2005-08-28
--Comment:	ÖÜÄ©»î¶¯£ºÎÀ¹úÕ½ÕùÖ®·é»ðÁ¬³Ç
--			¹¦ÄÜ1£º»î¶¯Í·ÎÄ¼þ×Ô¶¨Òå³£Á¿
-----------------------------------------------------------------
IncludeLib("FILESYS");
--IncludeLib("BATTLE");
IncludeLib("TITLE");
IncludeLib("RELAYLADDER")
Include( "\\script\\task\\system\\task_string.lua" );

--print(date("%w"))				--»ñµÃµ±Ç°·þÎñÆ÷ÐÇÆÚ 1--Monday£»2--Tuesday£»3--Wednesday£»4--Thursday£»5--Frieday£»6--Saturday£»0--Sunday
GV_TSK_CD_OPEN = 35
FIRE_OPENDAY_SATURDAY = 6;		--
FIRE_OPENDAY_SUNDAY = 0;		--
CD_LEVEL_LIMIT = 80		--×îµÍ²Î¼ÓÊØ³ÇµÈ¼¶
TASKID_FIRE_KEY = 1185;--random(1000000);					--Ã¿³¡´ÎµÄ¹Ø¼ü×Ö£¬ÓÉ´ËÅÐ¶ÏÊÇ·ñÎª±¾ÂÖ´Î²Î¼ÓµÄÍæ¼Ò
TASKID_FIRE_DAY = 1186;--tonumber(date("%m%d"));			--Íæ¼ÒÒ»ÌìÖ»ÄÜ²Î¼ÓÒ»³¡ÎÀ¹úÕ½Õù£¬¼ÇÂ¼ÈÕÆÚ
TASKID_FIRE_ADDR = 1187;--´«ÈëµÄµÄ³ÇÊÐID
--1189
TSKID_FIRE_SIGNLVL = 1867	--±¨ÃûÊ±µÈ¼¶
TSKID_FIRE_SIGNEXP = 1868	--±¨ÃûÊ±¾­ÑéÖµ
TSKID_FIRE_SUMEXP = 1869	--»ñµÃµÄ¾­ÑéÖµ
TSKID_PLAYER_ZHANGONG = 1879 --»ñµÃµÄÕ½¹¦Öµ
FIRE_JOINUP_FEE = 100000;			--±¨Ãû·ÑÓÃ10wÁ½
PL_TOTALPOINT = 1
--LADDER_ID_TEMP = 10255	--ÔÝ´æÅÅÐÐ°ñ
--LADDER_ID_FANIEL = 10256--×îÖÕÅÅÐÐ

MAX_NPC_COUNT = 500--1000--5000;	--ÏÞÖÆµØÍ¼ÖÐ×î¶àÓÐ5000¸önpc

FIRE_1RSTNPC_COUNT = 13500--15000;
FIRE_2CNDNPC_COUNT = 3000--2000;
FIRE_3RDNPC_COUNT = 1500--1000;
FIRE_4THNPC_COUNT = 120;
FIRE_5THNPC_COUNT = 10;

TNPC_DOCTOR1 = 55;			--ËÎ¾üÒ½µÄNpcÄ£°åIDºÅ
TNPC_DOCTOR2 = 49;			--½ð¾üÒ½µÄNpcÄ£°åIDºÅ
TNPC_DEPOSIT = 625;			--´¢ÎïÏäNPCÄ£°åID
TNPC_CHEFU = 393;
TNPC_SYMBOL1 = 629;
TNPC_SYMBOL2 = 630;
RANK_SKILL = 661;		--³ÆºÅ¹â»·
					--ÁÐ±ø	Ð¡¶Ó³¤	¸±½«	´ó½«	ÔªË§ Õ¨µ¯³µ
tbTNPC_SOLDIER = {	{1067,	1068,	1069,	1070,	1080, 1337},	--ËÎ
										{1072,	1073,	1074,	1075,	1090, 1337}}	--½ð
tbSOLDIER_NAME = {	"TiÓu hiÖu", "§éi tr­ëng", "Tiªn phong", "Chñ t­íng", "Chñ so¸i", "C«ng Thµnh ChiÕn Xa"	}
tbPlAYERER_NAME 		= {"Binh sÜ ","HiÖu óy ","Thèng LÜnh ","Phã t­íng ","§¹i t­íng "} --Õ½¹¦´ïµ½³ÆÎ½¹â»·
tbPlAYERER_ZHANGONG = {     0,   300,   500,  1000,  2000} --´óÓÚ0ÎªÊ¿±ø£¬´óÓÚ300ÎªÐ£Î¾....
tbPlAYERER_GUANGHUAN= { {89,   90,   91,   92,   93}, --ËÎ³ÆºÅID
												{94,   95,   96,   97,   98}} --½ð
					--ÎÀ±ø	½«¾ü ÊØ³Ç²¿·ÖµÄ¹Ì¶¨npc
tbTNPC_SOLDIER1 = {	{1067,	1068},	--ËÎ
					{1072,	1073}}	--½ð
tbSOLDIER_NAME1 = {	"VÖ binh", "T­íng qu©n"}

tbSOLDIER_LEVEL = {	95, 95, 95, 100, 100 ,95}
tbSOLDIER_LEVEL1 = {	95, 95}--ÊØ³Ç¹Ù±øµÄ¼¶±ð
                  --Ð¡Ð£	¶Ó³¤	ÏÈ·æ	Ö÷½«	Ö÷Ë§ Õ¨µ¯³µ È¡±¦
tbKILLNPC_AWARD = {2,8,10,40,60,30,10}	--É±ËÀnpc»ñµÃÕ½¹¦
tbKILLNPC_SHAREAWARD = {1,5,5,20,30,15,0}--¶ÓÓÑ»ñµÃÕ½¹¦
tbFILE_NPCDEATH = 
	{
	"\\script\\missions\\newcitydefence\\npcdeath_1.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_2.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_3.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_4.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_5.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_6.lua",	
	};
FILE_SHOUCHENG_DEATH = {
		"\\script\\missions\\newcitydefence\\shouchengnpcdeath1.lua",
		"\\script\\missions\\newcitydefence\\shouchengnpcdeath2.lua",
	}

tbDEFENCE_MAPID = { 580, 581 }	--ÐÂËÎ½ðµØÍ¼£¬byÁÎÖ¾É½
tbDEFENCE_SIGNMAP = { 518, 519 }
tbREVIVAL_POS = {
					{1528,3321},
					{1557,3330},
					{1567,3358},
					{1537,3369},
				}
tbSIGNMAP_POS = {
					{ 1582,3174 },
					{ 1588,3160 },
					{ 1604,3147 },
				}


tbDEFENCE_RETURN = {
						[1] = { 1520,3228, "Ph­îng T­êng Phñ ", 2 },	--·ïÏè
						[11] = { 3018,5089, "Thµnh §« Phñ ", 1 },	--³É¶¼
						[37] = { 1632,3185, "BiÖn Kinh Phñ ", 2 },	--ãê¾©
						[78] = { 1439,3214, "T­¬ng D­¬ng Phñ ", 1 },	--ÏåÑô
						[80] = { 1593,3197, "D­¬ng Ch©u Phñ ", 1 },	--ÑïÖÝ
						[162] = { 1470,3269, "§¹i Lý", 1 },	--´óÀí
						[176] = { 1392,3313, "L©m An Phñ ", 1 },	--ÁÙ°²
					}
					
tbDEFENCE_ANNOUNCE = {
			"Ng­êi ch¬i cã thÓ ®Õn Thµnh §« phñ, T­¬ng D­¬ng phñ, L©m An phñ, §¹i Lý phñ, D­¬ng Ch©u phñ ®èi tho¹i víi VÖ binh thµnh m«n ®Ó tham gia thñ thµnh phe Tèng.",
			"Ng­êi ch¬i cã thÓ ®Õn Ph­îng T­êng phñ, BiÖn Kinh phñ ®èi tho¹i víi VÖ binh thµnh m«n ®Ó tham gia thñ thµnh phe Kim."
}

FILE_PLAYERDEATH = 		"\\script\\missions\\newcitydefence\\playerdeath.lua";
FILE_DOCTOR = 			"\\script\\missions\\newcitydefence\\npc\\cd_doctor.lua";
FILE_BOX = 				"\\script\\missions\\newcitydefence\\npc\\cd_box.lua";
FILE_DOCTOR1 = 			"\\script\\missions\\newcitydefence\\npc\\cd_doctor.lua";
FILE_DOCTOR2 = 			"\\script\\missions\\newcitydefence\\npc\\cd_doctor.lua";
FILE_CENTERTRAP1 = 		"\\script\\missions\\newcitydefence\\trap\\hometrap1.lua";
FILE_CENTERTRAP2 = 		"\\script\\missions\\newcitydefence\\trap\\hometrap2.lua";
FILE_CD_TRANSER = 		"\\script\\missions\\newcitydefence\\npc\\cd_transer.lua"
FILE_SYMBOLNPC =		"";

FRAME2TIME = 18;				--18Ö¡ÓÎÏ·Ê±¼äÏàµ±ÓÚ1ÃëÖÓ
MISSIONID = 27;					--mission±àºÅ
MAX_MEMBERCOUNT = 400;			--¹¥³ÇµØÍ¼×î´óÈËÊýÏÞÖÆ

SMALLTIMERID = 52;				--¼ÆÊ±Æ÷±àºÅ
TOTALTIMERID = 53;				--¼ÆÊ±Æ÷±àºÅ

SMALL_TIME = 20 * FRAME2TIME;				--Ã¿20Ãë¼ÆÊ±Ò»´Î
TOTAL_TIME = 150 * 60 * FRAME2TIME;			--150·ÖÖÓ¼ÆÊ±Ò»´Î£¬»î¶¯½áÊø
RUNGAME_TIME = 30 * 60 * FRAME2TIME / SMALL_TIME; --±¨Ãû30·ÖÖÓÖ®ºó£¬Æô¶¯
LASTREPORT_TIME = 145 * 60 * FRAME2TIME / SMALL_TIME;	--ÊØ³Ç×îºó5·ÖÖÓÃ»·ÖÖÓ£¬ÌáÊ¾Ò»´ÎÊ±¼ä
CALLBOSS_ZHUSHUAI = 120 * 60 * FRAME2TIME / SMALL_TIME;	--Ö÷Ë§³öÏÖÊ±¼ä

NHOMEDEFENCE = 24 --³Ç·À³õÊ¼Öµ
NHOMEDEFENCE_DAMAGE = 1  --³Ç·ÀÉËº¦Öµ£¬¹¥³Ç³µ¶Ô³Ç·À

MS_STATE = 1;				--ÈÎÎñÖÐ¼ÇÂ¼ÈÎÎñ×´Ì¬µÄ±äÁ¿ID
MS_RANDKEY = 2;				--¼ÇÂ¼µ±Ç°ÈÎÎñÏÂµÄkey£¬Ëæ»úÊý
MS_OPENDAY = 3;				--¼ÇÂ¼µ±Ç°ÈÎÎñ¿ªÊ¼µÄÔÂ£¬ÈÕ
MS_CITYCAMP = 4;			--¼ÇÂ¼±¾ÕÅµØÍ¼µÄÕóÓª£¬ËÎ-1£»½ð-2
MS_SMALL_TIME = 5;			--¼ÇÂ¼smalltimer¼ÆÊ±Æ÷µÄ´ÎÊý
MS_BOSS4_DOWN = 6;			--Îª1ÒÑ²úÉúÐ¡boss£¬0»¹Î´
MS_BOSS5_DOWN	=	7;		--Îª1ÒÑ²úÉú´óboss£¬0»¹Î´
MS_TLCOUNT_COMMON = 8;		--É±ËÀµÄÆÕÍ¨¹ÖµÄ×ÜÊý
MS_CITYDEFENCE = 9;			--Îª0±íÊ¾µ½Ê±¼äÃ»ÓÐÍê³ÉÈÎÎñ£¬Îª1±íÊ¾ÈÎÎñÍê³É
MS_MISSIONID = 10;			--´æÈëµ±Ç°missionµÄID

MS_MAXCOUNTNPC_1 = 11;		--Ð¡Ð£Ê£ÓàÊýÁ¿
MS_MAXCOUNTNPC_2 = 12;		--¶Ó³¤Ê£ÓàÊýÁ¿
MS_MAXCOUNTNPC_3 = 13;			--ÏÈ·æÊ£ÓàÊýÁ¿
MS_MAXCOUNTNPC_4 = 14;			--Ö÷½«Ê£ÓàÊýÁ¿
MS_MAXCOUNTNPC_5 = 15;			--Ö÷Ë§Ê£ÓàÊýÁ¿

MS_RESTCOUNTNPC_1 = 16;		--¼ÇÂ¼Ò»¹²É±ËÀµÄ°×¹ÖÊýÁ¿
MS_RESTCOUNTNPC_2 = 17;		--¼ÇÂ¼Ò»¹²É±ËÀµÄÀ¼¹ÖÊýÁ¿
MS_RESTCOUNTNPC_3 = 18;		--¼ÇÂ¼Ò»¹²É±ËÀµÄÉ±ÊÖ¼¶¹ÖÊýÁ¿
MS_RESTCOUNTNPC_4 = 19;		--¼ÇÂ¼Ò»¹²É±ËÀµÄÐ¡BOSSÊýÁ¿
MS_RESTCOUNTNPC_5 = 20;		--¼ÇÂ¼Ò»¹²É±ËÀµÄ´óBOSSÊýÁ¿

MS_HOMEOUT_X1 = 21;			--Ò°ÍâÍù´óÓªµÄ´«ËÍ×ø±êX£¬µÚÒ»ÀàTrap
MS_HOMEOUT_Y1 = 22;
MS_HOMEOUT_X2 = 23;			--Ò°ÍâÍù´óÓªµÄ´«ËÍ×ø±êX£¬µÚ¶þÀàTrap
MS_HOMEOUT_Y2 = 24;

MS_CENTER_X1 = 27;			--´óÓªÍùÒ°ÍâµÄ´«ËÍ×ø±êX£¬µÚÒ»ÀàTrap
MS_CENTER_Y1 = 28;
MS_CENTER_X2 = 29;			--´óÓªÍùÒ°ÍâµÄ´«ËÍ×ø±êX£¬µÚÒ»ÀàTrap
MS_CENTER_Y2 = 30;

MS_SHOUCHENGWEIBING = 33
MS_SHOUCHENGJIANGJUN = 34

MS_HOMEDEFENCE = 35	--³Ç·À

MS_S_GUAI1 = 1;			--¼ÇÂ¼µÚÒ»¸öË¢¹Öµã
MS_S_GUAI2 = 2;			--¼ÇÂ¼µÚ¶þ¸öË¢¹Öµã
MS_S_GUAI3 = 3;			--¼ÇÂ¼µÚÈý¸öË¢¹Öµã
MS_S_CD_NAME = 4;			--µ±Ç°ÊØ³ÇÕ½ÒÛµÄÃû×Ö

CD_BASE_VALUE = 1000000

TB_CD_AWARDEXP = {200, 300, 400, 500, 600}
TB_CD_AWARDITEM = {
			--{ itemname, itemvalue, itemlist},
				{"Tiªn Th¶o Lé ",0.719012,{ 6,1,71,0,1,1,1 }},
				{"B¸ch Qu¶ Lé ",0.02,{ 6,1,73,0,1,1,1 }},
				{"Thiªn s¬n  B¶o Lé ",0.02,{ 6,1,72,0,1,1,1 }},
				{"HuyÒn Tinh cÊp 4",0.02,{ 6,1,147,0,4,1,1 }},
				{"HuyÒn Tinh cÊp 5",0.003,{ 6,1,147,0,5,1,1 }},
				{"HuyÒn Tinh cÊp 6",0.001,{ 6,1,147,0,6,1,1 }},
				{"HuyÒn Tinh cÊp 7",0.0003,{ 6,1,147,0,7,1,1 }},
				{"HuyÒn Tinh cÊp 8",0.0001,{ 6,1,147,0,8,1,1 }},
				{"§¹i Lùc hoµn",0.02,{ 6,0,3,0,1,1,1 }},
				{"Phi Tèc hoµn",0.02,{ 6,0,6,0,1,1,1 }},
				{"§éc Phßng hoµn",0.02,{ 6,0,10,0,1,1,1 }},
				{"B¨ng Phßng hoµn",0.02,{ 6,0,7,0,1,1,1 }},
				{"Háa Phßng hoµn",0.02,{ 6,0,9,0,1,1,1 }},
				{"L«i Phßng hoµn",0.02,{ 6,0,8,0,1,1,1 }},
				{"Cao Trung hoµn",0.02,{ 6,0,5,0,1,1,1 }},
				{"Gia Bµo hoµn",0.02,{ 6,0,2,0,1,1,1 }},
				{"Cao ThiÓm hoµn",0.02,{ 6,0,4,0,1,1,1 }},
				{"Tr­êng MÖnh hoµn",0.02,{ 6,0,1,0,1,1,1 }},
				{"Bµn Nh­îc T©m Kinh",0.0005,{ 6,1,12,0,1,1,1 }},
				{"Lam Thñy Tinh",0.001,{ 238 }},
				{"Lôc Thñy Tinh",0.001,{ 240 }},
				{"Tö Thñy Tinh",0.001,{ 239 }},
				{"Vâ L©m MËt TÞch",0.0001,{ 6,1,26,0,1,1,1 }},
				{"TÈy Tñy Kinh",0.0001,{ 6,1,22,0,1,1,1 }},
	}