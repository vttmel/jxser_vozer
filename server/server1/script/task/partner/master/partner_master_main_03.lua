
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online t×nh nghÜa giang hå ®ång b¹n kŞch t×nh ch©n vèn thËt thÓ xö lı v¨n kiÖn - ch©u b¸u th­¬ng nh©n 
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

-- script viet hoa By http://tranhba.com  tu luyÖn thiªn ®Çu v¨n kiÖn 
Include ("\\script\\task\\partner\\rewind\\partner_reward_main_03.lua");

PARID_MASTER_KILLER_01 = 20; -- script viet hoa By http://tranhba.com  nhÊt phÈm ®­êng th­¬ng binh 
PARID_MASTER_KILLER_02 = 21; -- script viet hoa By http://tranhba.com  nhÊt phÈm ®­êng cung binh 
PARID_MASTER_KILLER_03 = 22; -- script viet hoa By http://tranhba.com  nhÊt phÈm ®­êng ®eo ®ao t­íng l·nh 
PARID_MASTER_KILLER_04 = 23; -- script viet hoa By http://tranhba.com  vâ sÜ 

GLBID_MASTER_KILLER_NUM = 830; -- script viet hoa By http://tranhba.com  phôc vô khİ toµn côc thay ®æi l­îng , ghi chĞp nhÊt phÈm ®­êng Thèng so¸i ®İch cµ ra sè l­îng 


taskProcess_003_Main = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SelectDescribe({ 
"<npc> gÇn nhÊt c¸c n¬i chim bå c©u truyÒn tíi tin tøc xÊu c¸i nµy tiÕp theo c¸i kia , ®­îc kh«ng phiÒn lßng , bÊt qu¸ cuèi cïng cã c¸ tin tøc lµm ng­êi ta phÊn chÊn . ph¸i ®i ®iÒu tra thŞ lang thi thÓ ®İch ngç lµm ®· trë l¹i , h¾n mang vÒ tr©n quı tin tøc . tõ thŞ lang bªn trong c¸nh tay tr¸i kh¶i ®i ra mét viªn v©y quanh ph¶i v« cïng bİ Èn ®İch b¶o th¹ch , mÆc dï trªn t¶ng ®¸ kh«ng cã dÊu hiÖu , nh­ng nh­ vËy kú dŞ th¹ch tµi , chØ cã tr­íc khi an ®¹i ch©u b¸u th­¬ng nh©n ®inh lîi ®İch b¶o khİ trai míi cã thÓ t×m ®­îc . thŞ lang mét kú nam tö , lµm sao sÏ dïng lo¹i nµy qu¸i dŞ thñ ®o¹n tµng b¶o th¹ch ? trung gian nhÊt ®Şnh cã c¸i g× bİ mËt . nÕu nh­ t×m ®­îc ®inh lîi , cã lÏ cã thÓ tra ra chót ®Çu mèi . ", 
" kŞch t×nh thiªn [ nh»m vµo ch­a tõng lµm nªn nhiÖm vô ®ång b¹n ]/#taskProcess_003_01:doTaskEntity()", 
" tu luyÖn thiªn [ nh»m vµo ®· ®· lµm nªn nhiÖm vô ®ång b¹n ]/#rewindProcess_003_01:doTaskEntity()", 
" ta ®Òu kh«ng muèn nhËn , tr× chót trë l¹i ®i /OnTaskExit" 
}); 
return 1; 
end, 
}); 



