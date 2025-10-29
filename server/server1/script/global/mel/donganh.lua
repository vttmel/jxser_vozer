Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-----------------------------------------------
ListHKMP={

"[Cùc phÈm] §éng S¸t B¹ch Kim §iªu Long Giíi","[Cùc phÈm] §éng S¸t B¹ch Ngäc Cµn Kh«n Béi","[Cùc phÈm] §éng S¸t B¹ch Kim Tó Phông Giíi","[Cùc phÈm] §éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn",
"[Cùc phÈm] Hång ¶nh TrÇm Viªn V·n Tóy","[Cùc phÈm] Hång ¶nh KiÕm Qua T©y Ph­¬ng","[Cùc phÈm] Hång ¶nh Môc Tóc T­¬ng Vong","[Cùc phÈm] Hång ¶nh Hång Tô Chiªu",

}
---------------------------------
function donganh() 
dofile("script/global/mel/donganh.lua")
	local tbOpt = {
		{"N©ng cÊp trang bÞ §éng ¶nh",DoiDongAnh},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>C¸c h¹ muèn n©ng cÊp trang bÞ §éng ¶nh µ?<color>", tbOpt)
end

function DoiDongAnh()
	local tbOpt = {
		{"Bá vµo 2 bé Cùc PhÈm §éng S¸t vµ Hång ¶nh",DoiDongAnh2},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>§Æt vµo 2 bé trang bÞ Cùc phÈm §éng S¸t vµ Hång ¶nh<color>", tbOpt)
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiDongAnh2()
	GiveItemUI( "§æi bé trang bÞ §éng ¶nh", "B¹n cÇn ®Æt vµo 2 bé trang bÞ §éng S¸t vµ Hång ¶nh Cùc PhÈm vµ hµnh trang cã 200 tiÒn ®ång th× cã thÓ ®æi ®­îc", "DoiDongAnh3", "onCancel",1 );
end

function DoiDongAnh3( nCount )
	countvk = 0
	if nCount ~= 8 then						
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
		if countvk ~= 8 then
				Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H·y ch¾c ch¾n r»ng b¹n cã ®ñ chç trèng trong hµnh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=200) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(200, 4, 417, 1, 1)
			AddGoldItem(0,5292)
			AddGoldItem(0,5293)
			AddGoldItem(0,5294)
			AddGoldItem(0,5295)
			Msg2Player("Chóc Mõng "..GetName().." n©ng cÊp bé trang bÞ <color=green>§éng ¶nh<color> Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ 200 TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
