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

function nguahoangkim()
dofile("script/global/mel/nguahoangkim.lua")
Say("H·y chän ph­¬ng thøc n©ng cÊp! Nhí chuÈn bÞ lo¹i ngùa cÇn n©ng cÊp, Linh Hån ChiÕn M· Hoµng Kim vµ 10000 v¹n l­îng",3,
	"Xin h·y n©ng cÊp cho ta Siªu Quang Hoµng Kim/dosieuquanghoangkim",
	"Xin h·y n©ng cÊp cho ta H·n HuyÕt Long C©u Hoµng Kim/dohhlchoangkim",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

------------------------------N©ng cÊp Siªu Quang Hoµng Kim------------------------------
function dosieuquanghoangkim()
	if CalcEquiproomItemCount (0,10,13,10) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã chiÕn m· Siªu Quang.")
	return
	end
	if CalcEquiproomItemCount (4,2052,1,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Linh Hån ChiÕn M· Hoµng Kim.")
	return
	end
	if GetCash() >= 100000000 then
		Pay(100000000)
		ConsumeEquiproomItem (1,0,10,13,10)
		ConsumeEquiproomItem (1,4,2052,1,1)
		AddGoldItem(0,4366)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn ®­îc<color> <color=yellow>Siªu Quang Hoµng Kim<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 10000 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp H·n HuyÕt Long C©u Hoµng Kim------------------------------
function dohhlchoangkim()
	if CalcEquiproomItemCount (0,10,18,10) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã chiÕn m· H·n HuyÕt Long C©u.")
	return
	end
	if CalcEquiproomItemCount (4,2052,1,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã Linh Hån ChiÕn M· Hoµng Kim.")
	return
	end
	if GetCash() >= 100000000 then
		Pay(100000000)
		ConsumeEquiproomItem (1,0,10,18,10)
		ConsumeEquiproomItem (1,4,2052,1,1)
		AddGoldItem(0,3879)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn ®­îc<color> <color=yellow>H·n HuyÕt Long C©u Hoµng Kim<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 10000 v¹n l­îng.")
	end
end