-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##makesnowman.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2007-11-23 10:56:30 

Include("\\script\\event\\xmas06_makesnowman\\head.lua") 
Include("\\script\\task\\system\\task_string.lua"); 
Include("\\script\\lib\\basic.lua"); 
function main() 
xmas07_makeSnowMan_main() 
end 
function xmas07_makeSnowMan_main() 
if xmas07_makeSnowMan_isActPeriod() == 0 then 
Say(format("Ho¹t ®éng <color=yellow>%s<color> ®· kÕt thóc !",xmas07_makeSnowMan_ActName),0) 
return 0; 
end 
local tbDialog = 
{ 
"<dec><npc> ha ha , gi¸ng sinh vui vÎ #", 
" Ta muèn hiÓu râ néi dung ho¹t ®éng /xmas07_makeSnowMan_Content", 
" Ta muèn t¹o ng­êi tuyÕt ./xmas07_makeSnowMan_wantCompose", 
" KÕt thóc ®èi tho¹i /OnCancel", 
} 

CreateTaskSay(tbDialog) 
end 
function xmas07_makeSnowMan_Content() 
local tbDialog = 
{ 
"<dec><npc> Tõ <color=red>0h00 ngµy 08-06-2014 ®Õn 24h00 ngµy 08-07-2014<color>, c¸c vâ l©m nh©n sÜ ®¸nh qu¸i nhÆt ®­îc <color=yellow> Gi¸ng sinh hép quµ <color>, më ra Gi¸ng sinh hép quµ nhËn ®­îc nguyªn liÖu lµm ng­êi tuyÕt. Thu tËp ®ñ nguyªn liÖu sau , cã thÓ ®Õn chÕ t¹o <color=yellow> c¸c lo¹i ng­êi tuyÕt <color> .<enter> ë ngoµi thµnh khu vùc , sö dông Hoµng TuyÕt Nh©n , Tö TuyÕt Nh©n , hoÆc lµ Lôc TuyÕt Nh©n cã thÓ nhËn ®­îc <color=red>1000000 kinh nghiÖm <color> cïng víi mét <color=red> VËt phÈm <color>, dÜ nhiªn , nÕu nh­ may m¾n , cã thÓ kªu lªn <color=yellow> Boss Ng­êi TuyÕt<color>, ®¸nh b¹i Boss Ng­êi TuyÕt cã c¬ héi nhËn ®­îc phÇn th­ëng cã gi¸ trÞ", 
" Ha ha ha , ta biÕt /xmas07_makeSnowMan_main" 
} 
CreateTaskSay(tbDialog) 
end 
function xmas07_makeSnowMan_wantCompose() 
local tbDialog = 
{ 
"<dec><npc> C¸c vâ l©m nh©n sÜ lóc ®¸nh qu¸i cã c¬ héi nhÆt ®­îc <color=yellow> B¨ng Tinh <color> hÖ Kim , hÖ Méc, hÖ Thñy, hÖ Háa, hÖ Thæ. Sö dông <color=yellow> B¨ng Tinh <color> ®em lµm ng­êi tuyÕt , ®¹i hiÖp muèn lo¹i nµo ? ", 
" Ta muèn t¹o Ng­êi tuyÕt th­êng /#xmas2007_makeSnowMan_compose([[Yellow]])", 
" Ta muèn t¹o Ng­êi tuyÕt ®Æc biÖt /#xmas2007_makeSnowMan_compose([[Yellow_db]])", 
" Ta muèn t¹o Ng­êi tuyÕt choµng kh¨n xanh (th­êng) /#xmas2007_makeSnowMan_compose([[Purple]])", 
" Ta muèn t¹o Ng­êi tuyÕt choµng kh¨n xanh (®Æc biÖt) /#xmas2007_makeSnowMan_compose([[Purple_db]])", 
" Ta muèn t¹o Ng­êi tuyÕt choµng kh¨n ®á (th­êng) /#xmas2007_makeSnowMan_compose([[Green]])", 
" Ta muèn t¹o Ng­êi tuyÕt choµng kh¨n ®á (®Æc biÖt) /#xmas2007_makeSnowMan_compose([[Green_db]])", 
" Chê mét chót trë l¹i /OnCancel" 
} 
CreateTaskSay(tbDialog) 
end 
xmas2007_makeSnowMan_tbItem = 
{ 
{1, {6,1,1324,1,0,0},"Ng­êi tuyÕt th­êng "}, 
{1, {6,1,1321,1,0,0},"Ng­êi tuyÕt ®Æc biÖt "}, 
{1, {6,1,1322,1,0,0},"Ng­êi tuyÕt choµng kh¨n xanh (th­êng) "}, 
{1, {6,1,1319,1,0,0},"Ng­êi tuyÕt choµng kh¨n xanh (®Æc biÖt) "}, 
{1, {6,1,1323,1,0,0},"Ng­êi tuyÕt choµng kh¨n ®á (th­êng) "}, 
{1, {6,1,1320,1,0,0},"Ng­êi tuyÕt choµng kh¨n ®á (®Æc biÖt) "}, 
} 
xmas2007_makeSnowMan_tbMaterial = 
{ 
{0, {6,1,1312,nil,nil,nil},"Hoa tuyÕt "}, 
{0, {6,1,1314,nil,nil,nil},"Cµnh th«ng "}, 
{0, {6,1,1313,nil,nil,nil},"Cµ rèt "}, 
{0, {6,1,1315,nil,nil,nil},"Nãn gi¸ng sinh "}, 
{0, {6,1,1316,nil,nil,nil}, "Kh¨n choµng (xanh) "}, 
{0, {6,1,1317,nil,nil,nil},"Kh¨n choµng (®á) "}, 
{0, {6,1,1318,nil,nil,nil},"C©y th«ng "}, 
} 
xmas2007_makeSnowMan_Recipe = 
{ 
	Yellow	= {tbItemList = {5,2,1,1,0,0,0}, nMoney = 0, tbResult = xmas2007_makeSnowMan_tbItem[1]},		-- script viet hoa By http://tranhba.com 1ÎåÉ«±ù¾§ + 2 ½ð±ù¾§ + 3 Ä¾±ù¾§ + 4 Ë®±ù¾§ + 5 »ð±ù¾§ + 6 ÍÁ±ù¾§
	Yellow_db	= {tbItemList = {5,2,1,1,0,0,1}, nMoney = 10000, tbResult = xmas2007_makeSnowMan_tbItem[2]},
                Purple	= {tbItemList = {5,2,1,1,1,0,0}, nMoney = 0, tbResult = xmas2007_makeSnowMan_tbItem[3]},		-- script viet hoa By http://tranhba.com 0ÎåÉ«±ù¾§ + 2 ½ð±ù¾§ + 3 Ä¾±ù¾§ + 4 Ë®±ù¾§ + 5 »ð±ù¾§ + 6 ÍÁ±ù¾§
	Purple_db	= {tbItemList = {5,2,1,1,1,0,1}, nMoney = 20000, tbResult = xmas2007_makeSnowMan_tbItem[4]},
                Green	= {tbItemList = {5,2,1,1,0,1,0},nMoney = 0, tbResult = xmas2007_makeSnowMan_tbItem[5]},	-- script viet hoa By http://tranhba.com 10 ÍòÁ½ + 0ÎåÉ«±ù¾§ + 2 ½ð±ù¾§ + 3 Ä¾±ù¾§ + 4 Ë®±ù¾§ + 5 »ð±ù¾§ + 6 ÍÁ±ù¾§
                Green_db	= {tbItemList = {5,2,1,1,0,1,1},nMoney = 30000, tbResult = xmas2007_makeSnowMan_tbItem[6]},
} 

