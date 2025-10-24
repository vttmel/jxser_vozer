
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online t×nh nghÜa giang hå ®ång b¹n kÞch t×nh ch©n vèn thËt thÓ xö lý v¨n kiÖn - dÞ téc vâ sÜ 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/09/09 PM 11:19 

-- script viet hoa By http://tranhba.com  chØ cã h¾n vµ nµng hai ng­êi 
-- script viet hoa By http://tranhba.com  bän hä yªu nhau 
-- script viet hoa By http://tranhba.com  nµng nhí 
-- script viet hoa By http://tranhba.com  tay cña h¾n vuèt ve ë da cña nµng th­îng ®Ých «n t×nh 
-- script viet hoa By http://tranhba.com  h¾n h«n gièng nh­ ®iÓu bÇy ë trªn trêi xÑt qua 
-- script viet hoa By http://tranhba.com  h¾n ë th©n thÓ nµng bªn trong b¹o lÖ cïng phãng tóng 
-- script viet hoa By http://tranhba.com  h¾n ngñ thêi ®iÓm ®Ých d¸ng vÎ trµn ®Çy thuÇn ch©n 
-- script viet hoa By http://tranhba.com  nµng nhí , s¸ng sím nµng tØnh l¹i ®Ých mét kh¾c , h¾n ë bªn c¹nh nµng 
-- script viet hoa By http://tranhba.com  nµng trîn trßn m¾t , nh×n ¸nh r¹ng ®«ng xuyªn thÊu qua rÌm cöa sæ tõng ®iÓm tõng ®iÓm chiÕu vµo 
-- script viet hoa By http://tranhba.com  trong lßng cña nµng bëi v× h¹nh phóc mµ ®au ®ín 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  ®ång b¹n hÖ thèng ®Çu v¨n kiÖn 
IncludeLib("PARTNER") 

-- script viet hoa By http://tranhba.com  ®ång b¹n kÞch t×nh nhiÖm vô ®Çu v¨n kiÖn 
Include ("\\script\\task\\partner\\task_head.lua");

PARID_MASTER05_TIMES = 68; -- script viet hoa By http://tranhba.com  nhµ ch¬i mçi ngµy hoµn thµnh tu luyÖn nhiÖm vô ®Õm hÕt 

-- script viet hoa By http://tranhba.com  cuèi cïng t­ëng th­ëng kü n¨ng s¸ch ®Ých ®Õm tæ 
ARY_AWARD_BOOKS = { 

-- script viet hoa By http://tranhba.com  kim hÖ 
[0] = {{839,"TrÊn ngôc xÐ trêi kÝnh ","Kim hÖ ®ång b¹n v« th­îng t©m ph¸p , cã thÓ rót ng¾n chñ nh©n ®Ých tróng ®éc thêi gian "}, 
{840,"§¹i bi nguyÒn rña ","Kim hÖ ®ång b¹n v« th­îng t©m ph¸p , cã thÓ gia t¨ng chñ nh©n ®Ých ®éc phßng "}}, 

-- script viet hoa By http://tranhba.com  méc hÖ 
[1] = {{841, " luyÖn ngôc hñ cæ ","Méc hÖ ®ång b¹n v« th­îng t©m ph¸p , cã thÓ gia t¨ng chñ nh©n ®Ých l«i phßng "}, 
{842,"Thùc cèt huyÕt nhËn ","Méc hÖ ®ång b¹n v« th­îng t©m ph¸p , cã thÓ khiÕn cho chñ nh©n mau sím tõ tr¹ng th¸i h«n mª kh«i phôc "}}, 

-- script viet hoa By http://tranhba.com  thñy hÖ 
[2] = {{843,"NghÞch chuyÓn t©m tr¶i qua ","Thñy hÖ ®ång b¹n v« th­îng t©m ph¸p , cã thÓ khiÕn cho chñ nh©n tèc ®é di ®éng nhanh h¬n "}, 
{844,"HuyÒn b¨ng ©m khÝ ","Thñy hÖ ®ång b¹n v« th­îng t©m ph¸p , cã thÓ gia t¨ng chñ nh©n ®Ých löa phßng "}}, 

-- script viet hoa By http://tranhba.com  háa hÖ 
[3] = {{845,"TrÇn v« Ých ph¹m tÉn ","Háa hÖ ®ång b¹n v« th­îng t©m ph¸p , cã thÓ gia t¨ng chñ nh©n ®Ých phæ phßng "}, 
{846, " löa ph­îng khÏ rªn ","Háa hÖ ®ång b¹n v« th­îng t©m ph¸p , cã thÓ khiÕn cho chñ nh©n tèc ®é di ®éng nhanh h¬n "}}, 

-- script viet hoa By http://tranhba.com  thæ hÖ 
[4] = {{847,"ThuÇn d­¬ng v« cùc ","Thæ hÖ ®ång b¹n v« th­îng t©m ph¸p , cã thÓ khiÕn cho chñ nh©n mau sím tõ chËm l¹i tr¹ng th¸i kh«i phôc "}, 
{848,"V©n sinh kÕt h¶i ","Thæ hÖ ®ång b¹n v« th­îng t©m ph¸p , cã thÓ gia t¨ng chñ nh©n ®Ých b¨ng phßng "}}, 

} 

