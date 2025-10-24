-- Create & Modified by pg4i3n
-- B¸n ngùa D­¬ng Ch©u - 205 198
	
-- Nguyªn vËt liÖu dïng ®Ó n©ng cÊp chiÕn m·
	-- Cá t­¬i - 6,1,4891 :  mua ë Bµ chñ tiÖm vËt nu«i D­¬ng Ch©u 224,193
			-- xÕp chång, gi¸ mçi c¸i lµ 5 v¹n
	-- D©y thõng 6,1,4892 : mua ë Bµ chñ tiÖm vËt nu«i D­¬ng Ch©u 224,193
			-- xÕp chång, gi¸ mçi c¸i lµ 5 v¹n
	-- B¾c ®Èu thuÇn m· thuËt - 6,1,4894 : mua ë kú tr©n c¸c gi¸ 50xu
			-- KH¤NG xÕp chång, gi¸ 100 tiÒn ®ång
	-- VËt phÈm chøa ®iÓm tÝch lòy n©ng cÊp chiÕn m·
		-- B¾c ®Èu thÇn m· ®¬n 6,1,4893 : mua ë kú tr©n c¸c
		
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\pgaming\\nangcapngua\\lib\\inc.lua")

function pgHorseUpgradeMain()
	local pg_1 = {}
	tinsert(pg_1, "Xin gióp t¹i h¹ n©ng cÊp chiÕn m·/pgHorseUpgradeMain_1")
	tinsert(pg_1, "Ta muèn rót ®iÓm tÝch lòy n©ng cÊp chiÕn m·/pgHorseUpgradeMain_GetPoint")
	tinsert(pg_1, "T×m hiÓu nguyªn liÖu cÇn thiÕt ®Ó n©ng cÊp chiÕn m·/#pgHorseUpgradeMainInfoUpgrade()")
	tinsert(pg_1, "KÕt thóc ®èi tho¹i!/pg.OnCancel")
	return Say("Ngùa "..pg.C(1, "XÝch Thè").." cña Quan V©n Tr­êng cã mµu ®á næi bËt, "..pg.C(1,"¤ V©n §¹p TuyÕt").." cña Tr­¬ng Phi l¹i cã mµu ®en nh­ cñachñ nh©n... lµ ®Æc ®iÓm næi tiÕng cña nh÷ng con ngùa quý thêi cæ ®¹i!", getn(pg_1), pg_1)
end

