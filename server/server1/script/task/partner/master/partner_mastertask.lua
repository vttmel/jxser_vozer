-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  FileName : partner_mastertask.lua 
-- script viet hoa By http://tranhba.com  Author : xiaoyang 
-- script viet hoa By http://tranhba.com  CreateTime : 2005-08-25 10:50:15 
-- script viet hoa By http://tranhba.com  Desc : ®ång b¹n kÞch t×nh nhiÖm vô c¸c ®èi tho¹i nh©n vËt ch©n vèn 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com  c¸c cÊp bËc ®ång b¹n kÞch t×nh nhiÖm vô thËt thÓ xö lý v¨n kiÖn 
Include ("\\script\\task\\partner\\master\\partner_master_main.lua");

Include("\\script\\task\\newtask\\newtask_head.lua") -- script viet hoa By http://tranhba.com µ÷ÓÃ nt_getTask Í¬²½±äÁ¿µ½¿Í»§¶ËµÄÀà
Include("\\script\\task\\partner\\partner_head.lua") -- script viet hoa By http://tranhba.com °üº¬ÁËÍ¼Ïóµ÷ÓÃ
IncludeLib("PARTNER") 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  cïng ®ång b¹n kÞch t×nh t­¬ng quan long n¨m ch©n vèn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function master_longwu() 
local PlayerName = GetName() 
if ( GetLevel() <= 10 ) then 
Describe(DescLink_LongWu.."<#>#"..PlayerName.." , ng­¬i muèn nhËn lÊy mét vÞ ®ång b¹n lµm b¹n ng­¬i x«ng x¸o giang hå sao ? ",2, 
" ta nguyÖn ý /partner_longwu_getpartner", 
" chung th©n ®¹i sù , suy nghÜ mét chót n÷a ®i /no") 
elseif ( nt_getTask(1000) == 1000 or nt_getTask(1001) == 1000 or nt_getTask(1002) == 1000 or nt_getTask(1003) == 1000 ) then 
Describe(DescLink_LongWu.."<#>#"..PlayerName.." , ®· l©u kh«ng gÆp , gÇn ®©y ta ra khái chuyÕn xa cöa , ng­¬i hÕt th¶y kháe kh«ng ? nghÜa trong qu©n ®Ých c¸c huynh ®Ö tû muéi còng rÊt treo ng­¬i , dÆn dß ta gÆp ®­îc ng­¬i nhÊt ®Þnh ph¶i chuyÓn c¸o , giang hå n¨m th¸ng thóc giôc ng­êi l·o , th©n thÓ lµm träng , ph¶i hiÓu ®­îc quý träng m×nh a . tèt l¾m , nhµn tho¹i kh«ng nãi , ng­¬i lÇn nµy tíi t×m ta , lµ cã chuyÖn g× ? ",2, 
" ta muèn tíi xem mét chót cã c¸i g× cïng ®ång b¹n t­¬ng quan kÞch t×nh nhiÖm vô /partner_longwu_mastertalk", 
" kh«ng cã g× , tíi xem mét chót b¹n cò mµ th«i /no") 
else 
Describe(DescLink_LongWu.."<#>#"..PlayerName.." , giang hå m­a giã phiªu diªu , nói s«ng x· t¾c kh«ng chõng , ta Long mç trong lßng cÊp a . nghÜa qu©n thËt h©n h¹nh gÆp ng­¬i nguyÖn ý v× quèc gia ra mét phÇn lùc , còng qu¸ cÇn trî gióp cña ng­¬i liÔu . ",2, 
" ta muèn tíi xem mét chót cã c¸i g× cïng ®ång b¹n t­¬ng quan kÞch t×nh nhiÖm vô /partner_longwu_mastertalk", 
" kh«ng cã g× , tíi xem mét chót b¹n cò mµ th«i /no") 
end 
end 

function partner_longwu_mastertalk() 
taskProcess_000:doTaskEntity(); 
return 1; 
end 

function partner_longwu_cancelmastertask() 
Describe(DescLink_LongWu.."<#># hñy bá chøc n¨ng chê luyÖn chÕ hoµn thµnh ®ång gia nhËp . ",1,"KÕt thóc ®èi tho¹i /no") 
end 



