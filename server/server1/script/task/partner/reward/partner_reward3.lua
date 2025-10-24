-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  FileName : partner_reward.lua 
-- script viet hoa By http://tranhba.com  Author : xiaoyang 
-- script viet hoa By http://tranhba.com  CreateTime : 2005-07-14 14:43:15 
-- script viet hoa By http://tranhba.com  Desc : ®ång b¹n tu luyÖn nhiÖm vô ch©n vèn 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
IncludeLib( "FILESYS" ); 
IncludeLib("PARTNER") 
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua") -- script viet hoa By http://tranhba.com Ôö¼Ó»Ô»ÍÖ®Ò¹Ë«±¶»î¶¯
Include("\\script\\task\\newtask\\newtask_head.lua")
TabFile_Load( "\\settings\\task\\partner\\reward\\reward_allprize.txt" , "rewardprize");	 -- script viet hoa By http://tranhba.com »ñµÃÍ¬°éÐÞÁ·µÄ±í¸ñ
Include([[\script\tong\tong_award_head.lua]]);-- script viet hoa By http://tranhba.com  bang héi chu môc tiªu ®é cèng hiÕn by chÝ s¬n 
Include ("\\script\\task\\partner\\master\\partner_master_main_05.lua"); -- script viet hoa By http://tranhba.com Ôö¼ÓÍ¬°éÒþ²Ø¾çÇéµÄÊ±¼ä»ñÈ¡

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com 1: ®ång b¹n tu luyÖn nhiÖm vô trung xóc ph¸t quyÓn trôc ch©n cña vèn thao t¸c ,RewardTaskId v× truyÒn vµo ®Ých tu luyÖn nhiÖm vô biªn sè -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com 0-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function reward_startreward3(RewardTaskId,RewardTaskLevel) 

local Uworld1236 = nt_getTask(1236) -- script viet hoa By http://tranhba.com  truyÒn cho tr×nh tù m¸y tÝnh tiÒn ®Ých nhiÖm vô thay ®æi l­îng , ghi chÐp nhµ ch¬i tr­íc mÆt giÕt chÕt bao nhiªu con qu¸i vËt . 
local Uworld1237 = nt_getTask(1237) -- script viet hoa By http://tranhba.com  ghi chÐp tu luyÖn nhiÖm vô biªn sè ®Ých nhiÖm vô thay ®æi l­îng 
local Uworld1238 = nt_getTask(1238) -- script viet hoa By http://tranhba.com  ghi chÐp tu luyÖn nhiÖm vô tiÕn hµnh nhËt kú ®Ých nhiÖm vô thay ®æi l­îng 
local Uworld1239 = nt_getTask(1239) -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i t­ëng th­ëng kinh nghiÖm nhiÖm vô thay ®æi l­îng 
local Uworld1240 = nt_getTask(1240) -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®ång b¹n kinh nghiÖm t­ëng th­ëng ®Ých nhiÖm vô thay ®æi l­îng 
local Uworld1241 = nt_getTask(1241) -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ngµy ®ã ®· hoµn thµnh nhiÖm vô sè lÇn ®Ých nhiÖm vô thay ®æi l­îng 
local NowDate = tonumber(date("%y%m%d")) -- script viet hoa By http://tranhba.com  ®¹t ®­îc tr­íc mÆt nhËt kú 

