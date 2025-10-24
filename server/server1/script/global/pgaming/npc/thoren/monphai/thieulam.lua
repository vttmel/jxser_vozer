Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")

Include("\\script\\global\\repute_head.lua")

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
	Uworld38 = GetByte(GetTask(38),2)
	Uworld131 = GetTask(131)
	if (Uworld131 == 10) and (GetItemCount(138) >= 5) and (GetItemCount(121) >= 5) and (GetItemCount(118) >=5) then
		Talk(1,"U131_prise","§¹i s­! C¸c lo¹i kho¸ng th¹ch t¹i h¹ ®· ®em ®Õn, xin h·y xem qua.","Kho¸ng th¹ch nµy.....c¸m ¬n ng­¬i!")
	elseif (GetFaction() == "shaolin") or (Uworld38 == 127) then
		if (GetLevel() >= 20) and (GetReputeLevel(GetRepute()) >=4) and ((Uworld131 < 10) or ((GetGameTime() > Uworld131) and (Uworld131 > 255))) then
			Say("Bæn tù n»m trong ph¹m vi cña Kim quèc, c¸c thî rÌn xung quang c¸ch 100 dÆm ®­îc lÖnh cña §¹i Kim kh«ng ®­îc b¸n binh khÝ kho¸ng th¹ch cho ThiÕu L©m. HiÖn vò khÝ trong chïa ®· rØ sÐt c¶, nÕu qu©n Kim tÊn c«ng ®Õn, e r»ng kh«ng chèng ®ì ®­îc. Ta cÇn Tõ ThiÕt Kho¸ng, L­îng Ng©n Kho¸ng, XÝch §ång Kho¸ng.",3,"§ång ý ®i thu thËp kho¸ng th¹ch. /yes1","T¹i h¹ muèn mua vµi lo¹i binh khÝ. /yes","T¹i h¹ cßn chuyÖn kh¸c ph¶i lµm, lÇn sau sÏ ®èi tho¹i. /no")
		else
			Say("Vâ c«ng ThiÕu L©m vang danh thiªn h¹, nh­ng nÕu kh«ng cã vò khÝ th× c«ng phu nµo còng thµnh v« dông.", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
		end
	else
		Talk(1,"","Ch­ëng m«n cã lÖnh, vò khÝ bæn ph¸i chØ b¸n cho ®ång m«n")
	end
end
end;

function yes()
	Sale(69)
end;

function yes1()
	Talk(2,"","ThiÕu L©m n¾m gi÷ vËn mÖnh vâ l©m ®· mÊy tr¨m n¨m nay, t¹i h¹ nguyÖn phôc vô hÕt m×nh!","PhËt tõ bi, ThiÕu L©m cÇn ng­¬i gióp ®ì! H·y gióp tiÓu t¨ng t×m Tõ ThiÕt Kho¸ng, L­îng Ng©n Kho¸ng, XÝch §ång Kho¸ng mçi lo¹i n¨m viªn.")
	SetTask(131,10)
	Msg2Player("§ång ý gióp ThiÕu L©m ph¸i ®i t×m Tõ ThiÕt Kho¸ng, L­îng Ng©n kho¸ng, XÝch §ång kho¸ng mçi lo¹i 5 viªn. ")
end

function U131_prise()
	for i=1,5 do
		DelItem(138)
		DelItem(121)
		DelItem(118)
	end
	SetTask(131,GetGameTime()+14400)
	i = GetReputeLevel(GetRepute()) + 2
	AddRepute(i)
	Msg2Player("Giao kho¸ng th¹ch cho Trõng M¹t, hoµn thµnh nhiÖm vô. Danh väng cña b¹n t¨ng thªm "..i.."®iÓm.")
end

function no()
end;
