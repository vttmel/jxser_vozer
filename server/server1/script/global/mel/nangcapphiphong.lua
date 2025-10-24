--Date: 25/08/2025
--Script: N©ng cÊp phi phong
--Coder: Mel
--------------------------------------------------CODE N©ng cÊp Phi Phong--------------------------------------------------
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

function melnangcapphiphong()
dofile("script/global/mel/nangcapphiphong.lua")
Say("H·y chän ph­¬ng thøc n©ng cÊp!",11,
	"N©ng cÊp Phi Phong L¨ng V©n - CÊp 1/phiphong1",
	"N©ng cÊp Phi Phong TuyÖt ThÕ - CÊp 2/phiphong2",
	"N©ng cÊp Phi Phong Ph¸ Qu©n - CÊp 3/phiphong3",
	"N©ng cÊp Phi Phong Ng¹o TuyÕt - CÊp 4/phiphong4",
	"N©ng cÊp Phi Phong K×nh L«i - CÊp 5/phiphong5",
	"N©ng cÊp Phi Phong Ngù Phong - CÊp 6/phiphong6",
	"N©ng cÊp Phi Phong PhÖ Quang - CÊp 7/phiphong7",
	"N©ng cÊp Phi Phong KhÊp ThÇn - CÊp 8/phiphong8",
	"N©ng cÊp Phi Phong K×nh Thiªn - CÊp 9/phiphong9",
	"N©ng cÊp Phi Phong V« Cùc - CÊp 10/phiphong10",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

------------------------------N©ng cÊp Phi Phong L¨ng V©n - CÊp 1------------------------------

function phiphong1()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Phi Phong L¨ng V©n kh«ng? CÇn cã Phi Phong T©n Thñ, 10 Kim Lo¹i HiÕm vµ 100 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphong1",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphong1()
	if CalcEquiproomItemCount (4,2045,1,1) < 10 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 10 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,12,0,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Phi Phong T©n Thñ.")
	return
	end
	if GetCash() >= 1000000 then
		Pay(1000000)
		ConsumeEquiproomItem (10,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,0,1)
		AddItem(0,12,1,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Phi Phong L¨ng V©n<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 100 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Phi Phong TuyÖt ThÕ - CÊp 2------------------------------

function phiphong2()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Phi Phong TuyÖt ThÕ kh«ng? CÇn cã Phi Phong L¨ng V©n, 200 Kim Lo¹i HiÕm vµ 2000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphong2",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphong2()
	if CalcEquiproomItemCount (4,2045,1,1) < 200 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 200 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Phi Phong L¨ng V©n.")
	return
	end
	if GetCash() >= 20000000 then
		Pay(20000000)
		ConsumeEquiproomItem (200,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,1)
		AddItem(0,12,1,2,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Phi Phong TuyÖt ThÕ<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 2000 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Phi Phong Ph¸ Qu©n - CÊp 3------------------------------

function phiphong3()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Phi Phong Ph¸ Qu©n kh«ng? CÇn cã Phi Phong TuyÖt ThÕ, 300 Kim Lo¹i HiÕm vµ 3000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphong3",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphong3()
	if CalcEquiproomItemCount (4,2045,1,1) < 300 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 300 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,2) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Phi Phong TuyÖt ThÕ.")
	return
	end
	if GetCash() >= 30000000 then
		Pay(30000000)
		ConsumeEquiproomItem (300,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,2)
		AddItem(0,12,1,3,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Phi Phong Ph¸ Qu©n<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 3000 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Phi Phong Ng¹o TuyÕt - CÊp 4------------------------------

function phiphong4()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Phi Phong Ng¹o TuyÕt kh«ng? CÇn cã Phi Phong Ph¸ Qu©n, 400 Kim Lo¹i HiÕm vµ 4000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphong4",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphong4()
	if CalcEquiproomItemCount (4,2045,1,1) < 400 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 400 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,3) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Phi Phong Ph¸ Qu©n.")
	return
	end
	if GetCash() >= 40000000 then
		Pay(40000000)
		ConsumeEquiproomItem (400,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,3)
		AddItem(0,12,1,4,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Phi Phong Ng¹o TuyÕt<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 4000 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Phi Phong K×nh L«i - CÊp 5------------------------------

function phiphong5()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Phi Phong K×nh L«i kh«ng? CÇn cã Phi Phong Ng¹o TuyÕt, 500 Kim Lo¹i HiÕm vµ 5000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphong5",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphong5()
	if CalcEquiproomItemCount (4,2045,1,1) < 500 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 500 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,4) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Phi Phong Ng¹o TuyÕt.")
	return
	end
	if GetCash() >= 50000000 then
		Pay(50000000)
		ConsumeEquiproomItem (500,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,4)
		AddItem(0,12,1,5,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Phi Phong K×nh L«i<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 5000 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Phi Phong Ngù Phong - CÊp 6------------------------------

function phiphong6()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Phi Phong Ngù Phong kh«ng? CÇn cã Phi Phong K×nh L«i, 600 Kim Lo¹i HiÕm vµ 6000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphong6",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphong6()
	if CalcEquiproomItemCount (4,2045,1,1) < 600 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 600 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,5) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Phi Phong K×nh L«i.")
	return
	end
	if GetCash() >= 60000000 then
		Pay(60000000)
		ConsumeEquiproomItem (600,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,5)
		AddItem(0,12,1,6,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Phi Phong Ngù Phong<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 6000 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Phi Phong PhÖ Quang - CÊp 7------------------------------

function phiphong7()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Phi Phong PhÖ Quang kh«ng? CÇn cã Phi Phong Ngù Phong, 700 Kim Lo¹i HiÕm vµ 7000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphong7",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphong7()
	if CalcEquiproomItemCount (4,2045,1,1) < 700 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 700 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,6) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Phi Phong Ngù Phong.")
	return
	end
	if GetCash() >= 70000000 then
		Pay(70000000)
		ConsumeEquiproomItem (700,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,6)
		AddItem(0,12,1,7,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Phi Phong PhÖ Quang<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 7000 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Phi Phong KhÊp ThÇn - CÊp 8------------------------------

function phiphong8()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Phi Phong KhÊp ThÇn kh«ng? CÇn cã Phi Phong PhÖ Quang, 800 Kim Lo¹i HiÕm vµ 8000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphong8",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphong8()
	if CalcEquiproomItemCount (4,2045,1,1) < 800 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 800 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,7) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Phi Phong PhÖ Quang.")
	return
	end
	if GetCash() >= 80000000 then
		Pay(80000000)
		ConsumeEquiproomItem (800,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,7)
		AddItem(0,12,1,8,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Phi Phong KhÊp ThÇn<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 8000 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Phi Phong K×nh Thiªn - CÊp 9------------------------------

function phiphong9()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Phi Phong K×nh Thiªn kh«ng? CÇn cã Phi Phong KhÊp ThÇn, 900 Kim Lo¹i HiÕm vµ 9000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphong9",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphong9()
	if CalcEquiproomItemCount (4,2045,1,1) < 900 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 900 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,8) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Phi Phong KhÊp ThÇn.")
	return
	end
	if GetCash() >= 90000000 then
		Pay(90000000)
	ConsumeEquiproomItem (900,4,2045,1,1)
	ConsumeEquiproomItem (1,0,12,1,8)
	AddItem(0,12,1,9,0,0,0)
	Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Phi Phong K×nh Thiªn<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 9000 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp Phi Phong V« Cùc - CÊp 10------------------------------

function phiphong10()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Phi Phong V« Cùc kh«ng? CÇn cã Phi Phong K×nh Thiªn, 1000 Kim Lo¹i HiÕm vµ 10000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphong10",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphong10()
	if CalcEquiproomItemCount (4,2045,1,1) < 1000 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 1000 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,12,1,9) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Phi Phong K×nh Thiªn.")
	return
	end
	if GetCash() >= 100000000 then
		Pay(100000000)
		ConsumeEquiproomItem (1000,4,2045,1,1)
		ConsumeEquiproomItem (1,0,12,1,9)
		AddItem(0,12,1,10,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Phi Phong V« Cùc<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 10000 v¹n l­îng.")
	end
end