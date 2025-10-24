-- V¹n S­ Th«ng ë Nam Nh¹c TrÊn - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");
Include([[\script\event\mid_autumn06\fairy_of_midautumn06.lua]]);

function main(sel)
	local tab_Content = {
		"Tèn 100000 l­îng b¹c ®Ó biÕt tin tøc vÒ mét ng­êi /Query1", 
		"Tèn 20000 l­îng b¹c ®Ó biÕt tin tøc vÒ mét ng­êi /Query2", 
		"Tèn 3000 l­îng b¹c ®Ó biÕt tin tøc vÒ mét ng­êi /Query3", 
		"Kh«ng hái tr­íc /Nothing"
	};
	
	if (au06_is_inperiod() == 1) then
		tinsert(tab_Content, "Ho¹t ®éng Trung Thu/au06_entrance_fairy");
	end;
	Say("<color=green>V¹n S­ Th«ng<color>: Ta ®İch thËt lµ V¹n Sù Th«ng, kh«ng cã chuyÖn g× mµ kh«ng biÕt. Ng­¬i muèn hái viÖc g×?"..Note("vansuthong_namnhactran"), getn(tab_Content), tab_Content);
end;

--ÏÂÃæÈı¸öº¯Êı¶¼µ÷ÓÃÁË QueryWiseMan µÄº¯Êı£¬´Ëº¯ÊıÍ¨Öª¿Í»§¶ËÊäÈëÒ»¸öÃû×Ö²¢Ìá½»Ò»´Î²éÑ¯
--²éÑ¯³É¹¦£¬ÏµÍ³»Øµ÷µÚÒ»¸ö²ÎÊıÖ¸¶¨µÄ»Øµ÷º¯ÊıÃû£»²éÑ¯Ê§°Ü£¬ÏµÍ³»Øµ÷µÚÒ»¸ö²ÎÊıÖ¸¶¨µÄ»Øµ÷º¯ÊıÃû
--»Øµ÷º¯ÊıÔ­ĞÍÇë²Î¿¼ÏÂÃæ¶¨ÒåµÄÁ½¸öÑùÀıº¯ÊıWisemanCallBackºÍAbsentCallBack
function Query1()
	if (GetCash() >= 100000) then
		QueryWiseMan("WisemanCallBack", "AbsentCallBack", 100000)
	else
		Nothing()
	end
end;

function Query2()
	if (GetCash() >= 20000) then
		QueryWiseMan("WisemanCallBack", "AbsentCallBack", 20000)
	else
		Nothing()
	end
end;

function Query3()
	if (GetCash() >= 3000) then
		QueryWiseMan("WisemanCallBack", "AbsentCallBack", 3000)
	else
		Nothing()
	end
end;

function Nothing()
	Talk(1, "", "Ng­¬i ch¼ng ph¶i ®ang chäc ghÑo ta ®Êy chø?")
end;

--´Ëº¯ÊıÎª³É¹¦²éÑ¯ĞÅÏ¢µÄ»Øµ÷º¯Êı£¬²ÎÊı¸öÊıºÍ²ÎÊıË³Ğò²»ÔÊĞí¸Ä±ä
function WisemanCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank)
	if MapName == "" then
			Say("<color=green>V¹n S­ Th«ng<color>: Xin lçi, hiÖn t¹i "..TargetName.." ë khu vùc ®Æc thï nh­ <color=red>Khu vùc bang héi ®éc lËp<color>, nh­ng kh«ng thÓ biÕt ®­îc vŞ trİ cô thÓ cña y, v× thÕ ta chØ tİnh mét n÷a gi¸ dß hái mµ th«i, ha ha.",0)
			Pay(MoneyToPay / 2)
			return
	elseif (MoneyToPay == 3000) then
		Say("<color=green>V¹n S­ Th«ng<color>: B©y giê "..TargetName.." ë t¹i <color=red>"..MapName.."<color> ng­¬i ®i nhanh ®i, nÕu h¾n ®i ®Õn n¬i kh¸c ta kh«ng qu¶n ®­îc ®©u.",1,"§a t¹ /no")
	elseif (MoneyToPay == 20000) then
		Say("<color=green>V¹n S­ Th«ng<color>: B©y giê "..TargetName.." ë t¹i <color=red>"..MapName.."<color>, vŞ trİ cô thÓ cã lÏ lµ <color=red>( "..nPosX..", "..nPosY..")<color>, nÕu ng­¬i muèn t×m h¾n th× ®i nhanh lªn.",1,"§a t¹ /no")
	elseif (MoneyToPay == 100000) then
		SexString = "Nam"
		if (nSex ~= 0) then
			SexString = "N÷ "
		end
		Say("<color=green>V¹n S­ Th«ng<color>: Ng­êi ch¬i "..TargetName.." ®¼ng cÊp lµ "..PlayerLevel..", giíi tİnh lµ "..SexString..", vŞ trİ hiÖn t¹i lµ <color=red>"..MapName.."("..nPosX..", "..nPosY..")<color>, xÕp h¹ng "..nWorldRank.." thÕ giíi, ®iÓm PK lµ "..PKValue..". NÕu ng­¬i muèn t×m h¾n th× ®i nhanh lªn.",1,"§a t¹ /no")
	end
	Pay(MoneyToPay)
end;

--´Ëº¯ÊıÎªÊ§°Ü²éÑ¯(Ò²¾ÍÊÇ²»ÔÚÏß)ĞÅÏ¢µÄ»Øµ÷º¯Êı£¬²ÎÊı¸öÊıºÍ²ÎÊıË³Ğò²»ÔÊĞí¸Ä±ä
function AbsentCallBack(TargetName, MoneyToPay)
	Say("<color=green>V¹n S­ Th«ng<color>: Xin lçi, hiÖn giê "..TargetName.." kh«ng cã ë ®©y, kh«ng thÓ biÕt ®­îc n¬i ë cña h¾n, phİ t­ vÊn ta chØ lÊy nöa gi¸ th«i, hehe.",0)
	Pay(MoneyToPay / 2)
end;

function no()
end
