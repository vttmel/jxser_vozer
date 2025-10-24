TEMP_QID = 122; 
TEMP_QCHOOSE = 123; 
GOLD_TIMESTEMP = 4001; 
GOLD_SERIES = 4000; 
GOLD_COUNT = 4002; 
FIRSTDAY = 816; 

GLBID_GOLD_LOTTERY_COUNT = 6; -- script viet hoa By tuanglit  toµn côc thay ®æi l­îng ID of phôc vô khÝ th­îng ®· ph¸t ra hoµng kim vÐ sè ®Õm 
-- script viet hoa By tuanglit  b¶y ®¹i thµnh thÞ b¶n ®å 
-- script viet hoa By tuanglit  1- ph­îng t­êng , 2- thµnh ®« , 3- §¹i Lý , 4- biÖn kinh , 5- t­¬ng d­¬ng , 6- D­¬ng Ch©u , 7- tr­íc khi an 
arynCityMapID = { 1, 11, 162, 37, 78, 80, 176 } 
nMaxGoldLottery = 100000; -- script viet hoa By tuanglit  mçi thai GameServer th­îng nh­ng ph¸t ra nhiÒu nhÊt hoµng kim vÐ sè ®Õm 

function onPayTicket() 
if (IsCharged() ~= 1 ) then 
Say("ThËt xin lçi , ngµi ch­a sung trÞ gi¸ , cho nªn kh«ng c¸ch nµo tham gia nh· ®iÓn thÞnh héi vÐ sè ho¹t ®éng . ", 0) 
return 
end 
nCount = GetPayTicketCount(); 

if (nCount == 0 ) then 
Say("ThËt xin lçi , b©y giê kh«ng tíi ®æi vÐ sè ®Ých thêi gian , xin/mêi ngµi ë B¾c Kinh thêi gian s¸ng sím 9 ®iÓm ®Õn ngµy ®ã buæi tèi 22 ®iÓm tíi ®æi ®i , c¸m ¬n . ", 0) 
return 
end; 

Tab = {}; 

for i = 1, nCount + 1 do 
Tab[i] = GetQuestionTip(GetPayTicket(i)).."/OPAsk"; 
end; 

Tab[nCount + 1] = "²»¶Ò½±ÁË/Cancel";
Say("ÄúÒª¶ÒÄÇÖÖÄÄÖÖ½±?", nCount + 1, Tab)
end; 

function OPAsk(nSel) 
	nQuestion, nBonus = GetPayTicket(nSel + 1);
if (nQuestion > 0 ) then 
nAnswer = GetQAnswer(nQuestion) 
if (nAnswer > 0) then 
if (nQuestion ~= 1000) then 
str = format("C¹nh ®o¸n :%s , kÕt qu¶ :%s , tiÒn th­ëng :%d . ngµi muèn ®æi t­ëng sao ?", GetQuestion(nQuestion), GetChoose(nQuestion, nAnswer), nBonus ) 
else 
lGold = GetByte(nAnswer, 1); 
lYing = GetByte(nAnswer,2); 
lTong = GetByte(nAnswer,3); 
str = format("C¹nh ®o¸n :%s, kÕt qu¶ : kim bµi %d khèi # ng©n bµi %d khèi # ®ång bµi %d khèi , tiÒn th­ëng :%d . ng­¬i muèn ®æi t­ëng sao ?", GetQuestion(nQuestionI), lGold, lYing, lTong,nBonus) 
end 
Say(str, 2,"§æi t­ëng /OPOnPayFor","Kh«ng ®æi t­ëng /Cancel"); 
SetTaskTemp(TEMP_QID, nQuestion) 
end 
end 
end; 


function OPOnPayFor() 
nQuestion = GetTaskTemp(TEMP_QID) 
nTotal, nRight, nBonus = CheckTicket(75, nQuestion); 

