
-- ====================== ÎÄ¼şĞÅÏ¢ ======================

-- ½£ÏÀÇéÔµonline ÇéÒå½­ºşÍ¬°é¾çÇé½±Àø½Å±¾Í·ÎÄ¼ş
-- Edited by peres
-- 2005/09/09 PM 11:19

-- Ö»ÓĞËûºÍËıÁ½¸öÈË
-- ËûÃÇÏµ°®
-- Ëı¼ÇµÃ
-- ËûµÄÊÖ¸§Ä¦ÔÚËıµÄÆ¤·ôÉÏµÄÎ¢Çé
-- ËûµÄÇ×ÎÇÏñÄñÈºÔÚÌì¿Õ¢Ó¹ı
-- ËûÔÚËıÉíÌåÀïÃæµÄ±©ìåºÍ·Å×İ
-- ËûÈëË¯Ê±ºòµÄÑù×Ó³ä¢ú´¿Õæ
-- Ëı¼ÇµÃ£¬Çå³¿ËıĞÑ¹ıÀ´µÄÒ»¿Ì£¬ËûÔÚËıµÄÉí±ß
-- ËıÕö×ÅÑÛ¾¦£¬¿´Êï¹âÍ¸¹ı´°Á±Ò»µãÒ»µãµØÕÕÉä½øÀ´
-- ËıµÄĞÄÀïÒòÎªĞÒ¸£¶øÌÛÍ´

-- ======================================================

-- Í¬°éÏµÍ³µÄÍ·ÎÄ¼ş
IncludeLib("PARTNER");

-- ¶ÁÈë DEBUG Êä³ö´¦ÀíÎÄ¼ş
Include("\\script\\task\\system\\task_debug.lua");

-- ÔØÈë»Ô»ÍÖ®Õ¢µÄÍ·ÎÄ¼ş
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua");

Include([[\script\tong\tong_award_head.lua]]);--°ï»áÖÜÄ¿±ê¹±Ï×¶ÈbyÖ¾É½
-- ¼Ç¢¼¾çÇéÆª½±Àø·¢·ÅµÄ ID

ARY_MASTER_AWARD = {
	[1] = 50,
	[2] = 51,
	[3] = 52,
	[4] = 53,
	[5] = 54,
}

-- ¼Ç¢¼ĞŞÁ¶Æª½±Àø·¢·ÅµÄ ID
ARY_REWIND_AWARD = {
	[1] = 55,
	[3] = 56,
	[4] = 57,
}

ARY_SKILLBOOK = {849,850,851,853,854,855,859,861,862,863,864,868,870}

-- Í¬°éÏµÍ³µÄÍ·ÎÄ¼ş
IncludeLib("PARTNER")

