-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##matchmaker.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2008-01-22 15:11:22 
-- script viet hoa By http://tranhba.com Ã¿ÈÕÏÞÖÆnµÍ×ÖÎ»9Î»¼ÇÂ¼¼ÆÊý£¬¸ßÎ»¼ÇÂ¼ÈÕÆÚ£¬ ¼ÆÊý¿ÉÒÔÖ±½Ón=n+1
Include("\\script\\event\\valentine2008\\head.lua")
Include("\\script\\event\\valentine2008\\lib\\addaward.lua")
Include("\\script\\lib\\pay.lua")
function IsPickable( nItemIndex, nPlayerIndex ) 
-- script viet hoa By http://tranhba.com  thêi gian 
if not valentine2008_isGetItemPeriod() then 
Msg2Player(format("Ho¹t ®éng <color=yellow>%s<color> ®· kÕt thóc , kh«ng thÓ ®­îc c¸i g× ®å . ",valentine2008_szActName)) 
return 0; 
end 
if check_valentine2008_team() ~= 1 then 
Msg2Player("ChØ cã thÓ lµ mét nam mét n÷ häp thµnh ®éi míi cã thÓ cïng h¾n ®èi tho¹i . ") 
return 0; 
end 
local nTeamSize = GetTeamSize() 
local i 
for i=1, nTeamSize do 
if valentine2008_PlayerDo(GetTeamMember(i), valentine2008_PlayerLimit) == 0 then 
Msg2Team("§éi ngò cã ng­êi ®iÒu kiÖn kh«ng phï hîp kh«ng thÓ lÊy ®­îc ¸nh tr¨ng b¶o hép . ") 
return 0; 
end 
end 
return 1; 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
if( IsMyItem( nItemIndex ) ) then 
local i 
local nCollectExpLimit = GetTask(TSK_valentine2008_CollectExpLimit) 
-- script viet hoa By http://tranhba.com  thËp lÊy ng­êi lÊy ®­îc 
local tbExp = 
{ 
{nExp = 10000, nRate = 30}, 
{nExp = 40000, nRate = 40}, 
{nExp = 70000, nRate = 30}, 
} 
if nCollectExpLimit < TSKV_valentine2008_CollectExpLimit then 
local nCurSelect = valentine2008_lib_AddAwardByRate(tbExp, valentine2008_szActName) 
			nCollectExpLimit = nCollectExpLimit + tbExp[nCurSelect].nExp
SetTask(TSK_valentine2008_CollectExpLimit, nCollectExpLimit) 
else 
Msg2Player(format("Ng­¬i ®¹t ®­îc ¸nh tr¨ng b¶o hép lÊy ®­îc kinh nghiÖm ®¹t %d , ®Õn lÇn nµy ho¹t ®éng th­îng h¹n . ", nCollectExpLimit)) 
end 
-- script viet hoa By http://tranhba.com  tËp thÓ lÊy ®­îc 
local nTeamSize = GetTeamSize() 
for i=1, nTeamSize do 
valentine2008_PlayerDo(GetTeamMember(i), valentine2008_GetYueGuangBaoHe); 
end 
return 0; -- script viet hoa By http://tranhba.com  thñ tiªu vËt phÈm 
end 
end 

-- script viet hoa By http://tranhba.com  ng­êi kia thi hµnh mét hµm sè 
function valentine2008_PlayerDo(nPlayerIdx,fun,...) 
local nOldPlayer = PlayerIndex; 
PlayerIndex = nPlayerIdx 
local re = call(fun, arg); 
PlayerIndex = nOldPlayer; 
return re 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra cã hay kh«ng 2 ng­êi nam n÷ ®éi ngò 

function check_valentine2008_team() 
if (GetTeamSize() == 2) then -- script viet hoa By http://tranhba.com  häp thµnh ®éi # nh©n sè v× 2# 
Player1_ID = GetTeamMember(1) 
Player2_ID = GetTeamMember(2) 
		if ( (valentine2008_PlayerDo(Player1_ID,GetSex) + valentine2008_PlayerDo(Player2_ID,GetSex) ) ~= 1) then -- script viet hoa By http://tranhba.com ÄÐÅ®Çé¿ö11 10 00 Ïà¼ÓÎª1ËµÃ÷ÊÇÒìÐÔ¶ÓÎé