-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  thÞ lang chÕt nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function partner_longwu_70() 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local NpcCount = PARTNER_Count() 
if ( PARTNER_GetTaskValue(partnerindex,3) ~= 1000 ) then 
Describe(DescLink_LongWu.."<#># gÇn ®©y , m«n h¹ ®Ö tö nãi cho ta biÕt mét mãn chuyÖn kú qu¸i . tr­íc ®©y kh«ng l©u , nam nh¹c trÊn trªn tíi mét ng¹ch cã ®©m thanh , béi mang hép s¾t ®Ých giµ nua ph¹m nh©n , ng­êi nµy ¸nh m¾t qu¾c th­íc , nh×n qua kh«ng gièng t­íng m¹o phi phµm . cho nªn chóng ta giÊu giÕm ë nam nh¹c trong kh¸ch s¹n ®Ých cao thñ ®èi víi h¾n cã nhiÒu chiÕu cè . cã mét l«i m­a chÊt thªm ®Ých ban ®ªm , l·o nh©n chît thÇn s¾c ho¶ng sî t×m ®­îc ng­êi ®Ö tö kia , nãi ra mét liªn quan tíi tµng b¶o ®å m¶nh vôn ®Ých lín lao bÝ mËt . th× ra lµ vÞ l·o nh©n nµy l¹i lµ ®­¬ng triÒu Binh bé ThÞ lang , bëi v× lùc chñ chèng l¹i kim quèc , bÞ l­u ®µi Nam C­¬ng thó bªn . kú qu¸i h¬n chÝnh lµ , ngµy thø hai s¸ng sím thÞ lang ®¹i nh©n chît v« tËt b¹o tÔ # liªn l¹c gÇn nhÊt trªn giang hå tin ®ån ®Ých vâ l©m kh¸ch s¹n ë giang hå nghiÔm ph¸t anh hïng d¸n , ­íc ®Þnh n¨m sau triÖu tËp anh hïng thiªn h¹ cìi ra cïng ngµy hoµng long khÝ t­¬ng quan tµng b¶o ®å bÝ mËt chuyÖn nµy , ta c¶m thÊy sau l­ng cã lÏ cã c¸ lín lao ©m m­u . mét tê nho nhá kim nª thu phong tiªn , thµnh giang hå anh hïng ng­êi ng­êi muèn ph¶i sau mau b¶o bèi . cßn ch©n chÝnh truyÒn l­u giang hå ®Ých , tùa hå chØ cã thËp ®¹i m«n ph¸i ch­ëng m«n nh©n trong tay m­êi tê , kh¸c m­êi tr­¬ng anh hïng d¸n còng kh«ng biÕt tung tÝch . ta tin t­ëng thÞ lang ®Ých chÕt cïng chi cã liªn quan , muèn mêi ng­¬i t×m ra s¬ hë trong ®ã . hãa gi¶i Trung Nguyªn vâ l©m ®Ých mét cuéc h¹o kiÕp #[ nµy nhiÖm vô mçi vÞ phï hîp ®iÒu kiÖn ®Ých ®ång b¹n còng bÞ cho phÐp tiÕn hµnh ]<enter>" 
.."<color=green> t­ëng th­ëng #<color>",3, 
" ta nguyÖn ý tiÕp nhËn nhiÖm vô /longwu_70_gettask", 
" ta lµ tíi ®ãng nhiÖm vô /longwu_70_finishtask", 
" cho ta suy nghÜ mét chót n÷a ®i /no") 
else 
Describe(DescLink_LongWu.."<#># thÞ lang chÕt nhiÖm vô tùa hå cßn cã mét chót nghi ngê kh«ng cã cìi ra . ng­¬i nguyÖn ý ®i nam nh¹c tiÕp tôc ®iÒu tra sao ? b­íc cïng tr­íc kia lµ gièng nhau , nh×n cã thÓ hay kh«ng tra ra chót bÊt ®ång ®Þa ph­¬ng tíi . <enter>" 
.."<color=green> t­ëng th­ëng #<color>",4, 
" ta nguyÖn ý tiÕp nhËn nhiÖm vô /longwu_70_gettask", 
" ta lµ tíi ®ãng nhiÖm vô /longwu_70_finishtask", 
" ta muèn hñy bá nªn nhiÖm vô /longwu_70_canceltask", 
" cho ta suy nghÜ mét chót n÷a ®i /no") 
end 
end 

function longwu_70_gettask() 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local NpcCount = PARTNER_Count() 
local longwu_70_date = tonumber(date("%y%m%d")) -- script viet hoa By http://tranhba.com  ®¹t ®­îc b©y giê nhËt kú 