aryMasterAward = {	
	-- ÊÌÀÊÖ®ËÀ
	[1] = function(nState)		
		-- ÁúÎå´¦ÁìÈ¡ÈÎÎñºó·¢·Å½±Àø
		if nState==1 then
			AddOwnExp(20000);
			AddPartnerExp(5000);
		end;
		
		-- ¾²ÔÀÊ¦Ì«´¦¾ö¶¨È¥ÄÃ²İÒ©ºó·¢·Å½±Àø
		if nState==2 then
			AddOwnExp(20000);
			AddPartnerExp(5000);		
		end;
		
		-- ¸ÉµôÉñÃØÉ½Ôô»ñµÃµÄ½±Àø
		if nState==3 then
			AddOwnExp(2000);
			AddPartnerExp(1000);
		end;
		
		-- ¸ÉµôÔôÆÅ×Ó»ñµÃµÄ½±Àø
		if nState==4 then
			AddOwnExp(2000);
			AddPartnerExp(1000);
		end;

		-- ¸Éµô×óÓÒÕ¯Ö÷»ñµÃµÄ½±Àø
		if nState==5 then
			AddOwnExp(20000);
			AddPartnerExp(5000);
		end;
		
		-- ¸ÉµôÉ½ÔôÍõ»ñµÃµÄ½±Àø
		if nState==6 then
			AddOwnExp(100000);
			AddPartnerExp(20000);
			skillbook_select(2)
		end;

		-- Íê³ÉÉ½ÔôÁëËùÓĞÌõ¼şºó£¬»ØÀ´¾²ÔÀÊ¦Ì«´¦·¢·ÅµÄ½±Àø
		if nState==7 then
			AddOwnExp(20000);
			AddPartnerExp(5000);
		end;

		-- ÊÌÀÉÖ®ËÀÈÎÎñÍê³É£¬ÁúÎå´¦·¢·ÅµÄ½±Àø
		if nState==8 then
			AddOwnExp(20000);
			AddPartnerExp(5000);
			skillbook_select(1)
		end;
				
	end,
	
	
	-- ¿ØÉßÈËÖ®ÃØ
	[2] = function(nState)
	
		-- ÁúÎå´¦ÁìÈ¡ÈÎÎñºó·¢·Å½±Àø
		if nState==1 then
			AddOwnExp(40000);
			AddPartnerExp(10000);
		end;
		
		-- ²è²©Ê¿´¦»ñµÃÏßË÷ºó·¢·Å½±Àø
		if nState==2 then
			AddOwnExp(40000);
			AddPartnerExp(10000);		
		end;

		-- æä¹Ù´¦Èı¸öĞÅÊ¹¹Ø¿¨È«²¿¹ı¹Øºó·¢·Å½±Àø
		if nState==3 then
			AddOwnExp(400000);
			AddPartnerExp(400000);
			skillbook_select(2)
		end;

		-- ²è²©Ê¿´¦»Ø¸´ºó·¢·ÅµÄ½±Àø
		if nState==4 then
			AddOwnExp(40000);
			AddPartnerExp(10000);
		end;
		
		-- ÁúÎå´¦½»ÈÎÎñºóµÃµ½µÄ½±Àø
		if nState==5 then
			AddOwnExp(100000);
			AddPartnerExp(10000);
			skillbook_select(1)
		end;					
	end,

	
	-- Öé±¦ÉÌÈË
	[3] = function(nState)
	
		-- ÁúÎå´¦ÁìÈ¡ÈÎÎñºó·¢·Å½±Àø
		if nState==1 then
			AddOwnExp(40000);
			AddPartnerExp(10000);
		end;
		
		-- ´ğÓ¦¶¡ÀÚÓª¾È¶¡Àûºó·¢·ÅµÄ½±Àø
		if nState==2 then
			AddOwnExp(20000);
			AddPartnerExp(10000);		
		end;

		-- ¸ÉµôÒ»¸öÇ¹Æï±ø»ñµÃµÄ½±Àø
		if nState==3 then
			AddOwnExp(4000);
			AddPartnerExp(5000);
		end;

		-- ¸ÉµôÒ»¸ö¹­Æï±ø»ñµÃµÄ½±Àø
		if nState==4 then
			AddOwnExp(4000);
			AddPartnerExp(5000);
		end;
		
		-- ¸ÉµôÒ»¸ö´øµ¶½«Áì»ñµÃµÄ½±Àø
		if nState==5 then
			AddOwnExp(20000);
			AddPartnerExp(50000);
		end;
		
		-- ¸ÉµôÒ»¸öË¢³ö¹Ö»ñµÃµÄ½±Àø
		if nState==6 then
			AddOwnExp(40000);
			AddPartnerExp(80000);
		end;

		-- Óª¾È³ö¶¡Àûºó·¢·ÅµÄ½±Àø
		if nState==7 then
			AddOwnExp(40000);
			AddPartnerExp(10000);
		end;
		
		-- ÁúÎå´¦½»ÈÎÎñºóµÃµ½µÄ½±Àø
		if nState==8 then
			AddOwnExp(40000);
			AddPartnerExp(10000);
			skillbook_select(1)
		end;
	end,

	
	-- Òì×åÎäÊ¿
	[4] = function(nState)
	
		-- ÁúÎå´¦ÁìÈ¡ÈÎÎñºó·¢·Å½±Àø
		if nState==1 then
			AddOwnExp(40000);
			AddPartnerExp(20000);
		end;

		-- ´ò°ÜÁºÃ¨Ã¨ºó»ñµÃµÄ½±Àø
		if nState==2 then
			AddOwnExp(60000);
			AddPartnerExp(80000);
		end;

		-- ´ò°ÜÀîĞÉºó»ñµÃµÄ½±Àø
		if nState==3 then
			AddOwnExp(60000);
			AddPartnerExp(80000);
		end;
		
		-- ´ò°ÜÅå¹«×Óºó»ñµÃµÄ½±Àø
		if nState==4 then
			AddOwnExp(60000);
			AddPartnerExp(80000);
		end;

		-- ´ò°ÜÌÆÓãºó»ñµÃµÄ½±Àø
		if nState==5 then
			AddOwnExp(60000);
			AddPartnerExp(80000);
		end;

		-- ´ò°ÜÁõĞ¥À«ºó»ñµÃµÄ½±Àø
		if nState==8 then
			AddOwnExp(60000);
			AddPartnerExp(80000);
		end;

		-- ´ò°Ü5¸öbossºóÓëÍõÒ»¶Ô»°»ñµÃµÄ½±Àø
		if nState==6 then
			AddOwnExp(40000);
			AddPartnerExp(10000);
		end;
		
		-- ÁúÎå´¦½»ÈÎÎñºóµÃµ½µÄ½±Àø
		if nState==7 then
			AddOwnExp(40000);
			AddPartnerExp(10000);
			skillbook_select(1)
		end;					
	end,

	
	-- Òş²ØÈÎÎñ
	[5] = function(nState)
		
		-- Íæ¼ÒËù´øÍ¬°éµÄÇ°4¸öÍ¬°é¾çÇéÈÎÎñÈ«Íê³É
		if nState==1 then
			AddOwnExp(5000000);
			AddPartnerExp(1000000);
		end;

	end,
}



