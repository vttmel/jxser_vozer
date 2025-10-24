
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online 9-1 kinh nghiÖm båi th­êng ho¹t ®éng ®Çu v¨n kiÖn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/10/30 PM 11:19 

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

Include("\\script\\event\\remedy\\remedy_head.lua"); 
Include("\\script\\task\\task_addplayerexp.lua"); 

_CRemedy = inherit(CRemedy, { 

payProcess = function(self) 
local nExp = GetLevel() * 10 * 20000; 
tl_addPlayerExp(nExp); 
Msg2Player("Ngµi lÊy ®­îc båi th­êng kinh nghiÖm #<color=yellow>"..nExp.."<color> ®iÓm #"); 
return 1; 
end, 

}); 

CMyRemedy = new(_CRemedy, 
0, 
61031, 
61106, 
2516, 
50, 
"9 khu 1 dõng ky duy tr× båi th­êng kinh nghiÖm "); 

function Remedy_20061031_Main() 
Say(" lÔ quan # ngµi mÊu chèt lÊy 10 nguyÖt ph©n 9 khu 1 dõng ky duy tr× båi th­êng kinh nghiÖm sao ? lÇn nµy kinh nghiÖm båi th­êng nhËn lÊy nhËt kú v× <color=yellow>2006 n¨m 10 th¸ng 31 ngµy tíi 2006 n¨m 11 th¸ng 06 ngµy , 50 cÊp trë lªn mçi ng­êi h¹n dÉn mét lÇn <color> . ", 
2, 
" ®óng vËy /Remedy_20061031_Get", 
" kh«ng ®­îc /onExit"); 
end; 


function Remedy_20061031_Get() 
local nResult = CMyRemedy:payForPlayer(); 
local szErrotMsg = ""; 

if nResult==1 then 
Say(" lÔ quan # ngµi ®· thµnh c«ng nhËn lÊy 9 khu 1 dõng ky duy tr× båi th­êng kinh nghiÖm , lo¹i nµy kinh nghiÖm lµ <color=yellow> th¨ng cÊp sau vÉn ®iÖp gia <color> ®İch , chóc ngµi h«m nay cã tèt vËn khİ . ", 0); 
return 1; 
else 
for i=1, getn(nResult) do 
szErrotMsg = szErrotMsg..nResult[i]; 
end; 

Say(" lÔ quan # thËt xin lçi , ngµi kh«ng c¸ch nµo nhËn lÊy båi th­êng kinh nghiÖm , nguyªn nh©n cã #<enter>"..szErrotMsg, 0); 
return 0; 
end; 
end; 


function onExit() 
Say(" lÔ quan # trªn thÕ giíi nµy thËt lµ mét d¹ng th­íc nu«i tr¨m d¹ng ng­êi a …… tÆng kh«ng ®İch kinh nghiÖm còng kh«ng muèn . ", 0); 
end;
