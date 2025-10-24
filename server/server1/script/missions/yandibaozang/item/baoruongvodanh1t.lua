Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

function GetDesc(nItem)
	return ""
end

function main(nItem)
	if (CalcFreeItemCellCount() < 10) then
		Talk(1, "", "<#>Xin h·y s¾p xÕp l¹i hµnh trang Ýt nhÊt cßn trèng 10 « råi h·y më B¶o R­¬ng")
		return 1
	end
	local nCount = CalcItemCount(3, 6, 1, 4261, -1)
	if nCount >= 5 then
		--Fix lçi kh«ng mÊt ch×a khãa nh­ ý khi bá trong r­¬ng - Modified by DinhHQ -20110812
    		if ConsumeItem(3, 5, 6, 1, 4261, -1) ~= 1 then
    			Msg2Player("CÇn cã 5 Ch×a Khãa Hoµng Kim míi më ®­îc B¶o R­¬ng")
			return 1
    		end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--¿Û³ýÐÅÊ¹±¦Ïä
    	local tbAward = 
    	{
		{szName="V« Danh ChØ Hoµn",tbProp={0,141},	nQuality = 1,nExpiredTime=10800},
		{szName="V« Danh Giíi ChØ ",tbProp={0,142},	nQuality = 1,nExpiredTime=10800},
    	}
    	
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "B¶o R­¬ng Hoµng Kim"))
    	return
	else
		Msg2Player("CÇn cã mét Ch×a Khãa Hoµng Kim míi më ®­îc B¶o R­¬ng")
		return 1
	end
end