-- ĞŞÁ¶ÆªÈÎÎñµÄ½±ÀøÊı×é
aryRewindAward = {
	
	-- ÊÌÀÊÖ®ËÀ
	[1] = function(nState)
	
		-- ÁúÎå´¦ÁìÈ¡ÈÎÎñºó·¢·Å½±Àø
		if nState==1 then
			AddOwnExp(CountDoubleMode(10000));
			AddPartnerExp(CountDoubleMode(1000));
		end;
		
		-- ¾²ÔÀÊ¦Ì«´¦¾ö¶¨È¥ÄÃ²İÒ©ºó·¢·Å½±Àø
		if nState==2 then
			AddOwnExp(CountDoubleMode(10000));
			AddPartnerExp(CountDoubleMode(1000));		
		end;
		
		-- ¸ÉµôÉñÃØÉ½Ôô»ñµÃµÄ½±Àø
		if nState==3 then
			AddOwnExp(CountDoubleMode(1000));
			AddPartnerExp(CountDoubleMode(200));		
		end;
		
		-- ¸ÉµôÔôÆÅ×Ó»ñµÃµÄ½±Àø
		if nState==4 then
			AddOwnExp(CountDoubleMode(1000));
			AddPartnerExp(CountDoubleMode(200));
		end;

		-- ¸Éµô×óÓÒÕ¯Ö÷»ñµÃµÄ½±Àø
		if nState==5 then
			AddOwnExp(CountDoubleMode(20000));
			AddPartnerExp(CountDoubleMode(2000));
		end;
		
		-- ¸ÉµôÉ½ÔôÍõ»ñµÃµÄ½±Àø
		if nState==6 then
			AddOwnExp(CountDoubleMode(50000));
			AddPartnerExp(CountDoubleMode(2000));
		end;

		-- Íê³ÉÉ½ÔôÁëËùÓĞÌõ¼şºó£¬»ØÀ´¾²ÔÀÊ¦Ì«´¦·¢·ÅµÄ½±Àø
		if nState==7 then
			AddOwnExp(CountDoubleMode(20000));
			AddPartnerExp(CountDoubleMode(500));
		end;

		-- ÊÌÀÉÖ®ËÀÈÎÎñÍê³É£¬ÁúÎå´¦·¢·ÅµÄ½±Àø
		if nState==8 then
			AddOwnExp(CountDoubleMode(20000));
			AddPartnerExp(CountDoubleMode(1000));
			skillbook_select(3)
			tongaward_partner_juqing(1);--°ï»áÖÜÄ¿±êbyÖ¾É½
		end;
				
	end,
	
	
	-- Öé±¦ÉÌÈË
	[3] = function(nState)
	
		-- ÁúÎå´¦ÁìÈ¡ÈÎÎñºó·¢·Å½±Àø
		if nState==1 then
			AddOwnExp(CountDoubleMode(30000));
			AddPartnerExp(CountDoubleMode(2000));
		end;
		
		-- ´ğÓ¦¶¡ÀÚÓª¾È¶¡Àûºó·¢·ÅµÄ½±Àø
		if nState==2 then
			AddOwnExp(CountDoubleMode(20000));
			AddPartnerExp(CountDoubleMode(500));		
		end;

		-- ¸ÉµôÒ»¸öÇ¹Æï±ø»ñµÃµÄ½±Àø
		if nState==3 then
			AddOwnExp(CountDoubleMode(2000));
			AddPartnerExp(CountDoubleMode(500));
		end;

		-- ¸ÉµôÒ»¸ö¹­Æï±ø»ñµÃµÄ½±Àø
		if nState==4 then
			AddOwnExp(CountDoubleMode(2000));
			AddPartnerExp(CountDoubleMode(500));
		end;
		
		-- ¸ÉµôÒ»¸ö´øµ¶½«Áì»ñµÃµÄ½±Àø
		if nState==5 then
			AddOwnExp(CountDoubleMode(10000));
			AddPartnerExp(CountDoubleMode(2000));
		end;
		
		-- ¸ÉµôÒ»¸öË¢³ö¹Ö»ñµÃµÄ½±Àø
		if nState==6 then
			AddOwnExp(CountDoubleMode(20000));
			AddPartnerExp(CountDoubleMode(2000));
		end;

		-- Óª¾È³ö¶¡Àûºó·¢·ÅµÄ½±Àø
		if nState==7 then
			AddOwnExp(CountDoubleMode(20000));
			AddPartnerExp(CountDoubleMode(2000));
		end;
		
		-- ÁúÎå´¦½»ÈÎÎñºóµÃµ½µÄ½±Àø
		if nState==8 then
			AddOwnExp(CountDoubleMode(30000));
			AddPartnerExp(CountDoubleMode(2000));
			skillbook_select(3)
			tongaward_partner_juqing(1);--°ï»áÖÜÄ¿±êbyÖ¾É½
		end;
	end,

	
	-- Òì×åÎäÊ¿
	[4] = function(nState)
	
		-- ÁúÎå´¦ÁìÈ¡ÈÎÎñºó·¢·Å½±Àø
		if nState==1 then
			AddOwnExp(CountDoubleMode(30000));
			AddPartnerExp(CountDoubleMode(2000));
		end;

		-- ´ò°ÜÁºÃ¨Ã¨ºó»ñµÃµÄ½±Àø
		if nState==2 then
			AddOwnExp(CountDoubleMode(50000));
			AddPartnerExp(CountDoubleMode(3000));
		end;

		-- ´ò°ÜÀîĞÉºó»ñµÃµÄ½±Àø
		if nState==3 then
			AddOwnExp(CountDoubleMode(50000));
			AddPartnerExp(CountDoubleMode(3000));
		end;
		
		-- ´ò°ÜÅå¹«×Óºó»ñµÃµÄ½±Àø
		if nState==4 then
			AddOwnExp(CountDoubleMode(50000));
			AddPartnerExp(CountDoubleMode(3000));
		end;

		-- ´ò°ÜÌÆÓãºó»ñµÃµÄ½±Àø
		if nState==5 then
			AddOwnExp(CountDoubleMode(50000));
			AddPartnerExp(CountDoubleMode(3000));
		end;

		-- ´ò°ÜÁõĞ¥À«ºó»ñµÃµÄ½±Àø
		if nState==8 then
			AddOwnExp(CountDoubleMode(50000));
			AddPartnerExp(CountDoubleMode(3000));
		end;

		-- ´ò°Ü5¸öbossºóÓëÍõÒ»¶Ô»°»ñµÃµÄ½±Àø
		if nState==6 then
			AddOwnExp(CountDoubleMode(30000));
			AddPartnerExp(CountDoubleMode(2000));
		end;
		
		-- ÁúÎå´¦½»ÈÎÎñºóµÃµ½µÄ½±Àø
		if nState==7 then
			AddOwnExp(CountDoubleMode(30000));
			AddPartnerExp(CountDoubleMode(3000));
			skillbook_select(3)
			tongaward_partner_juqing(0);--°ï»áÖÜÄ¿±êbyÖ¾É½
		end;					
	end,
}