function pgHorseUpgradeMainInfoUpgrade(pg_1)
	if pg_1 then
		if pg_1 == 1 then
			local _pgTbHORSE = { -- Ngùa cÇn n©ng cÊp
				-- pg_1_1: ngùa - pg_1_2: Name - pg_1_3: b¾c ®Èu thuÇn m· thuËt - pg_1_4: cá t­¬i - pg_1_5: d©y thõng - pg_1_6: tû lÖ thµnh c«ng - pg_1_7: tÝch lòy cÇn thiÕt - pg_1_8: Task sè lÇn n©ng cÊp thÊt b¹i
				{pg_1_1 = {0,10,5,6}, pg_1_2 = "¤ V©n §¹p TuyÕt", pg_1_3 = 1, pg_1_4 = 1, pg_1_5 = 1, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5950},
				{pg_1_1 = {0,10,5,7}, pg_1_2 = "XÝch Thè", pg_1_3 = 1, pg_1_4 = 2, pg_1_5 = 2, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5949},
				{pg_1_1 = {0,10,5,8}, pg_1_2 = "TuyÖt ¶nh", pg_1_3 = 1, pg_1_4 = 3, pg_1_5 = 3, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5951},
				{pg_1_1 = {0,10,5,9}, pg_1_2 = "§Ých L«", pg_1_3 = 1, pg_1_4 = 4, pg_1_5 = 4, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5952},
				{pg_1_1 = {0,10,5,10}, pg_1_2 = "ChiÕu D¹ Ngäc S­ Tö", pg_1_3 = 1, pg_1_4 = 5, pg_1_5 = 5, pg_1_6 = 40, pg_1_7 = 50, pg_1_8 = 5948},
				{pg_1_1 = {0,10,8,10}, pg_1_2 = "Phi V©n", pg_1_3 = 1, pg_1_4 = 10, pg_1_5 = 10, pg_1_6 = 40, pg_1_7 = 50, pg_1_8 = 5947},
				{pg_1_1 = {0,10,6,10}, pg_1_2 = "B«n Tiªu", pg_1_3 = 1, pg_1_4 = 200, pg_1_5 = 200, pg_1_6 = 30, pg_1_7 = 50, pg_1_8 = 5946},
				{pg_1_1 = {0,10,7,10}, pg_1_2 = "Phiªn Vò", pg_1_3 = 1, pg_1_4 = 300, pg_1_5 = 300, pg_1_6 = 30, pg_1_7 = 50, pg_1_8 = 5938},
				{pg_1_1 = {0,10,9,10}, pg_1_2 = "XÝch Long C©u", pg_1_3 = 1, pg_1_4 = 400, pg_1_5 = 400, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 5937},
				{pg_1_1 = {0,10,11,10}, pg_1_2 = "Du Huy", pg_1_3 = 1, pg_1_4 = 500, pg_1_5 = 500, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 6101},
				{pg_1_1 = {0,10,13,10}, pg_1_2 = "Siªu Quang", pg_1_3 = 1, pg_1_4 = 1000, pg_1_5 = 1000, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 6102},
			}
			local pg_2 = 0
			local pg_3_G, pg_3_D, pg_3_P, pg_3_L, pg_3_S
			for pg_Loop_1 = 1, getn(_pgTbHORSE) do
				pg_3_G, pg_3_D, pg_3_P, pg_3_L, pg_3_S = GetItemProp(GetGiveItemUnit(1))
				if pg_3_G == 0 and pg_3_D == 10 and pg_3_P == 2 and pg_3_L >= 9 then
					pg_2 = -1
				elseif _pgTbHORSE[pg_Loop_1].pg_1_1[1] == pg_3_G and _pgTbHORSE[pg_Loop_1].pg_1_1[2] == pg_3_D and _pgTbHORSE[pg_Loop_1].pg_1_1[3] == pg_3_P and _pgTbHORSE[pg_Loop_1].pg_1_1[4] == pg_3_L then
					pg_2 = pg_Loop_1
				end
			end
			if pg_2 == 0 then
				return Talk(1,"","C¸i nµy kh«ng ph¶i chiÕn m· hoÆc kh«ng thÓ tiÕn hµnh n©ng cÊp, xin c¸c h¹ kiÓm tra l¹i!")
			elseif pg_2 == getn(_pgTbHORSE) then
				return Talk(1,"","L·o phu kh«ng thÓ n©ng cÊp ThÇn m· nµy v× ®· ®¹t ®Õn c¶nh giíi, xin h·y ®i t×m vÞ cao nh©n kh¸c!")
			end
			local pg_3
			if pg_2 == -1 then
				pg_2 = 0
				pg_3 = "Tóc S­¬ng"
			else
				pg_3 = _pgTbHORSE[pg_2].pg_1_2
			end
			return Say("ChiÕn m·: "..pg.C(1, pg_3)
				.."<enter>N©ng lªn thÇn m·: "..pg.C(4, _pgTbHORSE[pg_2+1].pg_1_2)
				.." Yªu cÇu:"
				.."<enter>"..pg.C(2, _pgTbHORSE[pg_2+1].pg_1_3.." B¾c ®Èu thuÇn m· thuËt")
				.."<enter>"..pg.C(2, _pgTbHORSE[pg_2+1].pg_1_4.." Cá t­¬i")
				.."<enter>"..pg.C(2, _pgTbHORSE[pg_2+1].pg_1_5.." D©y thõng")
				.."<enter>Tû lÖ thµnh c«ng: "..pg.C(2, _pgTbHORSE[pg_2+1].pg_1_6).."%"
				.."<enter>HoÆc tÝch lòy: "..pg.C(2, GetTask(5953).."/".._pgTbHORSE[pg_2+1].pg_1_7).." ®iÓm"
				.."<enter>Sè lÇn thÊt b¹i: "..pg.C(2, GetTask(_pgTbHORSE[pg_2+1].pg_1_8)).." lÇn", 1,
				"Ta biÕt råi!/pg.OnCancel")
		else
			return Talk(1,"","Mçi lÇn chØ cã thÓ t×m hiÓu vÒ 1 lo¹i chiÕn m·, c¸c h¹ vui lßng kiÓm tra l¹i!")
		end
	end
	return GiveItemUI("N©ng CÊp ChiÕn M·", "§Æt lo¹i chiÕn m· mµ c¸c h¹ muèn n©ng cÊp vµo ®©y!", "pgHorseUpgradeMainInfoUpgrade", "pg.OnCancel", 1);
end

function pgHorseUpgradeMain_GetPoint()
	Say("HiÖn t¹i c¸c h¹ ®ang cã "..pg.C(1, GetTask(5953)).." ®iÓm tÝch lòy<enter>Mçi lÇn rót ra sÏ bÞ mÊt "..pg.C(2,"12 ®iÓm").." ®æi lÊy vËt phÈm <enter>chøa 10 ®iÓm l­u tr÷<enter>c¸c h¹ muèn thùc hiÖn thao t¸c nµy kh«ng!", 2, "X¸c nhËn lÊy ra vËt phÈm l­u tr÷ ®iÓm/pgHorseUpgradeMain_GetPoint_Ok", "§îi ta suy nghÜ l¹i!/pg.OnCancel")
end