-- script viet hoa By http://tranhba.com  b¾t ®Çu nhiÖm vô lóc ®İch ®èi tho¹i 
taskProcess_003_01 = inherit(CProcess, { 

checkCondition = function(self) 
local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®İch index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 

-- script viet hoa By http://tranhba.com  kiÓm tra nhµ ch¬i cïng ®ång b¹n ®İch cÊp bËc 
if GetLevel()<90 or PARTNER_GetLevel(partnerindex)<30 then return 4; end; 

if GetMasterTaskState(PARID_TASK_MASTER_003)==nil then -- script viet hoa By http://tranhba.com  kh«ng cã mang ®ång b¹n 
return 0; 
elseif GetMasterTaskState(PARID_TASK_MASTER_003)==0 then -- script viet hoa By http://tranhba.com  lÇn ®Çu tiªn b¾t ®Çu lµm 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_003)>=1 and GetMasterTaskState(PARID_TASK_MASTER_003)<5 then -- script viet hoa By http://tranhba.com  ®· b¾t ®Çu lµm 
return 2; 
elseif GetMasterTaskState(PARID_TASK_MASTER_003)==5 then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 
return 3; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> ng­¬i mang theo ngäc th¹ch ®i tr­íc khi an t×m b¶o khİ trai ®inh lîi , nÕu nh­ h¾n kh«ng cã ë ®©y , t×m ®Ö ®Ö cña h¾n ®inh lçi còng gièng nh­ nhau . ", 
" tiÕp nhËn nhiÖm vô /#taskProcess_003_Accept:doTaskEntity()", 
" ta suy nghÜ thªm mét chót /OnTaskExit", 
}); 
return 1; 
elseif nCondition==2 then 
SelectDescribe({"<npc> ng­¬i mang theo ngäc th¹ch ®i tr­íc khi an t×m b¶o khİ trai ®inh lîi , nÕu nh­ h¾n kh«ng cã ë ®©y , t×m ®Ö ®Ö cña h¾n ®inh lçi còng gièng nh­ nhau . ", 
" hoµn thµnh nhiÖm vô /#taskProcess_003_Finish:doTaskEntity()", 
" ta cßn ch­a hoµn thµnh /OnTaskExit", 
}); 
return 1; 
elseif nCondition==3 then 
SelectDescribe({"<npc> ng­¬i ë ®©y lÇn nhiÖm vô trung biÓu hiÖn rÊt tèt , khæ cùc ng­¬i #", 
" kÕt thóc ®èi tho¹i /OnTaskExit", 
}); 
return 1; 
elseif nCondition==4 then 
SelectDescribe({"<npc> nhiÖm vô lÇn nµy cÇn cÊp bËc cña ng­¬i ë {90 cÊp } trë lªn , h¬n n÷a ®ång b¹n cña ng­¬i cÊp bËc muèn ë {30 cÊp } trë lªn #", 
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

-- script viet hoa By http://tranhba.com  tiÕp nhËn nhiÖm vô , nhiÖm vô tiÕn tr×nh v× 1 
taskProcess_003_Accept = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_003, 1); 
Msg2Player("Ng­¬i nhËn ®­îc ch©u b¸u th­¬ng nh©n ®ång b¹n kŞch t×nh nhiÖm vô #"); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayMasterAward(3, 1); 

return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  hoµn thµnh nhiÖm vô , ph¸t d­ t­ëng th­ëng , nhiÖm vô tiÕn tr×nh v× 5 
taskProcess_003_Finish = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_003)==4 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

