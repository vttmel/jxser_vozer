Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-----------------------------------------------
TL1 = {"Méng Long ChÝnh Hång T¨ng M·o","Méng Long Kim Ti ChÝnh Hång Cµ Sa","Méng Long HuyÒn Ti Ph¸t ®¸i","Méng Long PhËt Ph¸p HuyÒn Béi","Méng Long §¹t Ma T¨ng hµi"}
TL2 = {"Phôc Ma Tö Kim C«n","Phôc Ma HuyÒn Hoµng Cµ Sa","Phôc Ma ¤ Kim NhuyÔn §iÒu","Phôc Ma PhËt T©m NhuyÔn KhÊu","Phôc Ma Phæ §é T¨ng hµi"}
TL3 = {"Tø Kh«ng Gi¸ng Ma Giíi ®ao","Tø Kh«ng Tö Kim Cµ Sa","Tø Kh«ng Hé ph¸p Yªu ®¸i","Tø Kh«ng NhuyÔn B× Hé UyÓn","Tø Kh«ng Giíi LuËt Ph¸p giíi"}

TV1 = {"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy","H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p","H¸m Thiªn Uy Vò Thóc yªu ®¸i","H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn","H¸m Thiªn Thõa Long ChiÕn Ngoa"}
TV2 = {"KÕ NghiÖp B«n L«i Toµn Long th­¬ng","KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i","KÕ NghiÖp B¹ch Hæ V« Song khÊu","KÕ NghiÖp HáaV©n Kú L©n Thñ ","KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa"}
TV3 = {"Ngù Long L­îng Ng©n B¶o ®ao","Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p","Ngù Long Thiªn M«n Thóc Yªu hoµn","Ngù Long TÊn Phong Hé yÓn","Ngù Long TuyÖt MÖnh ChØ hoµn"}

NM1 = {"V« Gian û Thiªn KiÕm","V« Gian Thanh Phong Truy Y","V« Gian PhÊt V©n Ti ®¸i","V« Gian CÇm VËn Hé UyÓn","V« Gian B¹ch Ngäc Bµn ChØ "}
NM2 = {"V« Ma Ma Ni qu¸n","V« Ma Tö Kh©m Cµ Sa","V« Ma B¨ng Tinh ChØ Hoµn","V« Ma TÈy T­îng Ngäc KhÊu ","V« Ma Hång Truy NhuyÔn Th¸p hµi"}
NM3 = {"V« TrÇn Ngäc N÷ Tè T©m qu¸n","V« TrÇn Thanh T©m H­íng ThiÖn Ch©u","V« TrÇn Tõ Bi Ngäc Ban ChØ ","V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi","V« TrÇn PhËt Quang ChØ Hoµn"}

TY1 = {"Tª Hoµng Phông Nghi ®ao","Tª Hoµng TuÖ T©m Khinh Sa Y","Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i","Tª Hoµng B¨ng Tung CÈm uyÓn","Tª Hoµng Thóy Ngäc ChØ Hoµn"}
TY2 = {"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao","BÝch H¶i Hoµn Ch©u Vò Liªn","BÝch H¶i Hång Linh Kim Ti ®¸i","BÝch H¶i Hång L¨ng Ba","BÝch H¶i Khiªn TÕ ChØ hoµn"}

ND1 = {"U Lung Kim Xµ Ph¸t ®¸i","U Lung XÝch YÕt MËt trang","U Lung Thanh Ng« TriÒn yªu","U Lung Ng©n ThÒm Hé UyÓn","U Lung MÆc Thï NhuyÔn Lý "}
ND2 = {"Minh ¶o Tµ S¸t §éc NhËn","Minh ¶o U §éc ¸m Y","Minh ¶o §éc YÕt ChØ Hoµn","Minh ¶o Hñ Cèt Hé uyÓn","Minh ¶o Song Hoµn Xµ Hµi"}
ND3 = {"Chó Ph­îc Ph¸ gi¸p ®Çu hoµn","Chó Ph­îc DiÖt L«i C¶nh Phï ","Chó Ph­îc U ¶o ChØ Hoµn","Chó Ph­îc Xuyªn T©m §éc UyÓn","Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa"}

