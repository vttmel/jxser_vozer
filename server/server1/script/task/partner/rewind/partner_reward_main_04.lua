
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online t×nh nghÜa giang hå ®ång b¹n kŞch t×nh ch©n vèn thËt thÓ xö lı v¨n kiÖn - dŞ téc vâ sÜ 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/09/09 PM 11:19 

-- script viet hoa By http://tranhba.com  chØ cã h¾n vµ nµng hai ng­êi 
-- script viet hoa By http://tranhba.com  bän hä yªu nhau 
-- script viet hoa By http://tranhba.com  nµng nhí 
-- script viet hoa By http://tranhba.com  tay cña h¾n vuèt ve ë da cña nµng th­îng ®İch «n t×nh 
-- script viet hoa By http://tranhba.com  h¾n h«n gièng nh­ ®iÓu bÇy ë trªn trêi xÑt qua 
-- script viet hoa By http://tranhba.com  h¾n ë th©n thÓ nµng bªn trong b¹o lÖ cïng phãng tóng 
-- script viet hoa By http://tranhba.com  h¾n ngñ thêi ®iÓm ®İch d¸ng vÎ trµn ®Çy thuÇn ch©n 
-- script viet hoa By http://tranhba.com  nµng nhí , s¸ng sím nµng tØnh l¹i ®İch mét kh¾c , h¾n ë bªn c¹nh nµng 
-- script viet hoa By http://tranhba.com  nµng trîn trßn m¾t , nh×n ¸nh r¹ng ®«ng xuyªn thÊu qua rÌm cöa sæ tõng ®iÓm tõng ®iÓm chiÕu vµo 
-- script viet hoa By http://tranhba.com  trong lßng cña nµng bëi v× h¹nh phóc mµ ®au ®ín 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  ®ång b¹n hÖ thèng ®Çu v¨n kiÖn 
IncludeLib("PARTNER") 

-- script viet hoa By http://tranhba.com  ®ång b¹n kŞch t×nh nhiÖm vô ®Çu v¨n kiÖn 
Include ("\\script\\task\\partner\\task_head.lua");


PARID_REWIND04_BOSS_01 = 43; -- script viet hoa By http://tranhba.com  l­¬ng mÌo mÌo 
PARID_REWIND04_BOSS_02 = 44; -- script viet hoa By http://tranhba.com  lı tinh 
PARID_REWIND04_BOSS_03 = 45; -- script viet hoa By http://tranhba.com  béi c«ng tö 
PARID_REWIND04_BOSS_04 = 46; -- script viet hoa By http://tranhba.com  ®­êng c¸ 