if (nTotal == 0) then 
Say("ThËt xin lçi , ngµi mua vÐ sè kh«ng cã ®¸p ®èi víi , ®ãn thªm n÷a lÖ , kh«ng muèn bu«ng tha cho nga , cã lÏ ®¹i t­ëng ®ang ë chê ngµi , hoµng kim trang bÞ ®©y #", 0) 
else 
nTotalBonus = nBonus * nRight 
local str = ""; 
if (nQuestion ~= 1000) then 
str = format("Ngµi tæng céng cã %d tê c¸i nµy lo¹i t­ëng phiÕu , trong ®ã trung t­ëng ®Ých cã %d tê , lÊy ®­îc tæng tiÒn th­ëng v× %d, chóc mõng ngµi ! nÕu nh­ ngµi trung t­ëng , chóng ta cßn nghÜ tÆng cho ngµi hoµng kim vÐ sè , b»ng nµy vÐ sè cã thÓ sÏ ®¹t ®­îc mét mãn hoµng kim trang bÞ nga . hoµng kim vÐ sè ®Ých khai t­ëng nhËt kú ®ang ë tèi nay ®Ých 22 ®iÓm 30 ®Õn 24 ®iÓm . ", nTotal,nRight, nTotalBonus); 
else 
str = format("Ngµi tæng céng cã %d tê c¸i nµy lo¹i t­ëng phiÕu , trong ®ã trung t­ëng ®Ých cã %d tê , lÊy ®­îc tæng tiÒn th­ëng v× %d, chóc mõng ngµi ! nÕu nh­ ngµi trung t­ëng , chóng ta cßn nghÜ tÆng cho ngµi hoµng kim vÐ sè , b»ng nµy vÐ sè cã thÓ sÏ ®¹t ®­îc mét mãn lÇn nµy nh· ®iÓn thÞnh héi ®Ých hoµng kim trang bÞ ®¹i t­ëng ## khai t­ëng nhËt kú ë 9 th¸ng 1 ngµy #9 th¸ng 2 ngµy v·n 22 ®iÓm 30 ®Õn 24 ®iÓm . ", nTotal,nRight, nTotalBonus); 
end 

local logstr = format("[Lottery] Acc:%s Role:%s Q:%d QSum:%d QWin:%d Bonus:%d", GetAccount(), GetName(), nQuestion, nTotal, nRight, nTotalBonus ) 
WriteLog(logstr); 
Earn(nTotalBonus); 
Say(str,0) 

for i = 1, nRight do 
item = AddItem(6,1,76, 1,0,0); 
LotteryId = getGoldLotteryID(); 
LotteryTime = getCurrTime(); 
SetSpecItemParam(item , 1, LotteryId) 
SetSpecItemParam(item , 2, LotteryTime) 
P3 = SetByte(GetByte(LotteryId, 3), 2, GetByte(LotteryId,4)) 
P4 = SetByte(GetByte(LotteryTime, 3), 2, GetByte(LotteryTime,4)) 
SetSpecItemParam(item , 3, P3) 
SetSpecItemParam(item , 4, P4) 
SetSpecItemParam(item, 5, nQuestion) 
if (nQuestion == 1000) then 
SetSpecItemParam(item, 5, 1000) 
UpdateSDBRecord("GoldLottery0901", LotteryId, LotteryTime, 0) -- script viet hoa By tuanglit  hoµng kim ®¹i t­ëng ghi chÐp v× 9 th¸ng 1 ngµy ®Ých vÐ sè 
else 
UpdateSDBRecord("GoldLottery"..date("%m%d"),LotteryId, LotteryTime, 0) 
end 
SyncItem(item) 
end; 
end; 
end; 

function Cancel() 

end; 

function onPayforGoldLottery() 
local PayTab={}; 
if (tonumber(date("%m%d")) > 831 ) then 
Say("ThËt xin lçi , lÇn nµy nh· ®iÓn thÞnh héi ®Ých b×nh th­êng hoµng kim vÐ sè ®Ých ®æi t­ëng ho¹t ®éng ®· kÕt thóc . ",0) 
return 
end 

	nIntervalDay = tonumber(date("%m%d")) - FIRSTDAY + 1;

if (nIntervalDay <=0) then 
return 
end 