if ( Uworld1237 ~= 0 ) then 
Msg2Player("Xin/mêi tr­íc hoµn thµnh ng­¬i ®· nhËn ®­îc ®Ých tu luyÖn nhiÖm vô , n÷a më ra míi quyÓn trôc ®i . ") 
return 1 
elseif ( Uworld1238 == 0 ) then -- script viet hoa By http://tranhba.com  b¾t ®Çu ngµy ®ã thø nhÊt tu luyÖn nhiÖm vô 
Msg2Player("Hoan nghªnh ng­¬i b¾t ®Çu h«m nay thø nhÊt tu luyÖn nhiÖm vô , xin/mêi cè g¾ng lªn . ") 
nt_setTask(1238,NowDate) 
elseif ( Uworld1238 ~= 0 ) and ( Uworld1238 ~= NowDate ) then -- script viet hoa By http://tranhba.com  tu luyÖn nhiÖm vô nhËt kú ®· söa ®æi 
Msg2Player("Ng­¬i tu luyÖn nhiÖm vô ®· tiÕn vµo toµn mét ngµy míi . qu¸ khø lµm tu luyÖn nhiÖm vô v« luËn kh«ng cã lµm hoµn hoÆc lµ kh«ng cã ®ãng , ®Òu ®­a bÞ hñy bá . ") 
reward_cleartaskvalue() 
return 1 
elseif ( Uworld1238 == NowDate ) then -- script viet hoa By http://tranhba.com  tu luyÖn nhiÖm vô thêi kú phï hîp yªu cÇu 
if ( Uworld1241 >= 20 ) then -- script viet hoa By http://tranhba.com  tu luyÖn nhiÖm vô sè lÇn ®· ®¹t tíi th­îng h¹n 
Msg2Player("Ngµi vµo h«m nay lµm tu luyÖn nhiÖm vô sè lÇn ®· ®¹t ®Õn th­îng h¹n , xin/mêi kÞp thêi giao phã nhiÖm vô cho tr­êng ca m«n nh©n . ngµy mai sÏ tiÕp tôc cè g¾ng , c¸m ¬n . ") 
return 1 
end 
end 

if ( reward_beckon(RewardTaskLevel) ~= 10 ) then -- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i cïng ®ång b¹n t­¬ng quan thao t¸c , trë vÒ trÞ gi¸ lµ 10 lóc bµy tá cã sai lÇm 
return 1 
end 
reward_justdoit(RewardTaskId) -- script viet hoa By http://tranhba.com  khëi ®éng quyÓn trôc th­îng nªn nhiÖm vô 
end 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  ph¸n ®o¸n ®ång b¹n cã hay kh«ng phï hîp tr­íc mÆt tiÕp nhËn vô ®Ých yªu cÇu -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function reward_beckon(RewardTaskLevel) 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local NpcCount = PARTNER_Count() 

if ( NpcCount == 0 ) then 
Msg2Player("Ng­¬i tr­íc mÆt kh«ng cã ®ång b¹n , lµm g× tu luyÖn nhiÖm vô ? ®i t×m tr­êng ca cöa m«n nh©n , sau ®ã tõ h¾n n¬i ®ã ®Õn v©n trung trÊn , tõ kiÕm hoµng ®Ö tö chç dÉn ng­êi ®ång b¹n tr­íc . ") 
return 1 
elseif ( partnerstate == 0 ) then 
Msg2Player("Ng­¬i chØ cã triÖu ho¸n ra ®ång b¹n cña ng­¬i , míi cã thÓ mang h¾n tiÕn hµnh ®ång b¹n tu luyÖn nhiÖm vô . ") 
return 1 
	elseif ( PARTNER_GetLevel(partnerindex)+10 < RewardTaskLevel ) then
Msg2Player("ThËt xin lçi , nhiÖm vô nµy ®èi víi ng­¬i b©y giê ®Ých ®ång b¹n mµ nãi v« cïng khã kh¨n , xin/mêi tr­íc lµm chót cÊp thÊp tu luyÖn nhiÖm vô . ") 
return 1 
elseif ( PARTNER_GetTaskValue(partnerindex, 2) == 1 ) then 
Msg2Player("Ng­¬i tr­íc mÆt ®ång b¹n cßn cã tu luyÖn nhiÖm vô kh«ng cã lµm hoµn , xin/mêi tr­íc dÉn h¾n lµm xong t­¬ng quan nhiÖm vô , c¸m ¬n . ") 
return 1 
elseif ( PARTNER_GetTaskValue(partnerindex, 2) == 0 ) then 
local j = 0 
for i =1,NpcCount do 
if ( PARTNER_GetTaskValue(i,2) ~= 0 ) then 
Msg2Player("Ng­¬i ®· cã ®ång b¹n ®ang lµm tu luyÖn nhiÖm vô , ®ang kh«ng cã ®ãng nhiÖm vô tr­íc nh÷ng kh¸c ®ång b¹n lµ kh«ng thÓ lµm tu luyÖn nhiÖm vô . c¸m ¬n . ") 
				j = j+1
end 
end 

if ( j == 0 ) then 
return 10 
else 
return 1 
end 

else 
return 10 
end 

end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  khëi ®éng quyÓn trôc nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function reward_justdoit(RewardTaskId) 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 