-- select_item:·µ»ØÖµÎª1±íÊ¾½±ÀøËæ»ú1¼¶¼¼ÄÜÊé£¬Îª2±íÊ¾Ëæ»ú½±Àø¼¼ÄÜÊé£¬Îª3±íÊ¾10%¼¸¢Ê½±ÀøËæ»ú¼¼ÄÜÊé
function skillbook_select(select_item)
		local i = random(199,599)
		local SKILLBOOK_LEVEL = floor(i/100)
		local j = getn(ARY_SKILLBOOK)
		local SKILLBOOK_NAME = ARY_SKILLBOOK[random(1,j)]
		if ( select_item == 1 ) then
			AddItem(6,1,SKILLBOOK_NAME,1,0,0)
			Msg2Player("<color=yellow>Ng­¬i lÊy ®­îc mét quyÓn s¸ch b¹n ®ång hµnh kü n¨ng!<color>");
		elseif ( select_item == 2 ) then
			AddItem(6,1,SKILLBOOK_NAME,SKILLBOOK_LEVEL,0,0)
			Msg2Player("<color=yellow>Ng­¬i lÊy ®­îc mét quyÓn s¸ch b¹n ®ång hµnh kü n¨ng!<color>");
		elseif ( select_item == 3 ) then
			local w = random(1,100)
			if ( w <= 30 ) then
				AddItem(6,1,SKILLBOOK_NAME,SKILLBOOK_LEVEL,0,0)
				Msg2Player("<color=yellow>Ng­¬i lÊy ®­îc mét quyÓn s¸ch b¹n ®ång hµnh kü n¨ng!<color>");
			end
		end;
