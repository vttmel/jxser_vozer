
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online IB phôc vô khÝ ngò hµnh trang bÞ lÔ tói ch©n bæn v¨n mãn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/10/26 PM 11:51 

-- script viet hoa By http://tranhba.com  tùu nh­ cïng nµng c­êi cho tíi b©y giê ®Òu kh«ng ph¶i lµ ®¹i biÓu vui vÎ , 
-- script viet hoa By http://tranhba.com  nµng khãc thót thÝt còng kh«ng cã bÊt kú ý vÞ . 
-- script viet hoa By http://tranhba.com  nµng nãi , tèt l¾m . 
-- script viet hoa By http://tranhba.com  chóng ta nãi mét håi tho¹i ®i . 
-- script viet hoa By http://tranhba.com  cÇm quÇn cïng ¸o lãt , v« cïng trÇm tÜnh ®Þa tõng c¸i tõng c¸i mÆc vµo . 
-- script viet hoa By http://tranhba.com  th¸i ®é cã râ rµng sinh s¬ , ph¶ng phÊt muèn lui trë vÒ thÕ giíi cña nµng trong ®i . 

-- script viet hoa By http://tranhba.com  ====================================================== 

aryFiveEquip = { 

[1267]={"ThÐp kiÕm ", 0,0,0,10}, 
[1268]={"Giã lín ®ao ", 0,0,1,10}, 
[1269]={"Kim c« ca tông ", 0,0,2,10}, 
[1270]={"XÐ trêi kÝch ", 0,0,3,10}, 
[1271]={"XÐ trêi chïy ", 0,0,4,10}, 
[1272]={"B¸ v­¬ng phiªu ", 0,1,0,10}, 
[1273]={"BÓ th¸ng ®ao ", 0,1,1,10}, 
[1274]={"Khæng t­íc linh ", 0,1,2,10}, 
[1275]={" long ph­îng huyÕt ngäc tr¹c ", 0,8,0,10}, 
[1276]={"Thiªn tµm hé cæ tay ", 0,8,1,10}, 
[1277]={"Th«ng thiªn ph¸t quan ", 0,7,3,10}, 
[1278]={"GiÊu ngµy kh«i ", 0,7,4,10}, 
[1279]={"HuyÒn tª mÆt n¹ ", 0,7,9,10}, 
[1280]={"Thanh tinh sai ", 0,7,12,10}, 
[1281]={"Thiªn tµm ®ai l­ng ", 0,6,0,10}, 
[1282]={"B¹ch kim ®ai l­ng ", 0,6,1,10}, 
[1283]={"Thiªn tµm ngoa ", 0,5,1,10}, 
[1284]={"Bay ph­îng ngoa ", 0,5,3,10}, 

}; 


function main(nIndex) 
local nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = GetItemProp(nIndex); 
local i=0; 
if aryFiveEquip[nParticular] then 
for i=0,4 do 
AddItem(aryFiveEquip[nParticular][2], 
aryFiveEquip[nParticular][3], 
aryFiveEquip[nParticular][4], 
aryFiveEquip[nParticular][5], 
i, 
0,0); 
end; 
Msg2Player("Ngµi lÊy ®­îc mét bé ngò hµnh ®Ých <color=yellow>"..aryFiveEquip[nParticular][1].."<color>#"); 
WriteLog("[ ngò hµnh trang bÞ nhiÖm vô lÔ tói ]"..date("[%y n¨m %m th¸ng %d ngµy %H lóc %M ph©n ]").."[ tr­¬ng môc #"..GetAccount().."][ vai trß #"..GetName().."] më ra mét "..aryFiveEquip[nParticular][1].." lÔ tói . "); 
else 
Say("Ng­¬i mua lµ mét kh«ng cã hiÖu qu¶ ®Ých ngò hµnh lÔ tói #", 0); 
return 1; 
end; 
return 0; 
end; 