if ( PARTNER_GetTaskValue(partnerindex, 2) == 0 ) or ( PARTNER_GetTaskValue(partnerindex, 2) == 2 ) then 
PARTNER_SetTaskValue(partnerindex,2,1) -- script viet hoa By http://tranhba.com  thiÕt trÝ tr­íc mÆt së mang ®ång b¹n v× tu luyÖn nhiÖm vô khëi ®éng tr¹ng th¸i 
else 
Msg2Player("Ng­¬i tr­íc mÆt ®ång b¹n cßn cã tu luyÖn nhiÖm vô kh«ng cã lµm hoµn , c¸m ¬n . ") 
return 1 
end 

nt_setTask(1237,RewardTaskId) -- script viet hoa By http://tranhba.com  ®em tr­íc mÆt nhËn ®­îc nhiÖm vô biªn sè tån tr÷ ®øng lªn 
AddPlayerEvent(RewardTaskId) -- script viet hoa By http://tranhba.com  khëi ®éng nªn quyÓn trôc ®èi t­îng giÕt tr¸ch nhiÖm vô 
Msg2Player("Ngµi ®· thuËn lîi khëi ®éng nhiÖm vô . xin/mêi vµo h«m nay bªn trong hoµn thµnh . ") 

end 



-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -2: giÕt tr¸ch nhiÖm vô hoµn thµnh lóc ®iÒu dông ch©n cña vèn thao t¸c -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function reward_killfinish(nPlayerIdx, nTaskID ,EventID) 
oldPlayerIndex = PlayerIndex 
PlayerIndex = nPlayerIdx 

local Uworld1236 = nt_getTask(1236) -- script viet hoa By http://tranhba.com  truyÒn cho tr×nh tù m¸y tÝnh tiÒn ®Ých nhiÖm vô thay ®æi l­îng , ghi chÐp nhµ ch¬i tr­íc mÆt giÕt chÕt bao nhiªu con qu¸i vËt . 
local Uworld1237 = nt_getTask(1237) -- script viet hoa By http://tranhba.com  ghi chÐp tu luyÖn nhiÖm vô biªn sè ®Ých nhiÖm vô thay ®æi l­îng 
local Uworld1238 = nt_getTask(1238) -- script viet hoa By http://tranhba.com  ghi chÐp tu luyÖn nhiÖm vô tiÕn hµnh nhËt kú ®Ých nhiÖm vô thay ®æi l­îng 
local Uworld1239 = nt_getTask(1239) -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i t­ëng th­ëng kinh nghiÖm nhiÖm vô thay ®æi l­îng 
local Uworld1240 = nt_getTask(1240) -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®ång b¹n kinh nghiÖm t­ëng th­ëng ®Ých nhiÖm vô thay ®æi l­îng 
local Uworld1241 = nt_getTask(1241) -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ngµy ®ã ®· hoµn thµnh nhiÖm vô sè lÇn ®Ých nhiÖm vô thay ®æi l­îng 
local NowDate = tonumber(date("%y%m%d")) -- script viet hoa By http://tranhba.com  ®¹t ®­îc tr­íc mÆt nhËt kú 
local NpcCount = PARTNER_Count() 

if ( Uworld1238 ~= NowDate ) then 
Msg2Player("ThËt xin lçi , ng­¬i tr­íc mÆt ®Ých tu luyÖn nhiÖm vô ®· v­ît qua quy ®Þnh nhËt kú , tÊt c¶ nhiÖm vô ®em bÞ thanh trõ tõ h«m nay coi lµ khëi . ") 
reward_cleartaskvalue() 
elseif ( NpcCount == 0 ) then 
Msg2Player("ThËt xin lçi , ng­¬i mét ®ång b¹n ®Òu kh«ng cã , cßn thÕ nµo tiÕp tôc tu luyÖn nhiÖm vô ®©y ? nhiÖm vô cña ng­¬i thÊt b¹i . ") 
reward_cleartaskvalue() 
else 
local w = 0 
for i =1,NpcCount do 
if ( PARTNER_GetTaskValue(i,2) == 1 ) then 
PARTNER_SetTaskValue(i,2,2) 
				w = w+1
end 
end 

if ( w == 0 ) then 
Msg2Player("ThËt xin lçi , ®ång b¹n cña ng­¬i trung kh«ng cã ng­êi nµo ®ang lµm tu luyÖn nhiÖm vô , nªn nhiÖm vô ®· bÞ hñy bá . ") 
reward_cleartaskvalue() 
else 
			nt_setTask(1241,Uworld1241+1)