-- script viet hoa By http://tranhba.com  b¾t ®Çu nhiÖm vô lóc ®İch ®èi tho¹i 
rewindProcess_004_01 = inherit(CProcess, { 

checkCondition = function(self) 

local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®İch index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 

-- script viet hoa By http://tranhba.com  kiÓm tra nhµ ch¬i cïng ®ång b¹n ®İch cÊp bËc 
if GetLevel()<100 or PARTNER_GetLevel(partnerindex)<40 then return 4; end; 

if GetRewindTaskState(PARID_TASK_REWIND_004)==nil then -- script viet hoa By http://tranhba.com  kh«ng cã mang ®ång b¹n 
return 0; 
elseif GetMasterTaskState(PARID_TASK_MASTER_004)<=2 then -- script viet hoa By http://tranhba.com  ch­a hoµn thµnh kŞch t×nh thiªn ®İch nhiÖm vô 
return 5; 
elseif CheckRewindState(4)~=1 then -- script viet hoa By http://tranhba.com  kh«ng phï hîp nhËt kú ph¸n ®o¸n ®iÒu kiÖn 
return 6; 
elseif GetRewindTaskState(PARID_TASK_REWIND_004)==0 then -- script viet hoa By http://tranhba.com  lÇn ®Çu tiªn b¾t ®Çu lµm 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_004)>=1 and GetRewindTaskState(PARID_TASK_REWIND_004)<3 then -- script viet hoa By http://tranhba.com  ®· b¾t ®Çu lµm 
return 2; 
elseif GetRewindTaskState(PARID_TASK_REWIND_004)>=3 then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 
return 3; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 or nCondition==3 then 
SelectDescribe({"<npc>{ tr­íc khi an } ®İch { ch©u b¸u th­¬ng nh©n ®inh lîi } ngµy gÇn ®©y ®­a tíi mét phong th­ . trong th¬ nãi viªn kia t­¬ng ë thŞ lang c¸nh tay bªn trong ®İch b¶o th¹ch gi¸ trŞ liªn thµnh , chİnh lµ ch©n chİnh vµo löa kh«ng thay ®æi ®İch hiÕm thÕ tr©n b¶o thiªn trİ ngäc . h¾n n¨m ®ã ®¹t ®­îc ngäc ph«i sau , lÊy träng kim mêi tíi trë vÒ téc t­îng ng­êi trong nhÊt ®¼ng mét ®İch cao thñ ®iªu chÕ , tèn suèt mét n¨m nµy míi mµi ra hai viªn quang nhuËn thÕ thÊu ®İch b¶o ch©u . c¸i nµy hai viªn ngäc ch©u , ®Òu lµ bŞ mét vŞ hä V­¬ng th­¬ng nh©n mua ®i , nghe nãi h¾n Èn c­ ë mét chç gäi B¸ch hoa cèc ®İch ®Şa ph­¬ng . chç ®ã ta lµ nghe nãi qua ®İch , cã m«n ®å tr¶i qua n¬i ®ã , nãi trong cèc kiÕm khİ x«ng th¼ng tiªu h¸n , t­êng v©n bao phñ , tÊt nhiªn cã cao nh©n ë . chØ lµ nh­ vËy chuyÖn cña t×nh ph¸t sinh sau nµy , chç ®ã cµng lé vÎ thÇn bİ . ta ®o¸n chõng ng­¬i chuyÕn nµy tÊt ®em cã ®iÒu thu ho¹ch , bÊt qu¸ cßn cÇn chuÈn bŞ s½n sµng a . ®Õn cèc trong t×m ®­îc c¸i ®ã gäi v­¬ng mét ®İch th­¬ng nh©n . ", 
" tiÕp nhËn nhiÖm vô /#rewindProcess_004_Accept:doTaskEntity()", 
" ta suy nghÜ thªm mét chót /OnTaskExit", 
}); 
return 1; 
elseif nCondition==2 then 
SelectDescribe({"<npc> ng­¬i hoµn thµnh ta ®­a cho ng­¬i nhiÖm vô sao ? ", 
" xin ®­a ta ®i B¸ch hoa cèc ®i /#rewindProcess_004_GotoWorld:doTaskEntity()", 
" hoµn thµnh nhiÖm vô /#rewindProcess_004_Finish:doTaskEntity()", 
" ta cßn ch­a hoµn thµnh /OnTaskExit" 
}); 
return 1; 
elseif nCondition==4 then 
SelectDescribe({"<npc> nhiÖm vô lÇn nµy cÇn cÊp bËc cña ng­¬i ë {100 cÊp } trë lªn , h¬n n÷a ®ång b¹n cña ng­¬i cÊp bËc muèn ë {40 cÊp } trë lªn #", 
" kÕt thóc ®èi tho¹i /OnTaskExit", 
}); 
return 1; 
elseif nCondition==5 then 
SelectDescribe({"<npc> ng­¬i cßn ch­a hoµn thµnh nhiÖm vô nµy kŞch t×nh thiªn nga , kh«ng thÓ tiÕn hµnh tu luyÖn nhiÖm vô . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
return 1; 
elseif nCondition==6 then 
SelectDescribe({"<npc> tu luyÖn nhiÖm vô mçi ®ång b¹n mçi ngµy chØ cã thÓ lµm ba lÇn nga #", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
return 1; 
elseif nCondition==0 then 
SelectDescribe({"<npc> ng­¬i cßn kh«ng cã cho gäi ra ®ång b¹n , ta kh«ng c¸ch nµo cho ng­¬i chØ ®Şnh nhiÖm vô #", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  tiÕp nhËn nhiÖm vô , nhiÖm vô tiÕn tr×nh v× 1 
rewindProcess_004_Accept = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SelectDescribe({"<npc> ng­¬i b©y giê muèn ®i B¸ch hoa cèc sao ? ta cã thÓ ®­a ng­¬i mét thµnh . ", 
" ®óng vËy , lµm phiÒn ng­¬i /#rewindProcess_004_GotoWorld:doTaskEntity()", 
" ®Ó cho ta n÷a chuÈn bŞ mét chót ®i /OnTaskExit"}); 
Msg2Player("Ng­¬i nhËn ®­îc dŞ téc vâ sÜ ®İch ®ång b¹n tu luyÖn nhiÖm vô #"); 
SetRewindTaskState(PARID_TASK_REWIND_004, 1); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(4, 1); 

-- script viet hoa By http://tranhba.com  khi phï hîp ®iÒu kiÖn sau b¾t ®Çu mét lÇn míi tu luyÖn nhiÖm vô xö lı 
SetRewindStart(4); 

return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  truyÒn tèng ®Õn B¸ch hoa cèc ®İch qu¸ tr×nh 
rewindProcess_004_GotoWorld = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
NewWorld(513,1500,3158); 
SetFightState(1); 
end, 

}); 


-- script viet hoa By http://tranhba.com  hoµn thµnh nhiÖm vô , nhiÖm vô tiÕn tr×nh v× 3 
rewindProcess_004_Finish = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

if nCondition==1 then 
SelectDescribe({"<npc> h¶o d¹ng ®İch # ng­¬i thËt lÊy ®­îc anh hïng thiªn h¹ thiÕp . nh­ thÕ thø nhÊt , chóng ta liÒn cã thÓ tham gia anh hïng thiªn h¹ sÏ , ch©n chİnh v¹ch trÇn ngµy hoµng long khİ chi mª . chê ®îi liÔu l©u nh­ vËy , th­êng nhiÒu ng­êi nh­ vËy ®İch t¸nh m¹ng , chung quy lµ vŞ liÔu cßn quèc gia mét dÑp yªn . ë c¸i lo¹n thÕ nµy trong , mäi ng­êi l­u ®İch m¸u còng qu¸ nhiÒu qu¸ nhiÒu , hy väng ®Õn lóc ®ã lµ mét kÕt thóc ®i , cã thÓ m· ®Ó nam s¬n , ®ao th­¬ng nhËp kho , ta long n¨m còng ®Õn t¾c bªn ngoµi t×m mét m¶nh cá trµng , cïng con ngùa lµm b¹n , nh×n lam lam ®İch bÇu trêi b¹ch b¹ch ®İch ®¸m m©y , cø nh­ vËy nµy tµn sinh . b©y giê c¸ch Anh hïng héi cßn cã mét ®o¹n thêi gian , ng­¬i cã thÓ trë vÒ ®i tr­íc lµm chót nghØ ng¬i vµ håi phôc liÔu . kh«ng qu¸ mÊy th¸ng , ta tù nhiªn sÏ t×m thªm ng­¬i , b¶o träng #", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
SetRewindTaskState(PARID_TASK_REWIND_004, 3); 

Msg2Player("Ng­¬i ®· hoµn thµnh dŞ téc vâ sÜ ®İch tu luyÖn nhiÖm vô #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(4, 7); 

-- script viet hoa By http://tranhba.com  thiÕt trİ h«m nay hoµn thµnh dÊu hiÖu 
SetRewindFinish(4); 

-- script viet hoa By http://tranhba.com  thanh trõ cïng nhiÖm vô cã liªn quan tr¹ng th¸i 
SetPartnerTask(PARID_REWIND04_BOSS_01, 0); 
SetPartnerTask(PARID_REWIND04_BOSS_02, 0); 
SetPartnerTask(PARID_REWIND04_BOSS_03, 0); 
SetPartnerTask(PARID_REWIND04_BOSS_04, 0); 

return 1; 
else 
SelectDescribe({"<npc> ta giao cho ng­¬i nhiÖm vô ng­¬i cßn ch­a hoµn thµnh nga , cè g¾ng lªn ®i . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt l­¬ng mÌo mÌo ®İch xö lı 
rewindProcess_004_Boss_01 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPartnerTask(PARID_REWIND04_BOSS_01, 1); 
Msg2Player("Ng­¬i ®· giÕt chÕt l­¬ng mÌo mÌo #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(4, 2); 

return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt lı tinh ®İch xö lı 
rewindProcess_004_Boss_02 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPartnerTask(PARID_REWIND04_BOSS_02, 1); 
Msg2Player("Ng­¬i ®· giÕt chÕt lı tinh #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(4, 3); 

return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt béi c«ng tö ®İch xö lı 
rewindProcess_004_Boss_03 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPartnerTask(PARID_REWIND04_BOSS_03, 1); 
Msg2Player("Ng­¬i ®· giÕt chÕt béi c«ng tö #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(4, 4); 

return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt ®­êng c¸ ®İch xö lı 
rewindProcess_004_Boss_04 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPartnerTask(PARID_REWIND04_BOSS_04, 1); 
Msg2Player("Ng­¬i ®· giÕt chÕt ®­êng c¸ #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(4, 5); 

return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt l­u khiÕu kho¸t ®İch xö lı 
rewindProcess_004_Boss_05 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPartnerTask(PARID_REWIND04_BOSS_04, 1); 
Msg2Player("Ng­¬i ®· giÕt chÕt l­u khiÕu kho¸t #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(4, 8); 

return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  cïng v­¬ng mét ®İch ®èi tho¹i , nÕu nh­ ®iÒu kiÖn phï hîp lµ nhiÖm vô tiÕn tr×nh v× 2 
rewindProcess_004_02 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 

local nNum_1 = GetPartnerTask(PARID_REWIND04_BOSS_01); 
local nNum_2 = GetPartnerTask(PARID_REWIND04_BOSS_02); 
local nNum_3 = GetPartnerTask(PARID_REWIND04_BOSS_03); 
local nNum_4 = GetPartnerTask(PARID_REWIND04_BOSS_04); 

if nNum_1==1 and nNum_2==1 and nNum_3==1 and nNum_4==1 and GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
SelectDescribe({"<npc> c¸m ¬n ng­¬i thay ta gi¶i trõ nguy hiÓm . nÕu lµ Ngò gia ng­êi cña , ta chç nµy cã mét d¹ng ®å ®ãng bµy cho ng­¬i . thŞ lang lµ cña ta b¹n tèt , ban ®Çu h¾n dÆn dß ta thay mÆt v× b¶o qu¶n , h«m nay ng­êi kh¸c còng ®· chÕt , tÊm thiÖp nµy ta l­u chi v« dông , ng­îc l¹i c¸ ®¹i phiÒn to¸i . ng­¬i liÒn lÊy ®i ®i . ®óng råi , nÕu ng­¬i lµ yªu vò ng­êi , ta ®©y trong cèc cßn Èn c­ liÔu mét vŞ cùu lóc næi danh thiªn h¹ ®İch cao thñ , bÊt qu¸ h¾n giíi vò ®· l©u . ng­¬i nÕu cã thÓ nãi ®éng h¾n , nãi kh«ng chõng sÏ truyÖn mét m«n tuyÖt kû d­ ng­¬i ®i . ", 
" hay lµ tr­íc ®em ta ®­a trë vÒ ®i /#rewindProcess_004_02_SendMan:doTaskEntity()", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
SetRewindTaskState(PARID_TASK_REWIND_004, 2); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(4, 6); 

return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_004)==2 then 
rewindProcess_004_02_SendMan:doTaskEntity(); 
return 1; 
else 
SelectDescribe({"<npc> b©y giê cã n¨m tªn cao thñ ®ang ®iªn cuång tÊn c«ng vua ta nhµ b¶o , ng­¬i nÕu kh«ng cã ph¸p ®¸nh b¹i bän hä , chóng ta lµ kh«ng ra ®­îc ®İch . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
return 1; 
end; 
end, 

}); 


rewindProcess_004_02_SendMan = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SelectDescribe({"<npc> ng­¬i muèn rêi khái n¬i nµy sao ? ", 
" ®óng vËy , xin ®­a ta ®i th«i /#rewindProcess_004_02_Send:doTaskEntity()", 
" chê mét chót /OnTaskExit" 
}); 
return 1; 
end, 
}); 



rewindProcess_004_02_Send = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
NewWorld(176,1376,3333); 
SetFightState(0); 
end, 
});
