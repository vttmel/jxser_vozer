
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online t×nh nghÜa giang hå ®ång b¹n kŞch t×nh ch©n vèn thËt thÓ xö lı v¨n kiÖn - khèng xµ nh©n bİ mËt 
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

ID_PARTASK_PASSED = 1262; 

BIT_PASSED_001 = 1; 
BIT_PASSED_002 = 2; 
BIT_PASSED_003 = 3; 

BIT_PASSED_STATE = 5; -- script viet hoa By http://tranhba.com  ghi chĞp cã hay kh«ng më ra tin/th¬ khiÕn cho nhiÖm vô giam khèng 

-- script viet hoa By http://tranhba.com  b¾t ®Çu nhiÖm vô lóc ®İch ®èi tho¹i 
taskProcess_002_01 = inherit(CProcess, { 

checkCondition = function(self) 

local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®İch index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 

-- script viet hoa By http://tranhba.com  kiÓm tra nhµ ch¬i cïng ®ång b¹n ®İch cÊp bËc 
if GetLevel()<80 or PARTNER_GetLevel(partnerindex)<20 then return 4; end; 

if GetMasterTaskState(PARID_TASK_MASTER_002)==nil then -- script viet hoa By http://tranhba.com  kh«ng cã mang ®ång b¹n 
return 0; 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)==0 then -- script viet hoa By http://tranhba.com  lÇn ®Çu tiªn b¾t ®Çu lµm 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)>=1 and GetMasterTaskState(PARID_TASK_MASTER_002)<=5 then -- script viet hoa By http://tranhba.com  ®· b¾t ®Çu lµm 
return 2; 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)>=6 then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 
return 3; 
end; 
end, 

taskEntity = function(self, nCondition) 

-- script viet hoa By http://tranhba.com  b¾t ®Çu nhiÖm vô lóc ®İch ®èi tho¹i 
local strMain = { 
"<npc> tr­íc trËn tö nam nh¹c trÊn tÜnh nh¹c s­ th¸i bŞ th­¬ng tr¶i qua ®iÒu lı ®· tõ tõ kh¸ h¬n , nµng së b¾t l¹i ®İch con r¾n kia trªn ®Çu cã ngän löa dÊu hiÖu , thiªn h¹ nhiÒu nh­ vËy lo¹i dŞ xµ , duy chØ Miªu C­¬ng khèng xµ nh©n míi cã thÓ nu«i ra mÆt ®İnh phô trø ngän löa v¨n ®İch xµ v­¬ng . ng­¬i h¼n ®i { §¹i Lı } nh×n mét chót , cã lÏ sÏ cã ®iÒu ph¸t hiÖn . nghe nãi { thµnh §¹i Lı bªn trong ®İch trµ b¸c sÜ } ®èi víi nh÷ng thø nµy khèng xµ chÕ ®éc ®İch ng­êi rÊt lµ hiÓu râ , ng­¬i cã thÓ t×m h¾n gióp mét tay ®iÒu tra , bÊt qu¸ b©y giê Èn nóp lªn ®¸m kia thÕ lùc lµm viÖc ¸c ®éc , chİnh ng­¬i ph¶i nhiÒu thªm cÈn thËn . ", 
" tiÕp nhËn nhiÖm vô /#taskProcess_002_Accept:doTaskEntity()", 
" ta suy nghÜ thªm mét chót /OnTaskExit", 
} 

local strMain_01 = { 
"<npc> tr­íc trËn tö nam nh¹c trÊn tÜnh nh¹c s­ th¸i bŞ th­¬ng tr¶i qua ®iÒu lı ®· tõ tõ kh¸ h¬n , nµng së b¾t l¹i ®İch con r¾n kia trªn ®Çu cã ngän löa dÊu hiÖu , thiªn h¹ nhiÒu nh­ vËy lo¹i dŞ xµ , duy chØ Miªu C­¬ng khèng xµ nh©n míi cã thÓ nu«i ra mÆt ®İnh phô trø ngän löa v¨n ®İch xµ v­¬ng . ng­¬i h¼n ®i { §¹i Lı } nh×n mét chót , cã lÏ sÏ cã ®iÒu ph¸t hiÖn . nghe nãi { thµnh §¹i Lı bªn trong ®İch trµ b¸c sÜ } ®èi víi nh÷ng thø nµy khèng xµ chÕ ®éc ®İch ng­êi rÊt lµ hiÓu râ , ng­¬i cã thÓ t×m h¾n gióp mét tay ®iÒu tra , bÊt qu¸ b©y giê Èn nóp lªn ®¸m kia thÕ lùc lµm viÖc ¸c ®éc , chİnh ng­¬i ph¶i nhiÒu thªm cÈn thËn . ", 
" ta ®· hoµn thµnh nhiÖm vô /#taskProcess_002_Pay:doTaskEntity()", 
" ta cßn ch­a hoµn thµnh /OnTaskExit" 
} 