if nCondition==1 then 
SelectDescribe({"<npc> õ/d¹ , b©y giê ®em chuyÖn giao cho trong tay ng­¬i ta lµ cµng ngµy cµng yªn t©m ®i . gÇn ®©y ta nh×n/xem ngoµi cöa sæ l¸ rông , c¶m thÊy thêi gian tr«i qua rÊt nhanh . İt n¨m nh­ vËy ®İch bİnh s¸t , tùa nh­ tr¶i qua mét cuéc b·o t¸p , n÷a quay ®Çu l¹i , c¸i g× ®Òu lµ v« İch ®İch . ng­êi tuæi trÎ , thÕ giíi chung quy sÏ lµ c¸c ng­¬i , cè g¾ng lªn ®i . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
SetMasterTaskState(PARID_TASK_MASTER_003, 5); 
-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayMasterAward(3, 8); 
return 1; 
else 
SelectDescribe({"<npc> ta giao cho ng­¬i nhiÖm vô ng­¬i cßn ch­a hoµn thµnh nga , cè g¾ng lªn ®i . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
return 0; 
end; 
end, 

}); 


-- script viet hoa By http://tranhba.com  cïng ®inh lçi ®İch ®èi tho¹i 
taskProcess_003_02 = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_003)==1 then 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_003)==2 then 
return 2; 
else 
return 0; 
end 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> viªn nµy ngäc ch©u , viªn nµy ngäc ch©u t¹i sao sÏ ë trong tay cña ng­¬i ? nga , lµ Giang Nam nghÜa qu©n thñ lÜnh long n¨m ®İch bé h¹ sao ? lo¹i ngäc nµy chÊt ®İch h¹t ch©u tÖ sè h¬n ba m­¬i n¨m qua tæng céng b¸n ra bÊt qu¸ m­êi viªn . tµi liÖu ®Òu lµ tõ huynh tr­ëng ta ®inh lîi tù Thiªn Tróc n­íc dÉn vµo , tr©n quı v« cïng . t×nh huèng cô thÓ ta còng kh«ng râ rµng , ng­¬i nãi chÕt ®i thŞ lang c¸nh tay cña trong t­¬ng cã mét viªn ? ta kh«ng biÕt , thËt kh«ng biÕt . ph­¬ng diÖn nµy chuyÖn cña t×nh , huynh tr­ëng tõ kh«ng ®Ó cho ta nhóng tay . vèn lµ huynh tr­ëng t©y ®­îc mét n¨m cã thõa , coi lµ lóc quı nªn trë vÒ tíi . nh­ng mÊy ngµy tr­íc ®©y tö hµ lÜnh th­îng tin tøc truyÒn ®Õn , huynh tr­ëng ®Ó cho ng­êi ta cho trãi l¹i thŞt phiÕu # tö hµ lÜnh lóc nµo th¸i b×nh qu¸ ? triÒu ®×nh ®¹i qu©n còng t¶o bÊt b×nh ®İch ngoan tÆc , ®èi ph­¬ng më miÖng chİnh lµ ba chôc triÖu l­îng b¹c , c¸i nµy nh­ng t¹i sao lµ h¶o , nh­ng t¹i sao lµ h¶o a . hiÖp sÜ nguyÖn ı gióp §inh mç chuyÖn nµy sao ? nÕu huynh tr­ëng cã thÓ b×nh an trë l¹i , kia ngäc ch©u ®İch lai long khø m¹ch tù nhiªn râ rµng . ", 
" ®óng vËy , ta nguyÖn ı trî gióp ng­¬i ®i tö hµ lÜnh cøu ng­êi /#taskProcess_003_Select01:doTaskEntity()", 
" c¸i nµy ®¬n gi¶n , ta gióp ng­¬i ra kia ba chôc triÖu hai ®İch tiÒn chuéc ®i /#taskProcess_003_Select02:doTaskEntity()", 
" h·y ®Ó cho ta suy nghÜ l¹i mét chót /OnTaskExit" 
}); 
return 1; 
elseif nCondition==2 then 
taskProcess_003_SendMan:doTaskEntity(); 
return 1; 
end; 
return 0; 
end, 


}); 


-- script viet hoa By http://tranhba.com  lùa chän thø nhÊt chän h¹ng , ®em nhiÖm vô tiÕn triÓn thiÕt thµnh 2 
taskProcess_003_Select01 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SelectDescribe({"<npc> ®Õn tö hµ lÜnh ng­¬i İt nhÊt ph¶i giÕt chÕt { n¨m m­¬i nhÊt phÈm ®­êng ®İch th­¬ng binh } , { ba m­¬i nhÊt phÈm ®­êng cung binh } , { ba vŞ nhÊt phÈm ®­êng ®İch ®eo ®ao t­íng l·nh } , míi cã thÓ tiÕn vµo ®Õn cuèi cïng ®İch { viªn vò chi trËn } . chç ®ã cÊt giÊu bèn tªn vâ nghÖ tuyÖt lu©n ®İch cao thñ , ng­¬i cÇn t×m ra bän hä tíi , h¬n n÷a { giÕt chÕt İt nhÊt hai } , dùa vµo bän hä thñ cÊp , míi cã thÓ mang huynh tr­ëng ta trèn ra ®­îc . huynh tr­ëng cña ta bŞ bän hä nhèt ë viªn vò chi trËn chç s©u mét c¸i nhµ gç nhá trong . ", 
" ta biÕt /#taskProcess_003_SendMan:doTaskEntity()" 
}); 
SetMasterTaskState(PARID_TASK_MASTER_003, 2); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayMasterAward(3, 2); 

