
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online t×nh nghÜa giang hå ®ång b¹n kŞch t×nh ch©n vèn thËt thÓ xö lı v¨n kiÖn - ch©u b¸u th­¬ng nh©n - cao cÊp vâ sÜ 
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

-- script viet hoa By http://tranhba.com  c¸c cÊp bËc ®ång b¹n kŞch t×nh nhiÖm vô thËt thÓ xö lı v¨n kiÖn 
Include ("\\script\\task\\partner\\master\\partner_master_main_03.lua");

function OnDeath() 

-- script viet hoa By http://tranhba.com  tr­íc mÆt ®İch sè l­îng -1 
SetGlbValue(GLBID_MASTER_KILLER_NUM, GetGlbValue(GLBID_MASTER_KILLER_NUM) - 1); 

DoTeamProcess(funDeath); 

end; 


function funDeath() 
-- script viet hoa By http://tranhba.com  kŞch t×nh thiªn 
if taskProcess_003_Kill_04:doTaskEntity(1)~=0 then return end; 

-- script viet hoa By http://tranhba.com  tu luyÖn thiªn 
if rewindProcess_003_Kill_04:doTaskEntity(1)~=0 then return end; 
end;