end

function PayMasterAward(nTask, nState)
	if CheckMasterAwardState(nTask, nState)==1 then
		aryMasterAward[nTask](nState);
	end;
end;


function PayRewindAward(nTask, nState)
	if CheckRewindAwardState(nTask, nState)==1 then
		aryRewindAward[nTask](nState);
	end;
end;


-- ¼ì²é¾çÇéÆªµÄ½±ÀøÊÇ·ñÄÜ¸øÓè·¢·Å
function CheckMasterAwardState(nTask, nState)

local partnerindex,partnerstate = PARTNER_GetCurPartner();       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
local NpcCount = PARTNER_Count();

local nValue = 0;
local nBit = 0;

	-- Èç¹ûÃ»ÓĞ´øÍ¬°é»òÕßÃ»ÓĞÕÙ»½Í¬°éÔòÖ±½Ó·µ»Ø nil
	if NpcCount==0 or partnerstate~=1 then return nil; end;
	
	nValue = PARTNER_GetTaskValue(partnerindex, ARY_MASTER_AWARD[nTask]);
	nBit = GetBit(nValue, nState);

	if nBit==0 then
		nValue = SetBit(nValue, nState, 1);
		PARTNER_SetTaskValue(partnerindex, ARY_MASTER_AWARD[nTask], nValue);
		CDebug:MessageOut("¼ì²é¾çÇéµÚ "..nTask.." ¸öÈÎÎñµÄµÚ "..nState.." ÖÖ×´Ì¬ÊÇ·ñÄÜ·¢½±£º³É¹¦");
		return 1;
	else
		CDebug:MessageOut("¼ì²é¾çÇéµÚ "..nTask.." ¸öÈÎÎñµÄµÚ "..nState.." ÖÖ×´Ì¬ÊÇ·ñÄÜ·¢½±£ºÊ§°Ü");
		return 0;
	end;

