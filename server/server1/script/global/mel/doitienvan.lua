--Date: 25/08/2025
--Script: §æi tiÒn tÖ
--Coder: Mel
--------------------------------------------------CODE §æi TiÒn TÖ by Mel--------------------------------------------------
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

function doitien_main()
dofile("script/global/mel/doitienvan.lua")
Say("H·y chän ph­¬ng thøc giao dÞch!",2,
	"§æi tiÒn v¹n lÊy tiÒn ®ång./vanvsxu",
	--"§æi tiÒn ®ång lÊy tiÒn v¹n./xuvsvan",
	"§Ó ta suy nghÜ ®·./OnCancel");
end;

function vanvsxu()
Say("H·y chän mÖnh gi¸ quy ®æi.",4,
	"LÊy 50 v¹n ®æi 1 tiÒn ®ång./vanvsxu_1",
	"LÊy 500 v¹n ®æi 10 tiÒn ®ång./vanvsxu_2",
	"LÊy 5000 v¹n ®æi 100 tiÒn ®ång./vanvsxu_3",
	"§Ó ta suy nghÜ ®·./OnCancel");
end;

function vanvsxu_1()
	if GetCash() >= 500000 then
	Pay(500000)
	AddStackItem (1,4,417,1,1,0,0,0)
	Msg2Player("<color=green>Giao dÞch thµnh c«ng nhËn<color> <color=yellow>1 tiÒn ®ång.<color>")
	else
	Msg2Player("H·y xem l¹i hµnh trang kh«ng ®ñ ng©n l­îng.")
	end
end
	
function vanvsxu_2()
	if GetCash() >= 5000000 then
	Pay(5000000)
	AddStackItem (10,4,417,1,1,0,0,0)
	Msg2Player("<color=green>Giao dÞch thµnh c«ng nhËn<color> <color=yellow>10 tiÒn ®ång.<color>")
	else
	Msg2Player("H·y xem l¹i hµnh trang kh«ng ®ñ ng©n l­îng.")
	end
end
	
function vanvsxu_3()
	if GetCash() >= 50000000 then
	Pay(50000000)
	AddStackItem (100,4,417,1,1,0,0,0)
	Msg2Player("<color=green>Giao dÞch thµnh c«ng nhËn<color> <color=yellow>100 tiÒn ®ång.<color>")
	else
	Msg2Player("H·y xem l¹i hµnh trang kh«ng ®ñ ng©n l­îng.")
	end
end;

function xuvsvan()
Say("H·y chän mÖnh gi¸ quy ®æi.",4,
	"LÊy 1 tiÒn ®ång ®æi 50 v¹n./xuvsvan_1",
	"LÊy 10 tiÒn ®ång ®æi 500 v¹n./xuvsvan_2",
	"LÊy 100 tiÒn ®ång ®æi 5000 v¹n./xuvsvan_3",
	"§Ó ta suy nghÜ ®·./OnCancel");
end;

function xuvsvan_1()
	if CalcEquiproomItemCount (4,417,1,1) < 1 then
Say("H·y xem l¹i hµnh trang kh«ng ®ñ 1 tiÒn ®ång.")
return
end
	ConsumeEquiproomItem (1,4,417,1,1)
	Earn (500000)
	Msg2Player("<color=green>Giao dÞch thµnh c«ng nhËn<color> <color=yellow>50 v¹n l­îng.<color>")
end
	
function xuvsvan_2()
	if CalcEquiproomItemCount (4,417,1,1) < 10 then
Say("H·y xem l¹i hµnh trang kh«ng ®ñ 10 tiÒn ®ång.")
return
end
	ConsumeEquiproomItem (10,4,417,1,1)
	Earn (5000000)
	Msg2Player("<color=green>Giao dÞch thµnh c«ng nhËn<color> <color=yellow>500 v¹n l­îng.<color>")
end
	
function xuvsvan_3()
	if CalcEquiproomItemCount (4,417,1,1) < 100 then
Say("H·y xem l¹i hµnh trang kh«ng ®ñ 100 tiÒn ®ång.")
return
end
	ConsumeEquiproomItem (100,4,417,1,1)
	Earn (50000000)
	Msg2Player("<color=green>Giao dÞch thµnh c«ng nhËn<color> <color=yellow>5000 v¹n l­îng.<color>")
end;