-- script viet hoa By http://tranhba.com  tiÕn vµo B¸ch hoa cèc lóc ®Ých ph¸n ®o¸n 
taskProcess_005_01 = inherit(CProcess, { 

checkCondition = function(self) 

local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local NpcCount = PARTNER_Count(); 

-- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng cã mang ®ång b¹n hoÆc lµ kh«ng cã cho gäi ®ång b¹n lµ trùc tiÕp trë vÒ 0 
if NpcCount==0 or partnerstate~=1 then return 0; end; 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n bèn chñ tuyÕn nhiÖm vô cã hay kh«ng ®· hoµn thµnh 
local nState_1 = GetMasterTaskState(PARID_TASK_MASTER_001); 
local nState_2 = GetMasterTaskState(PARID_TASK_MASTER_002); 
local nState_3 = GetMasterTaskState(PARID_TASK_MASTER_003); 
local nState_4 = GetMasterTaskState(PARID_TASK_MASTER_004); 

if nState_1>=5 and nState_2>=6 and nState_3>=5 and nState_4>=3 then 
return 1; 
else 
return 2; 
end; 

end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPos(1535, 3021); -- script viet hoa By http://tranhba.com  ®¹n ®Õn ®iÓm thø nhÊt 
SetFightState(0); 
return 1; 
elseif nCondition==2 or nCondition==0 then 
Say("PhÝa tr­íc m©y mï l­în quanh , kiÕm khÝ h­íng tiªu . tùa hå kh«ng ph¶i lµ ng­¬i b©y giê cã thÓ ®i ®Ých ®Þa ph­¬ng . ",0); 
SetPos(1516, 3069); -- script viet hoa By http://tranhba.com  ®¹n ®Õn ®iÓm thø hai 
SetFightState(1); 
return 0; 
end; 
end, 

}); 


-- script viet hoa By http://tranhba.com  ®¹p ®Õn ®i ra ngoµi lóc ®Ých ®iÓm ®Ých xö lý 
taskProcess_005_Outside = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetPos(1516, 3069); -- script viet hoa By http://tranhba.com  ®¹n ®Õn ®iÓm thø hai 
SetFightState(1); 
return 1; 
end, 
}); 