function pgHorseUpgradeMain_GetPoint_Ok()
	if GetTask(5953) >= 12 then
		SetTask(5953, GetTask(5953) - 12)
		AddItem(6,1,4893,1,0,0)
		Msg2Player(pg.C(1, "NhËn ®­îc 1 "..pg.C(1,"B¾c ®Çu thÇn m· ®¬n").."!"))
	else
		return Talk(1,"","H×nh nh­ ®iÓm tÝch lòy cña c¸c h¹ kh«ng ®ñ ®Ó thùc <enter>hiÖn thao t¸c!")
	end
end

function pgHorseUpgradeMain_1()
	return Talk(1, "pgHorseUpgradeMain_2", "§iÓm tÝch lòy n©ng cÊp chiÕn m·: <color=yellow>"..GetTask(5953).."<color><enter>Khi ®ñ ®iÓm tÝch lòy sÏ cã tû lÖ thµnh c«ng 100%.<enter><color=yellow><bclr=red>Chó ý: CÇn ®Æt ®óng nguyªn liÖu theo yªu cÇu, nÕu d­ sÏ kh«ng tr¶ l¹i ®©u nhÐ.")
end

function pgHorseUpgradeMain_2()
	GiveItemUI("N©ng CÊp ChiÕn M·", "VËt phÈm cÇn thiÕt<enter><color=blue>- ChiÕn m· cÇn n©ng cÊp<enter>- B¾c ®Èu thuÇn m· thuËt<enter>  S¨n Boss Hoµng Kim cã c¬ héi nhËn ®­îc<enter>- Cá t­¬i<enter>  GÆt ë M¹c B¾c Th¶o Nguyªn<enter>(154,150),(194,199),(194,150),(155,195)<enter>- D©y thõng<enter>  Mua ë npc n©ng cÊp ngùa<enter>- Vµ c¸c nguyªn liÖu t¨ng may m¾n nh­: Phóc Duyªn, Thñy Tinh", "pgHorseUpgradeMain_3", "pg.OnCancel", 1);
end

