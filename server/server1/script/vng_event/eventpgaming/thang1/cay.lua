---------------Youtube PGaming---------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\equipex\\head.lua")
--------------------------------------------------------
BANHCHUNGTHUONGHAN 		 = 5862
NHANTHUONGMOC1	 		 = 5861
NHANTHUONGMOC2	 		 = 5860
NHANTHUONGMOC3			 = 5859
---------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
--------------------------------------------------------------
function main()
dofile("script/vng_event/eventpgaming/thang1/cay.lua")

	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<color=green>Ho¹t ®éng h¸i léc ®Çu xu©n ®· b¾t ®Çu, trong thêi gian chØ ®Þnh, Ng­êi ch¬i ®Õn tr­íc c©y ®µo, c©y mai ë thÊt ®¹i thµnh thÞ, t©n thñ th«n thµnh t©m cÇu nguyÖn, sÏ nhËn ®­îc nh÷ng phÇn th­ëng n¨m míi. Ngoµi ra, c¸c vÞ ®¹i hiÖp còng cã thÓ treo thªm liÔn tÕt víi ba ch÷ Phóc - Léc - Thä sÏ nhËn ®­îc nh÷ng phÇn th­ëng bÊt ngê.<color>\n HiÖn t¹i b¹n ®· treo ®­îc "..GetTask(5782).." liÔn",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

local nYear  = tonumber(date("%y"));
local nTime1 = "20"..nYear.."01010000"
local nTime2 = "20"..nYear.."02010000"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow >= nTime1) and (nDayNow <= nTime2) then
		--tbDailog:AddOptEntry("Ta muèn treo liÔn Phóc - Léc - Thä ®Ó ®ãn tÕt",NhanMoc);
		tbDailog:Show();
	else
		Talk(1,"","<color=green>Ho¹t §éng DiÔn Ra Tõ:\n\n <color=red>0h Ngµy 01 - 01 - 20"..nYear.." §Õn 0h Ngµy 01 - 02 - 20"..nYear.."<color><color>")
	end
end				
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	--for i = 1657, 1659 do
	--ItemIndex = CalcEquiproomItemCount(6,1,i,-1)
	--SyncItem(ItemIndex); 
	--end
	AskClientForNumber("phucloctho",0,nItemIndex, "NhËp sè l­îng muèn treo: ")
end	

--------------------------------------------------------Del item---------------------------------------------------------------------------------------
function DelNguyenLieu(nIndex,count)
	ConsumeEquiproomItem(count,6,1,nIndex,-1)
end
-----------------------------------------------------So luong item-------------------------------------------------------------------------------------------------------------------------------------------
function phucloctho(n_key)

	for i=1,n_key do
		AddItem(6,1,radom(122,124),1,0,0)
		DelNguyenLieu(1657,1)
		DelNguyenLieu(1658,1)
		DelNguyenLieu(1659,1)
	SetTask(5782,GetTask(5782)+n_key)
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------