-- script viet hoa By http://tranhba.com  cïng kiÕm hoµng ®èi tho¹i 
taskProcess_005_02 = inherit(CProcess, { 

checkCondition = function(self) 
local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local NpcCount = PARTNER_Count(); 

-- script viet hoa By http://tranhba.com  kiÓm tra nhµ ch¬i cïng ®ång b¹n ®Ých cÊp bËc 
if GetLevel()<90 or PARTNER_GetLevel(partnerindex)<80 then return 4; end; 

-- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng cã mang ®ång b¹n hoÆc lµ kh«ng cã cho gäi ®ång b¹n lµ trùc tiÕp trë vÒ 0 
if NpcCount==0 or partnerstate~=1 then return 0; end; 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n bèn chñ tuyÕn nhiÖm vô cã hay kh«ng ®· hoµn thµnh 
local nState_1 = GetMasterTaskState(PARID_TASK_MASTER_001); 
local nState_2 = GetMasterTaskState(PARID_TASK_MASTER_002); 
local nState_3 = GetMasterTaskState(PARID_TASK_MASTER_003); 
local nState_4 = GetMasterTaskState(PARID_TASK_MASTER_004); 

if nState_1==5 and nState_2==6 and nState_3==5 and nState_4==3 and GetMasterTaskState(PARID_TASK_MASTER_005)==0 then 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_005)==1 then -- script viet hoa By http://tranhba.com  ®· nhËn nhiÖm vô 
return 2; 
else 
return 3; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> ng­¬i lµ thÕ nµo t×m tíi n¬i nµy tíi ? võa vµo giang hå , muèn thèi lui ra c¸nh nh­ vËy khã kh¨n sao ? Së mç ®êi nµy hÕt th¶y hÕt th¶y ®Òu bÞ c¸i nµy giang hå ®o¹t ®i liÔu , cßn kh«ng tháa m·n sao ? ®­îc råi , chØ cÇn ng­¬i kh«ng nãi ra ta chç Èn th©n , ta liÒn truyÒn cho ng­¬i kia tiÓu ®ång b¹n nhÊt thøc tuyÖt häc nh­ thÕ nµo ? bÊt qu¸ muèn häc Së mç ®Ých vâ c«ng , kh«ng cã mét tèt trô cét , chØ biÕt tÈu háa nhËp ma , tù thiªu mµ chÕt . nÕu nh­ ng­¬i nhÊt ®Þnh ph¶i lµm cho tiÓu ®ång b¹n häc , tr­íc hÕt mang theo h¾n # nµng # hoµn thµnh { m­êi l¨m ngµy } ®Ých { ®ång b¹n tu luyÖn nhiÖm vô } ®i . nhí , mçi ngµy ®Ých nhiÖm vô ®Òu ph¶i toµn bé hoµn thµnh , kh«ng thÓ l­êi biÕng . ®Õn c«ng thµnh ngµy tíi t×m ta n÷a , ta liÒn ®em tuyÖt nghÖ dèc tói truyÒn cho . ", 
" tiÕp nhËn nhiÖm vô /#taskProcess_005_03:doTaskEntity()" 
}); 
elseif nCondition==2 then 
SelectDescribe({"<npc> ng­¬i ®· hoµn thµnh m­êi l¨m ngµy ®Ých ®ång b¹n tu luyÖn nhiÖm vô sao ? ", 
" ta ®· hoµn thµnh /#taskProcess_005_Finish:doTaskEntity()", 
" t¹m thêi cßn kh«ng cã /OnTaskExit"}); 
elseif nCondition==4 then 
SelectDescribe({"<npc> nhí , khi ng­¬i ®Ých ®ång b¹n ®Õn <color=yellow>80<color> cÊp lóc lµ ®­îc tíi t×m ta , ta liÒn ®em tuyÖt nghÖ dèc tói truyÒn cho . kh«ng thÓ l­êi biÕng . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
else 
SelectDescribe({"<npc> thiÕu niªn nghe m­a ca trªn lÇu , nÕn ®á bÊt tØnh la tr­íng . tr¸ng niªn nghe m­a kh¸ch chu trung , giang kho¸t v©n thÊp , ®o¹n nh¹n gäi giã t©y . mµ nay nghe m­a t¨ng l­ h¹ , tÊn ®· sao còng . bi hoan ly hîp tæng v« t×nh , mét ®¶m nhiÖm cÊp tr­íc ®iÓm tÝch ®Õn trêi s¸ng . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
end; 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  tiÕp thu nhiÖm vô , nhiÖm vô tiÕn triÓn v× 1 
taskProcess_005_03 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_005, 1); 
Msg2Player("Ng­¬i b©y giê cÇn mang ®ång b¹n cña ng­¬i hoµn thµnh 15 ngµy ®Ých tu luyÖn nhiÖm vô #"); 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  hoµn thµnh nhiÖm vô qu¸ tr×nh 
taskProcess_005_Finish = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_MASTER05_TIMES); 
if nNum>=15 then 
SelectDescribe({"<npc> rÊt tèt , ng­¬i ®· hoµn thµnh m­êi l¨m ngµy ®Ých ®ång b¹n tu luyÖn , ®©y lµ ®­a cho ng­¬i t­ëng th­ëng #", 
" nhËn lÊy t­ëng th­ëng /#taskProcess_005_AwardSelect:doTaskEntity()" 
}); 
return 1; 
else 
SelectDescribe({"<npc> ng­¬i cßn ch­a hoµn thµnh m­êi l¨m ngµy ®Ých ®ång b¹n tu luyÖn nhiÖm vô ®i # ? ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
return 1; 
end; 
return 0; 
end, 
}); 


-- script viet hoa By http://tranhba.com  nhËn lÊy Èn nóp nhiÖm vô t­ëng th­ëng , thiÕt trÝ nhiÖm vô tiÕn tr×nh v× 2 
taskProcess_005_AwardSelect = inherit(CProcess, { 
taskEntity = function(self, nCondition) 

local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local NpcCount = PARTNER_Count(); 
local nSeries = 0; 

-- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng cã mang ®ång b¹n hoÆc lµ kh«ng cã cho gäi ®ång b¹n lµ trùc tiÕp trë vÒ nil 
if NpcCount==0 or partnerstate~=1 then 
SelectDescribe({"<npc> ng­¬i cßn kh«ng cã gäi ra ®ång b¹n tíi nga #", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
return 0; 
end; 

nSeries = PARTNER_GetSeries(partnerindex); 

SelectDescribe({"<npc> ta chç nµy cã hai vèn kü n¨ng s¸ch thÝch hîp ng­¬i b©y giê ®Ých ®ång b¹n , ng­¬i muèn nhËn lÊy c¸i nµo kü n¨ng s¸ch t­ëng th­ëng ®©y ? <enter><enter><color=green>".. 
ARY_AWARD_BOOKS[nSeries][1][2].."<color>#"..ARY_AWARD_BOOKS[nSeries][1][3].."<enter><color=green>".. 
ARY_AWARD_BOOKS[nSeries][2][2].."<color>#"..ARY_AWARD_BOOKS[nSeries][2][3].."<enter>", 
" ta chän "..ARY_AWARD_BOOKS[nSeries][1][2].."/#taskProcess_005_AwardPayBook("..nSeries..", 1)", 
" ta chän "..ARY_AWARD_BOOKS[nSeries][2][2].."/#taskProcess_005_AwardPayBook("..nSeries..", 2)", 
}); 

return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  mçi ngµy sau khi hoµn thµnh mÖt mái thªm ®Ých qu¸ tr×nh 
taskProcess_005_AddTimes = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_005)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_MASTER05_TIMES); 
if nCondition==1 then 
if nNum<15 then 
				SetPartnerTask(PARID_MASTER05_TIMES, nNum + 1);
return 1; 
elseif nNum==15 then 
Msg2Player("Ng­¬i ®· hoµn thµnh m­êi l¨m ngµy ®Ých ®ång b¹n tu luyÖn nhiÖm vô , ng­¬i b©y giê cã thÓ trë vÒ B¸ch hoa cèc ®i t×m kiÕm hoµng liÔu #"); 
return 1; 
end; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  cho ®ång b¹n ph¸t kü n¨ng s¸ch ®Ých qu¸ tr×nh , nhiÖm vô tiÕn triÓn v× 2 
function taskProcess_005_AwardPayBook(nSeries, nBook) 

AddItem(6, 1, ARY_AWARD_BOOKS[nSeries][nBook][1], 1, 0, 0); 

SetMasterTaskState(PARID_TASK_MASTER_005, 2); 
PayMasterAward(5, 1); 

end; 
