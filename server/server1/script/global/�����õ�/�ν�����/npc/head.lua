
function talk_yulongtie()
	Say("C¸i nµy lµ ngäc long trang cho c¸c vŞ anh hïng hµo kiÖt ®İch thiÕp mêi, kh«ng ph¶i ai còng cã thÓ lÊy ®­îc nã?",
		2,
		"Ta sö dông nh¹c v­¬ng hån chi th¹ch ®Ó ®æi lÊy/get_yulongtie",
		"KÕt thóc/Cancel")
end

-- ÓÃÔÀÍõ»êÖ®Ê¯»»È¡îÚÁúÓ¢ĞÛÌû
function get_yulongtie()
	if (CalcEquiproomItemCount(4, 507, 1, -1) < 1) then
		Say("Ng­¬i kh«ng cã nh¹c v­¬ng hån chi th¹ch , tiÕp tôc ®i luyÖn tËp , sau ®ã tíi n¬i nµy?")
	else
		Say("Ng­¬i x¸c ®Şnh sö dông nh¹c v­¬ng hån chi th¹ch ®æi ngäc long anh hïng thiÕp tiÕn vµo kiÕm mé mª cung sao?",
			2,
			"Muèn/exchange_yulongtie",
			"KÕt thóc/Cancel")	
	end
end

-- function exchange_yulongtie()
	-- if (CalcFreeItemCellCount() == 0) then
		-- Say("Hµnh trang kh«ng ®ñ chç trèng.")
	-- elseif (CalcEquiproomItemCount(4, 507, 1, -1) >= 1 and 
		-- ConsumeEquiproomItem(1, 4, 507, 1, -1) == 1) then
		-- AddItem(6, 1, 2622, 1, 0, 0)
		-- Msg2Player("Ng­¬i ®¹t ®­îc mét ngäc long anh hïng thiÕp.")
	-- end
-- end