DM1 = {"B¨ng Hµn §¬n ChØ Phi §ao","B¨ng Hµn HuyÒn Y Thóc Gi¸p","B¨ng Hµn T©m TiÔn Yªu KhÊu","B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi","B¨ng Hµn NguyÖt ¶nh Ngoa"}
DM2 = {"Thiªn Quang Hoa Vò M¹n Thiªn","Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ","Thiªn Quang S©m La Thóc §¸i","Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c","Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn"}
DM3 = {"S©m Hoang Phi Tinh §o¹t Hån","S©m Hoang KimTiÒn Liªn Hoµn Gi¸p","S©m Hoang Hån Gi¶o Yªu Thóc","S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi","S©m Hoang Tinh VÉn Phi Lý "}
DM4 = {"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n","§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn","§Þa Ph¸ch TÝch LÞch L«i Háa Giíi","§Þa Ph¸ch KhÊu T©m tr¹c","§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa"}

CB1 = {"§ång Cõu Phi Long §Çu hoµn","§ång Cõu Gi¸ng Long C¸i Y","§ång Cõu TiÒm Long Yªu §¸i","§ång Cõu Kh¸ng Long Hé UyÓn","§ång Cõu KiÕn Long Ban ChØ "}
CB2 = {"§Þch Kh¸i Lôc Ngäc Tr­îng","§Þch Kh¸i Cöu §¹i C¸i Y","§Þch Kh¸i TriÒn M·ng yªu ®¸i","§Þch Kh¸i CÈu TÝch B× Hé uyÓn","§Þch Kh¸i Th¶o Gian Th¹ch giíi"}

TN1 = {"Ma S¸t Quû Cèc U Minh Th­¬ng","Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p","Ma S¸t XÝch Ký Táa Yªu KhÊu","Ma S¸t Cö Háa Liªu Thiªn uyÓn","Ma S¸t V©n Long Thæ Ch©u giíi"}
TN3 = {"Ma Hoµng Kim Gi¸p Kh«i","Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn","Ma Hoµng Khª Cèc Thóc yªu ®¸i","Ma Hoµng HuyÕt Y Thó Tr¹c","Ma Hoµng §¨ng §¹p Ngoa"}
TN2 = {"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn","Ma ThÞ LÖ Ma PhÖ T©m Liªn","Ma ThÞ NghiÖp Háa U Minh Giíi","Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi","Ma ThÞ s¬n  H¶i Phi Hång Lý "}

VD1 = {"L¨ng Nh¹c Th¸i Cùc KiÕm","L¨ng Nh¹c V« Ng· ®¹o bµo","L¨ng Nh¹c Né L«i Giíi","L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi","L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi"}
VD2 = {"CËp Phong Ch©n Vò KiÕm","CËp Phong Tam Thanh Phï ","CËp Phong HuyÒn Ti Tam §o¹n cÈm","CËp Phong Thóy Ngäc HuyÒn Hoµng Béi","CËp Phong Thanh Tïng Ph¸p giíi"}

