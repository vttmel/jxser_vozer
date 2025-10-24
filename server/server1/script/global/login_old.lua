-- µÇÂ¼½Å±¾
-- By: LaiLiGao(2004-06-20)
-- Update: Dan_Deng(2004-07-09) Ìí¼Ó×Ô¶¯¸üĞÂ¼¼ÄÜ¹¦ÄÜ
Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\systemconfig.lua") -- ÏµÍ³ÅäÖÃ

Include("\\script\\missions\\autohang\\function.lua")		-- for ¹Ò»ú¹¦ÄÜ
Include("\\script\\global\\skills_table.lua")				-- ×Ô¶¯¸üĞÂ¼¼ÄÜ
Include("\\script\\task\\newtask\\newtask_head.lua")	

-- LLG_ALLINONE_TODO_20070802 ´ıÈ·ÈÏ
Include ("\\script\\event\\newbielvlup\\event.lua")
Include("\\script\\event\\qingming\\event.lua")
Include("\\script\\event\\playerlvlup\\event_temp.lua")

Include("\\script\\shitu\\shitu.lua")
Include("\\script\\global\\titlefuncs.lua")
IL("TITLE");

function main_old()
	check_update()					-- ¼¼ÄÜ¸üĞÂ¡¢ÃÅÅÉ¼Ó±êÊ¶£¨2004-05-31£©
	patchShituProcess(PlayerIndex)
-- login_enterthd()				-- ×Ô¶¯½øÈë¹Ò»úµØÍ¼	
	login_check_dupe()
	--GetNewBulletin()
	check_townpotol()
	title_loginactive()
	if (SYSCFG_PARTNER_OPEN) then
		SyncPartnerMasterTask();  -- Í¬²½Í¬°é¾çÇéÈÎÎñ±äÁ¿
	end
end

------------------
-- µÚÒ»´ÎÑÓÊ±Í¬²½µÄÊı¾İ£¬ÔÚ´ËÌí¼Ó
function delaysync_1()
	GetNewBulletin();
	return 0;
end

-- µÚ¶ş´ÎÑÓÊ±Í¬²½µÄÊı¾İ£¬ÔÚ´ËÌí¼Ó
function delaysync_2()
	SyncTaskValue(1082)		--Í¬²½BossÉ±ÊÖÈÎÎñ±äÁ¿µ½¿Í»§¶Ë
	messenger_copytaskvalue()  --Í¬²½ĞÅÊ¹ÈÎÎñµÄÈÎÎñ±äÁ¿
	SyncPartnerMasterTask()    -- Í¬²½Í¬°é¾çÇéÈÎÎñ
	return 0;
end

-- µÚÈı´ÎÑÓÊ±Í¬²½µÄÊı¾İ£¬ÔÚ´ËÌí¼Ó
function delaysync_3()
	GetAllCitySummary();
	SyncTaskValue(1569)	--ÖĞÇïÔÂ±ı
	return 1;
end


-------------------------------------------
function check_townpotol()
	if (GetTask(1505) == 1) then
		DisabledUseTownP(0)
		SetTask(1505,0)
	end
end

function login_enterthd()
	mapList = {235, 236, 237, 238, 239, 240, 241};
	MapCount = getn(mapList);

	-- ÈôÒÑÔÚ¹Ò»úµØÍ¼£¬Ôò²»ÓÃÔÙ½øÁË
	nCurSWID = SubWorldIdx2ID();
	for i = 1, MapCount do
		if (nCurSWID == mapList[i]) then
			return 0;
		end
	end
	
	nMapID = random(1, MapCount);
	aexp_gotothd(mapList[nMapID]);
end;

-- ¼ì²âÊÇ·ñÓĞ¸´ÖÆ×°±¸±ê¼Ç£¬²¢·¢Çæ¸æ
function login_check_dupe()
	local nValue = GetTask(156);
	if (nValue > 0) then
		Say("<color=red>B¹n sö dông vËt phÈm ®· bŞ phôc chÕ, hÖ thèng ph¸t hiÖn vµ ®· xãa! NÕu b¹n cã kiÕn nghi g× xin liªn hÖ víi ng­êi qu¶n lı! C¶m ¬n b¹n ®· hîp t¸c!<color>", 1, "Tho¸t/dupe_warning");

		SetTask(156, nValue - 1);
	end
end

function dupe_warning()
	Msg2Player("B¹n sö dông vËt phÈm ®· bŞ phôc chÕ, hÖ thèng ph¸t hiÖn vµ ®· xãa! NÕu b¹n cã kiÕn nghi g× xin liªn hÖ víi ng­êi qu¶n lı! C¶m ¬n b¹n ®· hîp t¸c!");
end

function messenger_copytaskvalue()
	
	SyncTaskValueMore(1201, 1247, 1)
	--for i = 1201, 1247 do 
	--	SyncTaskValue(i)
	--end
end

function no()
end;

-- Í¬²½Í¬°é¾çÇéÈÎÎñ±äÁ¿
function SyncPartnerMasterTask()

local i=0;

	SyncTaskValue(1262);
	SyncTaskValue(1256);
	
	-- Í¬²½Í¬°éËæ»úÈÎÎñ
	SyncTaskValue(1301);
	SyncTaskValue(1302);
	SyncTaskValue(1303);
	SyncTaskValue(1304);
	SyncTaskValue(1305);
	SyncTaskValue(1306);
	
	-- Í¬²½ÈÎÎñÒıÇæËùÓÃµÄ±äÁ¿
	for i=2000, 2300 do
		SyncTaskValue(i);
	end;

end;

--¼ÓÈë¾ÉµÄLogin mainº¯Êı
if login_add then login_add(main_old, 0) end
--¼ÓÈë¾ÉµÄ·Ö²½Í¬²½º¯Êı
if login_add then login_add(delaysync_1, 1) end
if login_add then login_add(delaysync_2, 2) end
if login_add then login_add(delaysync_3, 3) end
