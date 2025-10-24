Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")

TIEJIANG_DIALOG = "<dec><npc>T¹i ®©y chuyªn lµm binh khÝ cho qu©n ®éi nªn rÊt bËn rén. CÇn lo¹i vò khÝ nµo th× chän tù nhiªn nhÐ."

function main(sel)
if TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen == 1 then
	local tbOpt = {
		{"Giao DÞch",scriptthorenall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
else
	UTask_wd = GetTask(5);
	UTask_wd60sub = GetByte(GetTask(17),2)
	if (UTask_wd == 60*256+20) then
		if (UTask_wd60sub == 2) then 
			Talk(2, "", "Nay chiÕn sù mÆt trËn khÈn cÊp, quan binh qu©n giíi l¹i kh«ng ®ñ, «ng cã thÓ mau chãng rÌn mét l« binh khÝ cho chiÕn tr­êng kh«ng?", "Kh«ng giÊu g× ng­¬i, lóc nµy ta ngµy ®ªm lµm viÖc. Nh­ng v× sè l­îng qu¸ lín, nªn sè kho¸ng th¹ch trong kho ®· kh«ng ®ñ dïng!<color=Red>Tõ ThiÕt Kho¸ng, L­îng Ng©n Kho¸ng vµ XÝch §ång kho¸ng<color>®Òu ®· dïng hÕt. Ng­¬i cã thÓ ®Õn <color=Red>phÝa T©y Nam<color> gióp ta t×m kho¸ng th¹ch kh«ng?")
			SetTask(17, SetByte(GetTask(17),2,5))
			AddNote("Thî rÌn (193,201) cho biÕt: muèn chÕ t¹o binh khÝ cÇn cã 3 lo¹i kho¸ng th¹ch lµ: XÝch §ång Kho¸ng, Tõ ThiÕt Kho¸ng, L­îng Ng©n Kho¸ng, cã thÓ t×m thÊy chóng ë bªn ngoµi  rõng h­íng T©y Nam  cña T­¬ng D­¬ng.")
		elseif (UTask_wd60sub == 5) then 
			if ( HaveItem(138) == 1 and HaveItem(118) == 1 and HaveItem(121) == 1) then
				Talk(2, "", "Ta ®· t×m ®­îc kho¸ng th¹ch, hy väng nh÷ng kho¸ng th¹ch nµy cã thÓ t¹o ra nh÷ng binh khÝ tèt nhÊt, gióp c¸c binh sÜ chèng Kim binh", "Mäi ng­êi chÝ cao nh­ nói, nhÊt ®Þnh sÏ ®uæi ®­îc lò ngo¹i x©m!")
				DelItem(138)
				DelItem(118)
				DelItem(121)
				SetTask(17, SetByte(GetTask(17),2,8))
				AddNote("T×m ®ñ 3 lo¹i kho¸ng th¹ch giao cho thî rÌn gi¶i quyÕt ®­îc vÊn ®Ò kh«ng ®ñ binh khÝ chèng Kim.")
				Msg2Player("T×m ®ñ 3 lo¹i kho¸ng th¹ch giao cho thî rÌn gi¶i quyÕt ®­îc vÊn ®Ò kh«ng ®ñ binh khÝ chèng Kim.")
			else
				tiejiang_city("Kh«ng cã kho¸ng th¹ch th× ta kh«ng cã c¸ch nµo t¹o vò khÝ ®­îc! Ng­¬i cã thÓ ®Õn <color=Red>khu rõng phÝa nam ngoµi thµnh<color> lÊy mét Ýt <color=Red> Tõ ThiÕt Th¹ch, L­îng Ng©n Kho¸ng vµ XÝch §ång Kho¸ng<color>?")
			end
		else
			tiejiang_city()
		end		
	else
		tiejiang_city()
	end
end
end;

function yes()
	Sale(10);  			
end;

