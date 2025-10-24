--Date: 25/08/2025
--Script: N©ng cÊp Ên
--Coder: Mel
--------------------------------------------------CODE N©ng cÊp Ên--------------------------------------------------
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

function melnangcapan()
dofile("script/global/mel/nangcapan.lua")
Say("H·y chän ph­¬ng thøc n©ng cÊp!",11,
	"N©ng cÊp Vozer Ên cÊp 1/nangcapan1",
	"N©ng cÊp Vozer Ên cÊp 2/nangcapan2",
	"N©ng cÊp Vozer Ên cÊp 3/nangcapan3",
	"N©ng cÊp Vozer Ên cÊp 4/nangcapan4",
	"N©ng cÊp Vozer Ên cÊp 5/nangcapan5",
	"N©ng cÊp Vozer Ên cÊp 6/nangcapan6",
	"N©ng cÊp Vozer Ên cÊp 7/nangcapan7",
	"N©ng cÊp Vozer Ên cÊp 8/nangcapan8",
	"N©ng cÊp Vozer Ên cÊp 9/nangcapan9",
	"N©ng cÊp Vozer Ên cÊp 10/nangcapan10",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

------------------------------N©ng cÊp Vozer Ên cÊp 1------------------------------

function nangcapan1()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Ên cÊp 1 kh«ng? CÇn cã T©n thñ Ên, 1 Kim Lo¹i HiÕm, 1 Ên Kinh Th­ vµ 10 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapan1",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapan1()
	if CalcEquiproomItemCount (4,2045,1,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 1 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,0,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã T©n thñ Ên.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 1 Ên Kinh Th­.")
	return
	end
	if GetCash() >= 100000 then
		Pay(100000)
		ConsumeEquiproomItem (1,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,0,1)
		ConsumeEquiproomItem (1,4,2056,1,1)
		AddItem(0,13,1,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Ên cÊp 1<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 10 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer Ên cÊp 2------------------------------

function nangcapan2()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Ên cÊp 2 kh«ng? CÇn cã Vozer Ên cÊp 1, 2 Kim Lo¹i HiÕm, 2 Ên Kinh Th­ vµ 20 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapan2",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapan2()
	if CalcEquiproomItemCount (4,2045,1,1) < 2 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 2 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 1.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 2 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 2 Ên Kinh Th­.")
	return
	end
	if GetCash() >= 200000 then
		Pay(200000)
		ConsumeEquiproomItem (2,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,1)
		ConsumeEquiproomItem (2,4,2056,1,1)
		AddItem(0,13,1,2,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Ên cÊp 2<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 20 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer Ên cÊp 3------------------------------

function nangcapan3()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Ên cÊp 3 kh«ng? CÇn cã Vozer Ên cÊp 2, 3 Kim Lo¹i HiÕm, 3 Ên Kinh Th­ vµ 30 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapan3",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapan3()
	if CalcEquiproomItemCount (4,2045,1,1) < 3 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 3 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,2) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 2.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 3 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 3 Ên Kinh Th­.")
	return
	end
	if GetCash() >= 300000 then
		Pay(300000)
		ConsumeEquiproomItem (3,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,2)
		ConsumeEquiproomItem (3,4,2056,1,1)
		AddItem(0,13,1,3,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Ên cÊp 3<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 30 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer Ên cÊp 4------------------------------

function nangcapan4()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Ên cÊp 4 kh«ng? CÇn cã Vozer Ên cÊp 3, 4 Kim Lo¹i HiÕm, 4 Ên Kinh Th­ vµ 40 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapan4",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapan4()
	if CalcEquiproomItemCount (4,2045,1,1) < 4 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 4 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,3) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 3.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 4 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 4 Ên Kinh Th­.")
	return
	end
	if GetCash() >= 400000 then
		Pay(400000)
		ConsumeEquiproomItem (4,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,3)
		ConsumeEquiproomItem (4,4,2056,1,1)
		AddItem(0,13,1,4,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Ên cÊp 4<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 40 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer Ên cÊp 5------------------------------

function nangcapan5()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Ên cÊp 5 kh«ng? CÇn cã Vozer Ên cÊp 4, 5 Kim Lo¹i HiÕm, 5 Ên Kinh Th­ vµ 50 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapan5",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapan5()
	if CalcEquiproomItemCount (4,2045,1,1) < 5 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 5 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,4) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 4.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 5 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 5 Ên Kinh Th­.")
	return
	end
	if GetCash() >= 500000 then
		Pay(500000)
		ConsumeEquiproomItem (5,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,4)
		ConsumeEquiproomItem (5,4,2056,1,1)
		AddItem(0,13,1,5,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Ên cÊp 5<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 50 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer Ên cÊp 6------------------------------

function nangcapan6()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Ên cÊp 6 kh«ng? CÇn cã Vozer Ên cÊp 5, 6 Kim Lo¹i HiÕm, 6 Ên Kinh Th­ vµ 60 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapan6",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapan6()
	if CalcEquiproomItemCount (4,2045,1,1) < 6 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 6 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,5) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 5.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 6 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 6 Ên Kinh Th­.")
	return
	end
	if GetCash() >= 600000 then
		Pay(600000)
		ConsumeEquiproomItem (6,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,5)
		ConsumeEquiproomItem (6,4,2056,1,1)
		AddItem(0,13,1,6,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Ên cÊp 6<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 60 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer Ên cÊp 7------------------------------

function nangcapan7()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Ên cÊp 7 kh«ng? CÇn cã Vozer Ên cÊp 6, 7 Kim Lo¹i HiÕm, 7 Ên Kinh Th­ vµ 70 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapan7",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapan7()
	if CalcEquiproomItemCount (4,2045,1,1) < 7 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 7 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,6) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 6.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 7 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 7 Ên Kinh Th­.")
	return
	end
	if GetCash() >= 700000 then
		Pay(700000)
		ConsumeEquiproomItem (7,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,6)
		ConsumeEquiproomItem (7,4,2056,1,1)
		AddItem(0,13,1,7,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Ên cÊp 7<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 70 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer Ên cÊp 8------------------------------

function nangcapan8()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Ên cÊp 8 kh«ng? CÇn cã Vozer Ên cÊp 7, 8 Kim Lo¹i HiÕm, 8 Ên Kinh Th­ vµ 80 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapan8",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapan8()
	if CalcEquiproomItemCount (4,2045,1,1) < 8 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 8 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,7) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 7.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 8 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 8 Ên Kinh Th­.")
	return
	end
	if GetCash() >= 800000 then
		Pay(800000)
		ConsumeEquiproomItem (8,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,7)
		ConsumeEquiproomItem (8,4,2056,1,1)
		AddItem(0,13,1,8,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Ên cÊp 8<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 80 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer Ên cÊp 9------------------------------

function nangcapan9()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Ên cÊp 9 kh«ng? CÇn cã Vozer Ên cÊp 8, 9 Kim Lo¹i HiÕm, 9 Ên Kinh Th­ vµ 90 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapan9",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapan9()
	if CalcEquiproomItemCount (4,2045,1,1) < 9 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 9 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,8) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 8.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 9 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 9 Ên Kinh Th­.")
	return
	end
	if GetCash() >= 900000 then
		Pay(900000)
	ConsumeEquiproomItem (9,4,2045,1,1)
	ConsumeEquiproomItem (1,0,13,1,8)
	ConsumeEquiproomItem (9,4,2056,1,1)
	AddItem(0,13,1,9,0,0,0)
	Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Ên cÊp 9<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 90 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Vozer Ên cÊp 10------------------------------

function nangcapan10()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Ên cÊp 10 kh«ng? CÇn cã Vozer Ên cÊp 9, 10 Kim Lo¹i HiÕm, 10 Ên Kinh Th­ vµ 100 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapan10",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapan10()
	if CalcEquiproomItemCount (4,2045,1,1) < 10 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 10 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,9) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 9.")
	return
	end
	if CalcEquiproomItemCount (4,2056,1,1) < 10 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 10 Ên Kinh Th­.")
	return
	end
	if GetCash() >= 1000000 then
		Pay(1000000)
		ConsumeEquiproomItem (10,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,9)
		ConsumeEquiproomItem (10,4,2056,1,1)
		AddItem(0,13,1,10,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Ên cÊp 10<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 100 v¹n l­îng.")
	end
end