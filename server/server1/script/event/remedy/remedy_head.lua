
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online båi th­êng lo¹i ho¹t ®éng ®İch ®Çu v¨n kiÖn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/03/17 PM 15:42 

-- script viet hoa By http://tranhba.com  ph¸o b«ng . ®ªm h«m ®ã ®İch ph¸o b«ng . 
-- script viet hoa By http://tranhba.com  nµng nhí h¾n ë m­a to ng­êi cña bÇy trung , ®øng ë sau l­ng cña nµng «m ë nµng . 
-- script viet hoa By http://tranhba.com  h¾n Êm ¸p ®İch da , h¾n mïi vŞ ®¹o quen thuéc . ph¸o b«ng chiÕu s¸ng ¸nh m¾t cña nµng . 
-- script viet hoa By http://tranhba.com  hÕt th¶y kh«ng thÓ v·n håi …… 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  mÆt ngã ®èi t­îng lo¹i ®İch ñng hé 
Include ("\\script\\lib\\mem.lua"); 

CRemedy = { 

_nServer = 0, -- script viet hoa By http://tranhba.com  båi th­êng chØ ®Şnh khu dïng/uèng , nÕu v× 0 lµ tÊt c¶ khu dïng/uèng th«ng dông 
_nStartDate = 0, -- script viet hoa By http://tranhba.com  båi th­êng b¾t ®Çu ®İch nhËt kú 
_nEndDate = 0, -- script viet hoa By http://tranhba.com  båi th­êng kÕt thóc ®İch nhËt kú 
_nTaskID = 0, -- script viet hoa By http://tranhba.com  chiÕm ®o¹t dïng nhiÖm vô thay ®æi l­îng 
_nTimes = 0, -- script viet hoa By http://tranhba.com  mçi ng­êi cã thÓ nhËn lÊy ®İch nhiÒu nhÊt sè lÇn 
_nLevel = 0, -- script viet hoa By http://tranhba.com  nhËn lÊy ®İch cÊp bËc h¹n chÕ , 0 v× tïy ı cÊp bËc 
_szRemedyName = "", -- script viet hoa By http://tranhba.com  båi th­êng ho¹t ®éng ®İch tªn 

-- script viet hoa By http://tranhba.com  cÊu t¹o hµm sè , khu dïng/uèng , b¾t ®Çu nhËt kú , kÕt thóc nhËt kú , chiÕm ®o¹t dïng nhiÖm vô thay ®æi l­îng , båi th­êng ho¹t ®éng ®İch tªn # nh­ng v× v« İch # 
__new = function(self, arg) 
self._nServer = arg[1]; 
self._nStartDate = arg[2]; 
self._nEndDate = arg[3]; 
self._nTaskID = arg[4]; 
self._nLevel = arg[5]; 
self._szRemedyName = arg[6]; 
end, 

checkPay = function(self) 

local bServer, bDate, bTask, bLevel = 0,0,0,0; -- script viet hoa By http://tranhba.com  cÇn tháa m·n c¸i nµy bèn ®iÒu kiÖn míi cã thÓ th«ng qua 

local nNowServer = GetGateWayClientID(); 

local nNowDate = tonumber(GetLocalDate("%y%m%d")); 

-- script viet hoa By http://tranhba.com  chia ra lÊy ®­îc b¾t ®Çu cïng kÕt thóc ®İch n¨m / th¸ng / ngµy 
local nStartYear = tonumber(strsub(tostring(self._nStartDate),1,1)); 
local nStartMonth = tonumber(strsub(tostring(self._nStartDate),2,3)); 
local nStartDay = tonumber(strsub(tostring(self._nStartDate),4,5)); 

local nEndYear = tonumber(strsub(tostring(self._nEndDate),1,1)); 
local nEndMonth = tonumber(strsub(tostring(self._nEndDate),2,3)); 
local nEndDay = tonumber(strsub(tostring(self._nEndDate),4,5)); 

local nNowTimes = GetTask(self._nTaskID); 

local aryErrorMsg = {"<enter>"}; 

-- script viet hoa By http://tranhba.com  kiÓm tr¾c khu dïng/uèng tªn cã hay kh«ng gièng nhau 
if self._nServer~=0 then 
if self._nServer==nNowServer then 
bServer = 1; 
else 
bServer = 0; 
tinsert(aryErrorMsg, " lÇn nµy båi th­êng ho¹t ®éng kh«ng thuéc vÒ vèn khu dïng/uèng . <enter>"); 
end; 
else 
bServer = 1; 
end; 

-- script viet hoa By http://tranhba.com  kiÓm tr¾c nhËt kú cã hay kh«ng ë trong ph¹m vi 
if nNowDate>=self._nStartDate and nNowDate<=self._nEndDate then 
bDate = 1; 
else 
bDate = 0; 
tinsert(aryErrorMsg,"§· v­ît qua nhËn lÊy ®İch nhËt kú ph¹m vi , nhËn lÊy ®İch nhËt kú tù #<color=yellow>"..nStartYear.." n¨m "..nStartMonth.." th¸ng "..nStartDay.." ngµy <color> b¾t ®Çu ®Õn #<color=yellow>".. 
nEndYear.." n¨m "..nEndMonth.." th¸ng "..nEndDay.." ngµy <color> chÆn chØ . <enter>"); 
end; 

if GetLevel()>=self._nLevel then 
bLevel = 1; 
else 
bLevel = 0; 
tinsert(aryErrorMsg,"Kh«ng cã ®¹t tíi nhËn lÊy båi th­êng cÊp bËc , nh©n vËt cÊp bËc nhÊt ®Şnh ph¶i lín h¬n <color=yellow>"..self._nLevel.." cÊp <color><enter> . "); 
end; 

-- script viet hoa By http://tranhba.com  kiÓm tr¾c nhËn lÊy ®İch sè lÇn cã hay kh«ng ®· ®¹t tíi 
if nNowTimes<1 then 
bTask = 1; 
else 
bTask = 0; 
tinsert(aryErrorMsg,"§· ®¹t tíi mçi ng­êi cã thÓ nhËn lÊy ®İch sè lÇn h¹n chÕ . <enter>"); 
end; 

-- script viet hoa By http://tranhba.com  toµn bé ®iÒu kiÖn còng phï hîp míi th«ng qua , nÕu nh­ kh«ng th«ng qua , lµ trë vÒ thÊt b¹i tù phï ®Õm tæ 
if bServer==1 and bDate==1 and bTask==1 and bLevel==1 then 
return 1; 
else 
return aryErrorMsg; 
end; 
end, 

-- script viet hoa By http://tranhba.com  båi th­êng cho nhµ ch¬i ®İch chñ hµm sè 
payForPlayer = function(self) 

local nResult = self:checkPay(); 

if nResult==1 then 
-- script viet hoa By http://tranhba.com  tr­íc viÕt sè liÖu n÷a ph¸t båi th­êng , ®Ó tr¸nh xuÊt hiÖn cµ ®İch t×nh huèng 
self:writeData(); 
self:payProcess(); 
return 1; 
else 
return nResult; 
end; 
end, 

-- script viet hoa By http://tranhba.com  båi th­êng cho nhµ ch¬i chñ qu¸ tr×nh , nh­ng thõa kÕ 
payProcess = function(self) 
return 1; 
end, 

-- script viet hoa By http://tranhba.com  viÕt vµo sè liÖu ®İch qu¸ tr×nh , nh­ng thõa kÕ 
writeData = function(self) 
		SetTask(self._nTaskID, GetTask(self._nTaskID) + 1);

if self._szRemedyName~=nil then 
WriteLog("["..self._szRemedyName.."]"..date("[%y n¨m %m th¸ng %d ngµy %H lóc %M ph©n ]").."[ tr­¬ng môc #"..GetAccount().."][ vai trß #"..GetName().."]#".." thi hµnh mét lÇn nhËn lÊy thao t¸c . "); 
end; 

return 1; 
end, 
} 