return 0 
end 
return 1 
end 
return 0 
end 
-- script viet hoa By http://tranhba.com  nh©n vËt cã liªn quan h¹n chÕ ®iÒu kiÖn 
function valentine2008_PlayerLimit() 
local nDate = tonumber(GetLocalDate("%y%m%d")); 
local nMaxCount = GetTask(TSK_valentine2008_CollectMaxLimit) 
local nCollectLimit = GetTask(TSK_valentine2008_CollectLimit) 
-- script viet hoa By http://tranhba.com  cÊp bËc 
if (IsCharged() == 0 or GetLevel() < 100) then 

Msg2Team(format("%s kh«ng ph¶i lµ 100 cÊp trë lªn sung trÞ gi¸ nhµ ch¬i . ", GetName())) 
return 0; 
end 

-- script viet hoa By http://tranhba.com  lín nhÊt thËp lÊy c¸ ®Õm 
if(nMaxCount >= TSKV_valentine2008_CollectMaxLimit) then 
Msg2Team(format("%s ®¹t ®­îc ¸nh tr¨ng b¶o hép ®¹t %d c¸ , ®· tíi lÇn nµy ho¹t ®éng th­îng h¹n liÔu . ", GetName(), nMaxCount)); 
return 0; 
end 
-- script viet hoa By http://tranhba.com  mçi ngµy thËp lÊy c¸ ®Õm 

if( nDate ~= floor(nCollectLimit/512) ) then 
nCollectLimit = nDate * 512 
SetTask(TSK_valentine2008_CollectLimit, nCollectLimit) 
end 
if(mod(nCollectLimit, 512) >= TSKV_valentine2008_CollectDayLimit) then 
Msg2Team(format("%s h«m nay ®¹t ®­îc ¸nh tr¨ng b¶o hép ®¹t %d c¸ , ®· tíi th­îng h¹n liÔu , xin/mêi ngµy mai tiÕp tôc ®i . ", GetName(), TSKV_valentine2008_CollectDayLimit)); 
return 0; 
end 
return 1 
end 
-- script viet hoa By http://tranhba.com  lÊy ®­îc ¸nh tr¨ng b¶o hép , nhiÖm vô thay ®æi l­îng thiÕt trÝ 
function valentine2008_GetYueGuangBaoHe() 
local nMaxCount = GetTask(TSK_valentine2008_CollectMaxLimit) 
local nCollectLimit = GetTask(TSK_valentine2008_CollectLimit) 
local nStackCount = 10 
local tbItemList = 
{ 
{szName=" con b­ím tr©m ", tbProp={6, 1, 1667, 1, 0, 0}}, 
{szName=" uyªn ­¬ng m¹t ", tbProp={6, 1, 1666, 1, 0, 0}}, 
} 

	SetTask(TSK_valentine2008_CollectLimit, nCollectLimit+1);-- script viet hoa By http://tranhba.com ½ñÌì×î´ó¸öÊý+1
	nMaxCount = nMaxCount + 1
	SetTask(TSK_valentine2008_CollectMaxLimit, nMaxCount);-- script viet hoa By http://tranhba.com ×î´ó¸öÊý+1
Msg2Player(format("Tæng céng lÊy ®­îc %d th¸ng quang b¶o hép . ", nMaxCount)) 
if mod(nMaxCount, nStackCount) == 0 then 
AddSkillState(703, 1, 1, 18*60*10) 
if GetSex() == 0 then -- script viet hoa By http://tranhba.com  nam 
valentine2008_lib_AddAward(tbItemList[2], valentine2008_szActName) 
else 
valentine2008_lib_AddAward(tbItemList[1], valentine2008_szActName) 
end 
end 
end 