return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  truyÒn tèng ®i nhiÖm vô b¶n ®å ®İch qu¸ tr×nh 
taskProcess_003_SendMan = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SelectDescribe({"<npc> ng­¬i b©y giê muèn ®i tö hµ lÜnh sao ? tr­íc khi ®i cÇn ph¶i nhiÒu chuÈn bŞ chót b¶o vÖ t¸nh m¹ng ®İch ®å nga #", 
" ®óng vËy , xin ®­a ta qu¸ khø ®i /#taskProcess_003_Send:doTaskEntity()", 
" ta n÷a chuÈn bŞ mét chót /OnTaskExit", 
}); 
return 1; 
end, 
}); 


taskProcess_003_Send = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
NewWorld(515,1639,3162); 
SetFightState(1); 
return 1; 
end, 
}); 

-- script viet hoa By http://tranhba.com  lùa chän thø hai chän h¹ng , ®ãng 3000W l­îng b¹c 
taskProcess_003_Select02 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SelectDescribe({"<npc> thËt muèn gióp chóng ta ra ba chôc triÖu l­îng b¹c sao ? nÕu nh­ bän phØ ®å nhËn ®­îc lín nh­ vËy bót tiÒn , cho c¸ ngµy lµm ®¶m bän hä còng kh«ng d¸m n÷a cÊt giÊu huynh tr­ëng ta liÔu . ", 
" ®óng vËy , ®iÓm nµy tiÓu ı tø ng­¬i liÒn lÊy ®i ®i /#taskProcess_003_Select02_01:doTaskEntity()", 
" ta suy nghÜ mét chót n÷a /OnTaskExit" 
}); 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  lùa chän giao tiÒn sau kiÓm tra cã hay kh«ng mang ®Çy ®ñ tiÒn , nÕu nh­ thµnh c«ng khÊu trõ lêi cña trùc tiÕp ®em nhiÖm vô tiÕn tr×nh thiÕt v× 4 
taskProcess_003_Select02_01 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
if Pay(30000000)==1 then 
SelectDescribe({"<npc> hiÖp sÜ a hiÖp sÜ a , c¸m ¬n ng­¬i , ®a t¹ . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
SetMasterTaskState(PARID_TASK_MASTER_003, 4); 
else 
SelectDescribe({"<npc> hiÖp sÜ a , nÕu nh­ ng­¬i nhÊt thêi håi l©u cÇm kh«ng ra ba chôc triÖu l­îng b¹c lêi cña vËy hay lµ kh«ng cÇn lµm phiÒn ng­¬i , ta cßn lµ kh¸c t×m ng­êi kh¸c ®i #", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
end; 
return 1; 
end; 
}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt nhÊt phÈm ®­êng th­¬ng binh lóc ®İch xö lı 
taskProcess_003_Kill_01 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_MASTER_KILLER_01); 

if GetMasterTaskState(PARID_TASK_MASTER_003)==2 and nNum<50 then 

			Msg2Player("ÄãÒÑ¾­É±ËÀÁËÒ»¸öÒ»Æ·ÌÃÇ¹±ø£¬Äã×Ü¹²É±ËÀÁË"..(nNum+1).."¸ö£¡");
			SetPartnerTask(PARID_MASTER_KILLER_01, nNum+1);

			if nNum+1>= 50 then
Msg2Player("Ng­¬i ®· giÕt chÕt nhiÒu ®ñ ®İch nhÊt phÈm ®­êng th­¬ng binh #"); 
end; 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
-- script viet hoa By http://tranhba.com  PayMasterAward(3, 3); 

AddOwnExp(4000); 
AddPartnerExp(5000); 

return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  giÕt chÕt nhÊt phÈm ®­êng cung binh lóc ®İch xö lı 
taskProcess_003_Kill_02 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_MASTER_KILLER_02); 

if GetMasterTaskState(PARID_TASK_MASTER_003)==2 and nNum<30 then 

			Msg2Player("ÄãÒÑ¾­É±ËÀÁËÒ»¸öÒ»Æ·ÌÃ¹­±ø£¬Äã×Ü¹²É±ËÀÁË"..(nNum+1).."¸ö£¡");
			SetPartnerTask(PARID_MASTER_KILLER_02, nNum+1);

			if nNum+1>= 30 then
Msg2Player("Ng­¬i ®· giÕt chÕt nhiÒu ®ñ ®İch nhÊt phÈm ®­êng cung binh #"); 
end; 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
-- script viet hoa By http://tranhba.com  PayMasterAward(3, 4); 

AddOwnExp(4000); 
AddPartnerExp(5000); 

return 1; 
end; 
return 0; 
end, 

}); 



