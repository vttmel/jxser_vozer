-- script viet hoa By tuanglit  c¨n cø nhµ ch¬i cÊp bËc , gia t¨ng dông hé ®Ých kinh nghiÖm # khÊu trõ c¸ch tuyÕn bµy qu¶n thêi gian # gia t¨ng phóc duyªn 
-- script viet hoa By tuanglit  kinh nghiÖm mçi 5 phót gia t¨ng mét lÇn # c¸ch tuyÕn thêi gian mçi trinh gi¶m bít 1 , phóc duyªn mét giê gia t¨ng mét lÇn 
IncludeLib("PARTNER"); 
IncludeLib("TONG"); 
Include( "\\script\\global\\fuyuan.lua" );
Include( "\\script\\global\\baijuwanhead.lua" );

-- script viet hoa By tuanglit  2008 gi¸ng sinh ho¹t ®éng ë tuyÕn bµy qu¶n ®¹t ®­îc mµu ®á hép quµ ®Ých ®Çu v¨n kiÖn 
-- script viet hoa By tuanglit Include("\\script\\item\\shengdan_jieri\\200811\\red_box.lua");

-- script viet hoa By tuanglit  2006 n¨m lÔ quèc kh¸nh ho¹t ®éng ®Çu v¨n kiÖn 
Include("\\script\\event\\nationalday_2006\\main.lua");


Include("\\script\\event\\funv_jieri\\200903\\tuoguan.lua")

Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");

-- script viet hoa By tuanglit tinhpn 20100805: VLMC 
Include("\\script\\bonusvlmc\\head.lua");

-- script viet hoa By tuanglit tinhpn 20100817: Online Award 
Include("\\script\\bonus_onlinetime\\head.lua")

BAIJU_DOUBLEEXP_TIME = 051008 
-- script viet hoa By tuanglit  ®Þnh nghÜa ®Ých cung bªn ngoµi hµm sè ®iÒu dông ch©n cña vèn 

-- script viet hoa By tuanglit  lÊy ®­îc ®Þnh lóc khÝ ®Ých sè l­îng 
function gettimercount() 
return 4 
end 

-- script viet hoa By tuanglit  lÊy ®­îc ®Þnh lóc khÝ ®Ých hµm sè 
function gettimername(index) 
if (index == 0) then 
return "addofflineexp" 
elseif (index == 1) then 
return "reduceofflinetime" 
elseif (index == 2) then 
return "addoofflinefuyuna" 
elseif (index == 3) then 
return "addofflineskillexp" 
end 
return "" 
end 

-- script viet hoa By tuanglit  lÊy ®­îc thi hµnh thêi gian gian c¸ch # tr¸nh ®Õm # 
function gettimerinterval(index) 
if (index == 0) then 
return AEXP_INTERVAL -- script viet hoa By tuanglit  thªm kinh nghiÖm #5 phót 
elseif (index == 1) then 
return 60 * FRAME2TIME -- script viet hoa By tuanglit  gi¶m thêi gian # mçi phót 
elseif (index == 2) then 
return 60 * 60 * FRAME2TIME -- script viet hoa By tuanglit  dÉn phóc nguyªn #1 giê 
elseif (index == 3) then 
return AEXP_INTERVAL -- script viet hoa By tuanglit  thªm kü n¨ng ®é thuÇn thôc #5 phót 
end 
return AEXP_INTERVAL 
end 

-- script viet hoa By tuanglit  lÊy ®­îc ®Þnh lóc khÝ chän h¹ng , 0 bµy tá thø 0 chu kú b¾t ®Çu thi hµnh , 1 bµy tá thø 1 chu kú b¾t ®Çu thi hµnh 
function gettimeroption(index) 
if (index == 0) then 
return 1 -- script viet hoa By tuanglit  thªm kinh nghiÖm #5 phót sau nµy 
elseif (index == 1) then 
return 1 -- script viet hoa By tuanglit  gi¶m thêi gian #1 phót sau nµy 
elseif (index == 2) then 
return 0 -- script viet hoa By tuanglit  dÉn phóc nguyªn # lËp tøc nhËn lÊy 
elseif (index == 3) then 
return 1 -- script viet hoa By tuanglit  thªm kü n¨ng ®é thuÇn thôc #5 phót 
end 
return 0 
end 

