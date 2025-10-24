Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

function GhepHanhHiepLenh()
	local szTitle = "Ng­¬i muèn ghÐp c¸i g×?";
	local tbOption = {};
		tinsert(tbOption, {"Dïng 1000 HHL ®æi lÊy B¹ch Hæ LÖnh", DoiBachHoLenh})
		tinsert(tbOption, {"Dïng 2000 HHL ®æi lÊy XÝch L©n LÖnh", DoiXichLanLenh})
		tinsert(tbOption, {"Dïng 4000 HHL ®æi lÊy Minh Ph­îng LÖnh", DoiMinhPhuongLenh})
		tinsert(tbOption, {"Dïng 500 HHL ®æi lÊy Tói Phi Phong (cÊp 6)", DoiTuiPhiPhongCap6})
		tinsert(tbOption, {"Dïng 1500 HHL ®æi lÊy Tói Phi Phong (cÊp 7)", DoiTuiPhiPhongCap7})
		tinsert(tbOption, {"Dïng 3000 HHL ®æi lÊy Tói Phi Phong (cÊp 8)", DoiTuiPhiPhongCap8})
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption);
end

function  DoiBachHoLenh()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 1000) then
		Talk(1, "", "B¹n kh«ng ®ñ 1000 Hµnh HiÖp LÖnh ®Ó ®æi lÊy B¹ch Hæ LÖnh.")
	return end;
	
	if (ConsumeEquiproomItem(1000,6,1,2566,-1) == 1) then
		AddItem(6,1,4873,1,0,0);
		Msg2Player("Chóc mõng b¹n ®· ®æi 1000 Hµnh HiÖp LÖnh lÊy 1 B¹ch Hæ LÖnh thµnh c«ng!")
	end
end

function  DoiXichLanLenh()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 2000) then
		Talk(1, "", "B¹n kh«ng ®ñ 2000 Hµnh HiÖp LÖnh ®Ó ®æi lÊy XÝch L©n LÖnh.")
	return end;
	
	if (ConsumeEquiproomItem(2000,6,1,2566,-1) == 1) then
		AddItem(6,1,4874,1,0,0);
		Msg2Player("Chóc mõng b¹n ®· ®æi 2000 Hµnh HiÖp LÖnh lÊy 1 XÝch L©n LÖnh thµnh c«ng!")
	end
end

function  DoiMinhPhuongLenh()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 4000) then
		Talk(1, "", "B¹n kh«ng ®ñ 4000 Hµnh HiÖp LÖnh ®Ó ®æi lÊy Minh Ph­îng LÖnh.")
	return end;
	
	if (ConsumeEquiproomItem(4000,6,1,2566,-1) == 1) then
		AddItem(6,1,4875,1,0,0);
		Msg2Player("Chóc mõng b¹n ®· ®æi 4000 Hµnh HiÖp LÖnh lÊy 1 Minh Ph­îng LÖnh thµnh c«ng!")
	end
end

function  DoiTuiPhiPhongCap6()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 500) then
		Talk(1, "", "B¹n kh«ng ®ñ 500 Hµnh HiÖp LÖnh ®Ó ®æi lÊy Tói Phi Phong (cÊp 6).")
	return end;
	
	if (ConsumeEquiproomItem(500,6,1,2566,-1) == 1) then
		AddItem(6,1,4865,6,0,0);
		Msg2Player("Chóc mõng b¹n ®· ®æi 500 Hµnh HiÖp LÖnh lÊy 1 Tói Phi Phong (cÊp 6) thµnh c«ng!")
	end
end

function  DoiTuiPhiPhongCap7()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 1500) then
		Talk(1, "", "B¹n kh«ng ®ñ 1500 Hµnh HiÖp LÖnh ®Ó ®æi lÊy Tói Phi Phong (cÊp 7).")
	return end;
	
	if (ConsumeEquiproomItem(1500,6,1,2566,-1) == 1) then
		AddItem(6,1,4865,7,0,0);
		Msg2Player("Chóc mõng b¹n ®· ®æi 1500 Hµnh HiÖp LÖnh lÊy 1 Tói Phi Phong (cÊp 7) thµnh c«ng!")
	end
end

function  DoiTuiPhiPhongCap8()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 3000) then
		Talk(1, "", "B¹n kh«ng ®ñ 3000 Hµnh HiÖp LÖnh ®Ó ®æi lÊy Tói Phi Phong (cÊp 8).")
	return end;
	
	if (ConsumeEquiproomItem(3000,6,1,2566,-1) == 1) then
		AddItem(6,1,4865,8,0,0);
		Msg2Player("Chóc mõng b¹n ®· ®æi 3000 Hµnh HiÖp LÖnh lÊy 1 Tói Phi Phong (cÊp 8) thµnh c«ng!")
	end
end
--pEventType:Reg("LÔ Quan", "Ta muèn ®æi Hµnh HiÖp LÖnh lÊy vËt phÈm", GhepHanhHiepLenh);