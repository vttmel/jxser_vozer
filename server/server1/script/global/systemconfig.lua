--------------------------------------
-- ÏµÍ³ÅäÖÃ£º¿ª¹Ø¡¢×´Ì¬¡¢

---------------------------------------------------------------
-- ÇøÓò°æ±¾ÅäÖÃ
DEF_PRODUCT_REGION_CN		= 0;		-- ÖĞ¹ú´óÂ½°æ±¾
DEF_PRODUCT_REGION_CN_IB	= 1;		-- ÖĞ¹ú´óÂ½Ãâ·Ñ°æ±¾
DEF_PRODUCT_REGION_TW		= 2;		-- Ì¨Íå°æ±¾
DEF_PRODUCT_REGION_MY		= 3;		-- Ô½ÄÏ°æ±¾
DEF_PRODUCT_REGION_VN		= 4;		-- Ô½ÄÏ°æ±¾

SYSCFG_PRODUCT_REGION_NAME, SYSCFG_PRODUCT_REGION_ID = GetProductRegion();	-- µ±Ç°°æ±¾

---------------------------------------------------------------
-- Ç®×¯¹¦ÄÜÅäÖÃ (1 - ¿ªÆô£¬nil - ¹Ø±Õ)
SYSCFG_GAMEBANK_GOLDSILVER_OPEN = 1; -- ½ğÒøÔª±¦¹¦ÄÜ¿ª·Å
SYSCFG_EXTPOINTID1_TYPEPAY = 1; -- HÖ thèng tiÒn n¹p thÎ t¹i TiÒn Trang. 0:TiÒn ®ång, 1: KNB
SYSCFG_GAMEBANK_GOLD_GET 		= 1; -- ½ğÔª±¦ÁìÈ¡
SYSCFG_GAMEBANK_GOLD_PAY 		= 1; -- ½ğÔª±¦³äÖµ
SYSCFG_GAMEBANK_GOLD_COIN 	= 1; -- ½ğÔª±¦»»Í­Ç®
SYSCFG_GAMEBANK_GOLD_USE 		= 1; -- ½ğÔª±¦µÄÆäËüÏûºÄÓÃÍ¾

SYSCFG_GAMEBANK_SILVER_GET 	= 1; -- ÒøÔª±¦ÁìÈ¡
SYSCFG_GAMEBANK_SILVER_PAY 	= 1; -- ÒøÔª±¦³äÖµ
SYSCFG_GAMEBANK_SILVER_COIN = 1; -- ÒøÔª±¦»»Í­Ç®
SYSCFG_GAMEBANK_SILVER_USE 	= 1; -- ÒøÔª±¦µÄÆäËüÏûºÄÓÃÍ¾

SYSCFG_GAMEBANK_TICKET_OPEN = 1; -- ÒøÆ±¹¦ÄÜ¿ª·Å
SYSCFG_GAMEBANK_TICKET_GET 	= 1; -- ÒøÆ±ÁìÈ¡
SYSCFG_GAMEBANK_TICKET_PAY 	= 1; -- ÒøÆ±³äÖµ
SYSCFG_GAMEBANK_TICKET_COIN = 1; -- ÒøÆ±»»Í­Ç®
SYSCFG_GAMEBANK_TICKET_USE 	= 1; -- ÒøÆ±µÄÆäËüÏûºÄÓÃÍ¾
---------------------------------------------------------------
-- LLG_ALLINONE_TODO_20070802
--À©Õ¹µãµÄÊ¹ÓÃ
SYSCFG_EXTPOINTID7_LOGINMSG		= 1;	--µÇÈëÓÎÏ·Ê±£¬¸ù¾İÀ©Õ¹µã×´Ì¬¸øÓëĞÅÏ¢ÌáÊ¾

---------------------------------------------------------------
-- ÆæÕä¸ó¹¦ÄÜÅäÖÃ (1 - ¿ªÆô£¬nil - ¹Ø±Õ)
SYSCFG_SHOP_OPEN            = 1;
---------------------------------------------------------------

---------------------------------------------------------------
-- ÌÒ»¨µº¹¦ÄÜÅäÖÃ (1 - ¿ªÆô£¬nil - ¹Ø±Õ)
SYSCFG_TAOHUAISLAND_OPEN    = 1;
---------------------------------------------------------------

---------------------------------------------------------------
-- Ã¿ÈÕÁìÈ¡½±Àø¹¦ÄÜÅäÖÃ (1 - ¿ªÆô£¬nil - ¹Ø±Õ)
SYSCFG_AWARDPERDAY_OPEN     = nil;
if (SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_TW or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_VN) then
	SYSCFG_AWARDPERDAY_OPEN = 1;
end
---------------------------------------------------------------

---------------------------------------------------------------
-- ×ª°üÔÂÓÃ»§ÁìÈ¡½±Àø¹¦ÄÜÅäÖÃ (1 - ¿ªÆô£¬nil - ¹Ø±Õ)
SYSCFG_PAYMONTHAWARD_OPEN     = nil;
if (SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_TW or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_VN) then
	SYSCFG_PAYMONTHAWARD_OPEN = 1;
end
---------------------------------------------------------------

---------------------------------------------------------------
-- Í¬°é¹¦ÄÜÅäÖÃ (1 - ¿ªÆô£¬nil - ¹Ø±Õ)
SYSCFG_PARTNER_OPEN     = nil;
if (SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_CN or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_TW or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_VN) then
	SYSCFG_PARTNER_OPEN = 1;
end
---------------------------------------------------------------

---------------------------------------------------------------
-- ĞÂ°ï»á¹¦ÄÜÅäÖÃ (1 - ¿ªÆô£¬nil - ¹Ø±Õ)
SYSCFG_NEWTONG_OPEN     = nil;
if (SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_CN or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_CN_IB or SYSCFG_PRODUCT_REGION_ID == DEF_PRODUCT_REGION_VN) then
	SYSCFG_NEWTONG_OPEN = 1;
end
---------------------------------------------------------------

---------------------------------------------------------------
function IncludeForRegionVer(strPath, strLuaFileName)
	
	local strFullName = strPath;
		
	if(SYSCFG_PRODUCT_REGION_NAME == nil) then	
		print("region_version error!!!\n");
		return
	end
	
	strFullName = strFullName..SYSCFG_PRODUCT_REGION_NAME.."\\"..strLuaFileName;
	print(strFullName);	
	Include(strFullName);
end

-- ÅĞ¶ÏÍæ¼ÒÊÇ·ñ VIP
function IsVip()
	if (GetAccLeftTime() > 0) then 
		return 1;
	end
	return 0
end;