-- script viet hoa By tuanglit  lÊy ®­îc cùc kú lóc kiÓm tra gian c¸ch # tr¸nh ®Õm # 
function gettimeoutinterval() 
return 60 * FRAME2TIME -- script viet hoa By tuanglit  cã hay kh«ng cùc kú lóc ®Ých kiÓm tra gian c¸ch thêi gian lµ 60s 
end 

function IsTimeValid() 
if IsIPBonus() == 1 then 
IpBonus_Close() 
end; 

-- script viet hoa By tuanglit tinhpn 20100817: Online Award 
if (OnlineAward_StartDate()==1 and OnlineAward_Check_TransferLife() ~= 0) then 
OnlineAward_SummaryOnlineTime() 
end 

if GetSkillState(451) > 0 and GetTask(TSK_Active_x2EXP) ~= 1 then 
RemoveSkillState(451) 
end 
local szHour = date("%H"); 
local nDay = tonumber(date("%y%m%d")) 
local nHour = tonumber(szHour); 
-- script viet hoa By tuanglit  if (nHour >= 18 and nHour < 24) then 
-- script viet hoa By tuanglit  return 0 
-- script viet hoa By tuanglit  else 

-- script viet hoa By tuanglit  return 1 
-- script viet hoa By tuanglit  end 
if (nDay < BAIJU_DOUBLEEXP_TIME) then 
return 2 
else 
return 1 
end 
end; 


-- script viet hoa By tuanglit  kü n¨ng râ rµng ®Ých kinh nghiÖm cã hay kh«ng gÊp ®«i 
function skillBaijuEffect() 
local nHour = tonumber(GetLocalDate("%H")); -- script viet hoa By tuanglit  lÊy ®­îc giê 
return 1; 
end; 

-- script viet hoa By tuanglit  c¨n cø cÊp bËc lÊy ®­îc kinh nghiÖm 
function getofflinevalue(nLevel, bPartner) 

local nHour = tonumber(GetLocalDate("%H")); -- script viet hoa By tuanglit  lÊy ®­îc giê 

nExp = 0; 
	-- script viet hoa By tuanglit  Ò»Ð¡Ê±¹Ò»ú¾­Ñé£ºe={3.5w+floor[(lv-50)/5]*0.5w}*1.2
if (nLevel == 50) then -- script viet hoa By tuanglit  50 
nExp = 700; -- script viet hoa By tuanglit  mçi phót ®¹t ®­îc ®Ých kinh nghiÖm trÞ gi¸ 
elseif (nLevel < 100) then -- script viet hoa By tuanglit  51~99 
		nExp = 700 + floor((nLevel - 50)/5)*100; -- script viet hoa By tuanglit  Ã¿·ÖÖÓ»ñµÃµÄ¾­ÑéÖµ
else -- script viet hoa By tuanglit  100 cÊp cïng 100 cÊp trë lªn 
		nExp = 1700; -- script viet hoa By tuanglit  Ã¿·ÖÖÓ»ñµÃµÄ¾­ÑéÖµ[700 + floor((100 - 50)/5)*100]
end 

if (bPartner and nLevel < 50) then 
nExp = 175; -- script viet hoa By tuanglit  nÕu nh­ lµ ®ång b¹n , 50 cÊp h¹ ®¹t ®­îc kinh nghiÖm v× 50 cÊp ®¹t ®­îc kinh nghiÖm 1/4 
end 

if (GetProductRegion() ~= "vn") then 

-- script viet hoa By tuanglit  nÕu nh­ lµ 2006 mïa xu©n lµ r¹ng s¸ng 0 ®iÓm ®Õn tèi 6 ®iÓm 2 lÇn 
if isSpringTime()==1 and nHour>=0 and nHour<18 then 
nExp = nExp * 2; 
end; 

if (IsTimeValid() == 2) then 
nExp = nExp * AEXP_FREQ * 12; -- script viet hoa By tuanglit  mçi ngµy 0#00-12#00 b¹ch c©u hoµn kinh nghiÖm gÊp béi 
else 
nExp = nExp * AEXP_FREQ * 6; -- script viet hoa By tuanglit  (5) phót ®¹t ®­îc ®Ých kinh nghiÖm trÞ gi¸ ( hoa ®µo ®¶o kinh nghiÖm 6 lÇn ) 
end 