local strMain_02 = { 
"<npc> ng­¬i ë ®©y lÇn nhiÖm vô trung biÓu hiÖn rÊt tèt , khæ cùc ng­¬i #", 
" kÕt thóc ®èi tho¹i /OnTaskExit", 
} 

if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
elseif nCondition==2 then 
SelectDescribe(strMain_01); 
return 1; 
elseif nCondition==3 then 
SelectDescribe(strMain_02); 
return 1; 
elseif nCondition==4 then 
SelectDescribe({"<npc> nhiÖm vô lÇn nµy cÇn cÊp bËc cña ng­¬i ë {80 cÊp } trë lªn , h¬n n÷a ®ång b¹n cña ng­¬i cÊp bËc muèn ë {20 cÊp } trë lªn #", 
" kÕt thóc ®èi tho¹i /OnTaskExit", 
}); 
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

-- script viet hoa By http://tranhba.com  tiÕp nhËn nhiÖm vô lóc ®İch xö lı , nhiÖm vô tiÕn triÓn v× 1 
taskProcess_002_Accept = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 1); 
Msg2Player("Ng­¬i nhËn ®­îc khèng xµ nh©n bİ mËt ®İch ®ång b¹n kŞch t×nh nhiÖm vô #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayMasterAward(2, 1); 

return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  ®ãng nhiÖm vô lóc ®İch xö lı 
taskProcess_002_Pay = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_002)>=5 then 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)==nil then 
return 2; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({ 
"<npc> õ/d¹ , nÕu lµ nh­ vËy , nh­ vËy ng­¬i t¹m thêi nghØ ng¬i ®i . lµm khã liÔu c­êi ®å , İt n¨m nh­ vËy liÔu , h¾n cßn nhí nh÷ng thø kia chuyÖn nhá . nga , c­êi ®å lµ ng­¬i ë ®©y §¹i Lı nh×n thÊy vŞ kia trµ b¸c sÜ , h¾n nguyªn lai lµ V©n Quı mét d·y lµm ng­êi ta nghe tiÕng t¸ng ®¶m ®İch ®éc hµnh ®¹o tÆc , tªn cã thÓ cÇm tíi chØ tiÓu nhi ®ªm khãc , a a . ", 
" nhËn lÊy t­ëng th­ëng /#taskProcess_002_PayAward:doTaskEntity()" 
}); 
elseif nCondition==2 then 
SelectDescribe({"<npc> ng­¬i cßn kh«ng cã cho gäi ra lµm nhiÖm vô nµy ®ång b¹n nga #", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
return 1; 
else 
SelectDescribe({ 
"<npc> ng­¬i cßn ch­a hoµn thµnh ta ®­a cho ng­¬i nhiÖm vô ®i ? ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
end; 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  nhËn lÊy nhiÖm vô t­ëng th­ëng , nhiÖm vô tiÕn triÓn v× 6 
taskProcess_002_PayAward = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 6); 
Msg2Player("Ng­¬i ®· hoµn thµnh khèng xµ nh©n bİ mËt ®İch nhiÖm vô #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayMasterAward(2, 5); 

return 1; 
end; 
}); 


-- script viet hoa By http://tranhba.com  cïng trµ b¸c sÜ ®İch ®èi tho¹i 
taskProcess_002_02 = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_002)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
local strMain = { 
"<npc> ngµi lµ long Ngò gia ph¸i tíi sao ? d¹/õ , chóng ta §¹i Lı miªu trong téc , cã chót gia téc qu¶ thËt cã nu«i xµ ®İch truyÒn thèng . bÊt qu¸ trªn tr¸n cã ngän löa dÊu hiÖu ®İch ng­îc l¹i kh«ng cã nghe nãi qua , ®ã lµ , ®ã lµ tæ t«ng quy cñ trong cÊm chØ ®İch bİ löa chi m¾t a . lÇn tr­íc cã ngän löa v¨n r¾n ®éc hiÖn th©n §¹i Lı ®İch thêi ®iÓm , trong thµnh næi lªn trµng tr¨m n¨m khã gÆp ®İch kiÒn h¹n , lÇn ®ã chÕt bao nhiªu ng­êi a . h­ , coi chõng tai v¸ch m¹ch rõng , chóng ta trong nhµ nãi . ".. 
" vËt nµy ®éc rÊt , tµ rÊt , bän hä miªu téc nh©n m×nh l¸ gan tõ tr­íc ®Õn giê liÒn ®¹i , còng kh«ng d¸m nãi ®İch . h«m nay nÕu lµ Ngò gia ®İch ph©n phã , ta kh«ng thÓ kh«ng lµm . n¨m ®ã l·o nh©n gia «ng ta ®· cøu c¶ nhµ cña ta t¸nh m¹ng . cÇn ph¶i lµ lµm , t¹i h¹ c¸i m¹ng nµy còng liÒn ®¸p tiÕn vµo . ta gióp ng­¬i tra kh«ng cã vÊn ®Ò , bÊt qu¸ ta n¬i nµy viÕt { ba phong th­ } , theo thø tù lµ cho ta vî con cïng quª qu¸n ®İch cha mÑ giµ . chØ cÇn bän hä b×nh an , ta còng liÒn kh«ng cã canh c¸nh . ng­¬i chØ cÇn ®Õn { c¸c thµnh phè } t×m { dŞch tr¹m quan viªn } , th«ng qua ®­a ®ãn tİn nhiÖm vô , chia ra tõ { phong chi kş } , { miÕu s¬n thÇn } , { thiªn b¶o kho } c¸i nµy ba chç ®Şa ph­¬ng ®em tin/th¬ ®­a ®¹t nhµ ta tiÓu së t¹i ®İch dŞch quan chç , trë vÒ n÷a t×m ta lµ tèt råi . ng­¬i ®i ®i , ta cßn cÇn lµm chót chuÈn bŞ , xem ra nh÷ng n¨m nµy ë §¹i Lı ®¸nh rít xuèng ®İch quan hÖ còng ph¶i dïng tíi l¹c . ", 
" kÕt thóc ®èi tho¹i /#taskProcess_002_03:doTaskEntity()", 
} 
if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  cïng trµ b¸c sÜ ®èi tho¹i sau ®İch thay ®æi l­îng xö lı , nhiÖm vô tiÕn triÓn v× 2 
taskProcess_002_03 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 2); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayMasterAward(2, 2); 

