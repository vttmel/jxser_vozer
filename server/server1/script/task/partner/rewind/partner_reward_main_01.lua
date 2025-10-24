
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online t×nh nghÜa giang hå ®ång b¹n tu luyÖn thiªn ch©n vèn thËt thÓ xö lı v¨n kiÖn - thŞ l·ng chÕt 
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
IncludeLib("PARTNER"); 

-- script viet hoa By http://tranhba.com  ®ång b¹n kŞch t×nh nhiÖm vô ®Çu v¨n kiÖn 
Include ("\\script\\task\\partner\\task_head.lua");

ID_PARMASTER_TALK_01 = 1256; -- script viet hoa By http://tranhba.com  cã hay kh«ng më ra cïng nam nh¹c trÊn ®İch c­ d©n ®èi tho¹i ®İch chèt më 

PARID_REWIND_ITEM_001 = 33; -- script viet hoa By http://tranhba.com  ®Şa hoµng cá 
PARID_REWIND_ITEM_002 = 34; -- script viet hoa By http://tranhba.com  phİ l¸ 
PARID_REWIND_ITEM_003 = 35; -- script viet hoa By http://tranhba.com  bªn tr¸i c¸i ch×a khãa 
PARID_REWIND_ITEM_004 = 36; -- script viet hoa By http://tranhba.com  nhuém gi¸p cèt 
PARID_REWIND_ITEM_005 = 37; -- script viet hoa By http://tranhba.com  bªn ph¶i c¸i ch×a khãa 

PARID_REWIND_WAITTIME = 38; -- script viet hoa By http://tranhba.com  5 phót chê ®îi thêi gian 


rewindProcess_001 = inherit(CProcess, { 

checkCondition = function(self) 
return 1; 
end, 

taskEntity = function(self, nCondition) 

local strMain = { 
"<npc> gÇn ®©y , m«n h¹ ®Ö tö nãi cho ta biÕt mét mãn chuyÖn kú qu¸i . tr­íc ®©y kh«ng l©u , nam nh¹c trÊn trªn tíi mét ng¹ch cã ®©m thanh , béi mang hép s¾t ®İch giµ nua ph¹m nh©n , ng­êi nµy ¸nh m¾t qu¾c th­íc , nh×n qua t­íng m¹o phi phµm . cho nªn chóng ta giÊu giÕm ë nam nh¹c trong kh¸ch s¹n ®İch cao thñ ®èi víi h¾n cã nhiÒu chiÕu cè . cã mét l«i m­a chÊt thªm ®İch ban ®ªm , l·o nh©n chît thÇn s¾c ho¶ng sî t×m ®­îc ng­êi ®Ö tö kia , nãi ra mét liªn quan tíi tµng b¶o ®å m¶nh vôn ®İch lín lao bİ mËt . th× ra lµ vŞ l·o nh©n nµy l¹i lµ ®­¬ng triÒu Binh bé ThŞ lang , bëi v× lùc chñ chèng l¹i kim quèc , bŞ l­u ®µi Nam C­¬ng thó bªn . kú qu¸i h¬n chİnh lµ , ngµy thø hai s¸ng sím thŞ lang ®¹i nh©n chît v« tËt b¹o tÔ # liªn l¹c gÇn nhÊt trªn giang hå tin ®ån ®İch vâ l©m kh¸ch s¹n ë giang hå nghiÔm ph¸t anh hïng d¸n , ­íc ®Şnh n¨m sau triÖu tËp anh hïng thiªn h¹ cìi ra cïng ngµy hoµng long khİ t­¬ng quan tµng b¶o ®å bİ mËt chuyÖn nµy , ta c¶m thÊy sau l­ng cã lÏ cã c¸ lín lao ©m m­u . mét tê nho nhá kim nª thu phong tiªn , thµnh giang hå anh hïng ng­êi ng­êi muèn ph¶i sau mau b¶o bèi . cßn ch©n chİnh truyÒn l­u giang hå ®İch , tùa hå chØ cã thËp ®¹i m«n ph¸i ch­ëng m«n nh©n trong tay m­êi tê , kh¸c m­êi tr­¬ng anh hïng d¸n còng kh«ng biÕt tung tİch . ta tin t­ëng thŞ lang ®İch chÕt cïng chi cã liªn quan , muèn mêi ng­¬i t×m ra s¬ hë trong ®ã . hãa gi¶i Trung Nguyªn vâ l©m ®İch mét cuéc h¹o kiÕp #", 
" kŞch t×nh thiªn [ nh»m vµo ch­a tõng lµm nªn nhiÖm vô ®ång b¹n ]/#rewindProcess_001_01:doTaskEntity()", 
" tu luyÖn thiªn [ nh»m vµo ®· ®· lµm nªn nhiÖm vô ®ång b¹n ]/#rewindProcess_001_02:doTaskEntity()", 
" ta ®Òu kh«ng muèn nhËn , tr× chót trë l¹i ®i /OnTaskExit" 
} 

if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
end; 
return 0; 

end, 

}); 


