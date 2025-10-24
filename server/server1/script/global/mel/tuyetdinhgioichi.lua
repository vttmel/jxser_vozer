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

function tuyetdinhgioichi()
dofile("script/global/mel/tuyetdinhgioichi.lua")
Say("C¸c h¹ muèn chÕ t¹o TuyÖt §Ønh Giíi ChØ h¶? §óng lµ bËc kú tµi cña vâ l©m. Theo ta ®­îc biÕt tr­íc giê chØ cã Mel lµ cã thÓ kiÓm so¸t ®­îc chiÕc nhÉn nµy, c¸c h¹ vÉn muèn chÕ t¹o chø?",2,
	"§óng vËy, h·y mau gióp ta chÕ t¹o/dotuyetdinhgioichi",
	"§Ó ta suy nghÜ ®·./OnCancel");
end;

-----------------------------TuyÖt §Ønh Giíi ChØ------------------------------

function dotuyetdinhgioichi()
Say("§Ó chÕ t¹o TuyÖt §Ønh Giíi ChØ cÇn ph¶i cã Khu«n ®óc TuyÖt §Ønh Giíi ChØ, 1 Kim Lo¹i Hoµng Kim, 1000 Kim Lo¹i HiÕm vµ 10000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dotuyetdinhgioichi1",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dotuyetdinhgioichi1()
	if CalcEquiproomItemCount (4,2053,1,1) < 1 then
		Say("§ïa ta µ, vËt phÈm quan träng nhÊt lµ Khu«n ®óc TuyÖt §Ønh Giíi ChØ. NÕu kh«ng cã th× lµm sao ta chÕ t¹o ®­îc")
	return
	end
	if CalcEquiproomItemCount (4,2054,1,1) < 1 then
		Say("C¸c h¹ kh«ng mang theo bÝ kÝp TuyÖt §Ønh Tri Thøc th× ta dùa vµo ®©u ®Ó chÕ t¹o b©y giê")
	return
	end
	if CalcEquiproomItemCount (4,2051,1,1) < 1 then
		Say("Nµy, kh«ng cã Kim Lo¹i Hoµng Kim lµm sao ta chÕ t¹o ®­îc")
	return
	end
	if CalcEquiproomItemCount (4,2045,1,1) < 1000 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 1000 Kim Lo¹i HiÕm.")
	return
	end
	if GetCash() >= 100000000 then
		Pay(100000000)
		ConsumeEquiproomItem (1,4,2053,1,1)
		ConsumeEquiproomItem (1,4,2054,1,1)
		ConsumeEquiproomItem (1,4,2051,1,1)
		ConsumeEquiproomItem (1000,4,2045,1,1)
		AddGoldItem(0,5291)
		Msg2Player("<color=green>ChÕ t¹o thµnh c«ng nhËn ®­îc <color> <color=yellow>TuyÖt §Ønh Giíi ChØ<color>")
		Msg2SubWorld("Cã mét Èn sü ®· chÕ t¹o thµnh c«ng TuyÖt §Ønh Giíi ChØ, t¹o ra mét tiÕng vang lín kh¾p chèn vâ l©m. Xin chóc mõng!")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 10000 v¹n l­îng.")
	end
end