function pgHorseUpgradeMain_3(pgCount)
	local _pgTbHORSE = { -- Ngùa cÇn n©ng cÊp
		-- pg_1_1: ngùa - pg_1_2: Name - pg_1_3: b¾c ®Èu thuÇn m· thuËt - pg_1_4: cá t­¬i - pg_1_5: d©y thõng - pg_1_6: tû lÖ thµnh c«ng - pg_1_7: tÝch lòy cÇn thiÕt - pg_1_8: Task sè lÇn n©ng cÊp thÊt b¹i
				{pg_1_1 = {0,10,5,6}, pg_1_2 = "¤ V©n §¹p TuyÕt", pg_1_3 = 1, pg_1_4 = 1, pg_1_5 = 1, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5950},
				{pg_1_1 = {0,10,5,7}, pg_1_2 = "XÝch Thè", pg_1_3 = 1, pg_1_4 = 2, pg_1_5 = 2, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5949},
				{pg_1_1 = {0,10,5,8}, pg_1_2 = "TuyÖt ¶nh", pg_1_3 = 1, pg_1_4 = 3, pg_1_5 = 3, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5951},
				{pg_1_1 = {0,10,5,9}, pg_1_2 = "§Ých L«", pg_1_3 = 1, pg_1_4 = 4, pg_1_5 = 4, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5952},
				{pg_1_1 = {0,10,5,10}, pg_1_2 = "ChiÕu D¹ Ngäc S­ Tö", pg_1_3 = 1, pg_1_4 = 5, pg_1_5 = 5, pg_1_6 = 40, pg_1_7 = 50, pg_1_8 = 5948},
				{pg_1_1 = {0,10,8,10}, pg_1_2 = "Phi V©n", pg_1_3 = 1, pg_1_4 = 10, pg_1_5 = 10, pg_1_6 = 40, pg_1_7 = 50, pg_1_8 = 5947},
				{pg_1_1 = {0,10,6,10}, pg_1_2 = "B«n Tiªu", pg_1_3 = 1, pg_1_4 = 200, pg_1_5 = 200, pg_1_6 = 30, pg_1_7 = 50, pg_1_8 = 5946},
				{pg_1_1 = {0,10,7,10}, pg_1_2 = "Phiªn Vò", pg_1_3 = 1, pg_1_4 = 300, pg_1_5 = 300, pg_1_6 = 30, pg_1_7 = 50, pg_1_8 = 5938},
				{pg_1_1 = {0,10,9,10}, pg_1_2 = "XÝch Long C©u", pg_1_3 = 1, pg_1_4 = 400, pg_1_5 = 400, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 5937},
				{pg_1_1 = {0,10,11,10}, pg_1_2 = "Du Huy", pg_1_3 = 1, pg_1_4 = 500, pg_1_5 = 500, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 6101},
				{pg_1_1 = {0,10,13,10}, pg_1_2 = "Siªu Quang", pg_1_3 = 1, pg_1_4 = 1000, pg_1_5 = 1000, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 6102},
	}
	local _pgTbNguyenLieu = { -- Nguyªn liÖu
		{{6,1,4894}, "B¾c ®Èu thuÇn m· thuËt"},
		{{6,1,4891}, "Cá t­¬i"},
		{{6,1,4892}, "D©y thõng"},
	}
	local _pgLuck = { -- Nguyªn liÖu t¨ng may m¾n
		{{4,238,1}, "Lam thñy tinh"},
		{{4,239,1}, "Tö thñy tinh"},
		{{4,240,1}, "Lôc thñy tinh"},
		{{6,1,122}, "Phóc duyªn tiÓu"},
		{{6,1,123}, "Phóc duyªn trung"},
		{{6,1,124}, "Phóc duyªn ®¹i"},
	}
	-- pg_2: Th«ng sè ngùa - pg_3: B¾c ®Çu thuÇn m· thuËt - pg_4: Cá t­¬i - pg_5: D©y thõng 
	-- pg_6: Lam thñy tinh - pg_7: Tö thñy tinh - pg_8: Lôc thñy tinh - pg_9: Phóc duyªn tiÓu - pg_10: Phóc duyªn trung - pg_11: Phóc duyªn ®¹i - pg_14: Danh s¸ch ItemIdx - pg_20: L­u th«g sè Item
	local pg_2, pg_3, pg_4, pg_5, pg_6, pg_7, pg_8, pg_9, pg_10, pg_11, pg_14, pg_20 = {}, 0, 0, 0, 0, 0, 0, 0, 0, 0, {}, {}
	if pgCount < 4 then
		return Talk(1,"","VËt phÈm cÇn thiÕt ®Ó n©ng cÊp chiÕn m· gåm: <color=yellow>ChiÕn m·, B¾c ®Èu thuÇn m· thuËt, Cá t­¬i, D©y thõng<color>, c¸c nguyªn liÖu t¨ng ®é may m¾n: <color=blue>Phóc duyªn, Thñy tinh<color>. Xem ra c¸c h¹ vÉn ch­a chuÈn bÞ kü!")
	end
	local pg_13
	local pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL, pg_1_nS
	for pg_12 = 1, pgCount do
		pg_13 = GetGiveItemUnit(pg_12)
		tinsert(pg_14, pg_13)
		pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL, pg_1_nS = GetItemProp(pg_13);
		tinsert(pg_20, {pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL, pg_1_nS, 0, GetItemStackCount(pg_13)})
		if pg_1_nG == 0 and pg_1_nD == 10 then
			if GetItemBindState(pg_13) < 0 then
				return Talk(1,"","ChiÕn m· cña c¸c h¹ ®· bÞ phong táa tiÒm n¨ng vµ phÈmchÊt, kh«ng thÓ tiÕn hµnh thuÇn hãa, c¸c h¹ vui lßng t×m 1 chiÕn m· kh«ng bÞ khãa míi cã thÕ tiÕn hµnh <enter>n©ng cÊp!")
			end
			tinsert(pg_2, {{pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL}, GetItemName(pg_13)})
		elseif pg_1_nG == 6 and pg_1_nP == _pgTbNguyenLieu[1][1][3] then
			pg_3 = pg_3 + 1
		elseif pg_1_nG == 6 and pg_1_nP == _pgTbNguyenLieu[2][1][3] then 
			pg_4 = pg_4 + GetItemStackCount(pg_13)
		elseif pg_1_nG == 6 and pg_1_nP == _pgTbNguyenLieu[3][1][3] then 
			pg_5 = pg_5 + GetItemStackCount(pg_13)
		elseif pg_1_nG == 4 and pg_1_nD == 238 then 
			pg_6 = pg_6 + 1
		elseif pg_1_nG == 4 and pg_1_nD == 239 then 
			pg_7 = pg_7 + 1
		elseif pg_1_nG == 4 and pg_1_nD == 240 then 
			pg_8 = pg_8 + 1
		elseif pg_1_nG == 6 and pg_1_nP == 122 then 
			pg_9 = pg_9 + 1
		elseif pg_1_nG == 6 and pg_1_nP == 123 then 
			pg_10 = pg_10 + 1
		elseif pg_1_nG == 6 and pg_1_nP == 124 then 
			pg_11 = pg_11 + 1
		else
			return Talk(1,"","§Ó n©ng cÊp t¹i h¹ chØ cÇn: <color=yellow>ChiÕn m·, B¾c ®Çu thuÇn m· thuËt, Cá t­¬i, D©y thõng<color>, vµ c¸c vËt phÈm t¨ng may m¾n nh­: <color=blue>Thñy tinh, Phóc duyªn<color>, c¸c h¹ vui lßng kiÓm tra l¹i nguyªn liÖu!")
		end
	end
	if not(pg_2[1]) then
		return Talk(1,"","T¹i h¹ kh«ng t×m thÊy lo¹i chiÕn m· mµ c¸c h¹ cÇn n©ng cÊp, vui lßng kiÓm tra l¹i!")
	else
		if pg.False(pg_2[1][2]) then
			return Talk(1,"","T¹i h¹ ch­a mét lÇn nh×n thÊy lo¹i chiÕn m· nµy, c¸c h¹ cã ch¾c nã lµ chiÕn m· chø!")
		end
	end
	if getn(pg_2) > 1 then 
		return Talk(1,"","T¹i h¹ chØ cã n¨ng lùc n©ng cÊp mçi lÇn 1 chiÕn m·, c¸c h¹ vui lßng chän 1 chiÕn m· mµ m×nh cÇn n©ng cÊp!")
	end
	local pg_15 = 0
	for pg_16 = 1, getn(_pgTbHORSE) do
		if _pgTbHORSE[pg_16].pg_1_1[1] == pg_2[1][1][1] then
			if _pgTbHORSE[pg_16].pg_1_1[2] == pg_2[1][1][2] then
				if _pgTbHORSE[pg_16].pg_1_1[3] == pg_2[1][1][3] then
					if _pgTbHORSE[pg_16].pg_1_1[4] == pg_2[1][1][4] then
						pg_15 = pg_16 + 1
					end
				end
			end
		end
	end
	if pg_15 == 0 then
		if pg_2[1][1][3] ~= 2 or pg_2[1][1][4] < 9 then
			return Talk(1,"","Lo¹i chiÕn m· cÊp thÊp nhÊt vµ ®ñ t­ chÊt ®Ó ®¶ th«ng vµ thuÇn hãa chØ cã thÓ lµ "..pg.C(1, "Tóc S­¬ng thÇn m· cÊp 9 trë lªn").." cßn c¸c lo¹i ngùa kh¸c kh«ng ®ñ t­ chÊt ®Ó tiÕn hµnh thuÇn hãa, c¸c h¹ h·y ®i t×m cho m×nh 1 Tóc S­¬ng thÇn m· tr­íc!")
		else
			pg_15 = 1
		end
	end
	if pg_15 > getn(_pgTbHORSE) then
		return Talk(1, "","HiÖn t¹i trong quyÓn "..pg.C(1, "B¾c ®Èu thuÇn m· thuËt").." ch­a cã ghi chÐp nµo vÒ t­ chÊt vµ tiÒm n¨ng cña thÇn m· "..pg.C(4, _pgTbHORSE[getn(_pgTbHORSE)].pg_1_2).." c¶, ta e lµ kh«ng gióp ®­îc g× cho c¸c h¹ råi!")
	end
	local pg_17 = pg_2[1][2]
	local pg_18 = _pgTbHORSE[pg_15].pg_1_2
	if pg_3 < _pgTbHORSE[pg_15].pg_1_3 then
		return Say("ChiÕn m·: "..pg.C(1, pg_17).."<enter>Lªn ThÇn m·: "..pg.C(4, pg_18).."<enter>Yªu cÇu:<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_3.." B¾c ®Èu thuÇn m· thuËt").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_4.." Cá t­¬i").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_5.." D©y thõng").."<enter>H×nh nh­ c¸c h¹ ch­a chuÈn bÞ kü!", 1,"Ta biÕt råi, ®îi ta thu thËp nguyªn liÖu!/pg.OnCancel")
	end
	if pg_4 < _pgTbHORSE[pg_15].pg_1_4 then
		return Say("ChiÕn m·: "..pg.C(1, pg_17).."<enter>Lªn ThÇn m·: "..pg.C(4, pg_18).."<enter>Yªu cÇu:<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_3.." B¾c ®Èu thuÇn m· thuËt").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_4.." Cá t­¬i").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_5.." D©y thõng").."<enter>H×nh nh­ c¸c h¹ ch­a chuÈn bÞ kü!", 1,"Ta biÕt råi, ®îi ta thu thËp nguyªn liÖu!/pg.OnCancel")
	end
	if pg_5 < _pgTbHORSE[pg_15].pg_1_5 then
		return Say("ChiÕn m·: "..pg.C(1, pg_17).."<enter>Lªn ThÇn m·: "..pg.C(4, pg_18).."<enter>Yªu cÇu:<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_3.." B¾c ®Èu thuÇn m· thuËt").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_4.." Cá t­¬i").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_5.." D©y thõng").."<enter>H×nh nh­ c¸c h¹ ch­a chuÈn bÞ kü!", 1,"Ta biÕt råi, ®îi ta thu thËp nguyªn liÖu!/pg.OnCancel")
	end
	local pg_19 = ""
	if pg_6 > 0 or pg_7 > 0 or pg_8 > 0 then
		pg_19 = pg_19.." + <color=wood>T.Tinh<color>"
	end
	if pg_9 > 0 or pg_10 > 0 or pg_11 > 0 then
		pg_19 = pg_19.." + <color=wood>P.Duyªn<color>"
	end
	return CreateNewSayEx("<link=image:\\spr\\Ui3\\ÖýÔì×°±¸\\ºÏ³ÉÌØÐ§2.spr><link><color>ChiÕn m·: "..pg.C(1, pg_17).."<enter>N©ng cÊp lªn thÇn m·: "..pg.C(4, pg_18).."<enter>N©ng cÊp "..pg_18.." thÊt b¹i "..GetTask(_pgTbHORSE[pg_15].pg_1_8).." lÇn. <enter>Tû lÖ thµnh c«ng: "..pg.C(2, _pgTbHORSE[pg_15].pg_1_6).."% + "..pg.C(2, GetTask(_pgTbHORSE[pg_15].pg_1_8) ).."% = "..(pg.C(2, _pgTbHORSE[pg_15].pg_1_6 + (GetTask(_pgTbHORSE[pg_15].pg_1_8) ))).."%"..pg_19.."<enter>HoÆc TÝch lòy hiÖn t¹i: "..pg.C(2, GetTask(5953).."/".._pgTbHORSE[pg_15].pg_1_7).."<enter>C¸c h¹ muèn tiÕn hµnh n©ng cÊp chø?",
		{
			{"X¸c nhËn n©ng cÊp chiÕn m·", pgHorseUpgradeMain_4, {pg_20, pg_15, (pg_6 + pg_7 + pg_8), {pg_9, pg_10, pg_11}, pg_17, pg_14}},
			{"§îi ta suy nghÜ l¹i", pg.OnCancel},
		})
end

local pgHorseUpgradeMain_UPGRADE = function(pg_8, pg_11, pg_12, pg_2, pg_9, pg_14)
	-- pg_8: Tû lÖ thµnh c«ng lÇn n©ng cÊp cè ®Þnh - pg_11: Tû lÖ thµnh c«ng hÖ thèng - pg_12: Tb th«ng sè Item - pg_2: Row_pgTbHORSE - pg_9: tªn ngùa cÇn n©g cÊp
	local _pgTbHORSE = { -- Ngùa cÇn n©ng cÊp
		-- pg_1_1: ngùa - pg_1_2: Name - pg_1_3: b¾c ®Èu thuÇn m· thuËt - pg_1_4: cá t­¬i - pg_1_5: d©y thõng - pg_1_6: tû lÖ thµnh c«ng - pg_1_7: tÝch lòy cÇn thiÕt - pg_1_8: Task sè lÇn n©ng cÊp thÊt b¹i
				{pg_1_1 = {0,10,5,6}, pg_1_2 = "¤ V©n §¹p TuyÕt", pg_1_3 = 1, pg_1_4 = 1, pg_1_5 = 1, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5950},
				{pg_1_1 = {0,10,5,7}, pg_1_2 = "XÝch Thè", pg_1_3 = 1, pg_1_4 = 2, pg_1_5 = 2, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5949},
				{pg_1_1 = {0,10,5,8}, pg_1_2 = "TuyÖt ¶nh", pg_1_3 = 1, pg_1_4 = 3, pg_1_5 = 3, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5951},
				{pg_1_1 = {0,10,5,9}, pg_1_2 = "§Ých L«", pg_1_3 = 1, pg_1_4 = 4, pg_1_5 = 4, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5952},
				{pg_1_1 = {0,10,5,10}, pg_1_2 = "ChiÕu D¹ Ngäc S­ Tö", pg_1_3 = 1, pg_1_4 = 5, pg_1_5 = 5, pg_1_6 = 40, pg_1_7 = 50, pg_1_8 = 5948},
				{pg_1_1 = {0,10,8,10}, pg_1_2 = "Phi V©n", pg_1_3 = 1, pg_1_4 = 10, pg_1_5 = 10, pg_1_6 = 40, pg_1_7 = 50, pg_1_8 = 5947},
				{pg_1_1 = {0,10,6,10}, pg_1_2 = "B«n Tiªu", pg_1_3 = 1, pg_1_4 = 200, pg_1_5 = 200, pg_1_6 = 30, pg_1_7 = 50, pg_1_8 = 5946},
				{pg_1_1 = {0,10,7,10}, pg_1_2 = "Phiªn Vò", pg_1_3 = 1, pg_1_4 = 300, pg_1_5 = 300, pg_1_6 = 30, pg_1_7 = 50, pg_1_8 = 5938},
				{pg_1_1 = {0,10,9,10}, pg_1_2 = "XÝch Long C©u", pg_1_3 = 1, pg_1_4 = 400, pg_1_5 = 400, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 5937},
				{pg_1_1 = {0,10,11,10}, pg_1_2 = "Du Huy", pg_1_3 = 1, pg_1_4 = 500, pg_1_5 = 500, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 6101},
				{pg_1_1 = {0,10,13,10}, pg_1_2 = "Siªu Quang", pg_1_3 = 1, pg_1_4 = 1000, pg_1_5 = 1000, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 6102},
	}
	local pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL, pg_1_nS
	for pg_15 = 1, getn(pg_14) do
		if IsMyItem(pg_14[pg_15]) ~= 1 then
			return Talk(1, "", "Nguyªn vËt liÖu kh«ng cßn trong ng­êi cña ®¹i hiÖp kh«ng thÓ n©ng cÊp, xin kiÓm tra l¹i hµnh trang!")
		end
		pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL, pg_1_nS = GetItemProp(pg_14[pg_15])
		if pg_1_nG ~= pg_12[pg_15][1] or pg_1_nP ~= pg_12[pg_15][3] then
			return Talk(1, "", "Nguyªn vËt liÖu kh«ng cßn trong ng­êi cña ®¹i hiÖp kh«ng thÓ n©ng cÊp, xin kiÓm tra l¹i hµnh trang!")
		end
	end
	for pg_21 = 1, getn(pg_14) do
		RemoveItemByIndex(pg_14[pg_21])
	end
	if pg_8 >= pg_11 then
		SetTask(_pgTbHORSE[pg_2].pg_1_8, 0)
		SetTask(5953, 0)
		AddItem(_pgTbHORSE[pg_2].pg_1_1[1], _pgTbHORSE[pg_2].pg_1_1[2], _pgTbHORSE[pg_2].pg_1_1[3], _pgTbHORSE[pg_2].pg_1_1[4], random(0,4), 0)
		Msg2Player(pg.C(2, "N©ng cÊp thµnh c«ng chiÕn m· <color=white>"..pg_9.."<color> lªn thÇn m· <color=orange>".._pgTbHORSE[pg_2].pg_1_2.."<color>, Xin chóc mõng!"))
		Talk(1, "", pg.C(2, "N©ng cÊp thµnh c«ng chiÕn m· <color=white>"..pg_9.."<color> lªn thÇn m· <color=orange>".._pgTbHORSE[pg_2].pg_1_2.."<color>, Xin chóc mõng!"))
		AddLocalNews("§¹i hiÖp "..pg.C(1, GetName()).." t¹i B¸n ngùa D­¬ng Ch©u ®· n©ng cÊp thµnh c«ng chiÕn m· "..pg.C(4, pg_9).." lªn ThÇn m· "..pg.C(2, _pgTbHORSE[pg_2].pg_1_2)..", Xin chóc mõng!")
		return Msg2SubWorld("§¹i hiÖp "..pg.C(1, GetName()).." t¹i B¸n ngùa D­¬ng Ch©u ®· n©ng cÊp thµnh c«ng chiÕn m· "..pg.C(4, pg_9).." lªn ThÇn m· "..pg.C(2, _pgTbHORSE[pg_2].pg_1_2)..", Xin chóc mõng!")
	else
		SetTask(_pgTbHORSE[pg_2].pg_1_8, GetTask(_pgTbHORSE[pg_2].pg_1_8) + 1)
		SetTask(5953, GetTask(5953) + 5)
		pgHorseUpgradeMain_OnCancle(pg_12, 2)
		Msg2Player("LÇn n©ng cÊp <color=white>"..pg_9.."<color> lªn thÇn m· "..pg.C(1, _pgTbHORSE[pg_2].pg_1_2).." nµy ®· thÊt b¹i, toµn bé sè nguyªn liÖu sÏ bÞ mÊt, xin c¸c h¹ ®õng n¶n chÝ!")
		return Talk(1,"","LÇn n©ng cÊp <color=white>"..pg_9.."<color> lªn thÇn m· "..pg.C(1, _pgTbHORSE[pg_2].pg_1_2).." nµy ®· thÊt b¹i, toµn bé sè nguyªn liÖu sÏ bÞ mÊt, xin c¸c h¹ ®õng n¶n chÝ!")
	end
end

local pgHorseUpgradeMain_ONBREAK = function(pg_1)
	-- pgHorseUpgradeMain_OnCancle(pg_1, 1)
	Msg2Player("N©ng cÊp ngùa bÞ gi¸n ®o¹n, xin thö l¹i!")
	return Talk(1,"","N©ng cÊp ngùa bÞ gi¸n ®o¹n, xin thö l¹i!")
end

function pgHorseUpgradeMain_4(pg_1, pg_2, pg_3, pg_4, pg_9, pg_14)
	-- pg_1{}: Tb th«ng sè Item - pg_2: Row_pgTbHORSE - pg_3: Tæng thñy tinh - pg_4{Phóc duyªn tiÓu, trung, ®¹i} - pg_5: Sè lÇn thÊt b¹i - pg_6: TÝch lòy b¶n th©n - pg_7: TÝch lòy cÇn thiÕt - pg_9: Tªn ngùa cÇn n©g cÊp
	-- pg_8: Tæng tû lÖ thµnh c«ng
	local _pgTbHORSE = { -- Ngùa cÇn n©ng cÊp
		-- pg_1_1: ngùa - pg_1_2: Name - pg_1_3: b¾c ®Èu thuÇn m· thuËt - pg_1_4: cá t­¬i - pg_1_5: d©y thõng - pg_1_6: tû lÖ thµnh c«ng - pg_1_7: tÝch lòy cÇn thiÕt - pg_1_8: Task sè lÇn n©ng cÊp thÊt b¹i
				{pg_1_1 = {0,10,5,6}, pg_1_2 = "¤ V©n §¹p TuyÕt", pg_1_3 = 1, pg_1_4 = 1, pg_1_5 = 1, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5950},
				{pg_1_1 = {0,10,5,7}, pg_1_2 = "XÝch Thè", pg_1_3 = 1, pg_1_4 = 2, pg_1_5 = 2, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5949},
				{pg_1_1 = {0,10,5,8}, pg_1_2 = "TuyÖt ¶nh", pg_1_3 = 1, pg_1_4 = 3, pg_1_5 = 3, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5951},
				{pg_1_1 = {0,10,5,9}, pg_1_2 = "§Ých L«", pg_1_3 = 1, pg_1_4 = 4, pg_1_5 = 4, pg_1_6 = 50, pg_1_7 = 50, pg_1_8 = 5952},
				{pg_1_1 = {0,10,5,10}, pg_1_2 = "ChiÕu D¹ Ngäc S­ Tö", pg_1_3 = 1, pg_1_4 = 5, pg_1_5 = 5, pg_1_6 = 40, pg_1_7 = 50, pg_1_8 = 5948},
				{pg_1_1 = {0,10,8,10}, pg_1_2 = "Phi V©n", pg_1_3 = 1, pg_1_4 = 10, pg_1_5 = 10, pg_1_6 = 40, pg_1_7 = 50, pg_1_8 = 5947},
				{pg_1_1 = {0,10,6,10}, pg_1_2 = "B«n Tiªu", pg_1_3 = 1, pg_1_4 = 200, pg_1_5 = 200, pg_1_6 = 30, pg_1_7 = 50, pg_1_8 = 5946},
				{pg_1_1 = {0,10,7,10}, pg_1_2 = "Phiªn Vò", pg_1_3 = 1, pg_1_4 = 300, pg_1_5 = 300, pg_1_6 = 30, pg_1_7 = 50, pg_1_8 = 5938},
				{pg_1_1 = {0,10,9,10}, pg_1_2 = "XÝch Long C©u", pg_1_3 = 1, pg_1_4 = 400, pg_1_5 = 400, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 5937},
				{pg_1_1 = {0,10,11,10}, pg_1_2 = "Du Huy", pg_1_3 = 1, pg_1_4 = 500, pg_1_5 = 500, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 6101},
				{pg_1_1 = {0,10,13,10}, pg_1_2 = "Siªu Quang", pg_1_3 = 1, pg_1_4 = 1000, pg_1_5 = 1000, pg_1_6 = 20, pg_1_7 = 50, pg_1_8 = 6102},
	}
	local pg_5, pg_6, pg_7, pg_8 = GetTask(_pgTbHORSE[pg_2].pg_1_8), GetTask(5953), _pgTbHORSE[pg_2].pg_1_7, (_pgTbHORSE[pg_2].pg_1_6 + (GetTask(_pgTbHORSE[pg_2].pg_1_8) ))
	local pg_11 = floor((random(0,100) + random(0,100)) / 2)
	if pg_6 >= pg_7 then
		pg_8 = 100
	else
		pg_8 = pg_8 + floor(pg_3/3) + floor((pg_4[1] + pg_4[2] + pg_4[3])/5)
	end
	tbProgressBar:OpenByConfig(10, %pgHorseUpgradeMain_UPGRADE, {pg_8, pg_11, pg_1, pg_2, pg_9, pg_14}, %pgHorseUpgradeMain_ONBREAK, {pg_1})
end

function pgHorseUpgradeMain_OnCancle(pg_1, pg_2)
	if pg_2 == 1 then
		for pg_3 = 1, getn(pg_1) do
			for pg_5 = 1, pg_1[pg_3][7] do
				AddItem(unpack(pg_1[pg_3]))
			end
		end
		return
	elseif pg_2 == 2 then
		for pg_4 = 1, getn(pg_1) do
			if pg_1[pg_4][1] == 0 and pg_1[pg_4][2] == 10 then
				return AddItem(unpack(pg_1[pg_4]))
			end
		end
	end
end

