for i = 1, nIntervalDay do 
		nMonth = floor((FIRSTDAY + nIntervalDay - i) / 100)
		nDay = mod(FIRSTDAY + nIntervalDay - i , 100)
PayTab[i] = nMonth.." th¸ng "..nDay.." ngµy hoµng kim vÐ sè /doPayforGold" 
end; 
	PayTab[nIntervalDay + 1] = "²»ÓÃ¶Ò½±ÁË/Cancel";
Say("Ng­¬i muèn ®æi mét ngµy kia ®Ých hoµng kim vÐ sè ®¹i t­ëng ? ", getn(PayTab), PayTab); 
-- script viet hoa By tuanglit  Say("Vèn ngµy trung t­ëng ®Ých hoµng kim vÐ sè sè v× ["..GetGlbValue(GOLD_TIMESTEMP).."-"..GetGlbValue(GOLD_SERIES).."], lÊy ®­îc t­ëng ng­êi cã thÓ ph¶i ®Õn ngÉu nhiªn lÊy ®­îc hoµng kim trang bÞ mét mãn # ng­¬i muèn ®æi t­ëng sao ? ", 2,"Tèt /doPayforGold","Kh«ng cÇn /Cancel") 
end 

function doPayforGold(nDay) 

ldate = tonumber(date("%m%d")) 

if (ldate > 831) then 
return 
end 

	nIntervalDay = ldate - FIRSTDAY + 1;

if (nIntervalDay <= 0) then 
return 
end 

nSel = nIntervalDay - nDay - 1; 
	dayGOLD_SERIES = GOLD_SERIES + nSel * 2;
	dayGOLD_TIMESTEMP = GOLD_TIMESTEMP + nSel * 2;

if ( GetGlbValue(dayGOLD_TIMESTEMP) == 0 ) then 
Say("ThËt xin lçi , tr­íc m¾t nªn nhËt kú ®Ých hoµng kim vÐ sè cã thÓ ch­a l¸i/më ra , xin sau n÷a ®æi t­ëng , c¸m ¬n . ", 0) 
return 
end; 

nItem = FindSpecItemParam2(1, 76, GetGlbValue(dayGOLD_SERIES), GetGlbValue(dayGOLD_TIMESTEMP)); 
if (nItem > 0) then 
if (RemoveItemByIndex(nItem) > 0) then 
Say("Chóc mõng ng­¬i , ng­¬i hoµng kim vÐ sè trung t­ëng liÔu , ®¹t ®­îc hoµng kim trang bÞ mét mãn #", 0) 

			nMonth = floor((FIRSTDAY + nSel)/100);
			nDay = mod( (FIRSTDAY + nSel) , 100)

AddGoldItem(0, random(159,167)) 
Msg2Player("Chóc mõng ng­¬i ®¹t ®­îc hoµng kim trang bÞ mét mãn #") 
			WriteLog(GetAccount()..","..GetName().."ÖÐÁË"..FIRSTDAY+nSel.."»Æ½ð²ÊÆ±´ó½±£¬»ñµÃ»Æ½ð×°±¸Ò»¼þ¡£²ÊÆ±ID"..GetGlbValue(dayGOLD_TIMESTEMP).."-".. GetGlbValue(dayGOLD_SERIES))
msg = " chóc mõng : nhµ ch¬i "..GetName().." trung liÔu "..nMonth.." th¸ng "..nDay.." ngµy ®Ých hoµng kim vÐ sè ®¹i t­ëng , ®¹t ®­îc hoµng kim trang bÞ mét mãn #"; 
AddGlobalCountNews(msg, 1); 
end 
else 
Say("ThËt xin lçi , trung t­ëng sè v× "..GetGlbValue(dayGOLD_TIMESTEMP).."-"..GetGlbValue(dayGOLD_SERIES).." , trªn ng­êi ng­¬i khai t­ëng ®Ých hoµng kim vÐ sè trung kh«ng cã thÊt xøng ®Ých trung t­ëng d·y sè . ", 0) 
end 
end; 



function doPayforGreateGold() 

