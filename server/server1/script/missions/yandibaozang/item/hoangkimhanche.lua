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
		{szName="[H¹n chÕ thêi gian] Méng Long Tö Kim B¸t Nh· Giíi",tbProp={0,769},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] Phôc Ma V« L­îng Kim Cang UyÓn",tbProp={0,771},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] Tø Kh«ng §¹t Ma T¨ng Hµi",tbProp={0,776},	nQuality = 1,nRate=5},				
		{szName="[H¹n chÕ thêi gian] Ngù Long TÊn Phong Ph¸t C¬",tbProp={0,793},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] V« Gian Thanh Phong NhuyÔn KÞch",tbProp={0,796},	nQuality = 1,nRate=0.2},
		{szName="[H¹n chÕ thêi gian] V« YÓm Thu Thñy L­u Quang §¸i",tbProp={0,801},	nQuality = 1,nRate=5},	
		{szName="[H¹n chÕ thêi gian] V« TrÇn TÞnh ¶nh L­u T«",tbProp={0,808},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu",tbProp={0,811},	nQuality = 1,nRate=5},	
		{szName="[H¹n chÕ thêi gian] BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n",tbProp={0,816},	nQuality = 1,nRate=5},			
		{szName="[H¹n chÕ thêi gian] Minh Hoan Song Hoµn Xµ KhÊu",tbProp={0,829},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] Chó Phäc Trïng Cèt Ngäc Béi",tbProp={0,834},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] Thiªn Quang §Þa Hµnh Thiªn Lý  Ngoa",tbProp={0,843},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] §Þa Ph¸ch Phong Hµn Thóc Yªu",tbProp={0,854},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] §ång Cõu Ngù Long Ngäc Béi",tbProp={0,855},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] Ma S¸t Cö Háa Liªu Thiªn Hoµn",tbProp={0,868},	nQuality = 1,nRate=5},		
		{szName="[H¹n chÕ thêi gian] Ma Hoµng Dung Kim §o¹n NhËt Giíi",tbProp={0,874},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] L¨ng Nh¹c V« Ng· Thóc §¸i",tbProp={0,876},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn",tbProp={0,881},	nQuality = 1,nRate=5},		
		{szName="[H¹n chÕ thêi gian] L«i Khung Linh Ngäc Èn L«i UyÓn",tbProp={0,888},	nQuality = 1,nRate=5},
		{szName="[H¹n chÕ thêi gian] Vô Hoan Th¸i Uyªn Ch©n Vò Liªn",tbProp={0,891},	nQuality = 1,nRate=5},	
		{szName="[H¹n chÕ thêi gian] Vô Hoan Th¸i Uyªn Ch©n Vò Liªn",tbProp={0,891},	nQuality = 1,nRate=5},			
    	}
    	
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "B¶o R­¬ng Hoµng Kim"))
    	return
	else
		Msg2Player("CÇn cã 5 Ch×a Khãa Hoµng Kim míi më ®­îc B¶o R­¬ng")
		return 1
	end
end