end, 

}); 


-- script viet hoa By http://tranhba.com  cïng dŞch quan ®İch ®èi tho¹i 
taskProcess_002_04 = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_002)==2 then 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)==3 then 
return 2 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)==4 then 
return 3 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)==nil then 
return 4; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

local nPassed_1 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 
local nPassed_2 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 
local nPassed_3 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nCondition==1 then 
SelectDescribe({"<npc> nga , nguyªn lai lµ long n¨m tay cña h¹ . nh÷ng n¨m nµy h¾n gióp ®ë triÒu ®×nh chèng cù ngo¹i ®Şch , lµ lËp c«ng lín ng­êi . ®­îc råi , lËp tøc tõ ta chç nµy ®em tin/th¬ chia ra tõ phong chi kş , miÕu s¬n thÇn cïng thiªn b¶o kho c¸i nµy ba chç b¶n ®å ®­a qua . ", 
" kÕt thóc ®èi tho¹i /#taskProcess_002_05:doTaskEntity()" 
}); 
return 1; 
elseif nCondition==2 then 

if nPassed_1>=1 and nPassed_2>=1 and nPassed_3>=1 then 
SelectDescribe({"<npc> d¹/õ , ng­¬i ®· ®em trµ b¸c sÜ cho ng­êi nhµ ®İch ba phong th­ còng ®­a ®Õn , lËp tøc trë l¹i t×m h¾n ®i . tr©n träng . ", 
" kÕt thóc ®èi tho¹i /#taskProcess_002_10:doTaskEntity()" 
}); 
else 
SelectDescribe({"<npc> ng­¬i cßn kh«ng cã ®em kia ba phong th­ ®­a ®Õn sao ? cè g¾ng lªn ®i #", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
end; 

return 1; 
elseif nCondition==3 then 
SelectDescribe({"<npc> d¹/õ , ng­¬i ®· ®em trµ b¸c sÜ cho ng­êi nhµ ®İch ba phong th­ còng ®­a ®Õn , lËp tøc trë l¹i t×m h¾n ®i . tr©n träng . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
return 1; 
elseif nCondition==4 then 
SelectDescribe({"<npc> tùa hå ng­¬i cßn kh«ng cã cho gäi ra ®ång b¹n nga #", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
return 1; 
end; 
return 0; 
end, 

}); 

-- script viet hoa By http://tranhba.com  cïng dŞch quan ®èi tho¹i sau khi kÕt thóc , nhiÖm vô tiÕn triÓn v× 3 
taskProcess_002_05 = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 3); 

-- script viet hoa By http://tranhba.com  thiÕt trİ tr¹ng th¸i , b¾t ®Çu giam khèng tin/th¬ khiÕn cho nhiÖm vô hoµn thµnh t×nh huèng 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_STATE, 1) 
); 

return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  ®­a hoµn tin/th¬ cïng dŞch quan ®İch ®èi tho¹i kÕt thóc , söa ®æi nhiÖm vô tiÕn tr×nh v× #4 
taskProcess_002_10 = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 4); 
Msg2Player("Ng­¬i ®· hoµn thµnh ®­a tin nhiÖm vô , cã thÓ trë vÒ ®i t×m trµ b¸c sÜ liÔu #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayMasterAward(2, 3); 

-- script viet hoa By http://tranhba.com  thiÕt trİ tr¹ng th¸i , kÕt thóc giam khèng tin/th¬ khiÕn cho nhiÖm vô hoµn thµnh t×nh huèng 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_STATE, 0) 
); 

-- script viet hoa By http://tranhba.com  thanh kh«ng tr­íc ®İch nhiÖm vô tr¹ng th¸i 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001, 0) 
); 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002, 0) 
); 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003, 0) 
); 
return 1; 
end, 
}); 



