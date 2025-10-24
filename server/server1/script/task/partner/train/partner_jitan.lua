IncludeLib("PARTNER") 
Include("\\script\\lib\\gb_taskfuncs.lua")

LG_PARTNER_JITAN_NAME = " tr­êng ca cöa tÕ ®µn " 
TB_JITAN_EVENT_RADIO = {40, -- script viet hoa By http://tranhba.com  r¬i xuèng cao cÊp ®ång b¹n kü n¨ng s¸ch 
20, -- script viet hoa By http://tranhba.com  xuÊt hiÖn Boss 
20, -- script viet hoa By http://tranhba.com  xuÊt hiÖn cho ®ång b¹n kinh nghiÖm 
20, -- script viet hoa By http://tranhba.com  c¸i g× còng kh«ng ph¸t sinh 
} 
TB_JITAN_AWARD_BOOK = { 
{834,2,5}, 
{835,2,5}, 
{836,2,5}, 
{837,2,5}, 
{838,2,5}, 
{839,6,8}, 
{840,6,8}, 
{841,6,8}, 
{842,6,8}, 
{843,6,8}, 
{844,6,8}, 
{845,6,8}, 
{846,6,8}, 
{847,6,8}, 
{848,6,8}, 
{849,1,5}, 
{850,1,5}, 
{851,1,5}, 
{852,1,5}, 
{853,1,5}, 
{854,1,5}, 
{855,1,5}, 
{859,1,5}, 
{860,1,5}, 
{861,1,5}, 
{862,1,5}, 
{863,1,5}, 
{864,1,5}, 
{865,1,5}, 
{866,1,5}, 
{867,1,5}, 
{868,1,5}, 
{869,1,5}, 
{870,1,5}, 
{871,1,5}, 
{872,1,5}, 
{873,1,5}, 
{874,1,5}, 
{875,1,5}, 
{876,1,5}, 
{877,1,5}, 
{878,1,5}, 
{879,1,5}, 
{880,1,5}, 
{882,1,5}, 
{883,1,5}, 
{901,1,5}, 
} 

TB_JITAN_AWARD_EXP = { 
{1,10,3000}, 
{11,20,32000}, 
{21,30,100000}, 
{31,40,180000}, 
{41,50,250000}, 
{51,60,350000}, 
{61,70,500000}, 
{71,80,1000000}, 
{81,90,2000000}, 
{91,100,3000000}, 
} 

function main() 
local dtask = gb_GetTask(LG_PARTNER_JITAN_NAME, changgemen_jitan) 
if (dtask == 0) then 
Talk(1, "","Tr­êng ca cöa tÕ ®µn # mçi giê c¶ ®iÓm …… tÕ ®µn ngò hµnh linh lùc thøc tØnh …… mang theo ®ång b¹n tíi tÕ b¸i …… sÏ cã ý kh«ng nghÜ tíi chuyÖn ph¸t sinh . ") 
elseif (dtask == 1) then 
local _, callout = PARTNER_GetCurPartner() 
if (callout == 0 or callout == nil) then 
Talk(1, "","Tr­êng ca cöa tÕ ®µn # tÕ ®µn ®Ých ngò hµnh linh lùc thøc tØnh , cÇn ®ång b¹n ®Ých tÕ b¸i . ") 
return 
end 

local jitan_event = 0 
local jitan_radio = random(100) 
local sum = 0 
for i = 1, getn(TB_JITAN_EVENT_RADIO) do 
			sum = sum + TB_JITAN_EVENT_RADIO[i]
if (sum >= jitan_radio) then 
jitan_event = i 
break 
end 
end 
if (jitan_event == 1) then 
Talk(1, "","Tr­êng ca cöa tÕ ®µn # ®ång b¹n ®Ých ngò hµnh cïng tÕ ®µn ®Ých ngò hµnh linh lùc t­¬ng sinh t­¬ng dung , ®©y lµ ®­a cho ng­¬i bÝ tÞch . ") 
elseif (jitan_event == 2) then 
Talk(1, "","Tr­êng ca cöa tÕ ®µn # ®ång b¹n ®Ých ngò hµnh cïng tÕ ®µn ®Ých ngò hµnh linh lùc t­¬ng kh¾c t­¬ng xÝch , tiÕp nhËn trõng trÞ ®i . ") 
elseif (jitan_event == 3) then 
Talk(1, "","Tr­êng ca cöa tÕ ®µn # ®ång b¹n ®Ých ngò hµnh cïng tÕ ®µn ®Ých ngò hµnh linh lùc t­¬ng sinh t­¬ng dung , h¾n l¹i lín lªn . ") 
elseif (jitan_event == 4) then 
Talk(1, "","Tr­êng ca cöa tÕ ®µn # ®ång b¹n ®Ých ngò hµnh cïng tÕ ®µn ®Ých ngò hµnh linh lùc kh«ng ph¶i lµ sanh phi kh¾c , lÇn sau trë l¹i tÕ b¸i ®i . ") 
else 
gb_SetTask(LG_PARTNER_JITAN_NAME, changgemen_jitan, 0) 
return 
end 
gb_SetTask(LG_PARTNER_JITAN_NAME, changgemen_jitan, 0) 
jitan_event_award(jitan_event) 
end 
end 

function jitan_event_award(eventid) 
local W, X, Y = GetWorldPos() 
if (eventid == 1) then 
local bookid = random( getn( TB_JITAN_AWARD_BOOK ) ) 
DropItem(SubWorld, (X - 2) * 32, (Y - 3) * 32, PlayerIndex, 6, 1, TB_JITAN_AWARD_BOOK[bookid][1], random(TB_JITAN_AWARD_BOOK[bookid][2], TB_JITAN_AWARD_BOOK[bookid][3]), 0, 1, 1) 
elseif (eventid == 2) then 
		AddNpc(1115, 95, SubWorld, (X + 1) * 32, (Y - 1) * 32, 1, "½ûµØÊØÎÀ", 1)
elseif (eventid == 3) then 
local partneridx = PARTNER_GetCurPartner() 
if (partneridx ~= -1 and partneridx ~= 0) then 
partnerlvl = PARTNER_GetLevel(partneridx) 
for i = 1, getn(TB_JITAN_AWARD_EXP) do 
if (partnerlvl >= TB_JITAN_AWARD_EXP[i][1] and partneridx <= TB_JITAN_AWARD_EXP[i][2]) then 
PARTNER_AddExp(partneridx, TB_JITAN_AWARD_EXP[i][3]) 
break 
end 
end 
end 
end 
end
