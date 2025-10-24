IncludeLib("SETTING"); 
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\lib\\awardtemplet.lua")

----------------------------------------------------------------------------------------------------
--						§æi ThÇn Bİ §å Chİ sang TiÒn V¹n						--
----------------------------------------------------------------------------------------------------
function thanbidochi()
dofile("script/global/mel/thanbidochi.lua")
Say("C¸c h¹ muèn ®æi ThÇn Bİ §å Chİ sang tiÒn v¹n chø? §iÒu kiÖn quy ®æi lµ ph¶i cã trªn 1000 ®å chİ. TØ lÖ quy ®æi 1 ®å chİ = 1000 l­îng b¹c",2,
	"§óng vËy, ta muèn quy ®æi ThÇn Bİ §å Chİ/doi_tbdc_xu",
	"§Ó ta suy nghÜ ®·./OnCancel");
end;


function doi_tbdc_xu()
local myMapNum = nt_getTask(1027); -- LÊy sè ThÇn Bİ §å Chİ hiÖn cã
if myMapNum >= 1000 then
local a = myMapNum - 1000; -- Tİnh sè TBDC sè b¸n
if a > 0 then
local remain = a;
-- Chia nhá thµnh tõng l« (tèi ®a 9999)
while remain > 0 do
local batch = 999999;
if remain < 999999 then
batch = remain*1000;
end
Earn(batch)
---AddStackItem(batch,4,417,1,1,0,0,0); -- Mçi l« add xu
remain = remain*1000 - batch;
end
-- Th«ng b¸o cho ng­­êi ch¬i
Msg2Player("<color=green>B¹n ®· quy ®æi <color=yellow>"..a.." <color> ThÇn Bİ §å Chİ, nhËn vÒ "..(a*1000).." l­îng b¹c<color>");
Msg2Player("<color=green>Sè ThÇn Bİ §å Chİ cßn l¹i lµ 1000<color>");
-- CËp nhËt sè l­îng TBDC cßn l¹i
nt_setTask(1027, 1000);
else
Msg2Player("<color=red>B¹n kh«ng cã th«a m·n ®Ó quy ®æi<color>"); -- B¹n cã d­íi hoÆc ®óng 1000
end
else
Msg2Player("<color=red>Sè ThÇn Bİ §å Chİ cña b¹n nhá h¬n 1000, kh«ng thÓ quy ®æi<color>");
end
end