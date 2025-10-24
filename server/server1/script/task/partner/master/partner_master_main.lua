
-- ====================== ÎÄ¼şĞÅÏ¢ ======================

-- ½£ÏÀÇéÔµonline ÇéÒå½­ºşÍ¬°é¾çÇé½Å±¾ÊµÌå´¦ÀíÎÄ¼ş - ×ÜË÷ÒıÎÄ¼ş
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

-- ¸÷¸ö¼¶±ğµÄÍ¬°é¾çÇéÈÎÎñÊµÌå´¦ÀíÎÄ¼ş
Include ("\\script\\task\\partner\\master\\partner_master_main_01.lua");
Include ("\\script\\task\\partner\\master\\partner_master_main_02.lua");
Include ("\\script\\task\\partner\\master\\partner_master_main_03.lua");
Include ("\\script\\task\\partner\\master\\partner_master_main_04.lua");
Include ("\\script\\task\\partner\\master\\partner_master_main_05.lua");

-- ÓëÁúÎå¶Ô»°µÄ×ÜÑ¡Ïî
taskProcess_000 = inherit(CProcess, {

	taskEntity = function(self, nCondition)
	
		local strMain = { 
                               "<npc> tèng kim lo¹n chiÕn , M«ng Cæ quËt khëi, nhiÒu lÇn cïng nam tèng thÇm th«ng kho¶n khóc ®İch mËt m­u , còng bŞ kim quèc c­íp lÊy ®­îc , t©y h¹ quèc chñ rèt côc ph¸t gi¸c ta ®¹i Tèng v­¬ng h­íng ®· tõ tõ h­íng ®i phóc mÊt ®İch l»n ranh . v× vËy h¾n bİ khiÕn/sai nhÊt phÈm ®­êng vâ sÜ tiÕn vµo Trung Nguyªn , t×m kiÕm mét mãn mÊt tİch ®· l©u ®å . cô thÓ lµ thø g× kh«ng biÕt ®­îc , bÊt qu¸ chóng ta l¹i tõ chuyÖn nµy thuËn ®»ng sê d­a t×m ra liÔu mét İt ®Çu mèi . bÊt qu¸ nghÜa qu©n ®¾c lùc kiÖn t­íng rèi rİt ë c¸c trªn chiÕn tr­êng trî gióp triÒu ®×nh chèng l¹i kim quèc , tr­íc m¾t ta b©y giê nh©n thñ thiÕu hôt . hy väng ng­¬i cã thÓ gióp bËn rén lµm mÊy mãn ®iÒu tra . nh÷ng nhiÖm vô nµy chia ra liÖt cö xuèng . ë ng­¬i hoµn thµnh t­¬ng øng kŞch t×nh nhiÖm vô sau , sau nµy mçi ngµy , mçi vŞ ®ång b¹n còng cã thÓ lùa chän hai ®· hoµn thµnh kŞch t×nh nhiÖm vô tiÕp tôc lµm mét lÇn , hy väng ng­¬i ngµn v¹n gióp ta mét c¸i !", 
                            "ThŞ lang chi tö/#taskProcess_001:doTaskEntity()", 
                            "Khèng xµ nh©n chi bİ/#taskProcess_002_01:doTaskEntity()", 
                            "Ch©u b¸u th­¬ng nh©n /#taskProcess_003_Main:doTaskEntity()", 
                            "DŞ téc vâ sÜ /#taskProcess_004_Main:doTaskEntity()", 
                            "Ta ®Òu kh«ng muèn nhËn, sau nµy trë l¹i./OnTaskExit"}
		
		if nCondition==1 then
			SelectDescribe(strMain);
			return 1;
		end;
		return 0;
	
	end,

});