-- script viet hoa By http://tranhba.com  phong chi kş nhiÖm vô hoµn thµnh 
taskProcess_002_06 = inherit(CProcess, { 

checkCondition = function(self) 

local nState = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_STATE); 
local nBit = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 

if nState==1 and nBit==0 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
local nPassed_1 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 
local nPassed_2 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 
local nPassed_3 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nCondition==1 then 
Msg2Player("Ng­¬i ®· hoµn thµnh trµ b¸c sÜ ®­a cho ng­¬i phong chi kş ®­a tin nhiÖm vô #"); 

-- script viet hoa By http://tranhba.com  thiÕt trİ con sè v× 1 , bµy tá ®· hoµn thµnh 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001, 1) 
); 
SyncTaskValue(ID_PARTASK_PASSED); 

local nPassed_1 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 
local nPassed_2 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 
local nPassed_3 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nPassed_1>=1 and nPassed_2>=1 and nPassed_3>=1 then 
Msg2Player("<color=yellow> ng­¬i ®· hoµn thµnh tÊt c¶ tin/th¬ khiÕn cho nhiÖm vô , xin/mêi cho gäi ra ®ång b¹n h­íng §¹i Lı ®İch dŞch quan ®ãng nhiÖm vô ®i #<color>"); 
end; 

end; 
end, 

}); 

-- script viet hoa By http://tranhba.com  miÕu s¬n thÇn nhiÖm vô hoµn thµnh 
taskProcess_002_07 = inherit(CProcess, { 

checkCondition = function(self) 
local nState = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_STATE); 
local nBit = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 

if nState==1 and nBit==0 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

if nCondition==1 then 
Msg2Player("Ng­¬i ®· hoµn thµnh trµ b¸c sÜ ®­a cho ng­¬i miÕu s¬n thÇn ®­a tin nhiÖm vô #"); 

-- script viet hoa By http://tranhba.com  thiÕt trİ con sè v× 1 , bµy tá ®· hoµn thµnh 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002, 1) 
); 
SyncTaskValue(ID_PARTASK_PASSED); 

local nPassed_1 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 
local nPassed_2 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 
local nPassed_3 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nPassed_1>=1 and nPassed_2>=1 and nPassed_3>=1 then 
Msg2Player("<color=yellow> ng­¬i ®· hoµn thµnh tÊt c¶ tin/th¬ khiÕn cho nhiÖm vô , xin/mêi cho gäi ra ®ång b¹n h­íng §¹i Lı ®İch dŞch quan ®ãng nhiÖm vô ®i #<color>"); 
end; 