-- script viet hoa By http://tranhba.com  giÕt chÕt nhÊt phÈm ®­êng ®eo ®ao t­íng l·nh lóc ®İch xö lı 
taskProcess_003_Kill_03 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_MASTER_KILLER_03); 

if GetMasterTaskState(PARID_TASK_MASTER_003)==2 and nNum<3 then 

			Msg2Player("ÄãÒÑ¾­É±ËÀÁËÒ»¸öÒ»Æ·ÌÃ´øµ¶½«Áì£¬Äã×Ü¹²É±ËÀÁË"..(nNum+1).."¸ö£¡");
			SetPartnerTask(PARID_MASTER_KILLER_03, nNum+1);

			if nNum+1>= 3 then
Msg2Player("Ng­¬i ®· giÕt chÕt nhiÒu ®ñ ®İch nhÊt phÈm ®­êng ®eo ®ao t­íng l·nh #"); 
end; 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
-- script viet hoa By http://tranhba.com  PayMasterAward(3, 5); 

AddOwnExp(20000); 
AddPartnerExp(50000); 

return 1; 
end; 
return 0; 
end, 

}); 



-- script viet hoa By http://tranhba.com  giÕt chÕt cao cÊp vâ sÜ ®İch xö lı 
taskProcess_003_Kill_04 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_MASTER_KILLER_04); 

if GetMasterTaskState(PARID_TASK_MASTER_003)==2 and nNum<2 then 

			Msg2Player("ÄãÒÑ¾­É±ËÀÁËÒ»¸öÒ»Æ·ÌÃÍ³Ë§£¬Äã×Ü¹²É±ËÀÁË"..(nNum+1).."¸ö£¡");
			SetPartnerTask(PARID_MASTER_KILLER_04, nNum+1);

			if nNum+1>= 2 then
Msg2Player("Ng­¬i ®· giÕt chÕt nhiÒu ®ñ ®İch nhÊt phÈm ®­êng Thèng so¸i #"); 
end; 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
-- script viet hoa By http://tranhba.com  PayMasterAward(3, 6); 

AddOwnExp(40000); 
AddPartnerExp(80000); 

return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  ®iÓm kİch cét ®¸ ®İch qu¸ tr×nh 
taskProcess_003_Call = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_003)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

local killzxboss ={ 
			{1078,95,515,1729,2845,1,"Ó°É·",1,"\\script\\task\\partner\\npc\\master_fight_03_004.lua","Ó°É·"},
			{1078,95,515,1729,2845,1,"·çÈĞ",1,"\\script\\task\\partner\\npc\\master_fight_03_004.lua","·çÈĞ"},
			{1078,95,515,1729,2845,1,"Ç¹Ñ»",1,"\\script\\task\\partner\\npc\\master_fight_03_004.lua","Ç¹Ñ»"},
			{1078,95,515,1729,2845,1,"º®ÒÂ",1,"\\script\\task\\partner\\npc\\master_fight_03_004.lua","º®ÒÂ"},
} 

if nCondition==1 then 

local i = random(1,4); 
local Tid = SubWorldID2Idx(killzxboss[i][3]); 

-- script viet hoa By http://tranhba.com  nÕu nh­ cµ ra ®İch nhÊt phÈm ®­êng Thèng so¸i lín h¬n 6 c¸ , lµ sÏ kh«ng n÷a chµ 
if GetGlbValue(GLBID_MASTER_KILLER_NUM)>=6 then return end; 

