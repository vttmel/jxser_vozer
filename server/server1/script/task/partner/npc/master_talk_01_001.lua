
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online t×nh nghÜa giang hå ®ång b¹n kŞch t×nh ch©n vèn thËt thÓ xö lı v¨n kiÖn - thŞ l·ng chÕt - tÜnh nh¹c s­ th¸i 
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
Include ("\\script\\task\\partner\\master\\partner_master_main_01.lua");

function main() 

-- script viet hoa By http://tranhba.com  ®ång b¹n chñ tuyÕn nhiÖm vô 
if taskProcess_001_02:doTaskEntity()~=0 then return end; 
if taskProcess_001_02_06:doTaskEntity()~=0 then return end; 
if taskProcess_001_02_08:doTaskEntity()~=0 then return end; 

-- script viet hoa By http://tranhba.com  ®ång b¹n chñ tuyÕn tu luyÖn thiªn 
if rewindProcess_001_02:doTaskEntity()~=0 then return end; 
if rewindProcess_001_02_06:doTaskEntity()~=0 then return end; 
if rewindProcess_001_02_08:doTaskEntity()~=0 then return end; 

SelectDescribe({"<npc> A di ®µ phËt , thÇn bİ kim tuyÕn xµ chît hµng tai , hy väng PhËt tæ phï hé c¸i nµy ngµn n¨m linh s¬n miÔn diÖt trõ mét cuéc h¹o kiÕp a . ", 
" kÕt thóc ®èi tho¹i /OnTaskExit" 
}); 

end;