CL1 = {"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt","S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo","S­¬ng Tinh Thanh Phong Lò ®¸i","S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ","S­¬ng Tinh Phong B¹o chØ hoµn"}
CL2 = {"L«i Khung Hµn Tung B¨ng B¹ch quan","L«i Khung Thiªn §Þa Hé phï ","L«i Khung Phong L«i Thanh CÈm ®¸i","L«i Khung Linh Ngäc UÈn L«i","L«i Khung Cöu Thiªn DÉn L«i giíi"}
CL3 = {"Vô ¶o B¾c Minh §¹o qu¸n","Vô ¶o Ki B¸n phï chó ","Vô ¶o Thóc T©m chØ hoµn","Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi","Vô ¶o Tung Phong TuyÕt ¶nh ngoa"}
---------------------------------
function main() 
dofile("script/global/pgaming/npc/freepk/chuyendoitrangbihkmp.lua")
	local tbOpt = {
		{"§æi Set Hoµng Kim M«n Ph¸i Tïy Chän",DoiTrangBiHKMP},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i Muèn §æi Set Trang BÞ Hoµng Kim Mèn Ph¸i kh«ng?<color>", tbOpt)
end

function main()
dofile("script/global/pgaming/npc/freepk/chuyendoitrangbihkmp.lua")
	local tbOpt = {
		{"ThiÕu L©m QuyÒn",TLQuyen},
		{"ThiÕu L©m Bæng",TLCon},
		{"ThiÕu L©m §ao",TLDao},
		{"Thiªn V­¬ng Chïy",TVChuy},
		{"Thiªn V­¬ng Th­¬ng",TVThuong},
		{"Thiªn V­¬ng §ao",TVDao},
		{"Nga My KiÕm",NMKiem},
		{"Nga My Ch­ëng",NMChuong},
		{"Nga My Buff",NMBuff},
		{"Trang Sau",main2},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>§Æt vµo Set M«n ph¸i ng­¬i muèn ®æi sang ph¸i kh¸c<color>", tbOpt)
end

function main2()
	local tbOpt = {
		{"Thóy Yªn §ao",TYDao},
		{"Thóy Yªn Song §ao",TYSongDao},
		{"Ngñ §éc Ch­ëng",NDChuong},
		{"Ngñ §éc §ao",NDDao},
		{"Ngñ §éc Bïa",NDBua},
		{"§­êng M«n Phi §ao",DMPhiDao},
		{"§­êng M«n Tô TiÔn",DMTuTien},
		{"§­êng M«n Phi Tiªu",DMPhiTieu},
		{"§­êng M«n BÉy",DMBay},
		{"Trang Sau",main3},
		{"Trang Tr­íc",main},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>§Æt vµo Set M«n ph¸i ng­¬i muèn ®æi sang ph¸i kh¸c<color>", tbOpt)
end

function main3()
	local tbOpt = {
		{"C¸i Bang Rång",CBRong},
		{"C¸i Bang Bæng",CBBong},
		{"Thiªn NhÉn KÝch",TNKich},
		{"Thiªn NhÉn §ao",TNDao},
		{"Thiªn NhÉn Bïa",TNBua},
		{"Vâ §ang QuyÒn",VDQuyen},
		{"Vâ §ang KiÕm",VDKiem},
		{"C«n L«n §ao",CLDao},
		{"C«n L«n KiÕm",CLKiem},
		{"C«n L«n Bïa",CLBua},
		{"Trang Tr­íc",main2},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>§Æt vµo Set M«n ph¸i ng­¬i muèn ®æi sang ph¸i kh¸c<color>", tbOpt)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TLQuyen()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TLQuyen_1", "onCancel",1 );
end

function TLQuyen_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TL1) do
				if szName == %TL1[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TLCon()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TLCon_1", "onCancel",1 );
end

function TLCon_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TL2) do
				if szName == %TL2[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TLDao()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TLDao_1", "onCancel",1 );
end

function TLDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TL3) do
				if szName == %TL3[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TVChuy()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TVChuy_1", "onCancel",1 );
end

function TVChuy_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TV1) do
				if szName == %TV1[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TVThuong()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TVThuong_1", "onCancel",1 );
end

function TVThuong_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TV2) do
				if szName == %TV2[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TVDao()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TVDao_1", "onCancel",1 );
end

function TVDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TV3) do
				if szName == %TV3[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NMKiem()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "NMKiem_1", "onCancel",1 );
end

function NMKiem_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%NM1) do
				if szName == %NM1[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NMChuong()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "NMChuong_1", "onCancel",1 );
end

function NMChuong_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%NM2) do
				if szName == %NM2[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NMBuff()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "NMBuff_1", "onCancel",1 );
end

function NMBuff_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%NM3) do
				if szName == %NM3[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TYDao()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TYDao_1", "onCancel",1 );
end

function TYDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TY1) do
				if szName == %TY1[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TYSongDao()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TYSongDao_1", "onCancel",1 );
end

function TYSongDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TY2) do
				if szName == %TY2[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NDChuong()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "NDChuong_1", "onCancel",1 );
end

function NDChuong_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%ND1) do
				if szName == %ND1[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NDDao()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "NDDao_1", "onCancel",1 );
end

function NDDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%ND2) do
				if szName == %ND2[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NDBua()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "NDBua_1", "onCancel",1 );
