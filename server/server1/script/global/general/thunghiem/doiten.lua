Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\misc\\eventsys\\type\\npc.lua");

function main()
	local tbSay = {"Ng­¬i muèn ®æi tªn nh©n vËt ®ung chø?"}
		tinsert(tbSay, "B­íc 1: KiÓm tra tªn nh©n vËt ®· tån t¹i kh«ng?/CheckPlayerName")
		tinsert(tbSay, "B­íc 2: TiÕn hµnh ®æi tªn nh©n vËt ®· kiÓm tra!/ChangePlayerName")
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbSay)
end

function CheckPlayerName()
	AskClientForString("CheckPlayerName_Enter", "", 1, 20, "<#> Xin nhËp tªn nh©n vËt cÇn t×m hiÓu");
end

function CheckPlayerName_Enter(szPlayerName)
	QueryRoleName(szPlayerName);
end

function ChangePlayerName()
	local tbSay = {"C¸c b­íc cô thÓ: Rêi Bang Héi nÕu cã, ®èi tho¹i víi NPC, nhËp tªn nh©n vËt cÇn thay ®æi vµo, b¹n sÏ tù ®éng rêi m¹ng. Sau 3 phót ®¨ng nhËp l¹i, nÕu tªn nh©n vËt ®· thay ®æi th× ®­îc xem ®æi tªn thµnh c«ng; nÕu ch­a thay ®æi, mêi b¹n thùc hiÖn l¹i c¸c b­íc trªn. NÕu xuÊt hiÖn mét sè hiÖn t­îng l¹ xin liªn hÖ GM gi¶i quyÕt."};
		tinsert(tbSay, "B¾t ®Çu thay ®æi tªn nh©n vËt/ChangePlayerNameEnter")
		tinsert(tbSay, "Th«i ®Ó khi kh¸c ®i, ta bËn råi./no")
	CreateTaskSay(tbSay)
end

function ChangePlayerNameEnter()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>B¹n ®· cã Bang Héi kh«ng thÓ tiÕn hµnh thao t¸c nµy!<color>")
		return
	end
	AskClientForString("OnChangePlayerName", "", 1, 20, "Tªn nh©n vËt míi:");
end

function OnChangePlayerName(szPlayerName)
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney < 50) then
		Talk(1, "", "CÇn <color=red>50<color> tiÒn ®æng míi cã thÓ ®æi tªn.")
	return 1
	end
	if (GetName() == szPlayerName) then
		Talk(1, "", "B¹n muèn ®æi tªn g×?")
	else
		RenameRole(szPlayerName);
		ConsumeEquiproomItem(50, 4, 417, 1, 1)
	end
end

-- pEventType:Reg("Tİnh n¨ng thö nghiÖm", "Häc kü n¨ng m«n ph¸i", HocKyNangMonPhai);