--Date: 25/08/2025
--Script: N©ng cÊp Ên
--Coder: Mel
--------------------------------------------------CODE N©ng cÊp Trang Søc--------------------------------------------------
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\judgeoffline.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\system\\task_string.lua" );
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

------------------------------------------------------------------------------------------------------------------------

function melnangcaptrangsuc()
dofile("script/global/mel/nangcaptrangsuc.lua")
Say("H·y chän ph­¬ng thøc n©ng cÊp!",11,
	"N©ng cÊp Vozer trang søc cÊp 1/nangcaptrangsuc1",
	"N©ng cÊp Vozer trang søc cÊp 2/nangcaptrangsuc2",
	"N©ng cÊp Vozer trang søc cÊp 3/nangcaptrangsuc3",
	"N©ng cÊp Vozer trang søc cÊp 4/nangcaptrangsuc4",
	"N©ng cÊp Vozer trang søc cÊp 5/nangcaptrangsuc5",
	"N©ng cÊp Vozer trang søc cÊp 6/nangcaptrangsuc6",
	"N©ng cÊp Vozer trang søc cÊp 7/nangcaptrangsuc7",
	"N©ng cÊp Vozer trang søc cÊp 8/nangcaptrangsuc8",
	"N©ng cÊp Vozer trang søc cÊp 9/nangcaptrangsuc9",
	"N©ng cÊp Vozer trang søc cÊp 10/nangcaptrangsuc10",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

------------------------------N©ng cÊp Vozer trang søc cÊp 1------------------------------

function nangcaptrangsuc1()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer trang søc cÊp 1 kh«ng? CÇn cã T©n thñ trang søc, 1 Kim Lo¹i HiÕm, 1 Trang Søc Kinh Th­ vµ 10 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcaptrangsuc1",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcaptrangsuc1()
	if CalcEquiproomItemCount (4,2045,1,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 1 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,0,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã T©n thñ trang søc.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 1 Trang Søc Kinh Th­.")
	return
	end
	if GetCash() >= 100000 then
		Pay(100000)
		ConsumeEquiproomItem (1,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,0,1)
		ConsumeEquiproomItem (1,4,2057,1,1)
		AddItem(0,14,1,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer trang søc cÊp 1<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 10 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer trang søc cÊp 2------------------------------

function nangcaptrangsuc2()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer trang søc cÊp 2 kh«ng? CÇn cã Vozer trang søc cÊp 1, 2 Kim Lo¹i HiÕm, 2 Trang Søc Kinh Th­ vµ 20 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcaptrangsuc2",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcaptrangsuc2()
	if CalcEquiproomItemCount (4,2045,1,1) < 2 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 2 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer trang søc cÊp 1.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 2 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 2 Trang Søc Kinh Th­.")
	return
	end
	if GetCash() >= 200000 then
		Pay(200000)
		ConsumeEquiproomItem (2,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,1)
		ConsumeEquiproomItem (2,4,2057,1,1)
		AddItem(0,14,1,2,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer trang søc cÊp 2<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 20 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer trang søc cÊp 3------------------------------

function nangcaptrangsuc3()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer trang søc cÊp 3 kh«ng? CÇn cã Vozer trang søc cÊp 2, 3 Kim Lo¹i HiÕm, 3 Trang Søc Kinh Th­ vµ 30 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcaptrangsuc3",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcaptrangsuc3()
	if CalcEquiproomItemCount (4,2045,1,1) < 3 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 3 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,2) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer trang søc cÊp 2.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 3 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 3 Trang Søc Kinh Th­.")
	return
	end
	if GetCash() >= 300000 then
		Pay(300000)
		ConsumeEquiproomItem (3,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,2)
		ConsumeEquiproomItem (3,4,2057,1,1)
		AddItem(0,14,1,3,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer trang søc cÊp 3<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 30 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer trang søc cÊp 4------------------------------

function nangcaptrangsuc4()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer trang søc cÊp 4 kh«ng? CÇn cã Vozer trang søc cÊp 3, 4 Kim Lo¹i HiÕm, 4 Trang Søc Kinh Th­ vµ 40 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcaptrangsuc4",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcaptrangsuc4()
	if CalcEquiproomItemCount (4,2045,1,1) < 4 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 4 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,3) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer trang søc cÊp 3.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 4 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 4 Trang Søc Kinh Th­.")
	return
	end
	if GetCash() >= 400000 then
		Pay(400000)
		ConsumeEquiproomItem (4,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,3)
		ConsumeEquiproomItem (4,4,2057,1,1)
		AddItem(0,14,1,4,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer trang søc cÊp 4<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 40 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer trang søc cÊp 5------------------------------

function nangcaptrangsuc5()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer trang søc cÊp 5 kh«ng? CÇn cã Vozer trang søc cÊp 4, 5 Kim Lo¹i HiÕm, 5 Trang Søc Kinh Th­ vµ 50 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcaptrangsuc5",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcaptrangsuc5()
	if CalcEquiproomItemCount (4,2045,1,1) < 5 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 5 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,4) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer trang søc cÊp 4.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 5 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 5 Trang Søc Kinh Th­.")
	return
	end
	if GetCash() >= 500000 then
		Pay(500000)
		ConsumeEquiproomItem (5,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,4)
		ConsumeEquiproomItem (5,4,2057,1,1)
		AddItem(0,14,1,5,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer trang søc cÊp 5<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 50 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer trang søc cÊp 6------------------------------

function nangcaptrangsuc6()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer trang søc cÊp 6 kh«ng? CÇn cã Vozer trang søc cÊp 5, 6 Kim Lo¹i HiÕm, 6 Trang Søc Kinh Th­ vµ 60 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcaptrangsuc6",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcaptrangsuc6()
	if CalcEquiproomItemCount (4,2045,1,1) < 6 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 6 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,5) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer trang søc cÊp 5.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 6 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 6 Trang Søc Kinh Th­.")
	return
	end
	if GetCash() >= 600000 then
		Pay(600000)
		ConsumeEquiproomItem (6,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,5)
		ConsumeEquiproomItem (6,4,2057,1,1)
		AddItem(0,14,1,6,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer trang søc cÊp 6<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 60 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer trang søc cÊp 7------------------------------

function nangcaptrangsuc7()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer trang søc cÊp 7 kh«ng? CÇn cã Vozer trang søc cÊp 6, 7 Kim Lo¹i HiÕm, 7 Trang Søc Kinh Th­ vµ 70 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcaptrangsuc7",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcaptrangsuc7()
	if CalcEquiproomItemCount (4,2045,1,1) < 7 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 7 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,6) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer trang søc cÊp 6.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 7 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 7 Trang Søc Kinh Th­.")
	return
	end
	if GetCash() >= 700000 then
		Pay(700000)
		ConsumeEquiproomItem (7,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,6)
		ConsumeEquiproomItem (7,4,2057,1,1)
		AddItem(0,14,1,7,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer trang søc cÊp 7<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 70 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer trang søc cÊp 8------------------------------

function nangcaptrangsuc8()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer trang søc cÊp 8 kh«ng? CÇn cã Vozer trang søc cÊp 7, 8 Kim Lo¹i HiÕm, 8 Trang Søc Kinh Th­ vµ 80 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcaptrangsuc8",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcaptrangsuc8()
	if CalcEquiproomItemCount (4,2045,1,1) < 8 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 8 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,7) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer trang søc cÊp 7.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 8 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 8 Trang Søc Kinh Th­.")
	return
	end
	if GetCash() >= 800000 then
		Pay(800000)
		ConsumeEquiproomItem (8,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,7)
		ConsumeEquiproomItem (8,4,2057,1,1)
		AddItem(0,14,1,8,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer trang søc cÊp 8<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 80 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer trang søc cÊp 9------------------------------

function nangcaptrangsuc9()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer trang søc cÊp 9 kh«ng? CÇn cã Vozer trang søc cÊp 8, 9 Kim Lo¹i HiÕm, 9 Trang Søc Kinh Th­ vµ 90 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcaptrangsuc9",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcaptrangsuc9()
	if CalcEquiproomItemCount (4,2045,1,1) < 9 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 9 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,8) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer trang søc cÊp 8.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 9 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 9 Trang Søc Kinh Th­.")
	return
	end
	if GetCash() >= 900000 then
		Pay(900000)
	ConsumeEquiproomItem (9,4,2045,1,1)
	ConsumeEquiproomItem (1,0,14,1,8)
	ConsumeEquiproomItem (9,4,2057,1,1)
	AddItem(0,14,1,9,0,0,0)
	Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer trang søc cÊp 9<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 90 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer trang søc cÊp 10------------------------------

function nangcaptrangsuc10()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer trang søc cÊp 10 kh«ng? CÇn cã Vozer trang søc cÊp 9, 10 Kim Lo¹i HiÕm, 10 Trang Søc Kinh Th­ vµ 100 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcaptrangsuc10",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcaptrangsuc10()
	if CalcEquiproomItemCount (4,2045,1,1) < 10 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 10 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,9) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer trang søc cÊp 9.")
	return
	end
	if CalcEquiproomItemCount (4,2057,1,1) < 10 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 10 Trang Søc Kinh Th­.")
	return
	end
	if GetCash() >= 1000000 then
		Pay(1000000)
		ConsumeEquiproomItem (10,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,9)
		ConsumeEquiproomItem (10,4,2057,1,1)
		AddItem(0,14,1,10,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer trang søc cÊp 10<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 100 v¹n l­îng.")
	end
end