end;

-- ¼ì²éĞŞÁ¶ÆªµÄ½±ÀøÊÇ·ñÄÜ¸øÓè·¢·Å
function CheckRewindAwardState(nTask, nState)

local partnerindex,partnerstate = PARTNER_GetCurPartner();       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
local NpcCount = PARTNER_Count();

local nValue = 0;
local nBit = 0;

	-- Èç¹ûÃ»ÓĞ´øÍ¬°é»òÕßÃ»ÓĞÕÙ»½Í¬°éÔòÖ±½Ó·µ»Ø nil
	if NpcCount==0 or partnerstate~=1 then return nil; end;
	
	nValue = PARTNER_GetTaskValue(partnerindex, ARY_REWIND_AWARD[nTask]);
	nBit = GetBit(nValue, nState);
	
	if nBit==0 then
		nValue = SetBit(nValue, nState, 1);
		PARTNER_SetTaskValue(partnerindex, ARY_REWIND_AWARD[nTask], nValue);
		CDebug:MessageOut("¼ì²éĞŞÁ¶µÚ "..nTask.." ¸öÈÎÎñµÄµÚ "..nState.." ÖÖ×´Ì¬ÊÇ·ñÄÜ·¢½±£º³É¹¦");
		return 1;
	else
		CDebug:MessageOut("¼ì²éĞŞÁ¶µÚ "..nTask.." ¸öÈÎÎñµÄµÚ "..nState.." ÖÖ×´Ì¬ÊÇ·ñÄÜ·¢½±£ºÊ§°Ü");
		return 0;
	end;

end;


-- ÉèÖÃÒ»¸öÈÎÎñµÄ½±Àø×´Ì¬
function SetTaskAwardState(nTask, nState, nBit)

local partnerindex,partnerstate = PARTNER_GetCurPartner();       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
local NpcCount = PARTNER_Count();

local nValue = PARTNER_GetTaskValue(partnerindex, nTask);

	nValue = SetBit(nValue, nState, nBit);
	
	PARTNER_SetTaskValue(partnerindex, nTask, nValue);
	
end;


function GetTaskAwardState(nTask, nState)

local partnerindex,partnerstate = PARTNER_GetCurPartner();       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
local NpcCount = PARTNER_Count();

local nBit = GetBit(PARTNER_GetTaskValue(partnerindex, nTask), nState);

	CDebug:MessageOut("Get Bit£º"..nBit, 2);

end;

-- Ôö¼ÓÍ¬°éµÄ¾­Ñé
function AddPartnerExp(nExp)

	local partnerindex,partnerstate = PARTNER_GetCurPartner();       --»ñµÃÕÙ»½³öÍ¬°éµÄindex,Í¬°é×´Ì¬ÎªÕÙ³ö»òÎª²»ÕÙ³ö
	local NpcCount = PARTNER_Count();
	
	-- Èç¹ûÃ»ÓĞ´øÍ¬°é»òÕßÃ»ÓĞÕÙ»½Í¬°éÔòÖ±½Ó·µ»Ø nil
	if NpcCount==0 or partnerstate~=1 then return nil; end;
	
	PARTNER_AddExp(partnerindex, nExp, 1);
	
end;


-- Ë«±¶»î¶¯µÄÄ£Ê½
-- ´«Èë²ÎÊı£ºint:nValue ËùÒª¼ÆËãµÄ¼ÛÖµÁ¿
function CountDoubleMode(nValue)

local nDoubleMode = greatnight_huang_event(5);

	if nDoubleMode~=0 or nDoubleMode~=nil then
		return nValue*nDoubleMode;
	else
		return nValue;
	end;

end;
