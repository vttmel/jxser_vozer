
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

function MoRongRuong()
	local tbSay = {"B¹n muèn më réng r­¬ng, tr­íc hÕt ph¶i cã tiÒn. Ng­¬i cã mang theo tiÒn kh«ng?"};
	if (CheckStoreBoxState(1) == 0) then
		tinsert(tbSay, "Më réng r­¬ng 1 [10 xu]/#MoRongRuongConfirm(1)")
	elseif (CheckStoreBoxState(1) == 1) and (CheckStoreBoxState(2) == 0) then
		tinsert(tbSay, "Më réng r­¬ng 2 [20 xu]/#MoRongRuongConfirm(2)")
	elseif (CheckStoreBoxState(2) == 1) and (CheckStoreBoxState(3) == 0) and (CheckStoreBoxState(1) == 1) then
		tinsert(tbSay, "Më réng r­¬ng 3 [40]/#MoRongRuongConfirm(3)")
	else
		Talk(1, "", "B¹n ®· më réng hÕt r­¬ng råi, kh«ng thÓ më réng r­¬ng thªm ®­îc nöa.")
		return
	end
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbSay)
end

function MoRongRuongConfirm(nRoom)
	if (nRoom == 1) then
		if (CalcEquiproomItemCount(4,417,1,-1) < 10) then
			Talk(1, "", "Quý kh¸ch kh«ng mang ®ñ <color=red>10 TiÒn §ång<color>, kh«ng thÓ tiÕn hµnh më réng r­¬ng.")
		return end
		ConsumeEquiproomItem(10, 4,417,1,-1);
		OpenStoreBox(1);
		Msg2Player("B¹n ®· më réng r­¬ng 1 thµnh c«ng!")
	elseif (nRoom == 2) then
		if (CalcEquiproomItemCount(4,417,1,-1) < 20) then
			Talk(1, "", "Quý kh¸ch kh«ng mang ®ñ <color=red>20 TiÒn §ång<color>, kh«ng thÓ tiÕn hµnh më réng r­¬ng.")
		return end
		ConsumeEquiproomItem(20, 4,417,1,-1);
		OpenStoreBox(2);
		Msg2Player("B¹n ®· më réng r­¬ng 2 thµnh c«ng!")
	elseif (nRoom == 3) then
		if (CalcEquiproomItemCount(4,417,1,-1) < 40) then
			Talk(1, "", "Quý kh¸ch kh«ng mang ®ñ <color=red>40 TiÒn §ång<color>, kh«ng thÓ tiÕn hµnh më réng r­¬ng.")
		return end
		ConsumeEquiproomItem(40, 4,417,1,-1);
		OpenStoreBox(3);
		Msg2Player("B¹n ®· më réng r­¬ng 3 thµnh c«ng!")
	end
end

--pEventType:Reg("LÔ Quan", "Më réng r­¬ng", MoRongRuong);