Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

function GetDesc(nItem)
	return ""
end

function main(nItem)
	if (CalcFreeItemCellCount() < 30) then
		Talk(1, "", "<#>Xin h·y s¾p xÕp l¹i hµnh trang Ýt nhÊt cßn trèng 30 « råi h·y më B¶o R­¬ng")
		return 1
	end
	local nCount = CalcItemCount(3, 6, 1, 4261, -1)
	if nCount >= 10 then
		--Fix lçi kh«ng mÊt ch×a khãa nh­ ý khi bá trong r­¬ng - Modified by DinhHQ -20110812
    		if ConsumeItem(3, 10, 6, 1, 4261, -1) ~= 1 then		
    			Msg2Player("CÇn cã 10 Ch×a Khãa Hoµng Kim míi më ®­îc B¶o R­¬ng")
			return 1
    		end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--¿Û³ýÐÅÊ¹±¦Ïä
    	local tbAward = 
    	{
		{szName="Vinh DiÖu Chi Y",tbProp={0,214},nQuality = 1},
		{szName="Tinh ChuÈn Chi Ngoa ",tbProp={0,215},nQuality = 1},
    	}
    	
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "B¶o R­¬ng Hoµng Kim"))
    	return
	else
		Msg2Player("CÇn cã 10 Ch×a Khãa Hoµng Kim míi më ®­îc B¶o R­¬ng")
		return 1
	end
end
