Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-----------------------------------------------
ListHKMP={
"Méng Long ChÝnh Hång T¨ng M·o","Méng Long Kim Ti ChÝnh Hång Cµ Sa","Méng Long HuyÒn Ti Ph¸t ®¸i","Méng Long PhËt Ph¸p HuyÒn Béi","Méng Long §¹t Ma T¨ng hµi","[TrÊn Bang Chi B¶o] Méng Long Tö Kim B¸t Nh· Giíi",
"Phôc Ma Tö Kim C«n","Phôc Ma HuyÒn Hoµng Cµ Sa","Phôc Ma ¤ Kim NhuyÔn §iÒu","Phôc Ma PhËt T©m NhuyÔn KhÊu","Phôc Ma Phæ §é T¨ng hµi","[TrÊn Bang Chi B¶o] Phôc Ma V« L­îng Kim Cang UyÓn",
"Tø Kh«ng Gi¸ng Ma Giíi ®ao","Tø Kh«ng Tö Kim Cµ Sa","Tø Kh«ng Hé ph¸p Yªu ®¸i","Tø Kh«ng NhuyÔn B× Hé UyÓn","Tø Kh«ng Giíi LuËt Ph¸p giíi","[TrÊn Bang Chi B¶o] Tø Kh«ng §¹t Ma T¨ng Hµi",

"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy","H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p","H¸m Thiªn Uy Vò Thóc yªu ®¸i","H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn","H¸m Thiªn Thõa Long ChiÕn Ngoa",
"KÕ NghiÖp B«n L«i Toµn Long th­¬ng","KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i","KÕ NghiÖp B¹ch Hæ V« Song khÊu","KÕ NghiÖp HáaV©n Kú L©n Thñ ","KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",
"Ngù Long L­îng Ng©n B¶o ®ao","Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p","Ngù Long Thiªn M«n Thóc Yªu hoµn","Ngù Long TÊn Phong Hé yÓn","Ngù Long TuyÖt MÖnh ChØ hoµn","[TrÊn Bang Chi B¶o] Ngù Long TÊn Phong Ph¸t C¬",

"V« Gian û Thiªn KiÕm","V« Gian Thanh Phong Truy Y","V« Gian PhÊt V©n Ti ®¸i","V« Gian CÇm VËn Hé UyÓn","V« Gian B¹ch Ngäc Bµn ChØ ","[TrÊn Bang Chi B¶o] V« Gian Thanh Phong NhuyÔn KÞch",
"V« Ma Ma Ni qu¸n","V« Ma Tö Kh©m Cµ Sa","V« Ma B¨ng Tinh ChØ Hoµn","V« Ma TÈy T­îng Ngäc KhÊu ","V« Ma Hång Truy NhuyÔn Th¸p hµi","[TrÊn Bang Chi B¶o] V« YÓm Thu Thñy L­u Quang §¸i",
"V« TrÇn Ngäc N÷ Tè T©m qu¸n","V« TrÇn Thanh T©m H­íng ThiÖn Ch©u","V« TrÇn Tõ Bi Ngäc Ban ChØ ","V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi","V« TrÇn PhËt Quang ChØ Hoµn","[TrÊn Bang Chi B¶o] V« TrÇn TÞnh ¶nh L­u T«",

"Tª Hoµng Phông Nghi ®ao","Tª Hoµng TuÖ T©m Khinh Sa Y","Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i","Tª Hoµng B¨ng Tung CÈm uyÓn","Tª Hoµng Thóy Ngäc ChØ Hoµn","[TrÊn Bang Chi B¶o] Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu",
"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao","BÝch H¶i Hoµn Ch©u Vò Liªn","BÝch H¶i Hång Linh Kim Ti ®¸i","BÝch H¶i Hång L¨ng Ba","BÝch H¶i Khiªn TÕ ChØ hoµn","[TrÊn Bang Chi B¶o] BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n",

"U Lung Kim Xµ Ph¸t ®¸i","U Lung XÝch YÕt MËt trang","U Lung Thanh Ng« TriÒn yªu","U Lung Ng©n ThÒm Hé UyÓn","U Lung MÆc Thï NhuyÔn Lý ",
"Minh ¶o Tµ S¸t §éc NhËn","Minh ¶o U §éc ¸m Y","Minh ¶o §éc YÕt ChØ Hoµn","Minh ¶o Hñ Cèt Hé uyÓn","Minh ¶o Song Hoµn Xµ Hµi","[TrÊn Bang Chi B¶o] Minh Hoan Song Hoµn Xµ KhÊu",
"Chó Ph­îc Ph¸ gi¸p ®Çu hoµn","Chó Ph­îc DiÖt L«i C¶nh Phï ","Chó Ph­îc U ¶o ChØ Hoµn","Chó Ph­îc Xuyªn T©m §éc UyÓn","Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa","[TrÊn Bang Chi B¶o] Chó Phäc Trïng Cèt Ngäc Béi",

"B¨ng Hµn §¬n ChØ Phi §ao","B¨ng Hµn HuyÒn Y Thóc Gi¸p","B¨ng Hµn T©m TiÔn Yªu KhÊu","B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi","B¨ng Hµn NguyÖt ¶nh Ngoa",
"Thiªn Quang Hoa Vò M¹n Thiªn","Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ","Thiªn Quang S©m La Thóc §¸i","Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c","Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn","[TrÊn Bang Chi B¶o] Thiªn Quang §Þa Hµnh Thiªn Lý  Ngoa",
"S©m Hoang Phi Tinh §o¹t Hån","S©m Hoang KimTiÒn Liªn Hoµn Gi¸p","S©m Hoang Hån Gi¶o Yªu Thóc","S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi","S©m Hoang Tinh VÉn Phi Lý ",
"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n","§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn","§Þa Ph¸ch TÝch LÞch L«i Háa Giíi","§Þa Ph¸ch KhÊu T©m tr¹c","§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa","[TrÊn Bang Chi B¶o] §Þa Ph¸ch Phong Hµn Thóc Yªu",

"§ång Cõu Phi Long §Çu hoµn","§ång Cõu Gi¸ng Long C¸i Y","§ång Cõu TiÒm Long Yªu §¸i","§ång Cõu Kh¸ng Long Hé UyÓn","§ång Cõu KiÕn Long Ban ChØ ","[TrÊn Bang Chi B¶o] §ång Cõu Ngù Long Ngäc Béi",
"§Þch Kh¸i Lôc Ngäc Tr­îng","§Þch Kh¸i Cöu §¹i C¸i Y","§Þch Kh¸i TriÒn M·ng yªu ®¸i","§Þch Kh¸i CÈu TÝch B× Hé uyÓn","§Þch Kh¸i Th¶o Gian Th¹ch giíi",

"Ma S¸t Quû Cèc U Minh Th­¬ng","Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p","Ma S¸t XÝch Ký Táa Yªu KhÊu","Ma S¸t Cö Háa Liªu Thiªn uyÓn","Ma S¸t V©n Long Thæ Ch©u giíi","[TrÊn Bang Chi B¶o] Ma S¸t Cö Háa Liªu Thiªn Hoµn",
"Ma Hoµng Kim Gi¸p Kh«i","Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn","Ma Hoµng Khª Cèc Thóc yªu ®¸i","Ma Hoµng HuyÕt Y Thó Tr¹c","Ma Hoµng §¨ng §¹p Ngoa","[TrÊn Bang Chi B¶o] Ma Hoµng Dung Kim §o¹n NhËt Giíi",
"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn","Ma ThÞ LÖ Ma PhÖ T©m Liªn","Ma ThÞ NghiÖp Háa U Minh Giíi","Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi","Ma ThÞ s¬n  H¶i Phi Hång Lý ","[TrÊn Bang Chi B¶o] Ma ThÞ LÖ Ma PhÖ T©m §¸i",

"L¨ng Nh¹c Th¸i Cùc KiÕm","L¨ng Nh¹c V« Ng· ®¹o bµo","L¨ng Nh¹c Né L«i Giíi","L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi","L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi","[TrÊn Bang Chi B¶o] L¨ng Nh¹c V« Ng· Thóc §¸i",
"CËp Phong Ch©n Vò KiÕm","CËp Phong Tam Thanh Phï ","CËp Phong HuyÒn Ti Tam §o¹n cÈm","CËp Phong Thóy Ngäc HuyÒn Hoµng Béi","CËp Phong Thanh Tïng Ph¸p giíi","[TrÊn Bang Chi B¶o] CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn",

"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt","S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo","S­¬ng Tinh Thanh Phong Lò ®¸i","S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ","S­¬ng Tinh Phong B¹o chØ hoµn","[TrÊn Bang Chi B¶o] S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu",
"L«i Khung Hµn Tung B¨ng B¹ch quan","L«i Khung Thiªn §Þa Hé phï ","L«i Khung Phong L«i Thanh CÈm ®¸i","L«i Khung Linh Ngäc UÈn L«i","L«i Khung Cöu Thiªn DÉn L«i giíi","[TrÊn Bang Chi B¶o] L«i Khung Linh Ngäc Èn L«i UyÓn",
"Vô ¶o B¾c Minh §¹o qu¸n","Vô ¶o Ki B¸n phï chó ","Vô ¶o Thóc T©m chØ hoµn","Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi","Vô ¶o Tung Phong TuyÕt ¶nh ngoa","[TrÊn Bang Chi B¶o] Vô Hoan Th¸i Uyªn Ch©n Vò Liªn",

}
---------------------------------
function doihkmprac() 
dofile("script/global/mel/doihkmprac.lua")
	local tbOpt = {
		{"§æi trang bÞ HKMP lÊy Vâ L©m LÖnh",DoiTrangBiHKMP},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i Muèn §æi Trang BÞ Hoµng Kim Mèn Ph¸i kh«ng?<color>", tbOpt)
end

function DoiTrangBiHKMP()
	local tbOpt = {
		{"Bá vµo 5 mãn HKMP bÊt kú",HKMPRac},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>§Æt vµo Set M«n ph¸i ng­¬i muèn ®æi sang ph¸i kh¸c<color>", tbOpt)
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HKMPRac()
	GiveItemUI( "§æi R­¬ng Hoµng Kim", "B¹n cÇn chuÈn bÞ 5 mãn Trang BÞ HKMP vµ 5 tiÒn ®ång th× cã thÓ ®æi ®­îc 100 Vâ L©m LÖnh", "HKMPRac_1", "onCancel",1 );
end

function HKMPRac_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%ListHKMP) do
				if szName == %ListHKMP[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H·y ch¾c ch¾n r»ng b¹n cã ®ñ chç trèng trong hµnh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=5) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(5, 4, 417, 1, 1)
			AddStackItem (100,6,1,4903,1,0,0)
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ 5 TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