-- script viet hoa By http://tranhba.com  lùa chän thŞ lang chÕt kŞch t×nh thiªn [ nh»m vµo ch­a tõng lµm nªn nhiÖm vô ®ång b¹n ] 
rewindProcess_001_01 = inherit(CProcess, { 

checkCondition = function(self) 

if GetRewindTaskState(PARID_TASK_REWIND_001)==nil then -- script viet hoa By http://tranhba.com  kh«ng cã CALL ®ång b¹n ®i ra trë vÒ 0 
return 0; 
elseif GetMasterTaskState(PARID_TASK_MASTER_001)<=4 then -- script viet hoa By http://tranhba.com  ch­a hoµn thµnh kŞch t×nh thiªn ®İch nhiÖm vô 
return 4; 
elseif CheckRewindState(1)~=1 then -- script viet hoa By http://tranhba.com  kh«ng phï hîp nhËt kú ph¸n ®o¸n ®iÒu kiÖn 
return 5; 
elseif GetRewindTaskState(PARID_TASK_REWIND_001)>=1 and GetRewindTaskState(PARID_TASK_REWIND_001)<5 then -- script viet hoa By http://tranhba.com  ®· b¾t ®Çu nhiÖm vô trë vÒ 1 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_001)==5 then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh qu¸ nhiÖm vô trë vÒ 2 
return 2; 
elseif GetRewindTaskState(PARID_TASK_REWIND_001)==0 then -- script viet hoa By http://tranhba.com  cho tíi b©y giê ch­a tõng lµm nhiÖm vô nµy trë vÒ 3 
return 3; 
end; 
end, 

taskEntity = function(self, nCondition) 

-- script viet hoa By http://tranhba.com  b¾t ®Çu nhiÖm vô lóc ®İch ®èi tho¹i 
local strMain = { 
"<npc> ng­¬i nh­ng tõ nam nh¹c trø tay ®iÒu tra , trÊn d©n cöa nªn biÕt mét İt tin tøc . ", 
" ta nguyÖn ı tiÕp nhËn nhiÖm vô /#rewindProcess_001_Accept:doTaskEntity()", 
" cho ta suy nghÜ l¹i mét chót ®i /OnTaskExit" 
} 

-- script viet hoa By http://tranhba.com  ch­a hoµn thµnh nhiÖm vô ®İch ®èi tho¹i 
local strMain_01 = { 
"<npc> ng­¬i vÉn ch­a hoµn thµnh nhiÖm vô ®i ? xin/mêi b¾t chÆc thêi gian ®i #", 
" kÕt thóc ®èi tho¹i /OnTaskExit", 
} 

-- script viet hoa By http://tranhba.com  ®· hoµn thµnh nhiÖm vô ®èi tho¹i 
local strMain_02 = { 
"<npc> ng­¬i ®· hoµn thµnh qu¸ nµy nhiÖm vô nga , ", 
" kÕt thóc ®èi tho¹i /OnTaskExit", 
} 

if nCondition==1 then 
if GetRewindTaskState(PARID_TASK_REWIND_001)==4 then 
rewindProcess_001_Pay:doTaskEntity(); 
else 
SelectDescribe(strMain_01); 
end; 
return 1; 
elseif nCondition==3 or nCondition==2 then 
SelectDescribe(strMain); 
return 1; 
elseif nCondition==4 then 
SelectDescribe({"<npc> ng­¬i cßn ch­a hoµn thµnh nhiÖm vô nµy kŞch t×nh thiªn nga , kh«ng thÓ tiÕn hµnh tu luyÖn nhiÖm vô . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
return 1; 
elseif nCondition==0 then 
SelectDescribe({"<npc> ng­¬i cßn kh«ng cã mang lµm nhiÖm vô nµy ®ång b¹n tíi nga #", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
return 1; 
elseif nCondition==5 then 
SelectDescribe({"<npc> tu luyÖn nhiÖm vô mçi ®ång b¹n mçi ngµy chØ cã thÓ lµm ba lÇn nga #", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
return 1; 
end; 

return 0; 

end, 

}); 


-- script viet hoa By http://tranhba.com  thŞ lang chÕt kŞch t×nh nhiÖm vô tiÕp nhËn nhiÖm vô , nhiÖm vô tiÕn ®é v× 1 
rewindProcess_001_Accept = inherit(CProcess, { 

-- script viet hoa By http://tranhba.com  cho tin tøc còng ph¸t d­ b­íc ®Çu tiªn ®İch t­ëng th­ëng 
taskEntity = function(self, nCondition) 

if nCondition==1 then 
SetTask(ID_PARMASTER_TALK_01, 1); -- script viet hoa By http://tranhba.com  thiÕt trİ ®èi tho¹i t¹m thêi thay ®æi l­îng 
Msg2Player("Ng­¬i ®ãn nhËn thŞ lang chÕt ®İch tu luyÖn nhiÖm vô #"); 
SetRewindTaskState(PARID_TASK_REWIND_001, 1); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(1, 1); 

-- script viet hoa By http://tranhba.com  thanh trõ cïng nhiÖm vô cã liªn quan tr¹ng th¸i 
SetPartnerTask(PARID_REWIND_ITEM_001, 0); 
SetPartnerTask(PARID_REWIND_ITEM_002, 0); 
SetPartnerTask(PARID_REWIND_ITEM_003, 0); 
SetPartnerTask(PARID_REWIND_ITEM_004, 0); 
SetPartnerTask(PARID_REWIND_ITEM_005, 0); 

-- script viet hoa By http://tranhba.com  khi phï hîp ®iÒu kiÖn sau b¾t ®Çu mét lÇn míi tu luyÖn nhiÖm vô xö lı 
SetRewindStart(1); 

return 1; 
end; 
return 0; 
end, 

}); 

-- script viet hoa By http://tranhba.com  thŞ lang chÕt kŞch t×nh nhiÖm vô ®ãng nhiÖm vô 
rewindProcess_001_Pay = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==4 then 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_001)==nil then 
return 2; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

strMain = { 
"<npc> tÜnh nh¹c còng bŞ ®éc phiªu g©y th­¬ng tİch sao ? gÇn ®©y ta ph¸i ®i c¸c n¬i ®iÒu tra anh hïng d¸n tung tİch ®İch cao thñ rèi rİt ngé h¹i , cïng nhau kh¸ng chiÕn ®İch l·o huynh ®Ö , l¹i bŞ m×nh ng­êi g©y th­¬ng tİch , ai …… kh«ng nãi nh÷ng thø nµy , n¬i nµy lµ ng­¬i nªn ®­îc t­ëng th­ëng , tr× chót thêi ®iÓm tíi t×m ta n÷a ®i . ta cÇn an tÜnh mét chót . ", 
" nhËn lÊy t­ëng th­ëng /#rewindProcess_001_PayAward:doTaskEntity()" 
} 

if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
elseif nCondition==2 then 
SelectDescribe({"<npc> ng­¬i cßn kh«ng cã mang lµm nhiÖm vô nµy ®ång b¹n tíi nga #", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  thŞ l·ng chÕt ph¸t cïng t­ëng th­ëng , nhiÖm vô tiÕn tr×nh v× 5 
rewindProcess_001_PayAward = inherit(CProcess, { 

-- script viet hoa By http://tranhba.com  cho tin tøc còng ph¸t t­ëng th­ëng 
taskEntity = function(self, nCondition) 
Msg2Player("Ng­¬i ®· hoµn thµnh thŞ lang chÕt ®İch tu luyÖn nhiÖm vô #"); 
SetRewindTaskState(PARID_TASK_REWIND_001, 5); 
SetTask(ID_PARMASTER_TALK_01, 0); -- script viet hoa By http://tranhba.com  thanh kh«ng cïng th«n d©n ®èi tho¹i ®İch thay ®æi l­îng 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(1, 8); 

-- script viet hoa By http://tranhba.com  thiÕt trİ h«m nay hoµn thµnh dÊu hiÖu 
SetRewindFinish(1); 

return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  thŞ lang chÕt kŞch t×nh nhiÖm vô hñy bá nhiÖm vô 
rewindProcess_001_Cancel = inherit(CProcess, { 

-- script viet hoa By http://tranhba.com  cho hñy bá nhiÖm vô ®Ò kú 
taskEntity = function(self, nCondition) 
Say("Ng­¬i nhÊt ®Şnh ph¶i hñy bá thŞ lang chÕt ®İch kŞch t×nh nhiÖm vô sao ? ",2, 
" ®óng vËy , ta qu¸ mÖt mái /#rewindProcess_001_Cancel_Confirm:doTaskEntity()", 
" ®Ó cho ta suy nghÜ thªm mét chót /OnTaskExit"); 
return 1; 
end, 

}); 

-- script viet hoa By http://tranhba.com  thŞ lang chÕt kŞch t×nh nhiÖm vô hñy bá nhiÖm vô x¸c nhËn 
rewindProcess_001_Cancel_Confirm = inherit(CProcess, { 

-- script viet hoa By http://tranhba.com  cho hñy bá nhiÖm vô ®Ò kú 
taskEntity = function(self, nCondition) 
SetTask(ID_PARMASTER_TALK_01, 0); -- script viet hoa By http://tranhba.com  thanh kh«ng cïng th«n d©n ®èi tho¹i ®İch thay ®æi l­îng 
Msg2Player("Ng­¬i ®· hñy bá thŞ lang chÕt ®İch kŞch t×nh nhiÖm vô #"); 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  cïng tÜnh nh¹c s­ th¸i chç ®èi tho¹i , nhiÖm vô tiÕn triÓn v× 2 
rewindProcess_001_02 = inherit(CProcess, { 

checkCondition = function(self) 
-- script viet hoa By http://tranhba.com  nhiÖm vô tiÕn triÓn v× 1 , h¬n n÷a ®· tõ th«n d©n chç ®¹t ®­îc tin tøc , míi cã thÓ th«ng qua 
if GetRewindTaskState(PARID_TASK_REWIND_001)==1 and GetTask(ID_PARMASTER_TALK_01)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
strMain = { 
"<npc> thİ chñ , ng­¬i rèt côc vÉn ph¶i tíi kĞo . bÇn ni s¸ng sím næi lªn mét quÎ , quÎ gièng nh­ thµnh t­êng , lµ c¸t ®iÒm . cã lÏ c¸i nµy n¨m nh¹c mét trong ®İch linh s¬n , cã thÓ miÔn trõ mét cuéc huyÕt quang tai ­¬ng . thŞ lang chÕt bëi mét lo¹i v« cïng kú qu¸i Êm . h¬n n÷a trÊn trªn kh«ng chØ mét ng­êi m¾c bÖnh nÆng mµ chÕt . c¸i lo¹i ®ã Êm lµ do mét lo¹i rõng rËm kim tuyÕn xµ ®­a tíi , nã th­êng th­êng ë nöa ®ªm ®İch thêi ®iÓm tõ l­¬ng méc th­îng leo xuèng , len lĞn ®ang ngñ c¾n ng­êi ®İch ®Çu , bëi v× tãc che ®Ëy , cho nªn kh«ng nh×n ra dÊu vÕt . ®¸ng tiÕc nã v« cïng gi¶o ho¹t , bÇn ni kh«ng cã c¸ch nµo b¾t ®­îc . lo¹i nµy xµ tuyÖt kh«ng ph¶i nam nh¹c trÊn tÊt c¶ , ta hoµi nghi lµ cã ng­êi chØ ®iÓm . cho nªn cÇn t×m ®­îc cã thÓ ®em { kim tuyÕn xµ } hu©n ra ngoµi { ®Şa hoµng cá } , { phİ l¸ } cïng { nhuém gi¸p c©y } . nh÷ng thø ®å nµy còng sinh víi phİa b¾c ®İch s¬n tÆc ®éng . n¬i ®ã hung hiÓm v¹n phÇn , mét lo¹i vâ l©m cao thñ ®i vµo , còng cã ®i v« trë vÒ , ng­¬i nguyÖn ı ®i kh«ng ? ", 
" ®óng vËy , ta ®· chuÈn bŞ xong /#rewindProcess_001_02_Accept:doTaskEntity()", 
" kh«ng , ta cßn cÇn chuÈn bŞ mét chót /OnTaskExit" 
} 

if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  truyÒn tèng ®i nhiÖm vô b¶n ®å ®óng lµ nhËn 
rewindProcess_001_02_Accept = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
strMain = { 
"<npc> s¬n tÆc bªn trong ®éng m¹nh phØ tô tËp , ë thÇn bİ s¬n tÆc trªn ng­êi cã dÊu ®Şa hoµng cá , tÆc bµ tö trªn ng­êi cÊt giÊu phİ l¸ . ng­¬i cÇn c¸c lÊy n¨m m­¬i buéi c©y . sau ®ã ®i ®éng phİa trªn chia ra giÕt chÕt tr«ng chõng c¸i ch×a khãa ®İch s¬n tÆc T¶ tr¹i chñ cïng s¬n tÆc bªn ph¶i tr¹i chñ , lÊy ®­îc hai c©y c¸i ch×a khãa sau ®ã ®i b¶n ®å trung ­¬ng ®İch trÊn nh¹c chi cöa , hoa khai khãa ng­êi më ra nã . tõ s¬n tÆc v­¬ng trong tay ®o¹t ®Õn duy nhÊt mét chi nhuém gi¸p cèt . nh­ vËy míi cã thÓ thµnh c«ng chÕ biÕn thµnh d­îc liÖu , râ rµng sao ? nÕu nh­ râ rµng tho¹i , bÇn ni c¸i nµy ®­a ng­¬i lªn nói . ", 
" râ rµng , ®­a ta ®i cho /#rewindProcess_001_02_01:doTaskEntity()", 
" ta n÷a chuÈn bŞ mét chót /OnTaskExit" 
} 
SetRewindTaskState(PARID_TASK_REWIND_001, 2); 
SelectDescribe(strMain); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(1, 2); 

return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  truyÖn ®i nhiÖm vô së t¹i ®å ®İch qu¸ tr×nh 
rewindProcess_001_02_01 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
NewWorld(514, 1552, 3308); 
SetFightState(1); 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt thÇn bİ s¬n tÆc ®İch xö lı qu¸ tr×nh 
rewindProcess_001_02_02 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

-- script viet hoa By http://tranhba.com  cã 1/2 ®İch x¸c suÊt lÊy ®­îc ®Şa hoµng cá , v« th­îng h¹n 
taskEntity = function(self, nCondition) 

local nItemNum = GetPartnerTask(PARID_REWIND_ITEM_001); 

if nCondition==1 and nItemNum<50 then 

SetPartnerTask(PARID_REWIND_ITEM_001, 
								 nItemNum + 1);

			Msg2Player("ÄãµÃµ½ÁËÒ»ÖêµØ»Æ²İ£¡ÄãÏÖÔÚ¹²ÓĞ "..(nItemNum + 1).." Öê£¡");

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
-- script viet hoa By http://tranhba.com  PayRewindAward(1, 3); 

AddOwnExp(CountDoubleMode(1000)); 
AddPartnerExp(CountDoubleMode(200)); 

return 1; 
end; 
return 0; 
end 

}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt tÆc bµ tö ®İch xö lı qu¸ tr×nh 
rewindProcess_001_02_03 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

-- script viet hoa By http://tranhba.com  cã 1/2 ®İch x¸c suÊt lÊy ®­îc phİ l¸ , v« th­îng h¹n 
taskEntity = function(self, nCondition) 

local nItemNum = GetPartnerTask(PARID_REWIND_ITEM_002); 

if nCondition==1 and nItemNum<50 then 

SetPartnerTask(PARID_REWIND_ITEM_002, 
								 nItemNum + 1);

			Msg2Player("ÄãµÃµ½ÁËÒ»Öê·ÑÒ¶£¡ÄãÏÖÔÚ¹²ÓĞ "..(nItemNum + 1).." Öê·ÑÒ¶£¡");

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
-- script viet hoa By http://tranhba.com  PayRewindAward(1, 4); 

AddOwnExp(CountDoubleMode(1000)); 
AddPartnerExp(CountDoubleMode(200)); 

return 1; 
end; 
return 0; 
end 

}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt bªn ph¶i tr¹i chñ lÊy ®­îc mét c¸i ch×a khãa 
rewindProcess_001_02_04 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

-- script viet hoa By http://tranhba.com  lÊy ®­îc mét c¸i ch×a khãa 
taskEntity = function(self, nCondition) 

local nItemNum = GetPartnerTask(PARID_REWIND_ITEM_003); 

if nCondition==1 then 

if nItemNum>=1 then return 0; end; 

SetPartnerTask(PARID_REWIND_ITEM_003, 
								 nItemNum + 1);

Msg2Player("Ng­¬i lÊy ®­îc mét thanh bªn ph¶i h×nh tr¨ng khuyÕt tr¹ng ®İch c¸i ch×a khãa #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(1, 5); 

return 1; 
end; 
return 0; 
end 

}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt T¶ tr¹i chñ lÊy ®­îc mét c¸i ch×a khãa 
rewindProcess_001_02_05 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

-- script viet hoa By http://tranhba.com  lÊy ®­îc mét c¸i ch×a khãa 
taskEntity = function(self, nCondition) 

local nItemNum = GetPartnerTask(PARID_REWIND_ITEM_005); 

if nCondition==1 then 

if nItemNum>=1 then return 0; end; 

SetPartnerTask(PARID_REWIND_ITEM_005, 
								 nItemNum + 1);

Msg2Player("Ng­¬i lÊy ®­îc mét thanh bªn tr¸i h×nh tr¨ng khuyÕt tr¹ng ®İch c¸i ch×a khãa #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(1, 5); 

return 1; 
end; 
return 0; 
end 

}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt s¬n tÆc v­¬ng lÊy ®­îc nhuém gi¸p cèt 
rewindProcess_001_02_KillBoss = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhuém gi¸p cèt 
taskEntity = function(self, nCondition) 

local nItemNum = GetPartnerTask(PARID_REWIND_ITEM_004); 

if nCondition==1 then 

if nItemNum>=1 then return 0; end; 

SetPartnerTask(PARID_REWIND_ITEM_004, 
								 nItemNum + 1);

Msg2Player("Ng­¬i lÊy ®­îc mét c©y nhuém gi¸p cèt #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(1, 6); 

return 1; 
end; 
return 0; 
end 

}); 



-- script viet hoa By http://tranhba.com  cïng më khãa ng­êi mét ®İch ®èi tho¹i 
rewindProcess_001_02_UnLock = inherit(CProcess, { 
checkCondition = function(self) 

local nKey_1 = GetPartnerTask(PARID_REWIND_ITEM_003); 
local nKey_2 = GetPartnerTask(PARID_REWIND_ITEM_005); 

if nKey_1==nil or nKey_2==nil then return end; 

if nKey_1>=1 and nKey_2>=1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> trªn tay ng­¬i cÇm ®İch c¸i ch×a khãa chİnh lµ thùc lùc ng­¬i ®İch b»ng chøng , ta ®©y sÏ ®­a ng­¬i ®i vµo tiÕp nhËn khiªu chiÕn ®i #", 
" h¶o , xin ®­a ta vµo ®i th«i /#rewindProcess_001_02_Inside:doTaskEntity()", 
" ta n÷a chuÈn bŞ mét chót /OnTaskExit" 
}); 
else 
SelectDescribe({"<npc> chê ng­¬i tõ chõng hai vŞ tr¹i chñ trong b¾t ®­îc hai nöa c¸i ch×a khãa sau tíi t×m ta n÷a ®i #", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
end; 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  truyÒn tèng ®i vµo qu¸ tr×nh 
rewindProcess_001_02_Inside = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetPos(1816,3227); 
SetFightState(1); 
return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  cïng më khãa ng­êi hai ®İch ®èi tho¹i 
rewindProcess_001_02_SendMan = inherit(CProcess, { 

checkCondition = function(self) 
return 1; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> ng­¬i b©y giê muèn ®i ra ngoµi liÔu sao ? ", 
" xin ®­a ta ®i ra ngoµi ®i /#rewindProcess_001_02_Outside:doTaskEntity()", 
" chê mét chót /OnTaskExit", 
}); 
end; 
return 1; 
end, 

}); 

-- script viet hoa By http://tranhba.com  truyÒn tèng ®i ra ngoµi ®İch qu¸ tr×nh 
rewindProcess_001_02_Outside = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetPos(1794,3193); 
SetFightState(0); 
return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  trë l¹i cïng tÜnh nh¹c s­ th¸i chç ®èi tho¹i 
rewindProcess_001_02_06 = inherit(CProcess, { 
checkCondition = function(self) 

local nTaskState = GetRewindTaskState(PARID_TASK_REWIND_001); 
local nItem_01 = GetPartnerTask(PARID_REWIND_ITEM_001); 
local nItem_02 = GetPartnerTask(PARID_REWIND_ITEM_002); 
local nItem_03 = GetPartnerTask(PARID_REWIND_ITEM_003); 
local nItem_04 = GetPartnerTask(PARID_REWIND_ITEM_004); 
local nItem_05 = GetPartnerTask(PARID_REWIND_ITEM_005); 

if nTaskState==2 and nItem_01>=50 and nItem_02>=50 and nItem_04>=1 then 
return 1; 
elseif nTaskState==2 then 
return 2; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
strMain = { 
"<npc> A di ®µ phËt , thİ chñ chuyÕn nµy huyÕt quang doanh con m¾t , liªu tíi lµ bëi v× liÔu bÇn ni l¹i/võa nhiÒu t¹o h¹ mÊy phen s¸t nghiÖt , téi qu¸ téi qu¸ . nh­ vËy lo¹n thÕ , d©n bÊt liªu sanh , nÕu lµ cã thÓ lÊy sĞt ®¸nh thñ ®o¹n cøu d©n víi n­íc löa , sÏ ®Ó cho bÇn ni tr­íc xuèng chİn tÇng a tŞ ®Şa ngôc ®i . d­îc liÖu ®Òu ®· tÒ bŞ , thİ chñ th¶ { qu¸ th­îng chót thêi gian trë l¹i } , bÇn ni tr­íc chuÈn bŞ hu©n ra r¾n ®éc chuyÖn cña t×nh liÔu . ", 
" kÕt thóc ®èi tho¹i /#rewindProcess_001_02_07:doTaskEntity()" 
} 
if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
elseif nCondition==2 then 
rewindProcess_001_02_Accept:doTaskEntity(); 
return 1; 
end; 
return 0; 
end 

}); 

-- script viet hoa By http://tranhba.com  b¾t ®Çu n¨m phót thay ®æi l­îng chøa ®ùng , nhiÖm vô tiÕn triÓn v× 3 
rewindProcess_001_02_07 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SetPartnerTask(PARID_REWIND_WAITTIME, GetGameTime()); 
SetRewindTaskState(PARID_TASK_REWIND_001, 3); 
return 1; 
end, 

}); 

-- script viet hoa By http://tranhba.com  n¨m phót sau trë vÒ ®èi tho¹i , nÕu nh­ phï hîp ®iÒu kiÖn lµ nhiÖm vô tiÕn triÓn v× 4 
rewindProcess_001_02_08 = inherit(CProcess, { 

checkCondition = function(self) 
-- script viet hoa By http://tranhba.com  ­íc chõng tr¶i qua 5 phót , còng kh«ng ph¶i lµ chİnh x¸c hÖ thèng thêi gian 
if GetRewindTaskState(PARID_TASK_REWIND_001)==3 and GetGameTime() - GetPartnerTask(PARID_REWIND_WAITTIME) >= 350 then 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_001)==3 then 
return 2; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
strMain = { 
"<color=green> tÜnh nh¹c s­ th¸i <color># qu¶ nhiªn , qu¶ nhiªn lµ con r¾n kia , ®Ønh ®Çu cã ngän löa ®İch l¹c Ên . chØ cã Miªu C­¬ng …… cã ¸m khİ #", 
" míi võa mét qu¶ mµu b¹c tr¾ng thĞp phiªu xoay trßn ®¸nh tíi , tèc ®é nhanh ®¬n gi¶n bÊt kh¶ t­ nghŞ . b©y giê tÜnh nh¹c s­ th¸i châ ph¶i ®· bŞ ®¸nh thÊu , c¨n b¶n kh«ng c¸ch nµo nãi chuyÖn . ng­¬i vÒ tr­íc { long n¨m } chç nép nhiÖm vô ®i , tr× chót hái l¹i nµng . " 
} 

if nCondition==1 then 
SetRewindTaskState(PARID_TASK_REWIND_001, 4); 
TalkEx("", strMain); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayRewindAward(1, 7); 

return 1; 
elseif nCondition==2 then 
SelectDescribe({"<npc> nÊu ®éc lo¹i chuyÖn nh­ vËy tu ph¶i v¹n phÇn cÈn thËn , thİ chñ chí véi , cßn lµ chê chèc l¸t ®i #", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
return 1; 
end; 
return 0; 
end, 

}); 