tongaward_partner_xiulian()-- script viet hoa By http://tranhba.com  bang héi chu môc tiªu ®é cèng hiÕn by chÝ s¬n 
if ( nt_getTask(1241) == nt_getTask(1246) ) then -- script viet hoa By http://tranhba.com 1246 v× cho phÐp nhµ ch¬i mçi ngµy lµm tu luyÖn nhiÖm vô sè lÇn 
Msg2Player("Ngµi ngµy ®ã ®Ých nhiÖm vô hoµn thµnh sè lÇn ®· ®¹t "..nt_getTask(1246).." lÇn , xin/mêi kÞp thêi ®i tr­êng ca m«n nh©n chç ®æi t­ëng th­ëng . ") 
end 
local prize_peopleexp = tonumber( TabFile_GetCell( "rewardprize" ,EventID - 4 , 2 )) -- script viet hoa By http://tranhba.com  ®¹t ®­îc nhµ ch¬i nªn ph¶i ®Ých kinh nghiÖm 
local prize_partnerexp = tonumber( TabFile_GetCell( "rewardprize" ,EventID - 4 , 3 )) -- script viet hoa By http://tranhba.com  ®¹t ®­îc ®ång b¹n nªn ph¶i ®Ých kinh nghiÖm 
			local prize_parameter  = nt_getTask(1241)*0.1+1
prize_partnerexp = prize_partnerexp*prize_parameter 

prize_peopleexp = prize_peopleexp * greatnight_huang_event(5) 
prize_partnerexp = prize_partnerexp * greatnight_huang_event(5) 

			nt_setTask(1239,Uworld1239+prize_peopleexp)                                       -- script viet hoa By http://tranhba.com ½«Íæ¼Ò½ñ´ÎÓ¦»ñµÃ¾­Ñé¼Óµ½±äÁ¿ÖÐ
			nt_setTask(1240,Uworld1240+prize_partnerexp)                                      -- script viet hoa By http://tranhba.com ½«Í¬°é½ñ´ÎÓ¦»ñµÃ¾­Ñé¼Óµ½±äÁ¿ÖÐ
nt_setTask(1237,0) -- script viet hoa By http://tranhba.com  ®em ghi chÐp nhiÖm vô biªn sè ®Ých thay ®æi l­îng thanh kh«ng 
Msg2Player("Chóc mõng # ngµi ®· hoµn thµnh tr­íc mÆt ®Ých ®ång b¹n tu luyÖn nhiÖm vô . ") 
local x = nt_getTask(1246) - nt_getTask(1241) 
Msg2Player("Ngµi h«m nay cßn cã thÓ hoµn thµnh "..x.." lÇn ®ång b¹n tu luyÖn nhiÖm vô . ") 
end 
end 
PlayerIndex = oldPlayerIndex 
end 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -3# ®ãng ®ång b¹n tu luyÖn nhiÖm vô ch©n vèn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function reward_givetask3() 
local Uworld1236 = nt_getTask(1236) -- script viet hoa By http://tranhba.com  truyÒn cho tr×nh tù m¸y tÝnh tiÒn ®Ých nhiÖm vô thay ®æi l­îng , ghi chÐp nhµ ch¬i tr­íc mÆt giÕt chÕt bao nhiªu con qu¸i vËt . 
local Uworld1237 = nt_getTask(1237) -- script viet hoa By http://tranhba.com  ghi chÐp tu luyÖn nhiÖm vô biªn sè ®Ých nhiÖm vô thay ®æi l­îng 
local Uworld1238 = nt_getTask(1238) -- script viet hoa By http://tranhba.com  ghi chÐp tu luyÖn nhiÖm vô tiÕn hµnh nhËt kú ®Ých nhiÖm vô thay ®æi l­îng 
local Uworld1239 = nt_getTask(1239) -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i t­ëng th­ëng kinh nghiÖm nhiÖm vô thay ®æi l­îng 
local Uworld1240 = nt_getTask(1240) -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®ång b¹n kinh nghiÖm t­ëng th­ëng ®Ých nhiÖm vô thay ®æi l­îng 
local Uworld1241 = nt_getTask(1241) -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ngµy ®ã ®· hoµn thµnh nhiÖm vô sè lÇn ®Ých nhiÖm vô thay ®æi l­îng 
local NowDate = tonumber(date("%y%m%d")) -- script viet hoa By http://tranhba.com  ®¹t ®­îc tr­íc mÆt nhËt kú 

