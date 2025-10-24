-- ====================== ÎÄ¼þÐÅÏ¢ ======================

-- ½£ÏÀÇéÔµÍøÂç°æÔ½ÄÏÊÕ·Ñ°æ - Õ½Ê¤Àñ°ü
-- ÎÄ¼þÃû¡¡£ºzhansheng_libao.lua
-- ´´½¨Õß¡¡£º×Ó·Çô~
-- ´´½¨Ê±¼ä£º2009-04-14 14:08:44

-- ======================================================

Include("\\script\\lib\\pay.lua");
Include("\\script\\lib\\awardtemplet.lua");
IncludeLib("ITEM")

SONGJIN_LIBAO_TASK_NO = 2619
SONGJIN_LIBAO_LIMIT   = 50


if not TB_QIANQIU_YINGLIE0904 then
	Include("\\script\\event\\jiefang_jieri\\200904\\qianqiu_yinglie\\head.lua");
end


function main(nItemIdx)
	local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIdx)));
	local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	if n_cur_date > n_item_date then
		Msg2Player("VËt phÈm qu¸ h¹n sö dông, tù ®éng mÊt ®i.")
		return 0;
	end
	
--	TB_QIANQIU_YINGLIE0904:reset_task()
	
	if IsCharged() == 0 or GetLevel() < 50 then
		Say("ChØ cã ng­êi ch¬i cÊp trªn 50 ®· n¹p thÎ míi cã thÓ sö dông.", 0)
		return 1;
	end
	
	if (CalcFreeItemCellCount() < 5) then
		Say(format("§Ó tr¸nh mÊt m¸t tµi s¶n, h·y b¶o ®¶m hµnh trang cßn ®ñ %d « trèng.", 5), 0);
		return 1;
	end
	
	local tb_award = {
--		{szName = "Khiªu chiÕn LÔ bao", tbProp = {6,1,2006,1,1,0}, nRate = 50},
--		{szName = "ThÇn bÝ kho¸ng th¹ch", tbProp = {6,1,398,1,0,0}, nRate = 0.05},
--		{szName = "Tö Thñy Tinh", tbProp = {4,239,1,1,1,0}, nRate = 0.2},
--		{szName = "Lôc Thñy Tinh", tbProp = {4,240,1,1,1,0}, nRate = 0.2},
--		{szName = "Lam Thñy Tinh", tbProp = {4,238,1,1,1,0}, nRate = 0.2},
--		{szName = "Tinh Hång B¶o Th¹ch", tbProp = {4,353,1,1,1,0}, nRate = 0.5},
--		{szName = "B¹ch Ch©n §¬n", tbProp = {6,1,1676,1,0,0}, nRate = 0.03, tbParam = {500000000}},
--		{szName = "HuyÕt Ch©n §¬n", tbProp = {6,1,1677,1,0,0}, nRate = 0.02, tbParam = {1000000000}},
--		{szName = "HuyÒn Ch©n §¬n", tbProp = {6,1,1678,1,0,0}, nRate = 0.01, tbParam = {1500000000}},
--		{szName = "An Bang B¨ng Tinh Th¹ch H¹ng Liªn", nQuality=1, tbProp = {0,164}, nRate = 0.01},
--		{szName = "An Bang Kª HuyÕt Th¹ch Giíi ChØ ", nQuality=1, tbProp = {0,167}, nRate = 3},
--		{szName = "An Bang Cóc Hoa Th¹ch ChØ hoµn", nQuality=1, tbProp = {0,165}, nRate = 3},
--		{szName = "An Bang §iÒn Hoµng Th¹ch Ngäc Béi", nQuality=1, tbProp = {0,166}, nRate = 3},
		{szName = "KÕ NghiÖp Kim Bµi", nQuality=1, tbProp = {6,1,2075,1,1,0}, nRate = 3},
		{szName = "Méng Long Kim Bµi", nQuality=1, tbProp = {6,1,2076,1,1,0},nRate = 3},
		{szName = "Minh ¶o Kim Bµi", nQuality=1, tbProp = {6,1,2077,1,1,0}, nRate = 3},
		{szName = "BÝch H¶i Kim Bµi", nQuality=1, tbProp = {6,1,2080,1,1,0}, nRate = 3},
		{szName = "Ma ThÞ Kim Bµi", nQuality=1, tbProp = {6,1,2082,1,1,0}, nRate = 3},
		{szName = "U lung kim bµi", nQuality=1, tbProp = {6,1,2204,1,1,0}, nRate = 3},
		{szName = "Ma s¸t kim bµi", nQuality=1, tbProp = {6,1,2205,1,1,0}, nRate = 3},	
		{szName = "§Þch kh¸i kim bµi", nQuality=1, tbProp = {6,1,2206,1,1,0}, nRate = 3},	
		{szName = "H¸m Thiªn Kim Bµi", nQuality=1, tbProp = {6,1,2237,1,1,0}, nRate = 3},
		{szName = "Thiªn Quang Kim Bµi", nQuality=1, tbProp = {6,1,2238,1,1,0}, nRate = 3},
		{szName = "V« Ma Kim Bµi", nQuality=1, tbProp = {6,1,2240,1,1,0}, nRate = 3},
		{szName = "L¨ng Nh¹c Kim Bµi", nQuality=1, tbProp = {6,1,2241,1,1,0}, nRate = 3},	
		{szName = "S­¬ng Tinh Kim Bµi", nQuality=1, tbProp = {6,1,2242,1,1,0}, nRate = 3},	
		{szName = "V« Danh Kim Bµi", nQuality=1, tbProp = {6,1,4320,1,1,0}, nRate = 3},
		{szName = "Vinh DiÖu Kim Bµi", nQuality=1, tbProp = {6,1,4321,1,1,0}, nRate = 3},
		{szName = "Tø Kh«ng Kim Bµi", nQuality=1, tbProp = {6,1,4309,1,1,0}, nRate = 3},
		{szName = "Phôc Ma Kim Bµi", nQuality=1, tbProp = {6,1,4310,1,1,0}, nRate = 3},	
		{szName = "Ngù Long Kim Bµi", nQuality=1, tbProp = {6,1,4311,1,1,0}, nRate = 3},	
		{szName = "V« Gian Kim Bµi", nQuality=1, tbProp = {6,1,4312,1,1,0}, nRate = 3},
		{szName = "Tª Hoµng Kim Bµi", nQuality=1, tbProp = {6,1,4313,1,1,0}, nRate = 3},
		{szName = "B¨ng Hµn Kim Bµi", nQuality=1, tbProp = {6,1,4314,1,1,0}, nRate = 3},
		{szName = "S©m Hoµng Kim Bµi", nQuality=1, tbProp = {6,1,4315,1,1,0}, nRate = 3},	
		{szName = "§ång Cõu Kim Bµi", nQuality=1, tbProp = {6,1,4316,1,1,0}, nRate = 3},	
		{szName = "CËp Phong Kim Bµi", nQuality=1, tbProp = {6,1,4317,1,1,0}, nRate = 3},
		{szName = "L«i Khung Kim Bµi", nQuality=1, tbProp = {6,1,4318,1,1,0}, nRate = 3},
		{szName = "S­¬ng Tinh Kim Bµi", nQuality=1, tbProp = {6,1,2242,1,1,0}, nRate = 3},
		{szName = "S­¬ng Tinh Kim Bµi", nQuality=1, tbProp = {6,1,2242,1,1,0}, nRate = 3},		
		{szName = "Hai tr¨m v¹n ®iÓm kinh nghiÖm", nExp = 2000000, nRate = 4},
		{szName = "Hai tr¨m v¹n ®iÓm kinh nghiÖm", nExp = 3000000, nRate = 3},
		{szName = "Hai tr¨m v¹n ®iÓm kinh nghiÖm", nExp = 4000000, nRate = 3},
		{szName = "Hai tr¨m v¹n ®iÓm kinh nghiÖm", nExp = 5000000, nRate = 3},
		{szName = "Hai tr¨m v¹n ®iÓm kinh nghiÖm", nExp = 6000000, nRate = 3},
		{szName = "Hai tr¨m v¹n ®iÓm kinh nghiÖm", nExp = 7000000, nRate = 3},
		{szName = "Hai tr¨m v¹n ®iÓm kinh nghiÖm", nExp = 8000000, nRate = 3},
	
	}
	
	local rtotal = 10000000
	local rcur=random(1,rtotal);
	local rstep=0;
	local n_award_idx = 0;
	for i=1,getn(tb_award) do
		rstep=rstep+floor(tb_award[i].nRate*rtotal/100);
		if(rcur <= rstep) then
			n_award_idx = i;
			break
		end
	end
	
	if (n_award_idx == 0 or n_award_idx > getn(tb_award)) then
		return 1;
	end
	
	-- ÏÞÖÆÃ¿ÌìÊ¹ÓÃ20¸ö
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(SONGJIN_LIBAO_TASK_NO, 0, 8) -- Ê¹ÓÃ´ÎÊý
	local nLastUseDate = GetBitTask(SONGJIN_LIBAO_TASK_NO, 8, 24) -- ÉÏ´ÎÊ¹ÓÃÊ±¼ä
	
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	
	if (nUseTimes >= SONGJIN_LIBAO_LIMIT) then
		Say(format("Mét ngµy chØ cã thÓ sö dông %d Tèng Kim lÔ bao", SONGJIN_LIBAO_LIMIT), 0)
		return 1;
	end
		
	nUseTimes = nUseTimes + 1;
	SetBitTask(SONGJIN_LIBAO_TASK_NO, 0, 8,  nUseTimes);
	SetBitTask(SONGJIN_LIBAO_TASK_NO, 8, 24, nLastUseDate);
	
	tbAwardTemplet:GiveAwardByList(tb_award[n_award_idx], "Tèng Kim lÔ bao");
end