end

function NDBua_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%ND3) do
				if szName == %ND3[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "DMPhiDao_1", "onCancel",1 );
end

function DMPhiDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%DM1) do
				if szName == %DM1[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMTuTien()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "DMTuTien_1", "onCancel",1 );
end

function DMTuTien_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%DM2) do
				if szName == %DM2[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiTieu()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "DMPhiTieu_1", "onCancel",1 );
end

function DMPhiTieu_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%DM3) do
				if szName == %DM3[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMBay()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "DMBay_1", "onCancel",1 );
end

function DMBay_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%DM4) do
				if szName == %DM4[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CBRong()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "CBRong_1", "onCancel",1 );
end

function CBRong_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%CB1) do
				if szName == %CB1[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CBBong()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "CBBong_1", "onCancel",1 );
end

function CBBong_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%CB2) do
				if szName == %CB2[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TNKich()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TNKich_1", "onCancel",1 );
end

function TNKich_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TN1) do
				if szName == %TN1[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TNDao()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TNDao_1", "onCancel",1 );
end

function TNDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TN2) do
				if szName == %TN2[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TNBua()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "TNBua_1", "onCancel",1 );
end

function TNBua_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TN3) do
				if szName == %TN3[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VDQuyen()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "VDQuyen_1", "onCancel",1 );
end

function VDQuyen_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%VD1) do
				if szName == %VD1[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VDKiem()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "VDKiem_1", "onCancel",1 );
end

function VDKiem_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%VD2) do
				if szName == %VD2[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CLDao()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "CLDao_1", "onCancel",1 );
end

function CLDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%CL1) do
				if szName == %CL1[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CLKiem()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "CLKiem_1", "onCancel",1 );
end

function CLKiem_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%CL2) do
				if szName == %CL2[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CLBua()
	GiveItemUI( "§æi Set HKMP Kh¸c", "B¹n cÇn chuÈn bÞ 1 Set Trang BÞ HKMP vµ "..TienDongChuyenTrangBi.." tiÒn ®ång, th× cã thÓ ®æi ®­îc 1 Set Hoµng Kim M«n ph¸i tïy chän kh¸c.", "CLBua_1", "onCancel",1 );
end

function CLBua_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%CL3) do
				if szName == %CL3[i] then
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
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Chóc Mõng "..GetName().." §æi trang bÞ Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ "..TienDongChuyenTrangBi.." TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OnTimer(nNpcIndex,nTimeOut)
    local tab_Chat = {
        "     <pic=41><bclr=fire><enter>C¶m thÊy ch¸n trang bÞ m«n ph¸i trªn ng­êi h·y ®Õn víi ta<bclr>",
            "     <pic=36><bclr=blue><enter>Chóc c¸c nh©n sü gÆp nhiÒu may m¾n vµ ph¸t tµi...! <bclr>",
            "     <pic=115><pic=115><pic=115><bclr=blue><enter>Muèn thay ®æi trang bÞ th× h·y t×m ta!!!<color><bclr>",
    }
    local ran = random(1,getn(tab_Chat))
    NpcChat(nNpcIndex,tab_Chat[ran])
    local ranTimer = random(10,20)
    SetNpcTimer(nNpcIndex,ranTimer*18)
    SetNpcScript(nNpcIndex,"\\script\\global\\pgaming\\npc\\freepk\\chuyendoitrangbihkmp.lua") 
end

function Add_Npc_ChuyenDoiTrangBiHKMP()
    local tb_npc_hotro = {
        {1581,3239},
    }
    local nMapIndex = SubWorldID2Idx(78)
    for i=1,getn(tb_npc_hotro) do
            local npcID    = (198)
            local npcName = "ChuyÒn §æi Trang BÞ HKMP"
            local npcdialog = AddNpc(npcID,0,nMapIndex,(tb_npc_hotro[i][1])*32,(tb_npc_hotro[i][2])*32,0,npcName,1)
            SetNpcTimer(npcdialog,5*18)
            SetNpcScript(npcdialog,"\\script\\global\\pgaming\\npc\\freepk\\chuyendoitrangbihkmp.lua")     
    end
end