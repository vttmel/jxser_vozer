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

function phiphonghoangkim()
dofile("script/global/mel/phiphonghoangkim.lua")
Say("C¸c h¹ muèn n©ng cÊp Phi Phong V« Cùc Hoµng Kim h¶? Qu¶ thùc lµ ®¼ng cÊp!",2,
	"§óng vËy, h·y gióp ta n©ng cÊp Phi Phong V« Cùc Hoµng Kim/dophiphonghoangkim",
	"§Ó ta suy nghÜ ®·./OnCancel");
end;

-----------------------------TuyÖt §Ønh Giíi ChØ------------------------------

function dophiphonghoangkim()
Say("§Ó n©ng cÊp Phi Phong V« Cùc Hoµng Kim cÇn cã Phi Phong V« Cùc, T¬ Lôa HiÕm, Kim Lo¹i Hoµng Kim, 1000 Kim Lo¹i HiÕm vµ 10000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./dophiphonghoangkim1",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function dophiphonghoangkim1()
	if CalcEquiproomItemCount (0,12,1,10) < 1 then
		Say("§ïa ta µ, vËt phÈm quan träng nhÊt lµ Phi Phong V« Cùc. NÕu kh«ng cã th× lµm sao ta n©ng cÊp ®­îc")
	return
	end
	if CalcEquiproomItemCount (4,2055,1,1) < 1 then
		Say("C¸c h¹ kh«ng mang theo T¬ Lôa HiÕm th× ta lÊy g× ®Ó n©ng cÊp b©y giê")
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
		ConsumeEquiproomItem (1,0,12,1,10)
		ConsumeEquiproomItem (1,4,2055,1,1)
		ConsumeEquiproomItem (1,4,2051,1,1)
		ConsumeEquiproomItem (1000,4,2045,1,1)
		AddGoldItem(0,3486)
		Msg2Player("<color=green>N©ng thµnh c«ng nhËn ®­îc <color> <color=yellow>Phi Phong V« Cùc Hoµng Kim<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 10000 v¹n l­îng.")
	end
end