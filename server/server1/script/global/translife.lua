
-- ====================== ÎÄ¼þÐÅÏ¢ ======================

-- ½£ÏÀÇéÔµÍø¢ç°æ´ó¢½
-- ÎÄ¼þÃû¡¡£ºtranslife.lua
-- ´´½¨Õß¡¡£º×Ó·Çô~
-- ´´½¨Ê±¼ä£º2009-02-05 11:00:50

-- ======================================================


IncludeLib("SETTING")
IncludeLib("PARTNER")
Include("\\script\\task\\metempsychosis\\task_func.lua")
--·çÔÆÁîÅÆ- µ÷Õû¶ÔÐ¢ÊÖÖØÉúµÄÊ±¼ä- Modified By DinhHQ - 20110926
Include("\\script\\activitysys\\config\\1005\\check_func.lua")
function main()
	
	local n_level = GetLevel();
	local n_setlevel = n_level;
	local n_curexp = GetExp();	
	local n_resistid = GetTaskTemp(TSKM_ZHUANSHENG_RESISTID);
	local n_transcount = ST_GetTransLifeCount();
	
	local nmgpoint, nprop, nresist, naddskill  =	TB_LEVEL_REMAIN_PROP[n_level][n_transcount+1][1],
		TB_LEVEL_REMAIN_PROP[n_level][n_transcount+1][2],
		TB_LEVEL_REMAIN_PROP[n_level][n_transcount+1][3],
		TB_LEVEL_REMAIN_PROP[n_level][n_transcount+1][4];
	
	if (n_level == 199 and n_transcount == 0 and n_curexp >= ZHUANSHENG_XIANDAN_MINEXP) then
		nmgpoint, nprop, nresist, naddskill  =	TB_LEVEL_REMAIN_PROP[200][n_transcount+1][1],
			TB_LEVEL_REMAIN_PROP[200][n_transcount+1][2],
			TB_LEVEL_REMAIN_PROP[200][n_transcount+1][3],
			TB_LEVEL_REMAIN_PROP[200][n_transcount+1][4];
		n_setlevel = 200;
	end
	
	WriteLog(format("[DoTransLife]\t%s\tName:%s\tAccount:%s\tDoTransLife,LEVEL:%d,SetLevel:%d,FACTION:%d,TRANSCOUNT:%d,RESIST:%d,AddMagicPoint:%d,AddProp:%d,AddResist:%d",
		GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount(),
		GetLevel(), n_setlevel, GetLastFactionNumber(), n_transcount, n_resistid,
		nmgpoint, nprop, nresist));
	zhuansheng_set_gre(n_transcount+1, n_setlevel, n_resistid);
	
	-- 4×ª´¦Àí
	if n_transcount == 3 then
		Pay(ZHUANSHENG_TUITION_4)
		SetTask(TSK_TRANSLIFE_4, 0)		-- 4×ªÈÎÎñÉèÖÃÎªÎ´½ÓÊÕ£¬É±¹ÖÊ±²»»áµÃµ½Åùö¨µ¯
		SetTask(TSK_LEAVE_SKILL_POINT_4, 0)	-- Çå¿ÕÊ£Óµ¼¼ÄÜµã
		SetTask(TSK_USED_SKILL_POINT_4, 0)	-- Çå¿ÕÒÑ¾­Ê¹ÓÃµÄ¼¼ÄÜµã
		SetTask(TSK_LAST_UP_LEVEL_4, 0)		-- ÉèÖÃ×îºóÉý¼¶µÈ¼¶Îª0
		for i=1,getn(TBITEMNEED_4) do
			local tbProb = TBITEMNEED_4[i].tbProb
			ConsumeItem(3,TBITEMNEED_4[i].nCount, tbProb[1], tbProb[2], tbProb[3], -1)
		end
		--T¾t tÝnh n¨ng add kü n¨ng TS 4
			-- for i=1,getn(TB_SKILL_4) do
				-- AddMagic(TB_SKILL_4[i][1],TB_SKILL_4[i][2])
			-- end
	else
		--·çÔÆÁîÅÆ- µ÷Õû¶ÔÐ¢ÊÖÖØÉúµÄÊ±¼ä- Modified By DinhHQ - 20110926
		if tbPVLB_Check:IsNewPlayer() == 1 and tbPVLB_Check:CheckTime() == 1 and (n_transcount == 0 or n_transcount == 1)  then
			if n_transcount == 0 then
				Pay(500000000)
			elseif n_transcount == 1 then
				Pay(1000000000)
			end
		else
			Pay(ZHUANSHENG_TUITION)
		end
	end
	
	SetTask(144, 0);	--Ãâ·ÑÏ´µã
	SetRevPos(121, 55);	--ÉèÖØÉúµãÔÚÁúÃÅÕò
	zhuansheng_clear_skill(n_level, nmgpoint);		--Çåµô¼¼ÄÜµã
	zhuansheng_clear_prop(n_level, nprop);		--ÇåµôÇ±ÄÜµã
	
	SetSkillMaxLevelAddons(GetSkillMaxLevelAddons() + naddskill);
	
	if (n_resistid >= 0 and n_resistid <= 4) then
--		AddMaxResist(n_resistid, nresist);
--	elseif (n_resistid == -1) then
		for i = 0, 4 do
			AddMaxResist(i, nresist);
		end
	end
	
	local nBaseLevel = 1 --Ä¬ÈÏ×ªÉúºóÉý¼¶µ½10¼¶
		
	ST_LevelUp(nBaseLevel-n_level);	--ÉèµÈ¼¶Îª10¼¶,±ÜÃâ10¼¶Ç°½ÇÉ«É¾ºÅ²»ÄÜÕÒ»Ø
	SetTask(TSK_ZHUANSHENG_FLAG,0);
	SetTask(TSK_ZHUANSHENG_LASTTIME, GetCurServerTime());
	
	PARTNER_CallOutCurPartner(0)
	--SetTask(TSK_ZHUANSHENG_FLAG, 2);
	Msg2Player("LÜnh héi <B¾c §Èu Tr­êng Sinh ThuËt - T©m Ph¸p Thiªn>");
	
	KickOutSelf();
	Msg2Player("Trïng sinh thµnh c«ng!")
	return 1
end
