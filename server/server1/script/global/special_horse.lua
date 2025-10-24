-- special_horse.lua ¢ôÌØÊâ¢í(80¼¶¢í)µÄNPC½Å±¾
-- By Dan_Deng(2003-11-10)

function main()
	UWorld97 = GetTask(97)
	if (UWorld97 == 10) then		-- ÒÑ¾­¢ò¹ý
		Talk(1,"","ThÈm C©u : Ng­¬i nhÊt ®Þnh ph¶i thËt tèt ®èi ®·i con ngùa, mçi ngµy cÊp cho nã t¾m, ®Ëu bÝnh bªn trong muèn s¶m th­îng tinh mÆt......")
	elseif (UWorld97 == 1) and (IsTongMaster() == 1) then			-- ¿ÉÒÔ¢ò¢í
		Talk(4,"sele_color","ThÈm C©u : VÞ nµy anh hïng xin dõng b­íc.","Ng­êi ch¬i : Huynh ®µi cã chuyÖn g× ? ","ThÈm C©u : T¹i h¹ ThÈm C©u, hiÖn d­íi cã mét thÊt ngµn dÆm l­¬ng c©u ra ®Ó cho, nh×n vÞ nµy anh hïng khÝ vò bÊt phµm, nhÊt ®Þnh lµ khai t«ng lËp ph¸i ®Ých ®¹i t«ng s­, t¹i h¹ ®Ých BMW khi kh«ng cã nhôc kh«ng cã anh hïng danh tiÕn. ","Ng­êi ch¬i : ta xem mét chót ng­¬i......") 
else 
Talk(1,"","ThÈm C©u : Thiªn lý m· th­êng cã, mµ b¸ nh¹c kh«ng th­êng cã. §å h« ! kh«ng biÕt sao !")
	end
end

function sele_color()
	Say("ThÈm C©u : Anh hïng mêi xem :",6,"§©y kh«ng ph¶i lµ ¤ V©n §¹p TuyÕt sao/buy_black","§©y kh«ng ph¶i lµ XÝch Thè sao !/buy_red","§©y kh«ng ph¶i lµ TuyÖt ?nh sao !/buy_cyan","§©y kh«ng ph¶i lµ §Ých L« sao!/buy_yellow","§©y kh«ng ph¶i lµ ChiÕu D¹ Ngäc S­ Tö sao !/buy_white","§©y lµ c¸i g× m·, thø cho thÝnh h¹ m¾t vông vÒ kh«ng biÕt . /buy_none")
end

function buy_black()
	the_buy(1)
end

function buy_red()
	the_buy(2)
end

function buy_cyan()
	the_buy(3)
end

function buy_yellow()
	the_buy(4)
end

function buy_white()
	the_buy(5)
end

function buy_none()
	Talk(1,"","ThÈm C©u : §øng ®Çu mét bang , t«ng s­ nh©n vËt nh­ thÕ nµo kh«ng biÕt nh­ thÕ long c©u ? xin lçi, xem ra t¹i h¹ lµ nhËn lÇm ng­êi .")
end

function the_buy(i)
	SetTaskTemp(49,i)
	Say("ThÈm C©u : Kh«ng tÖ, anh hïng qu¶ nhiªn nhËn biÕt ! T¹i h¹ vèn còng kh«ng bá ®­îc v× vËy b¸n nã, nh­ng lµ hiÖn h¹ cÇn 300 v¹n l­îng b¹c , nh×n anh hïng lµ thËt b¸ nh¹c , nhÞn ®au c¾t yªu , ng¾m anh hïng ngµn v¹n h¶o sinh ®èi xö tö tÕ víi nã . ",2,"Kh«ng thµnh vÊn ®Ò, ta nhÊt ®Þnh sÏ kh«ng b¹c ®·i nã /buy_yes","C¸i nµy nhÊt thêi håi l©u ®ang lóc l¹i lªn kia ®i trï sè tiÒn kia ®©y ? /buy_no")
end

function buy_yes()
	if (GetCash() >= 3000000) then
		i = GetTaskTemp(49)
		Pay(3000000)
		AddItem(0,10,5,i,0,0,0)
		SetTask(97,100+i)			-- ±äÁ¿¸³Öµ£¬²¢ÇÒ¼Ç×¡¢òµÄÊÇÊ²Ã´ÑÕÉ«¢í
		Talk(1,"","ThÈm C©u : Con ngùa nha con ngùa, sau nµy ng­¬i theo vÞ nµy anh hïng, nhÊt ®Þnh ph¶i ngoan ngo·n nha.") 
else 
Talk(1,"","Ng­êi ch¬i : Ta trªn ng­êi b©y giê ng©n l­îng mang ph¶i kh«ng ®ñ, ng­¬i th¶ ®îi chót. ")
	end
end

function buy_no()
	Talk(1,"","ThÈm C©u : ThËt ®óng lµ muèn mét v¨n tiÒn lµm khã anh hïng h¸n sao ?")
end