nIntervalDay = 901 - FIRSTDAY; 

	dayGOLD_SERIES = GOLD_SERIES + nIntervalDay * 2;
	dayGOLD_TIMESTEMP = GOLD_TIMESTEMP + nIntervalDay * 2;

if ( GetGlbValue(dayGOLD_TIMESTEMP) == 0 ) then 
Say("ThËt xin lçi , tr­íc m¾t nh· ®iÓn thÞnh héi c¹nh ®o¸n tróng n­íc t­ëng bµi ®Õm ®Ých hoµng kim vÐ sè trung t­ëng sè cã thÓ ch­a l¸i/më ra , xin sau n÷a ®æi t­ëng , c¸m ¬n . ", 0) 
return 
end; 


nItem = FindSpecItemParam2(1, 76, GetGlbValue(dayGOLD_SERIES), GetGlbValue(dayGOLD_TIMESTEMP)); 
if (nItem > 0) then 
if (RemoveItemByIndex(nItem) > 0) then 
Say("NhiÖt liÖt ®Þa chóc mõng ngµi , ngµi ®Ých hoµng kim vÐ sè trung t­ëng liÔu , trung liÔu ¸o vËn hÖ liÖt ho¹t ®éng ®Ých lín nhÊt t­ëng # ®¹t ®­îc nh· ®iÓn chi hån # B¾c Kinh chi méng cao cÊp hoµng kim chiÕc nhÉn mét ®«i #", 0) 
AddGoldItem(0, 141) 
AddGoldItem(0, 142) 
Msg2Player("Ngµi ®¹t ®­îc nh· ®iÓn chi hån # B¾c Kinh chi méng mét ®«i hoµng kim chiÕc nhÉn #") 
WriteLog(GetAccount()..","..GetName().." trung liÔu ¸o vËn Trung quèc ®éi t­ëng bµi ®Õm ®Ých hoµng kim vÐ sè ®¹i t­ëng , ®¹t ®­îc ¸o vËn chiÕc nhÉn trang bÞ mét bé . vÐ sè ID"..GetGlbValue(dayGOLD_TIMESTEMP).."-".. GetGlbValue(dayGOLD_SERIES)) 
msg = " nhiÖt liÖt chóc mõng : nhµ ch¬i "..GetName().." trung liÔu nh· ®iÓn thÞnh héi Trung quèc ®éi t­ëng bµi ®Õm c¹nh ®o¸n ®Ých hoµng kim ®¹i t­ëng , ®¹t ®­îc nh· ®iÓn chi hån # B¾c Kinh chi méng cao cÊp hoµng kim chiÕc nhÉn mét ®«i #"; 
AddGlobalNews(msg); 
end 
else 
Say("ThËt xin lçi , trung t­ëng sè v× "..GetGlbValue(dayGOLD_TIMESTEMP).."-"..GetGlbValue(dayGOLD_SERIES).." , trªn ng­êi ng­¬i khai t­ëng ®Ých hoµng kim vÐ sè trung kh«ng cã thÊt xøng ®Ých trung t­ëng d·y sè . ", 0) 
end 
end; 



function getGoldLotteryID() 
local nMapCount = getn( arynCityMapID ); 
	local nCurrServerID = nMapCount + 1;
for i = 1, nMapCount do 
if( SubWorldID2Idx( arynCityMapID[i] ) >= 0 ) then -- script viet hoa By tuanglit  lîi dông b¶n ®å cã hay kh«ng tån t¹i ®Ó ph¸n ®o¸n tr­íc mÆt lµ ë ®©u mét m¸y phôc vô khÝ th­îng 
nCurrServerID = i; 
break; 
end 
end 
local nLotteryCount = GetGlbValue( GLBID_GOLD_LOTTERY_COUNT ); 
	SetGlbValue( GLBID_GOLD_LOTTERY_COUNT, nLotteryCount + 1 );
	return nMaxGoldLottery * ( nCurrServerID - 1 ) + nLotteryCount;
end 

function getCurrTime() 
return tonumber( date( "%m%d%H%M%S" ) ); 
end