local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local NpcCount = PARTNER_Count() 

if ( Uworld1238 ~= NowDate ) then -- script viet hoa By http://tranhba.com  thêi gian kh«ng hîp 
Msg2Player("ThËt xin lçi , ng­¬i tr­íc mÆt ®Ých tu luyÖn nhiÖm vô ®· v­ît qua quy ®Þnh nhËt kú , tÊt c¶ nhiÖm vô ®em bÞ thanh trõ tõ h«m nay coi lµ khëi . ") 
reward_cleartaskvalue() 
elseif ( Uworld1241 == 0 ) then -- script viet hoa By http://tranhba.com  sè lÇn v× v« Ých 
Msg2Player("Ng­¬i h«m nay cßn ch­a hoµn thµnh tu luyÖn nhiÖm vô , xin tiÕp tôc cè g¾ng . ") 
elseif ( PARTNER_GetTaskValue(partnerindex, 2) == 0 ) then 
Msg2Player("C¸i nµy ®ång b¹n còng kh«ng ph¶i lµ ng­¬i mang theo ®i lµm tu luyÖn nhiÖm vô c¸i ®ã ®ång b¹n , xin/mêi ®em chÝnh x¸c ®ång b¹n cho gäi ra tíi . ") 
elseif ( NpcCount == 0 ) then 
Msg2Player("Ng­¬i tr­íc mÆt kh«ng cã ®ång b¹n , nhËn lÊy kh«ng ®­îc t­ëng th­ëng nga . ") 
elseif ( partnerstate == 0 ) then 
Msg2Player("Ng­¬i tr­íc mÆt kh«ng cã cho gäi ra ®ång b¹n tíi , nhËn lÊy kh«ng ®­îc t­ëng th­ëng nga . ") 
elseif ( nt_getTask(1239) ~= 0 ) and ( nt_getTask(1240) ~= 0 ) then 
if ( PARTNER_GetTaskValue(partnerindex, 2) ~= 0 ) then 
PARTNER_AddExp(partnerindex,Uworld1240 ,1) 
AddOwnExp(Uworld1239) 
nt_setTask(1239,0) 
nt_setTask(1240,0) 
Msg2Player("Ngµi cïng ngµi ®Ých ®ång b¹n ®· thu ®­îc h«m nay bªn trong hoµn thµnh ®ång b¹n tu luyÖn nhiÖm vô t­ëng th­ëng . ") 
else 
Msg2Player("ThËt xin lçi , ngµi mang ®Ých vÞ nµy ®ång b¹n còng kh«ng cã nhËn ®ång b¹n tu luyÖn nhiÖm vô . ") 
end 

if ( PARTNER_GetTaskValue(partnerindex, 2) == 2 ) and ( nt_getTask(1237) == 0 ) then -- script viet hoa By http://tranhba.com  khi nhµ ch¬i v× nhiÖm vô b¾t ®Çu tr¹ng th¸i , mµ 1237 l¹i ®· bÞ nhiÖm vô hoµn thµnh tr¹ng th¸i hµm sè thanh kh«ng lóc 
if ( nt_getTask(1241) == 20 ) then 
local Uworld1242 = nt_getTask(1242) 
				nt_setTask(1242,Uworld1242+1)
				taskProcess_005_AddTimes:doTaskEntity(); -- script viet hoa By http://tranhba.com Òþ²Ø¾çÇéÐÞÁ¶ÈÎÎñÈ«Íê³ÉÌìÊý+1
end 
PARTNER_SetTaskValue(partnerindex,2,0) 
end 
else 
Msg2Player("§i ra ®i ra , kh«ng muèn quÊy rèi #") 
end 

end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  thanh trõ tÊt c¶ qu¸ lóc ®Ých nhiÖm vô thay ®æi l­îng trÞ sè -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function reward_cleartaskvalue() 
nt_setTask(1237,0) 
nt_setTask(1238,0) 
nt_setTask(1239,0) 
nt_setTask(1240,0) 
nt_setTask(1241,0) 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local NpcCount = PARTNER_Count() 
if ( NpcCount ~= 0 ) then 
for i=1,NpcCount do 
if ( PARTNER_GetTaskValue(i,2) ~= 0 ) then 
PARTNER_SetTaskValue(i,2,0) 
end 
end 
end 
end 