else 
nExp = nExp * AEXP_FREQ * 7; -- script viet hoa By tuanglit  (5) phót ®¹t ®­îc ®Ých kinh nghiÖm trÞ gi¸ () 
end 
-- script viet hoa By tuanglit  cã hay kh«ng cã ®¹i cßn ®an hiÖu qu¶ , lµ cã kinh nghiÖm thªm ®­îc 
if (IsDaHuanDanValid() == 1) then 
-- script viet hoa By tuanglit  cho cïng ®¹i cßn ®an kinh nghiÖm thªm ®­îc 
return nExp, GetTask(1741) 
end 

return nExp 
end; 

-- script viet hoa By tuanglit  gia t¨ng kinh nghiÖm 
function addofflineexp() 
if (IsTimeValid() == 0) then 
return 
end 
local nSpecialD = 0; 
if (GetTask(AEXP_TIANXING_TIME_TASKID) > 0) then 
nSpecialD = 5; 
elseif (GetTask(AEXP_SPECIAL_TIME_TASKID) > 0) then 
if (GetProductRegion() == "vn" and GetLevel() >= 130) then 
nSpecialD = 4; 
else 
nSpecialD = 2; 
end 
elseif (GetTask(AEXP_TASKID) > 0) then 
if (GetProductRegion() == "vn" and GetLevel() >= 130) then 
nSpecialD = 2.5; 
else 
nSpecialD = 1.5; 
end 
elseif (GetTask(AEXP_SMALL_TIME_TASKID) > 0) then 
if (GetProductRegion() == "vn" and GetLevel() >= 130) then 
nSpecialD = 1.5; 
else 
nSpecialD = 1; 
end 
else 
nSpecialD = 0.5*0.5; -- script viet hoa By tuanglit  UNDONE by zbl t¹i sao muèn thiÕt thµnh 0.25? 
end; 
-- script viet hoa By tuanglit getredbox(nSpecialD); -- script viet hoa By tuanglit  lÔ gi¸ng sinh ho¹t ®éng ë tuyÕn bµy qu¶n ®¹t ®­îc mµu ®á hép quµ 
tbFunv0903:GetItemByTuoGuan(nSpecialD) 
-- script viet hoa By tuanglit  gia t¨ng nhµ ch¬i kinh nghiÖm 
local nPlayerLevel = GetLevel(); 
if (nPlayerLevel >= AEXP_NEEDLEVEL) then 
local nExp, nAddExp = getofflinevalue(nPlayerLevel); 
nExp = floor(nSpecialD * nExp); 
local nEnExp = CalcEnhanceExp(nExp) -- script viet hoa By tuanglit  tÝnh to¸n kinh nghiÖm thªm ®­îc 
if (GetNpcExpRate() > 100) then 
nEnExp = floor((nEnExp * 100) / GetNpcExpRate()); 
end 
if (nAddExp and nSpecialD ~= 0.5) then 
			nEnExp = nEnExp + nAddExp
end 
AddOwnExp(nEnExp); -- script viet hoa By tuanglit  thªm kinh nghiÖm 
end 

-- script viet hoa By tuanglit  gia t¨ng ®ång b¹n kinh nghiÖm 
local nPartnerIdx, bPartnerCallOut = PARTNER_GetCurPartner(); 
if (nPartnerIdx > 0 and bPartnerCallOut == 1) then 
local nPartnerLevel = PARTNER_GetLevel(nPartnerIdx); 
if (nPartnerLevel >= AEXP_NEEDLEVEL_PARTNER) then 
local nExp = 0; 
nExp = getofflinevalue(nPartnerLevel,1); 
nExp = floor(nSpecialD * nExp); 
PARTNER_AddExp(nPartnerIdx, nExp); -- script viet hoa By tuanglit  thªm kinh nghiÖm 
end 
end 


end 

-- script viet hoa By tuanglit  nh÷ng chøc n¨ng kh¸c cÇn gia t¨ng bµy qu¶n kinh nghiÖm , viÕt vµo nµy 
function getAddExpValue(nExp) 
return 0 
end; 

-- script viet hoa By tuanglit  gi¶m bít thêi gian 
function reduceofflinetime() 
if (IsTimeValid() == 0) then 
return 
end 
local nInterval = 60 * FRAME2TIME; 
local nAexp_OwnExp_id; 
local nAexp_Skill_id; 

