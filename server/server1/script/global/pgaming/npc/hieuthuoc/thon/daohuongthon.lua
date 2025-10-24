Include("\\script\\global\\timerhead.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")

function main()
if TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc == 1 then
	local tbOpt = {
		{"Giao DÞch",scripthieuthuocall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua thuèc g×?<color>", tbOpt)
else
	UTask_world38 = GetTask(66)
	if (UTask_world38 == 1) then	
  		Say("¤ng néi TiÓu Lan lµ kh¸ch quen, «ng ta cÇn thuèc X¹ H­¬ng Hæ Cèt Cao, 750 l­îng 1 lä, nÕu cã 2 lo¹i nguyªn liÖu X¹ H­¬ng vµ Hæ cèt, ta sÏ bèc thuèc miÔn phÝ cho.", 4, "Mua trùc tiÕp/buy", "T×m nguyªn liÖu/source", "Mua lo¹i thuèc kh¸c/yes","§Ó ta suy nghÜ l¹i!/no")
	elseif (UTask_world38==2) then
		if (HaveItem(185) == 1) and (HaveItem(142) == 1) then
			if (GetTimerId() > 0) then		
				Talk(1,"","Ng­¬i ®ang mang nhiÖm vô cÊp b¸ch nh­ thÕ, mµ cßn ch¹y lung tung µ?")
				return
			end
			SetTimer(0.5 * CTime * FramePerSec, 6)								
			Talk(2, "", "¤ng chñ! Ta ®· t×m ®­îc Hæ cèt vµ X¹ h­¬ng.", "Hai lo¹i d­îc liÖu nµy ®Òu cã, n÷a giê sau ng­¬i quay l¹i lÊy!")
			SetTask(66,3)
			DelItem(185)
			DelItem(142)
			AddNote("Sau khi t×m ®ñ nguyªn liÖu ph¶i ®îi nöa tiÕng sau míi chÕ ®­îc thuèc.")
			Msg2Player("Sau khi t×m ®ñ nguyªn liÖu ph¶i ®îi nöa tiÕng sau míi chÕ ®­îc thuèc.")
		else
  			Say("NÕu ng­¬i cã thÓ t×m ®­îc 2 nguyªn liÖu X¹ h­¬ng vµ Hæ cèt, ta sÏ bèc thuèc miÔn phÝ cho ng­¬i.", 3, "mua trùc tiÕp X¹ H­¬ng Hæ Cèt Cao!/buy","Giao dÞch/yes", "Kh«ng giao dÞch/no")
		end
	elseif (UTask_world38 == 3) then				
		i = GetRestSec(6)
		if (i > 0) then
			Say("<#> Thêi gian ch­a ®ñ, thuèc ch­a lµm xong ®­îc, ng­¬i ph¶i chê ®îi thªm."..i.."<#> gi©y.", 3, "Ta kh«ng muèn ®îi n÷a, ®Ó mua trùc tiÕp cho råi!/buy","Ta muèn giao dÞch/yes", "VËy th«i ®i/no")
		else
			StopTimer()						
			W66_getitem()
		end
	elseif (UTask_world38 == 4) then		
		W66_getitem()
	else
		Say("Ng­¬i ®· ¨n 5 cèc t¹p l­¬ng, kh«ng ph¸t háa nhøc ®Çu míi l¹! Chç ta tuy nhá nh­ng tuyÖt ®èi kh«ng thiÕu thø g×! Ng­¬i cã muèn mua Ýt thuèc kh«ng?", 3, "Giao dÞch/yes","Ta ®Õn nhËn nhiÖm vô S¬ nhËp/yboss", "Kh«ng giao dÞch/no")
	end
end
end;

function buy()
  	if (GetCash() < 750) then
  		Talk(1,"","Kh«ng cã tiÒn th× kh«ng thÓ mua thuèc.")
  	else
  		Pay(750)
  		AddEventItem(186)
  		Msg2Player("Cã ®­îc X¹ H­¬ng Hæ Cèt Cao.")
  		SetTask(66,5)
  		AddNote("Mua ®­îc X¹ H­¬ng Hæ Cèt Cao.")
  		Msg2Player("Mua ®­îc X¹ H­¬ng Hæ Cèt Cao.")
		if (GetTimerId() == 6) then			
			StopTimer()
		end
  	end
end

function source()
SetTask(66,2)
AddNote("CÇn hai lo¹i nguyªn liÖu lµ X¹ H­¬ng vµ Hæ Cèt ®Ó chÕ thuèc.")
end

function W66_getitem()
	AddEventItem(186)
	Msg2Player("NhËn ®­îc X¹ H­¬ng Hæ Cèt Cao.")
	SetTask(66,5)
	AddNote("NhËn ®­îc X¹ H­¬ng Hæ Cèt Cao.")
end

function yes()
Sale(91);   		
end;

function no()
end;
