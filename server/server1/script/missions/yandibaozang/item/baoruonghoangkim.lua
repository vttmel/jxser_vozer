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
	if nCount >= 1 then
		--Fix lçi kh«ng mÊt ch×a khãa nh­ ý khi bá trong r­¬ng - Modified by DinhHQ -20110812
    		if ConsumeItem(3, 1, 6, 1, 4261, -1) ~= 1 then
    			Msg2Player("CÇn cã mét Ch×a Khãa Hoµng Kim míi më ®­îc B¶o R­¬ng")
			return 1
    		end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--¿Û³ýÐÅÊ¹±¦Ïä
    	local tbAward = 
    	{
		{szName="Méng Long ChÝnh Hång T¨ng M·o",tbProp={0,1},	nQuality = 1,nRate=1.25},
		{szName="Méng Long HuyÒn Ti Ph¸t ®¸i",tbProp={0,3},	nQuality = 1,nRate=1.25},
		{szName="Méng Long §¹t Ma T¨ng hµi",tbProp={0,5},	nQuality = 1,nRate=1.25},				
		{szName="Phôc Ma HuyÒn Hoµng Cµ Sa",tbProp={0,7},	nQuality = 1,nRate=1.25},
		{szName="Phôc Ma Phæ §é T¨ng hµi",tbProp={0,10},	nQuality = 1,nRate=1.25},
		{szName="Phôc Ma ¤ Kim NhuyÔn §iÒu",tbProp={0,8},	nQuality = 1,nRate=1.25},	
		{szName="Tø Kh«ng Tö Kim Cµ Sa",tbProp={0,12},	nQuality = 1,nRate=1.25},
		{szName="Tø Kh«ng NhuyÔn B× Hé UyÓn",tbProp={0,14},	nQuality = 1,nRate=1.25},	
		{szName="Tø Kh«ng Hé ph¸p Yªu ®¸i",tbProp={0,13},	nQuality = 1,nRate=1.25},			
		{szName="H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p",tbProp={0,17},	nQuality = 1,nRate=1.25},
		{szName="H¸m Thiªn Uy Vò Thóc yªu ®¸i",tbProp={0,18},	nQuality = 1,nRate=1.25},
		{szName="H¸m Thiªn Thõa Long ChiÕn Ngoa",tbProp={0,20},	nQuality = 1,nRate=1.25},
		{szName="KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",tbProp={0,22},	nQuality = 1,nRate=1.25},
		{szName="KÕ NghiÖp B¹ch Hæ V« Song khÊu",tbProp={0,23},	nQuality = 1,nRate=1.25},
		{szName="KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",tbProp={0,25},	nQuality = 1,nRate=1.25},		
		{szName="Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p",tbProp={0,27},	nQuality = 1,nRate=1.25},
		{szName="Ngù Long Thiªn M«n Thóc Yªu hoµn",tbProp={0,28},	nQuality = 1,nRate=1.25},
		{szName="Ngù Long TÊn Phong Hé yÓn",tbProp={0,29},	nQuality = 1,nRate=1.25},		
		{szName="V« Gian PhÊt V©n Ti ®¸i",tbProp={0,33},	nQuality = 1,nRate=1.25},
		{szName="V« Gian CÇm VËn Hé UyÓn",tbProp={0,34},	nQuality = 1,nRate=1.25},
		{szName="V« Gian Thanh Phong Truy Y",tbProp={0,32},	nQuality = 1,nRate=1.25},		
		{szName="V« Ma Ma Ni qu¸n",tbProp={0,36},	nQuality = 1,nRate=1.25},
		{szName="V« Ma Tö Kh©m Cµ Sa",tbProp={0,37},	nQuality = 1,nRate=1.25},
		{szName="V« Ma Hång Truy NhuyÔn Th¸p hµi",tbProp={0,40},	nQuality = 1,nRate=1.25},		
		{szName="V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",tbProp={0,42},	nQuality = 1,nRate=1.25},
		{szName="Tª Hoµng TuÖ T©m Khinh Sa Y	",tbProp={0,47},	nQuality = 1,nRate=1.25},
		{szName="Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",tbProp={0,48},	nQuality = 1,nRate=1.25},
		{szName="Tª Hoµng B¨ng Tung CÈm uyÓn",tbProp={0,49},	nQuality = 1,nRate=1.25},		
		{szName="BÝch H¶i Hoµn Ch©u Vò Liªn	",tbProp={0,52},	nQuality = 1,nRate=1.25},
		{szName="BÝch H¶i Hång Linh Kim Ti ®¸i	",tbProp={0,53},	nQuality = 1,nRate=1.25},
		{szName="BÝch H¶i Hång L¨ng Ba",tbProp={0,53},	nQuality = 1,nRate=1.25},		
		{szName="U Lung XÝch YÕt MËt trang",tbProp={0,57},	nQuality = 1,nRate=1.25},
		{szName="U Lung Thanh Ng« TriÒn yªu",tbProp={0,58},	nQuality = 1,nRate=1.25},
		{szName="U Lung Ng©n ThÒm Hé UyÓn",tbProp={0,59},	nQuality = 1,nRate=1.25},		
		{szName="U Lung MÆc Thï NhuyÔn Lý",tbProp={0,60},	nQuality = 1,nRate=1.25},		
		{szName="Minh ¶o U §éc ¸m Y",tbProp={0,62},	nQuality = 1,nRate=1.25},
		{szName="Minh ¶o Hñ Cèt Hé uyÓn",tbProp={0,64},	nQuality = 1,nRate=1.25},
		{szName="Minh ¶o Song Hoµn Xµ Hµi",tbProp={0,65},	nQuality = 1,nRate=1.25},		
		{szName="Chó Ph­îc DiÖt L«i C¶nh Phï",tbProp={0,67},	nQuality = 1,nRate=1.25},
		{szName="B¨ng Hµn HuyÒn Y Thóc Gi¸p",tbProp={0,72},	nQuality = 1,nRate=1.25},
		{szName="B¨ng Hµn T©m TiÔn Yªu KhÊu",tbProp={0,73},	nQuality = 1,nRate=1.25},
		{szName="B¨ng Hµn NguyÖt ¶nh Ngoa",tbProp={0,75},	nQuality = 1,nRate=1.25},		
		{szName="Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï",tbProp={0,77},	nQuality = 1,nRate=1.25},
		{szName="Thiªn Quang S©m La Thóc §¸i",tbProp={0,78},	nQuality = 1,nRate=1.25},
		{szName="Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",tbProp={0,79},	nQuality = 1,nRate=1.25},		
		{szName="S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",tbProp={0,82},	nQuality = 1,nRate=1.25},
		{szName="S©m Hoang Hån Gi¶o Yªu Thóc",tbProp={0,83},	nQuality = 1,nRate=1.25},
		{szName="S©m Hoang Tinh VÉn Phi Lý",tbProp={0,85},	nQuality = 1,nRate=1.25},		
		{szName="§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",tbProp={0,86},	nQuality = 1,nRate=1.25},
		{szName="§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",tbProp={0,87},	nQuality = 1,nRate=1.25},		
		{szName="§ång Cõu Phi Long §Çu hoµn",tbProp={0,91},	nQuality = 1,nRate=1.25},
		{szName="§ång Cõu Gi¸ng Long C¸i Y",tbProp={0,92},	nQuality = 1,nRate=1.25},
		{szName="§ång Cõu TiÒm Long Yªu §¸i",tbProp={0,93},	nQuality = 1,nRate=1.25},
		{szName="§Þch Kh¸i Cöu §¹i C¸i Y",tbProp={0,97},	nQuality = 1,nRate=1.25},
		{szName="§Þch Kh¸i TriÒn M·ng yªu ®¸i",tbProp={0,98},	nQuality = 1,nRate=1.25},
		{szName="§Þch Kh¸i CÈu TÝch B× Hé uyÓn",tbProp={0,99},	nQuality = 1,nRate=1.25},
		{szName="Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",tbProp={0,102},	nQuality = 1,nRate=1.25},
		{szName="Ma S¸t XÝch Ký Táa Yªu KhÊu",tbProp={0,103},	nQuality = 1,nRate=1.25},
		{szName="Ma S¸t Cö Háa Liªu Thiªn uyÓn",tbProp={0,104},	nQuality = 1,nRate=1.25},		
		{szName="Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",tbProp={0,107},	nQuality = 1,nRate=1.25},
		{szName="Ma Hoµng Khª Cèc Thóc yªu ®¸i",tbProp={0,108},	nQuality = 1,nRate=1.25},
		{szName="Ma Hoµng §¨ng §¹p Ngoa",tbProp={0,110},	nQuality = 1,nRate=1.25},		
		{szName="Ma ThÞ LÖ Ma PhÖ T©m Liªn",tbProp={0,112},	nQuality = 1,nRate=1.25},
		{szName="Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={0,114},	nQuality = 1,nRate=1},
		{szName="Ma ThÞ s¬n  H¶i Phi Hång Lý",tbProp={0,115},	nQuality = 1,nRate=1.25},		
		{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,116},	nQuality = 1,nRate=1.25},
		{szName="L¨ng Nh¹c V« Ng· ®¹o bµo",tbProp={0,117},	nQuality = 1,nRate=1.25},
		{szName="L¨ng Nh¹c Né L«i Giíi",tbProp={0,118},	nQuality = 1,nRate=1.25},		
		{szName="CËp Phong Tam Thanh Phï",tbProp={0,122},	nQuality = 1,nRate=1.25},
		{szName="CËp Phong HuyÒn Ti Tam §o¹n cÈm",tbProp={0,123},	nQuality = 1,nRate=1.25},
		{szName="CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",tbProp={0,124},	nQuality = 1,nRate=1.25},		
		{szName="S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo",tbProp={0,127},	nQuality = 1,nRate=1.25},
		{szName="S­¬ng Tinh Thanh Phong Lò ®¸i",tbProp={0,128},	nQuality = 1,nRate=1.25},
		{szName="S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ",tbProp={0,129},	nQuality = 1,nRate=1.25},		
		{szName="L«i Khung Thiªn §Þa Hé phï",tbProp={0,132},	nQuality = 1,nRate=1.25},
		{szName="L«i Khung Phong L«i Thanh CÈm ®¸i",tbProp={0,133},	nQuality = 1,nRate=1.25},
		{szName="L«i Khung Linh Ngäc UÈn L«i",tbProp={0,134},	nQuality = 1,nRate=1.25},		
		{szName="Vô ¶o B¾c Minh §¹o qu¸n",tbProp={0,136},	nQuality = 1,nRate=1.25},
		{szName="Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",tbProp={0,139},	nQuality = 1,nRate=1.25},
		{szName="Vô ¶o Tung Phong TuyÕt ¶nh ngoa",tbProp={0,140},	nQuality = 1,nRate=1.25},		
		{szName="3.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(200000000, "B¶o R­¬ng Hoµng Kim")
			end,
			nRate = 0.25,
		},		
    	}
    	
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "B¶o R­¬ng Hoµng Kim"))
    	return
	else
		Msg2Player("CÇn cã mét Ch×a Khãa Hoµng Kim míi më ®­îc B¶o R­¬ng")
		return 1
	end
end
