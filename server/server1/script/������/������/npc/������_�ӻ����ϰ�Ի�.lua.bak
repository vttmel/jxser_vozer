-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn tiÖm t¹p hãa l·o b¶n ®èi tho¹i # Thiªn v­¬ng 40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
function main(sel) 
local nNpcIdx = GetLastDiagNpc() 
local dwNpcId = GetNpcId(nNpcIdx) 
local szNpcName = GetNpcName(nNpcIdx) 
local tbDailog = DailogClass:new(szNpcName) 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog) 
tbDailog.szTitleMsg = "<npc> Tr­íc ®©y ta lµ ng­êi b¸n hµng rong, tÝch gãp ®­îc Ýt vèn, më tiÖm t¹p hãa nhá nµy." 
	if (GetTask(3) == 40*256+50) and (GetTask(14) == 5) and (HaveItem(148) == 0) then 		-- script viet hoa By http://tranhba.com ÌìÍõ°ï40¼¶ÈÎÎñ
tbDailog:AddOptEntry("Cã h¹t sen b¸n kh«ng ?", lotus) 
end 
tbDailog:AddOptEntry("Giao dÞch ", yes) 
tbDailog:AddOptEntry("Kh«ng giao dÞch ", no) 
tbDailog:Show() 
end 

function lotus() 
Say("TiÖm t¹p hãa l·o b¶n: H¹t sen nh­ng lµ chóng ta n¬i nµy ®Æc s¶n a , ®­¬ng nhiªn lµ cã n÷a/råi , chØ cÇn m­êi l­îng b¹c . ", 2,"Mua /yes1","Kh«ng mua /no"); 
end; 

function yes1() 
if (GetCash() >= 500) then 
Pay(500) 
AddEventItem(148) 
Msg2Player("Mua ®­îc h¹t sen ") 
-- script viet hoa By http://tranhba.com  SetTask(14, 3) 
AddNote("ë ba l¨ng huyÒn tiÖm t¹p hãa mua ®­îc h¹t sen ") 
else 
Say("TiÖm t¹p hãa l·o b¶n: chê tån ®ñ råi b¹c trë l¹i mua ®i , xem tr­íc mét chót nh÷ng thø kh¸c ®å . ", 2,"Giao dÞch /yes","Kh«ng giao dÞch /no") 
end 
end; 

function yes() 
Sale(38); 
end; 

function no() 
end; 
