-- script viet hoa By http://tranhba.com Create by mengfan ,2004-9-14 
-- script viet hoa By http://tranhba.com  cèng th¸ng phï dung 
-- script viet hoa By http://tranhba.com  t¸c dông # trung cuèi thu cÊp b¸nh Trung thu mét trong , t¸c dông cïng TÈy Tñy Kinh , 80 cÊp trë lªn nhµ ch¬i sö dông , gia t¨ng 5 ®iÓm tiÒm n¨ng ®iÓm . 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ®iÒu kiÖn # tËp tÒ ®¹t ®­îc vËt nµy phÈm cÇn thiÕt ®İch tÊt c¶ mét ch÷ ®éc nhÊt . 
-- script viet hoa By http://tranhba.com  h¹n chÕ nãi râ # nªn vËt phÈm yªu cÇu nh©n vËt cÊp bËc 80 cÊp lóc sö dông h÷u hiÖu , mçi ng­êi nhiÒu nhÊt sö dông 3 lÇn . 
-- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng 701 thÊp 4 vŞ bµy tá sö dông nªn vËt phÈm ®İch sè lÇn 



function main(sel) 
times = GetTask(701) 
str ={ 
 "<#> B¹n c¾n thö mét miÕng nh­ng kh«ng cã t¸c dông!", 
"<#> B¸nh ngon h¶o h¹ng ®· gióp b¹n t¨ng c­êng kinh m¹ch. Néi c«ng th©m hËu. Xin chóc mõng! ", 
"<#> Mçi ng­êi chØ ¨n ®­îc 3 c¸i b¸nh nµy ng­¬i ®õng tham lam qu¸! " 
}
level = GetLevel() 
if(level < 80) then -- script viet hoa By http://tranhba.com  cÊp bËc qu¸ thÊp , kh«ng ®Ó cho sö dông 
Msg2Player(str[1]) 
return 1 
end 
if(times > 2) then -- script viet hoa By http://tranhba.com  sö dông v­ît qua sè lÇn 
Msg2Player(str[3]) 
return 1 
end 
AddProp(5) -- script viet hoa By http://tranhba.com  tiÒm n¨ng ®iÓm gia t¨ng 5 ®iÓm 
time=date("%m%d%H%M%S") 
name=GetName() 
WriteLog("Nhµ ch¬i "..name.." ë "..time.." ¨n hÕt mét cèng th¸ng phï dung b¸nh Trung thu ") 
	SetTask(701,times+1)
Msg2Player(str[2]) 
return 0 
end
