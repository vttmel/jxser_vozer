Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

function GetDesc(nItem)
	return ""
end

function main(nItem)
	if (CalcFreeItemCellCount() < 1) then
		Talk(1, "", "<#>Xin h·y s¾p xÕp l¹i hµnh trang Ýt nhÊt cßn trèng 1 « råi h·y më B¶o R­¬ng")
		return 1
	end
	local nCount = CalcItemCount(3, 6, 1, 2744, -1)
	if nCount >= 1 then
		--Fix lçi kh«ng mÊt ch×a khãa nh­ ý khi bá trong r­¬ng - Modified by DinhHQ -20110812
    		if ConsumeItem(3, 1, 6, 1, 2744, -1) ~= 1 then
    			Msg2Player("CÇn cã mét Ch×a Khãa Nh­ Y míi më ®­îc B¶o R­¬ng")
			return 1
    		end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--¿Û³ýÐÅÊ¹±¦Ïä
    	local tbAward = 
    	{
    		{szName = "§å Phæ Tö M·ng Kh«i", tbProp = {6, 1,2714,1,0,0}, nRate = 0.03},
		{szName = "§å Phæ Tö M·ng Y", tbProp = {6, 1,2715,1,0,0}, nRate = 0.03},
		{szName = "§å Phæ Tö M·ng Yªu §¸i", tbProp = {6, 1,2717,1,0,0}, nRate = 0.03},
		{szName = "§å Phæ Tö M·ng Hé UyÓn", tbProp = {6, 1,2718,1,0,0}, nRate = 0.07},
		{szName = "§å Phæ Tö M·ng H¹ng Liªn", tbProp = {6, 1,2719,1,0,0}, nRate = 0.02},
		{szName = "§å Phæ Tö M·ng Béi", tbProp = {6, 1,2720,1,0,0}, nRate = 0.07},
		{szName = "§å Phæ Tö M·ng Hµi", tbProp = {6, 1,2716,1,0,0}, nRate = 0.07},
		{szName = "§å Phæ Tö M·ng Th­îng Giíi ChØ", tbProp = {6, 1,2721,1,0,0}, nRate = 0.01},
		{szName = "§å Phæ Tö M·ng H¹ Giíi ChØ", tbProp = {6, 1,2722,1,0,0}, nRate = 0.01},
		{szName = "§å Phæ Tö M·ng KhÝ Giíi", tbProp = {6, 1,2723,1,0,0}, nRate = 0.01},
		{szName = "Tö M·ng LÖnh", tbProp = {6, 1,2350,1,0,0}, nRate = 0.01},
		{szName = "HuyÒn Viªn LÖnh", tbProp = {6, 1,2351,1,0,0}, nRate = 0.2},
		{szName="3.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(3000000, "TÝn Sø B¶o R­¬ng")
			end,
			nRate = 63.34,
		},
		{szName="5.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(5000000, "TÝn Sø B¶o R­¬ng")
			end,
			nRate = 30,
		},
		{szName="8.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(8000000, "TÝn Sø B¶o R­¬ng")
			end,
			nRate = 5,
		},
		{szName="12.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(12000000, "TÝn Sø B¶o R­¬ng")
			end,
			nRate = 1,
		},
		{szName = "Thiªn B¶o Khè LÖnh", tbProp = {6, 1,2813,1,0,0}, nRate = 0.1},
    	}
    	
--    	local tbAward2 = {
--    		{szName = "×Ïòþ¿øÍ¼Æ×", tbProp = {6, 1, 2714 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "×ÏòþÒÂÍ¼Æ×", tbProp={6,1,2715,1,0,0}, nRate = 0.17,},--
--    		{szName = "×ÏòþÑ¥Í¼Æ×", tbProp = {6, 1, 2716 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "×ÏòþÑü´øÍ¼Æ×", tbProp = {6, 1, 2717 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "×Ïòþ»¤ÍóÍ¼Æ×", tbProp = {6, 1, 2718 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "×ÏòþÏîÁ´Í¼Æ×", tbProp = {6, 1, 2719 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "×ÏòþÅåÍ¼Æ×", tbProp = {6, 1, 2720 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "×ÏòþÉÏ½äÍ¼Æ×", tbProp = {6, 1, 2721 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "×ÏòþÏÂ½äÍ¼Æ×", tbProp = {6, 1, 2722 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "×ÏòþÎäÆ÷Í¼Æ×", tbProp = {6, 1, 2723 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "×Ï¾§¿óÊ¯", tbProp = {6, 1, 30040 , 1, 0 ,0}, nRate = 20,},
--    		{szName = "¾«Á¶Ê¯", tbProp = {6, 1, 2280 , 1, 0 ,0}, nRate = 20,},
--    		{szName = "×Ïòþ¹éÔª·û", tbProp = {6, 1, 2735 , 1, 0 ,0}, nRate = 0.5,},
--    		{szName = "×Ïòþ¼ø¶¨·û", tbProp = {6, 1, 2734 , 1, 0 ,0}, nRate = 0.5,},
--    		{szName = "Éñ¹ó²¹Ñªµ¤£¨Ð¡£©", tbProp = {6, 1, 2583 , 1, 0 ,0}, nCount = 10, nRate = 27.3,},
--    		{szName = "Éñ¹ó²¹Ñªµ¤£¨ÖÐ£©", tbProp = {6, 1, 2582 , 1, 0 ,0}, nCount = 10, nRate = 20,},
--    		{szName = "Éñ¹ó²¹Ñªµ¤£¨´ó£©", tbProp = {6, 1, 2581 , 1, 0 ,0}, nCount = 10, nRate = 10,},
--    	}
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "TÝn Sø B¶o R­¬ng"))
    	return
	else
		Msg2Player("CÇn cã mét Ch×a Khãa Nh­ Y míi më ®­îc B¶o R­¬ng")
		return 1
	end
end