function xmas2007_makeSnowMan_ComposeConfirm(szSelect) 
local tbMaterial = xmas2007_makeSnowMan_tbMaterial; 
local szMaterialList = nil; 
for i=1,getn(tbMaterial) do 
tbMaterial[i][1] = xmas2007_makeSnowMan_Recipe[szSelect].tbItemList[i]; 
if tbMaterial[i][1] ~= 0 then 
if not szMaterialList then 
szMaterialList = format("<color=red>%d<color> <color=yellow>%s<color>",tbMaterial[i][1],tbMaterial[i][3]) 
else 
szMaterialList = format("%s, <color=red>%d<color> <color=yellow>%s<color>",szMaterialList,tbMaterial[i][1],tbMaterial[i][3]) 
end 
end 
end 
local tbAwardItem = xmas2007_makeSnowMan_Recipe[szSelect].tbResult 
local nMoney = xmas2007_makeSnowMan_Recipe[szSelect].nMoney; 

if xmas2007_makeSnowMan_CheckMaterial(tbMaterial) ~= 1 then 
Say(format("§¹i hiÖp ch­a ®ñ nguyªn liÖu , cÇn ph¶i cã %s míi cã thÓ t¹o .",szMaterialList), 1 ,"ThËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./OnCancel") 
return 0; 
end 
if Pay(nMoney) == 0 then 
Say(format("Kh«ng thÓ , mang kh«ng ®ñ tiÒn , cÇn <color=yellow>%d<color> hai ",nMoney),0) 
return 0; 
end 
if nMoney ~= 0 then 
Msg2Player(format("Tiªu phÝ <color=yellow>%d<color> hai ",nMoney)) 
end 
if xmas2007_makeSnowMan_ConsumeMaterial(tbMaterial) ~= 1 then 
Say("ChÕ t¹o thÊt b¹i , mÊt ®i mét Ýt nguyªn liÖu .",0) 
return 0; 
end 
xmas2007_SnowManItem_AddItem(tbAwardItem[3],tbAwardItem[2]); 
Say(format("TuyÕt l·o ng­êi # ha ha , <color=yellow>%s<color> ®· t¹o thµnh c«ng liÔu , mêi tíi lÊy !",tbAwardItem[3])) 
end 
function xmas2007_makeSnowMan_compose(szSelect) 
local tbMaterial = xmas2007_makeSnowMan_tbMaterial; 
local szMaterialList = nil; 
for i=1,getn(tbMaterial) do 
tbMaterial[i][1] = xmas2007_makeSnowMan_Recipe[szSelect].tbItemList[i]; 
if tbMaterial[i][1] ~= 0 then 
if not szMaterialList then 
szMaterialList = format("<color=red>%d<color> <color=yellow>%s<color>",tbMaterial[i][1],tbMaterial[i][3]) 
else 
szMaterialList = format("%s, <color=red>%d<color> <color=yellow>%s<color>",szMaterialList,tbMaterial[i][1],tbMaterial[i][3]) 
end 
end 
end 
local tbAwardItem = xmas2007_makeSnowMan_Recipe[szSelect].tbResult 
local nMoney = xmas2007_makeSnowMan_Recipe[szSelect].nMoney; 
if nMoney ~= 0 then 
szMaterialList = format("%s, cÇn ph¶i cã <color=yellow>%d<color> hai ",szMaterialList,nMoney) 
end 
local tbNpcSay = 
{ 
format("<dec><npc> ChÕ t¹o <color=yellow>%s<color>, cÇn %s.",tbAwardItem[3],szMaterialList), 
format("T¹o ng­êi tuyÕt /#xmas2007_makeSnowMan_ComposeConfirm([[%s]])",szSelect), 
"§Ó cho ta chuÈn bÞ #/OnCancel", 
} 
CreateTaskSay(tbNpcSay) 
end 

function xmas2007_makeSnowMan_CheckMaterial(tbMaterial) 
for i=1,getn(tbMaterial) do 
local tbItem = tbMaterial[i] 
local nLevel = tbItem[2][4] or -1 
if tbItem[1] > 0 and CalcEquiproomItemCount(tbItem[2][1],tbItem[2][2],tbItem[2][3],nLevel) < tbItem[1] then 
return 0; 
end 
end 
return 1; 
end 

function xmas2007_makeSnowMan_ConsumeMaterial(tbMaterial) 
for i=1,getn(tbMaterial) do 
local tbItem = tbMaterial[i] 
local nLevel = tbItem[2][4] or -1 
-- script viet hoa By http://tranhba.com print(tbItem[1],tbItem[2][1],tbItem[2][2],tbItem[2][3],nLevel) 
if tbItem[1] > 0 and ConsumeEquiproomItem(tbItem[1],tbItem[2][1],tbItem[2][2],tbItem[2][3],nLevel) ~= 1 then 
return 0; 
end 
end 
return 1; 
end 

function OnCancel() 
end 