if (Tid >= 0 ) then 
TabValue4 = killzxboss[i][4] * 32; 
TabValue5 = killzxboss[i][5] * 32; 
local Partner_npcindex = AddNpc(killzxboss[i][1],killzxboss[i][2],Tid,TabValue4,TabValue5,killzxboss[i][6],killzxboss[i][7],killzxboss[i][8]); 
SetNpcScript(Partner_npcindex, killzxboss[i][9]); 

				SetGlbValue(GLBID_MASTER_KILLER_NUM, GetGlbValue(GLBID_MASTER_KILLER_NUM) + 1);

end 

Msg2Player("Tö hµ lÜnh doanh tr¹i trung ®İch Thèng so¸i "..killzxboss[i][10].." t­íng qu©n bŞ ng­¬i chäc giËn , h¾n ®· xuÊt hiÖn . "); 

return 1; 

end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  cïng ®inh lîi ®İch ®èi tho¹i 
taskProcess_003_03 = inherit(CProcess, { 

checkCondition = function(self) 

local nNum_1 = GetPartnerTask(PARID_MASTER_KILLER_01); 
local nNum_2 = GetPartnerTask(PARID_MASTER_KILLER_02); 
local nNum_3 = GetPartnerTask(PARID_MASTER_KILLER_03); 
local nNum_4 = GetPartnerTask(PARID_MASTER_KILLER_04); 

if GetMasterTaskState(PARID_TASK_MASTER_003)==2 and nNum_1>=50 and nNum_2>=30 and nNum_3>=3 and nNum_4>=2 then 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_003)==3 then 
return 2; 
else 
return 0; 
end 
end, 

taskEntity = function(self, nCondition) 

if nCondition==1 then 
SelectDescribe({"<npc> t¹ hiÖp sÜ ©n cøu m¹ng #", 
" rêi ®i tö hµ lÜnh /#taskProcess_003_03_Send:doTaskEntity()", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
SetMasterTaskState(PARID_TASK_MASTER_003, 3); 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_003)==3 then 
SelectDescribe({"<npc> t¹ hiÖp sÜ ©n cøu m¹ng #", 
" rêi ®i tö hµ lÜnh /#taskProcess_003_03_Send:doTaskEntity()", 
" kÕt thóc ®èi tho¹i /OnTaskExit"}); 
return 1; 
else 
-- script viet hoa By http://tranhba.com  SelectDescribe({"<npc> ai , nh÷ng thø nµy phØ ®å ®Òu lµ cïng hung cùc ¸c h¹ng ng­êi , hiÖp sÜ kh«ng cÇn lo ta , m×nh rêi ®i tr­íc ®i . ", 
-- script viet hoa By http://tranhba.com  " rêi ®i tö hµ lÜnh /#taskProcess_003_03_Send:doTaskEntity()", 
-- script viet hoa By http://tranhba.com  " kÕt thóc ®èi tho¹i /OnTaskExit"}); 
return 0; 
end; 
return 0; 

end, 

}); 


taskProcess_003_03_Send = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
NewWorld(176,1376,3333); 
SetFightState(0); 
end, 
}); 



-- script viet hoa By http://tranhba.com  lÇn n÷a trë l¹i cïng ®inh lçi ®İch ®èi tho¹i 
taskProcess_003_04 = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_003)==3 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> c¶m t¹ nãi nhiÒu h¬n n÷a còng v« İch . nghe ®Ö ®Ö nãi , ng­¬i cÇm mét viªn ngäc ch©u tíi gi¸m ®Şnh . ®å ng­¬i l­u l¹i , kh«ng bao l©u n÷a , §inh mç nhÊt ®Şnh gióp ng­¬i tra ®­îc long ®i m¹ch # ta lÊy t¸nh m¹ng lµm b¶o . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 
SetMasterTaskState(PARID_TASK_MASTER_003, 4); 

-- script viet hoa By http://tranhba.com  ph¸t ra t­ëng th­ëng 
PayMasterAward(3, 8); 

return 1; 
end; 
return 0; 
end, 

}); 