if ( NpcCount == 0 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i tr­íc mÆt kh«ng cã ®ång b¹n , kh«ng lµm ®­îc ®ång b¹n t­¬ng quan kÞch t×nh nhiÖm vô a . ng­¬i cã thÓ th«ng qua c¸c thµnh phè ®Ých tr­êng ca m«n nh©n , ®Õn v©n trung trÊn t×m kiÕm hoµng ®Ö tö nhËn lÊy mét vÞ . ",1,"KÕt thóc ®èi tho¹i /no") 
return 
elseif ( partnerstate == 0 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i tr­íc mÆt kh«ng cã cho gäi ra ®ång b¹n tíi , lµm g× ®ång b¹n kÞch t×nh nhiÖm vô ®©y ? ",1,"KÕt thóc ®èi tho¹i /no") 
return 
elseif ( PARTNER_GetLevel(partnerindex) < 10 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i tr­íc mÆt ®ång b¹n bÊt m·n 10 cÊp , xin/mêi ®em h¾n huÊn luyÖn ®Õn 10 cÊp trë lªn trë l¹i ®i . ",1,"KÕt thóc ®èi tho¹i /no") 
return 
elseif ( GetLevel() < 70 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i cßn kh«ng cã ®¹t tíi nhiÖm vô nhu cÇu ®Ých cÊp bËc , ®Õn 70 cÊp ®Ých thêi ®iÓm trë l¹i ®i , cè g¾ng lªn #",1,"KÕt thóc ®èi tho¹i /no") 
return 
elseif ( PARTNER_GetTaskValue(partnerindex,3) >= 10 ) and ( PARTNER_GetTaskValue(partnerindex,3) < 1000 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i kh«ng ph¶i lµ ®· nhËn ®­îc nhiÖm vô sao , mau mau hoµn thµnh nã ®i . ",1,"KÕt thóc ®èi tho¹i /no") 
return 
else 
for i=1,NpcCount do 
if ( PARTNER_GetTaskValue(i,3) ~= 0 and PARTNER_GetTaskValue(i,3) ~= 1000 ) or ( nt_getTask(1256) ~= 0 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i ®· cã ®ång b¹n ®ang lµm thÞ lang chÕt nhiÖm vô , tr­íc hoµn thµnh ®· nhËn ®Ých nhiÖm vô ®i . ",1,"KÕt thóc ®èi tho¹i /no") 
return 
end 
end 
end 

if ( PARTNER_GetTaskValue(partnerindex,3) == 0 ) then 
PARTNER_SetTaskValue(partnerindex,3,10) -- script viet hoa By http://tranhba.com  thiÕt trÝ duy nhÊt tÝnh kÞch t×nh nhiÖm vô v× b¾t ®Çu tr¹ng th¸i 
nt_setTask(1256,10) -- script viet hoa By http://tranhba.com  thiÕt trÝ kÞch t×nh nhiÖm vô b¾t ®Çu 
Msg2Player("Ng­¬i ®· nhËn ®­îc nhiÖm vô , h¼n ®i nam nh¹c trÊn ®iÒu tra mét c¸i thÞ lang ®Ých nguyªn nh©n c¸i chÕt liÔu . ") 
if ( GetBit(GetTask(1250),1) == 0 ) then 
nt_setTask(1250,SetBit(GetTask(1250),1,1)) 
Msg2Player("Ph¸t ra b­íc ®Çu tiªn kÞch t×nh nhiÖm vô nhµ ch¬i t­¬ng quan t­ëng th­ëng . ") -- script viet hoa By http://tranhba.com  ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? 
end 
elseif ( PARTNER_GetTaskValue(partnerindex,3) == 1000 ) then 
if ( nt_getTask(1254) == 0 ) then 
nt_setTask(1254,longwu_70_date) 
end 

if ( nt_getTask(1254) == longwu_70_date ) and ( nt_getTask(1255) == 0 ) then 
nt_setTask(1256,10) -- script viet hoa By http://tranhba.com  thiÕt trÝ nh­ng t¸i diÔn tÝnh kÞch t×nh nhiÖm vô b¾t ®Çu 
Msg2Player("Ng­¬i ®· nhËn ®­îc nhiÖm vô , h¼n ®i nam nh¹c trÊn ®iÒu tra mét c¸i thÞ lang ®Ých nguyªn nh©n c¸i chÕt liÔu . ") 
elseif ( nt_getTask(1254) == longwu_70_date ) and ( nt_getTask(1255) ~= 0 ) then 
Msg2Player("ThËt xin lçi , ng­¬i h«m nay ®· hoµn thµnh qu¸ lo¹i nµy nh­ng t¸i diÔn tÝnh ®Ých kÞch t×nh nhiÖm vô . xin/mêi ngµy mai trë l¹i . ") 
elseif ( nt_getTask(1254) ~= longwu_70_date ) then 
nt_setTask(1254,longwu_70_date) 
nt_setTask(1256,10) -- script viet hoa By http://tranhba.com  thiÕt trÝ nh­ng t¸i diÔn tÝnh kÞch t×nh nhiÖm vô b¾t ®Çu 
Msg2Player("Ng­¬i ®· nhËn ®­îc nhiÖm vô , h¼n ®i nam nh¹c trÊn ®iÒu tra mét c¸i thÞ lang ®Ých nguyªn nh©n c¸i chÕt liÔu . ") 
end 
else 
Describe(DescLink_LongWu.."<#># ng­¬i ®· nhËn lÊy thÞ lang chÕt nhiÖm vô , cè g¾ng lªn #",1,"KÕt thóc ®èi tho¹i /no") 
end 
end 

function longwu_70_finishtask() 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local NpcCount = PARTNER_Count() 
local longwu_70_date = tonumber(date("%y%m%d")) -- script viet hoa By http://tranhba.com  ®¹t ®­îc b©y giê nhËt kú 

if ( nt_getTask(1256) ~= 40 or nt_getTask(1259) < 50 or nt_getTask(1260) < 50 ) then -- script viet hoa By http://tranhba.com  ch­a hoµn thµnh nhiÖm vô ®Õn dÉn t­ëng c¸i nµy b­íc 
Describe(DescLink_LongWu.."<#># ng­¬i cßn kh«ng cã ®¹t tíi nhËn lÊy t­ëng th­ëng ®Ých møc , chê ®Õn thÝch hîp thêi ®iÓm trë l¹i ®i . ",1,"KÕt thóc ®èi tho¹i /no") 
return 
elseif ( NpcCount == 0 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i tr­íc mÆt kh«ng cã ®ång b¹n , thÕ nµo ®ãng ®ång b¹n t­¬ng quan kÞch t×nh nhiÖm vô a . ng­¬i cã thÓ th«ng qua c¸c thµnh phè ®Ých tr­êng ca m«n nh©n , ®Õn v©n trung trÊn t×m kiÕm hoµng ®Ö tö nhËn lÊy mét vÞ . ",1,"KÕt thóc ®èi tho¹i /no") 
return 
elseif ( partnerstate == 0 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i tr­íc mÆt kh«ng cã cho gäi ra ®ång b¹n tíi , thÕ nµo dÉn t­ëng ®©y ? ",1,"KÕt thóc ®èi tho¹i /no") 
return 
elseif ( PARTNER_GetTaskValue(partnerindex,3) ~= 10 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i cho gäi ra tíi ®ång b¹n còng kh«ng ph¶i lµ cïng ng­¬i cïng nhau lµm kÞch t×nh nhiÖm vô ®ång b¹n , xin/mêi cho gäi ra chÝnh x¸c ®ång b¹n tíi , c¸m ¬n . ",1,"KÕt thóc ®èi tho¹i /no") 
return 
end 

if ( PARTNER_GetTaskValue(partnerindex,3) == 10 ) then -- script viet hoa By http://tranhba.com  khi chèt më më ra lóc , bµy tá kÞch t×nh nhiÖm vô ®· b¾t ®Çu 
PARTNER_SetTaskValue(partnerindex,3,1000) 
nt_setTask(1256,0) 
nt_setTask(1259,0) 
nt_setTask(1260,0) 
nt_setTask(1261,0) 
if ( GetBit(GetTask(1250),3) == 0 ) then 
nt_setTask(1250,SetBit(GetTask(1250),3,1)) 
Msg2Player("Ph¸t ra b­íc thø ba kÞch t×nh nhiÖm vô nhµ ch¬i t­¬ng quan t­ëng th­ëng . ") -- script viet hoa By http://tranhba.com  ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? 
end 
Msg2Player("Ph¸t ra ®ång b¹n ®Ých t­ëng th­ëng ") -- script viet hoa By http://tranhba.com  ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? 
else 
nt_setTask(1254,longwu_70_date) 
nt_setTask(1255,1) 
nt_setTask(1256,0) 
nt_setTask(1259,0) 
nt_setTask(1260,0) 
nt_setTask(1261,0) 
Msg2Player("Ph¸t ra lµm t¸i diÔn tÝnh nhiÖm vô t­ëng th­ëng #") -- script viet hoa By http://tranhba.com  ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? 
end 
end 

function longwu_70_canceltask() 
Describe(DescLink_LongWu.."<#># ng­¬i nhÊt ®Þnh ph¶i hñy bá tr­íc mÆt ®ang lµm nhiÖm vô sao ? ",2, 
" ®óng vËy , ta x¸c ®Þnh /longwu_70_yescancel", 
" cho ta suy nghÜ l¹i mét chót /no") 
end 

function longwu_70_yescancel() 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ®¹t ®­îc cho gäi ra ®ång b¹n ®Ých index, ®ång b¹n tr¹ng th¸i v× gäi ra hoÆc v× kh«ng gäi ra 
local NpcCount = PARTNER_Count() 
if ( nt_getTask(1256) ~= 0 ) then 
nt_setTask(1256,0) 
for i=1,NpcCount do 
if ( PARTNER_GetTaskValue(i,3) ~= 0 and PARTNER_GetTaskValue(i,3) ~= 1000 ) then 
PARTNER_GetTaskValue(i,3,0) 
end 
end 
Msg2Player("Ngµi ®· thµnh c«ng hñy bá nhiÖm vô . ") 
else 
Describe(DescLink_LongWu.."<#># b©y giê thêi cuéc ®iªu tÖ , Long mç trong ngoµi ®ãng kÑt , ng­¬i thÕ nµo cßn trªu víi ta ®©y ? râ rµng kh«ng cã nhËn lÊy lo¹i nhiÖm vô nµy sao . ",1,"KÕt thóc ®èi tho¹i /no") 
return 
end 
Msg2Player("Ng­¬i ®· thuËn lîi hñy bá nhiÖm vô . ") 
end 




-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tÜnh nh¹c s­ th¸i ch©n vèn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function partner_master_jingyue() 
if ( nt_getTask(1256) == 10 ) then 
Describe(DescLink_JingYue.."<#># A di ®µ phËt , "..GetName().." thÝ chñ , ng­¬i rèt côc vÉn ph¶i tíi kÐo . bÇn ni s¸ng sím næi lªn mét quÎ , quÎ gièng nh­ thµnh t­êng , lµ c¸t ®iÒm . cã lÏ c¸i nµy n¨m nh¹c mét trong ®Ých linh s¬n , cã thÓ miÔn trõ mét cuéc huyÕt quang tai ­¬ng . <enter>" 
.." thÞ lang chÕt bëi mét lo¹i v« cïng kú qu¸i Êm . h¬n n÷a trÊn trªn kh«ng chØ mét ng­êi m¾c bÖnh nÆng mµ chÕt . c¸i lo¹i ®ã Êm lµ do mét lo¹i rõng rËm kim tuyÕn xµ ®­a tíi , nã th­êng th­êng ë nöa ®ªm ®Ých thêi ®iÓm tõ l­¬ng méc th­îng leo xuèng , len lÐn ®ang ngñ c¾n ng­êi ®Ých ®Çu , bëi v× tãc che ®Ëy , cho nªn kh«ng nh×n ra dÊu vÕt . ®¸ng tiÕc nã v« cïng gi¶o ho¹t , bÇn ni kh«ng cã c¸ch nµo b¾t ®­îc . lo¹i nµy xµ tuyÖt kh«ng ph¶i nam nh¹c trÊn tÊt c¶ , ta hoµi nghi lµ cã ng­êi chØ ®iÓm . cho nªn cÇn t×m ®­îc cã thÓ ®em kim tuyÕn xµ hu©n ra ngoµi ®Þa hoµng cá , phÝ l¸ cïng nhuém gi¸p c©y . nh÷ng thø ®å nµy còng sinh víi phÝa b¾c ®Ých s¬n tÆc ®éng . n¬i ®ã hung hiÓm v¹n phÇn , mét lo¹i vâ l©m cao thñ ®i vµo , còng cã ®i v« trë vÒ , ng­¬i nguyÖn ý ®i kh«ng ? ",2, 
" ®óng vËy , ta nguyÖn ý /partner_jingyue_go", 
" kh«ng , ta tr­íc chuÈn bÞ mét chót /no") 
else 
Describe(DescLink_JingYue.."<#># A di ®µ phËt , thÇn bÝ kim tuyÕn xµ chît hµng tai , hy väng PhËt tæ phï hé c¸i nµy ngµn n¨m linh s¬n miÔn diÖt trõ mét cuéc h¹o kiÕp a . ",2, 
" ta muèn ®i s¬n tÆc ®éng /partner_jingyue_trap", 
" s­ th¸i b¶o träng /no") 
end 
end 

function partner_jingyue_go() 
Describe(DescLink_JingYue.."<#># s¬n tÆc bªn trong ®éng m¹nh phØ tô tËp , ë thÇn bÝ s¬n tÆc trªn ng­êi cã dÊu <color=red> ®Þa hoµng cá <color> , tÆc bµ tö trªn ng­êi cÊt giÊu <color=red> phÝ l¸ <color> . ng­¬i cÇn c¸c lÊy <color=red> n¨m m­¬i buéi c©y <color> . sau ®ã ®i ®éng <color=red> phÝa trªn <color> chia ra giÕt chÕt chõng tr«ng chõng c¸i ch×a khãa ®Ých <color=red> s¬n tÆc tr¹i chñ <color> , lÊy ®­îc hai c©y c¸i ch×a khãa sau ®ã ®i b¶n ®å trung ­¬ng ®Ých trÊn nh¹c chi cöa , t×m <color=red> më khãa ng­êi <color> më ra nã . tõ <color=red> s¬n tÆc v­¬ng <color> trong tay ®o¹t ®Õn duy nhÊt mét chi <color=red> nhuém gi¸p cèt <color> . nh­ vËy míi cã thÓ thµnh c«ng chÕ biÕn thµnh d­îc liÖu , râ rµng sao ? nÕu nh­ râ rµng tho¹i , bÇn ni c¸i nµy ®­a ng­¬i lªn nói . ",2, 
" râ rµng , ®Ó cho ta ®i cho /partner_jingyue_trap2", 
" ta muèn n÷a chuÈn bÞ mét chót /no") 
end 

function partner_jingyue_trap() 
SetFightState(1) 
NewWorld(514,1552,3308) 

end 

function partner_jingyue_trap2() 
nt_setTask(1256,20) 
SetFightState(1) 
NewWorld(514,1552,3308) 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  më khãa ng­êi ®èi tho¹i -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function partner_master_kaisuoren() 
if ( nt_getTask(1256) == 20 ) then 
if ( GetBit(GetTask(1261),1) == 1 ) and ( GetBit(GetTask(1261),2) == 1 ) then 
Describe(DescLink_KaiSuoRen.."<#># chóc mõng c¸c h¹ thu ®­îc hoµn chØnh më ra trÊn nh¹c chi cöa ®Ých c¸i ch×a khãa . ",2, 
" lËp tøc ®­a ta nhËp m«n /master_70_trap3", 
" ta sau nµy trë l¹i /no") 
else 
Describe(DescLink_KaiSuoRen.."<#># ng­¬i cßn kh«ng cã ®em chõng s¬n tÆc tr¹i chñ hµng phôc , lÊy ®­îc trong tay bän hä n¾m gi÷ c¸c nöa phiÕn c¸i ch×a khãa , nh­ vËy ta còng më kh«ng ra c¸nh cöa nµy . nhanh ®i ®¸nh b¹i bän hä ®i , ®ang ë trªn b¶n ®å ph­¬ng ®Ých hai bªn trong s¬n ®éng . ",1,"KÕt thóc ®èi tho¹i /no") 
end 
elseif ( nt_getTask(1256) == 30 ) then 
Describe(DescLink_KaiSuoRen.."<#># ph¶i cÈn thËn kia , n¬i nµy còng kh«ng ph¶i lµ tïy tiÖn cã thÓ v­ît qua kiÓm tra ®Ých , s¬n tÆc v­¬ng hung b¹o rÊt . ",2, 
" lËp tøc ®­a ta nhËp m«n /master_70_trap3", 
" ta sau nµy trë l¹i /no") 
elseif ( nt_getTask(1256) == 40 ) then 
Describe(DescLink_KaiSuoRen.."<#># ng­¬i ®· thµnh c«ng thu ®­îc nhuém gi¸p cèt , chóc mõng a #",2, 
" lËp tøc ®­a ta ®i /master_70_trap4", 
" ta sau nµy trë l¹i /no") 
else 
Describe(DescLink_KaiSuoRen.."<#># trÊn nh¹c chi cöa h¸ lµ ng­êi b×nh th­êng tïy ý ®i vµo ? ®i mau ®i mau . ",1,"KÕt thóc ®èi tho¹i /no") 
end 
end 

function master_70_trap3() 
nt_setTask(1256,30) 
nt_setTask(1261,0) 
SetFightState(1) 
NewWorld(514,1791,3197) 
end 

function master_70_trap4() 
SetFightState(0) 
NewWorld(514,1817,3228) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - lÊy ®­îc mét ®ång b¹n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function partner_longwu_getpartner() 
local partnercount = PARTNER_Count() -- script viet hoa By http://tranhba.com  lÊy ®­îc tr­íc mÆt ®ång b¹n sè l­îng 
if ( partnercount == -1 ) then 
Msg2player("Chøc n¨ng xuÊt hiÖn dÞ th­êng , xin/mêi cïng GM liªn l¹c . ") 
elseif ( partnercount == 0 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i cã thÓ ë ®ång b¹n ®Ých kho¸i tiÖp lan trong t×m ®­îc <color=red>“ cho gäi ®ång b¹n ”<color> c¸i nót , bªn tr¸i kiÖn ®an kÝch nªn c¸i nót lµ ®­îc råi . <color=red> lÇn n÷a <color> ®iÓm kÝch “ cho gäi ®ång b¹n ” c¸i nót lµ cã thÓ <color=red> thu håi ®ång b¹n liÔu <color>",4, 
" ®¹t ®­îc nam ®ång b¹n /partner_longwu_getmen", 
" ®¹t ®­îc n÷ ®ång b¹n /partner_longwu_getwomen", 
" ngÉu nhiªn ®¹t ®­îc ®ång b¹n /partner_longwu_getrandom", 
" kÕt thóc ®èi tho¹i /no") 
elseif ( partnercount ~= 0 ) then 
Describe(DescLink_LongWu.."<#># ng­¬i ®· cã ®ång b¹n , còng kh«ng cÇn n÷a lßng tham . ",1, 
" kÕt thóc ®èi tho¹i /no") 
end 
end 

function partner_longwu_getmen() 
local w=random(1,4) 
local j=random(1,3) 
if ( j == 1 ) then 
PARTNER_AddFightPartner(1,4,w,1,1,1,1,1,1) 
elseif ( j == 2 ) then 
PARTNER_AddFightPartner(3,3,w,1,1,1,1,1,1) 
else 
PARTNER_AddFightPartner(5,0,w,1,1,1,1,1,1) 
end 
Msg2Player("Chóc mõng ng­¬i thu ®­îc mét nam ®ång b¹n . ") 
end 

function partner_longwu_getwomen() 
local w=random(1,4) 
local j=random(1,2) 
if ( j == 1 ) then 
PARTNER_AddFightPartner(2,2,w,1,1,1,1,1,1) 
else 
PARTNER_AddFightPartner(4,1,w,1,1,1,1,1,1) 
end 
Msg2Player("Chóc mõng ng­¬i thu ®­îc mét n÷ ®ång b¹n . ") 
end 

function partner_longwu_getrandom() 
local j=random(1,5) 
local w=random(1,4) 
if ( j == 1 ) then 
PARTNER_AddFightPartner(1,4,w,1,1,1,1,1,1) 
Msg2Player("Chóc mõng ng­¬i thu ®­îc mét ®ång b¹n . ") 
elseif ( j == 2 ) then 
PARTNER_AddFightPartner(2,2,w,1,1,1,1,1,1) 
Msg2Player("Chóc mõng ng­¬i thu ®­îc mét ®ång b¹n . ") 
elseif ( j == 3 ) then 
PARTNER_AddFightPartner(3,3,w,1,1,1,1,1,1) 
Msg2Player("Chóc mõng ng­¬i thu ®­îc mét ®ång b¹n . ") 
elseif ( j == 4 ) then 
PARTNER_AddFightPartner(4,1,w,1,1,1,1,1,1) 
Msg2Player("Chóc mõng ng­¬i thu ®­îc mét ®ång b¹n . ") 
else 
PARTNER_AddFightPartner(5,0,w,1,1,1,1,1,1) 
Msg2Player("Chóc mõng ng­¬i thu ®­îc mét ®ång b¹n . ") 
end 
end 

function no() 
end
