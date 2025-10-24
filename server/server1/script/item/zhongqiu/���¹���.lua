-- script viet hoa By http://tranhba.com Create by mengfan 2004-9-14 
-- script viet hoa By http://tranhba.com  phông th¸ng qu¶ dong 
-- script viet hoa By http://tranhba.com  t¸c dông # trung cuèi thu cÊp b¸nh Trung thu mét trong , t¸c dông cïng vâ l©m bİ tŞch , 80 cÊp trë lªn nhµ ch¬i sö dông , gia t¨ng mét chót vâ c«ng kü n¨ng ®iÓm . 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ®iÒu kiÖn # tËp tÒ ®¹t ®­îc vËt nµy phÈm cÇn thiÕt ®İch tÊt c¶ mét ch÷ ®éc nhÊt . 
-- script viet hoa By http://tranhba.com  h¹n chÕ nãi râ # nªn vËt phÈm yªu cÇu nh©n vËt cÊp bËc 80 cÊp lóc sö dông h÷u hiÖu , mçi ng­êi nhiÒu nhÊt sö dông 2 lÇn . 
-- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng 700 thÊp 4 vŞ bµy tá sö dông nªn vËt phÈm ®İch sè lÇn 

function main(sel) 
times = GetTask(700) 
str={ 
"<#> ng­¬i thö c¾n mét c¸i phông th¸ng qu¶ dong b¸nh Trung thu , kÕt qu¶ c¸i g× còng kh«ng cã ph¸t sinh . :(", 
"<#> ng­¬i thö c¾n mét c¸i phông th¸ng qu¶ dong b¸nh Trung thu , kÕt qu¶ kh«ng cã ph¸t hiÖn vâ c«ng cã c¸i g× râ rµng biÕn hãa . ", 
"<#> ng­¬i ¨n råi mét phông th¸ng qu¶ dong b¸nh Trung thu , c¶m thÊy trong c¬ thÓ cã mét cæ ch©n khİ l­u ®éng , nhÊt thêi vâ c«ng tinh tiÕn . ", 
"<#> ng­¬i ®· ¨n råi 2 c¸ phông th¸ng qu¶ dong b¸nh Trung thu , b©y giê kh«ng ¨n ®­îc . " 
} 
if(times > 1) then -- script viet hoa By http://tranhba.com  sö dông sè lÇn ®· ®¹t tíi th­îng h¹n 
Msg2Player(str[4]) 
return 1 
elseif (GetLevel() < 80) then -- script viet hoa By http://tranhba.com  cÊp bËc İt h¬n 80 
Msg2Player(str[2]) 
return 1 
else 
AddMagicPoint(1) -- script viet hoa By http://tranhba.com  t­ëng th­ëng 1 ®iÓm kü n¨ng ®iÓm 
time=date("%m%d%H%M%S") 
name=GetName() 
WriteLog("Nhµ ch¬i "..name.." ë "..time.." ¨n hÕt mét phông th¸ng qu¶ dong b¸nh Trung thu ") 
		SetTask(700,times+1)
Msg2Player(str[3]) 
return 0 
end 
end