end; 
end, 

}); 


-- script viet hoa By http://tranhba.com  thiªn b¶o kho nhiÖm vô hoµn thµnh 
taskProcess_002_08 = inherit(CProcess, { 

checkCondition = function(self) 

local nState = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_STATE); 
local nBit = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nState==1 and nBit==0 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

if nCondition==1 then 
Msg2Player("Ng­¬i ®· hoµn thµnh trµ b¸c sÜ ®­a cho ng­¬i thiªn b¶o kho ®­a tin nhiÖm vô #"); 

-- script viet hoa By http://tranhba.com  thiÕt trİ con sè v× 1 , bµy tá ®· hoµn thµnh 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003, 1) 
); 

SyncTaskValue(ID_PARTASK_PASSED); 

local nPassed_1 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 
local nPassed_2 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 
local nPassed_3 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nPassed_1>=1 and nPassed_2>=1 and nPassed_3>=1 then 
Msg2Player("<color=yellow> ng­¬i ®· hoµn thµnh tÊt c¶ tin/th¬ khiÕn cho nhiÖm vô , xin/mêi cho gäi ra ®ång b¹n h­íng §¹i Lı ®İch dŞch quan ®ãng nhiÖm vô ®i #<color>"); 
end; 

end; 
end, 

}); 

-- script viet hoa By http://tranhba.com  trë l¹i trµ b¸c sÜ chç ®İch ®èi tho¹i 
taskProcess_002_11 = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_002)==4 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
local strMain = { 
"<npc> ai , ng­¬i trë l¹i kĞo . ho khan mét c¸i , c¸i lo¹i ®ã r¾n ®éc lµ thµnh nam Cao gia trÊn Cao thŞ nhÊt téc nu«i . ta mÊy ngµy tr­íc ®©y liÒu chÕt ®i t×m hiÓu , ph¸t hiÖn n¬i ®ã vèn lµ d¸ng dÊp t­¬i tèt thanh thóy ®İch rõng tróc ®Òu ®· kh« h¾c cøng ng¾c . mao tróc sinh mÖnh lùc nhÊt ­¬ng ng¹nh , còng kh«ng chèng cù næi r¾n ®éc , xem ra bän hä sóc d­ìng ®İch sè l­îng to lín ®· v­ît qua t­ëng t­îng cña ta . ta tõ mét ng­êi b¹n n¬i ®ã biÕt ®­îc , tr­íc trÊn tõ Cao gia mua ®i bİ löa chi m¾t ng­êi cña cïng triÒu ®×nh cã rÊt lín qua c¸t . triÒu ®×nh dÜ nhiªn sÏ kh«ng h¹i m×nh d©n chóng , nh­ vËy c¸i nµy nóp ë trong triÒu ®×nh ®İch thÕ lùc c­ t©m chi kh«ng thÓ dß ®­îc liÒn cã thÓ thÊy ra ®Çu mèi . cô thÓ lµ ng­êi nµo mua ®i t¹i h¹ kh«ng cã tra ®­îc , bÊt qu¸ cã ®iÒu nµy ®Çu mèi , tin t­ëng lÊy Ngò gia tay cña ®o¹n , ®Şnh cã thÓ tra ®­îc ®i ra . ng­¬i ®i mau , ®i mau # Cao thŞ ®· biÕt cã ng­êi ®ang ®iÒu tra chuyÖn nµy , trong thµnh gÇn nhÊt nhiÒu h¬n rÊt nhiÒu trang phôc kú dŞ ng­êi , nÕu kh«ng thËt sím ra khái thµnh , sî r»ng gÆp nguy hiÓm . tèi h«m nay cöa thµnh ®ãng tr­íc ng­¬i nhÊt ®Şnh ph¶i rêi ®i # gÆp ®­îc Ngò gia , hÕt th¶y liÒn an toµn . ", 
" kÕt thóc ®èi tho¹i /#taskProcess_002_12:doTaskEntity()", 
} 
if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  cïng trµ b¸c sÜ ®İch ®èi tho¹i kÕt thóc , söa ®æi nhiÖm vô tiÕn tr×nh v× #5 
taskProcess_002_12 = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 5); 
Msg2Player("Ng­¬i ®· hoµn thµnh trµ b¸c sÜ ®İch nhiÖm vô , ng­¬i cã thÓ trë vÒ ®i gÆp long n¨m #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayMasterAward(2, 4); 

return 1; 
end, 
}); 
