Include("\\script\\global\\global_zahuodian.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\taphoa\\alltaphoa.lua")

function main(sel)
if TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa == 1 then
	local tbOpt = {
		{"Giao DÞch",scripttaphoaall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
else
	UTask_wd = GetTask(5);
	if (UTask_wd == 20*256+40) and (HaveItem(66) == 1) then
		Talk(2, "", "Nµy chñ gia, «ng cã thÓ gióp ta söa tÊm ®¹o bµo nµy?", "Con trai ta lªn Vâ §ang s¬n h¸i l¸ d©u t»m bÞ sãi hoang trong <color=Red>Háa Lang ®éng<color> ha ®i mÊt. Ai cã thÓ cøu ®­îc con ta?!","Cøu ng­êi lµ khÈn cÊp, ta göi l¹i ®¹o bµo chç «ng!")
		SetTask(5, 20*256+50)
		DelItem(66)
		AddNote("T¹i T­¬ng D­¬ng ®· t×m thÊy «ng chñ tiÖm t¹p hãa, ®­îc biÕt con trai cña bµ ta ®· bÞ sãi hoang <color=red>trong ®éng Háa Lang<color> tha ®i mÊt. ")
		Msg2Player("T¹i T­¬ng D­¬ng ®· t×m thÊy bµ ¤ng chñ tiÖm t¹p hãa, ®­îc biÕt con g¸i cña bµ ta ®· bÞ sãi hoang<color=red> trong ®éng Háa Lang<color> tha ®i mÊt. ")
	elseif (UTask_wd == 20*256+50) then
		if (HaveItem(67) == 1) then
			Talk(3,"","Kh¸ch quan lµ ©n nh©n cøu m¹ng cña con ta, cÇn ta gióp g× xin cø nãi!","Cã thÓ gióp ta söa tÊm ®¹o bµo nµy?","Kh«ng thµnh vÊn ®Ò! §Ó ®Òn ¬n cøu m¹ng con ta, ta kh«ng lÊy tiÒn c«ng söa ¸o!")
			DelItem(67)
			AddEventItem(68)
			Msg2Player("¸o ®· ®­îc v¸ xong. ")
			SetTask(5, 20*256+80)
			AddNote("¤ng chñ tiÖm t¹p hãa T­¬ng D­¬ng dïng lôa t¬ t»m ®Ó söa l¹i chiÕc ¸o. ")
		else
			Say("Con trai ta lªn Vâ §ang s¬n h¸i l¸ d©u t»m bÞ sãi hoang trong <color=Red>Háa Lang ®éng<color> ha ®i mÊt. Ai cã thÓ cøu ®­îc con ta?!", 2, "Ta chØ lµ muèn mua chót Ýt ®å th«i /yes", "Ta ®· biÕt råi. /no")
		end
	elseif (UTask_wd == 20*256+80) and (HaveItem(68) == 0) then	
		AddEventItem(68)
		Talk(1,"","¢n nh©n, ng­êi quªn lÊy ®¹o bµo råi!")
	else
		local Buttons = store_sel_extend();
		Say("Kh¸ch quan muèn mua thø g×? §å ¨n, mÆc, hay ®å dïng?", getn(Buttons), Buttons);
	end
end
end;

function yes()
	Sale(11)  	
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;