local tbAexpTask_Exp = {AEXP_SMALL_TIME_TASKID, AEXP_TASKID, AEXP_SPECIAL_TIME_TASKID, AEXP_TIANXING_TIME_TASKID}; 
local tbAexpTask_Skill = {AEXP_SMALL_SKILL_TASKID, AEXP_SKILL_TIME_TASKID, AEXP_SPECIAL_SKILL_TASKID}; 
for i = 1, getn(tbAexpTask_Exp) do 
if (GetTask(tbAexpTask_Exp[i]) > 0) then 
nAexp_OwnExp_id = tbAexpTask_Exp[i]; 
end 
end 
for i = 1, getn(tbAexpTask_Skill) do 
if (GetTask(tbAexpTask_Skill[i]) > 0) then 
nAexp_Skill_id = tbAexpTask_Skill[i]; 
end; 
end; 

if (GetTask(AEXP_SKILL_ID_TASKID) == 0) then 
nAexp_Skill_id = nil; 
end; 

local arynOfflineTimeTaskID = { nAexp_OwnExp_id, nAexp_Skill_id }; 

for i = 1, getn(arynOfflineTimeTaskID) do 
local nSpareTime = GetTask(arynOfflineTimeTaskID[i]); 
if (nSpareTime < nInterval) then 
nSpareTime = 0; 
else 
nSpareTime = nSpareTime - nInterval; 
end 
SetTask(arynOfflineTimeTaskID[i], nSpareTime); 
end 
reduceAddExpTime(); 
end 
function reduceAddExpTime() 
return 0 
end 

-- script viet hoa By tuanglit  gia t¨ng phóc duyªn 
function addoofflinefuyuna() 
if (IsTimeValid() == 0) then 
return 
end 

nRet = FuYuan_Gain(); 
-- script viet hoa By tuanglit  return nRet 
end 

-- script viet hoa By tuanglit  gia t¨ng kü n¨ng ®é thuÇn thôc 
function addofflineskillexp() 
if (IsTimeValid() == 0 or (GetTask(AEXP_SKILL_TIME_TASKID) <= 0 and GetTask(AEXP_SPECIAL_SKILL_TASKID) <= 0 and GetTask(AEXP_SMALL_SKILL_TASKID) <= 0)) then 
return 
end 

local nSpecialD = 1; -- script viet hoa By tuanglit  kü n¨ng b¹ch c©u 1 lÇn 
if (GetTask(AEXP_SPECIAL_SKILL_TASKID) > 0) then -- script viet hoa By tuanglit  ®Æc hiÖu kü n¨ng b¹ch c©u 2 lÇn 
nSpecialD = 2; 
elseif (GetTask(AEXP_SKILL_TIME_TASKID) > 0) then -- script viet hoa By tuanglit  kü n¨ng râ rµng c©u lµ 1.5 
nSpecialD = 1.5 
end; 

local nSkillID = GetTask(AEXP_SKILL_ID_TASKID); 
local nSkillLevel = GetCurrentMagicLevel(nSkillID, 0); 
local bUp = 0; 
if (nSkillLevel >= 1 and nSkillLevel <= getn(ARY_UPGRADE_SKILL_EXP_PERCENT)) then 
if (nSkillID >= ARY_120SKILLID[1] and nSkillID <= ARY_120SKILLID[10]) then 
-- script viet hoa By tuanglit  nÕu v× 120 kü n¨ng , lµ treo ky kinh nghiÖm v× ®Þnh trÞ gi¸ 
bUp = AddSkillExp(nSkillID, floor(nSpecialD * AEXP_120SKILL_UPGRADE_EXP), 1); 
else 
local fAddSkillExpPercent = floor(nSpecialD * ARY_UPGRADE_SKILL_EXP_PERCENT[nSkillLevel] * 10000 * skillBaijuEffect()); 
bUp = AddSkillExp(nSkillID, fAddSkillExpPercent, 1, 1); 
end; 
if (bUp == 1 and GetCurrentMagicLevel(nSkillID, 0) > getn(ARY_UPGRADE_SKILL_EXP_PERCENT)) then 
autosetupgradeskill(); 
end 
else 
autosetupgradeskill(); 
end 
end 

function IsDaHuanDanValid() 
if (GetTask(1742) > 0) then 
return 1 
end 
end
