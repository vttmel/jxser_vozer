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

function melantrangsuchoangkim()
dofile("script/global/mel/antrangsuchoangkim.lua")
Say("H·y chän ph­¬ng thøc n©ng cÊp!",7,
	"N©ng cÊp Vozer Hoµng Kim Ên hÖ Kim/anhekim",
	"N©ng cÊp Vozer Hoµng Kim Ên hÖ Méc/anhemoc",
	"N©ng cÊp Vozer Hoµng Kim Ên hÖ Thñy/anhethuy",
	"N©ng cÊp Vozer Hoµng Kim Ên hÖ Háa/anhehoa",
	"N©ng cÊp Vozer Hoµng Kim Ên hÖ Thæ/anhetho",
	"N©ng cÊp Vozer Hoµng Kim trang søc/trangsuchoanmy",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;


------------------------------Hoµng Kim Ngò Hµnh Ên Kim------------------------------

function anhekim()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Hoµng Kim ngò hµnh Ên hÖ Kim kh«ng? CÇn ph¶i cã Vozer Ên cÊp 10, 1 Kim Tinh LÖnh, 100 Kim Lo¹i HiÕm vµ 1000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./doanhekim",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function doanhekim()
	if CalcEquiproomItemCount (4,2046,1,1) < 1 then
		Say("§ïa ta µ, kh«ng cã Kim Tinh LÖnh lµm sao ta Ðp ®­îc Hoµng Kim ngò hµnh Ên hÖ Kim")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 100 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,10) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2046,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,10)
		AddGoldItem(0,1067)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Hoµng Kim Ngò Hµnh Ên hÖ Kim<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 1000 v¹n l­îng.")
	end
end

-----------------------------Hoµng Kim Ngò Hµnh Ên Méc------------------------------

function anhemoc()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Hoµng Kim ngò hµnh Ên hÖ Méc kh«ng? CÇn ph¶i cã Vozer Ên cÊp 10, 1 Méc Tinh LÖnh, 100 Kim Lo¹i HiÕm vµ 1000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./doanhemoc",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function doanhemoc()
	if CalcEquiproomItemCount (4,2047,1,1) < 1 then
		Say("§ïa ta µ, kh«ng cã Méc Tinh LÖnh lµm sao ta Ðp ®­îc Hoµng Kim ngò hµnh Ên hÖ Méc")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 100 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,10) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2047,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,10)
		AddGoldItem(0,1068)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Hoµng Kim Ngò Hµnh Ên hÖ Méc<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 1000 v¹n l­îng.")
	end
end

-----------------------------Hoµng Kim Ngò Hµnh Ên Thñy------------------------------

function anhethuy()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Hoµng Kim ngò hµnh Ên hÖ Thñy kh«ng? CÇn ph¶i cã Vozer Ên cÊp 10, 1 Thñy Tinh LÖnh, 100 Kim Lo¹i HiÕm vµ 1000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./doanhethuy",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function doanhethuy()
	if CalcEquiproomItemCount (4,2048,1,1) < 1 then
		Say("§ïa ta µ, kh«ng cã Thñy Tinh LÖnh lµm sao ta Ðp ®­îc Hoµng Kim ngò hµnh Ên hÖ Thñy")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 100 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,10) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2048,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,10)
		AddGoldItem(0,1069)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Hoµng Kim Ngò Hµnh Ên hÖ Thñy<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 1000 v¹n l­îng.")
	end
end

-----------------------------Hoµng Kim Ngò Hµnh Ên Háa------------------------------

function anhehoa()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Hoµng Kim ngò hµnh Ên hÖ Háa kh«ng? CÇn ph¶i cã Vozer Ên cÊp 10, 1 Háa Tinh LÖnh, 100 Kim Lo¹i HiÕm vµ 1000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./doanhehoa",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function doanhehoa()
	if CalcEquiproomItemCount (4,2049,1,1) < 1 then
		Say("§ïa ta µ, kh«ng cã Háa Tinh LÖnh lµm sao ta Ðp ®­îc Hoµng Kim ngò hµnh Ên hÖ Háa")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 100 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,10) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2049,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,10)
		AddGoldItem(0,1070)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Hoµng Kim Ngò Hµnh Ên hÖ Háa<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 1000 v¹n l­îng.")
	end
end

-----------------------------Hoµng Kim Ngò Hµnh Ên Thæ------------------------------

function anhetho()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Hoµng Kim ngò hµnh Ên hÖ Thæ kh«ng? CÇn ph¶i cã Vozer Ên cÊp 10, 1 Thæ Tinh LÖnh, 100 Kim Lo¹i HiÕm vµ 1000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./doanhetho",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function doanhetho()
	if CalcEquiproomItemCount (4,2050,1,1) < 1 then
		Say("§ïa ta µ, kh«ng cã Thæ Tinh LÖnh lµm sao ta Ðp ®­îc Hoµng Kim ngò hµnh Ên hÖ Thæ")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 100 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,13,1,10) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer Ên cÊp 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2050,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,13,1,10)
		AddGoldItem(0,1071)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Hoµng Kim Ngò Hµnh Ên hÖ Thæ<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 1000 v¹n l­îng.")
	end
end

-----------------------------Hoµng Kim Trang Søc Hoµn Mü------------------------------

function trangsuchoanmy()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp Vozer Hoµng Kim trang søc kh«ng? CÇn ph¶i cã Vozer trang søc cÊp 10, 1 Kim Lo¹i Hoµng Kim, 100 Kim Lo¹i HiÕm vµ 1000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dotrangsuchoanmy",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dotrangsuchoanmy()
	if CalcEquiproomItemCount (4,2051,1,1) < 1 then
		Say("§ïa ta µ, kh«ng cã Kim Lo¹i Hoµng Kim lµm sao ta Ðp ®­îc Hoµng Kim Trang Søc")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 100 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 100 Kim Lo¹i HiÕm.")
	return
	end
	if CalcEquiproomItemCount (0,14,1,10) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Vozer trang søc cÊp 10.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,4,2051,1,1)
		ConsumeEquiproomItem (100,4,2045,1,1)
		ConsumeEquiproomItem (1,0,14,1,10)
		AddGoldItem(0,1072)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>Vozer Hoµng Kim Trang Søc Hoµn Mü<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 1000 v¹n l­îng.")
	end
end