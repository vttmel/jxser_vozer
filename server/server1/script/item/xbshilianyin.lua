-- script viet hoa By http://tranhba.com  thö luyÖn bİ b¶o # ng©n # 
-- script viet hoa By http://tranhba.com  hiÓu b¶o 2014.2.14 

function main(sel) 
p=random(1,100); 
if(p <= 10)then 
AddItem(6,1,2311,1,0,0,0) -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ngäc lon 
elseif(p >= 50)then 
		Earn(66666+22222*random(0,1))
else 
		Earn(6666+2222*random(0,1))
end 

p=random(1,100); 
if(p <= 5)then 
num=2 
elseif((p > 5)and(p <= 20))then 
num=2 
elseif((p > 20)and(p <= 30))then 
num=2 
elseif((p > 30)and(p <= 50))then 
num=1 
elseif((p > 50)and(p <= 60))then 
num=1 
else 
num=1 
end 

gift(num); 

for i=1,random(1,10) do 
AddItem(6,1,2280,1,0,0,0) -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  ngÉu nhiªn ®­a tinh luyÖn th¹ch 
end 
return 0 
end 

function gift(num) 

for i=1,num do 
p=random(1,14); 
if(p == 1)then -- script viet hoa By http://tranhba.com  huyÒn viªn lµm 
AddItem(6,1,2351,1,0,0,0) 
elseif(p == 2)then -- script viet hoa By http://tranhba.com  thªm ch¹y hoµn 
AddItem(6,0,2,1,0,0,0) 
elseif(p == 3)then -- script viet hoa By http://tranhba.com  nhanh chãng hoµn 
AddItem(6,0,6,1,0,0,0) 
elseif(p == 4)then -- script viet hoa By http://tranhba.com  tr­êng mÖnh hoµn 
AddItem(6,0,1,1,0,0,0) 
elseif(p == 5)then -- script viet hoa By http://tranhba.com  tø h¶i tiªu dao ®an 
AddItem(6,1,2378,1,0,0,0) 
elseif(p == 6)then -- script viet hoa By http://tranhba.com  ®¹i lùc hoµn 
AddItem(6,0,3,1,0,0,0) 
elseif(p == 7)then -- script viet hoa By http://tranhba.com  cao nhanh chãng hoµn 
AddItem(6,0,4,1,0,0,0) 
elseif(p == 8)then -- script viet hoa By http://tranhba.com  trung häc ®Ö nhŞ cÊp hoµn 
AddItem(6,0,5,1,0,0,0) 
elseif(p == 9)then -- script viet hoa By http://tranhba.com  huyÒn viªn lµm 
AddItem(6,1,2351,1,0,0,0) 
elseif(p == 10)then -- script viet hoa By http://tranhba.com  b¨ng phßng hoµn 
AddItem(6,0,7,1,0,0,0) 
elseif(p == 11)then -- script viet hoa By http://tranhba.com  l«i phßng hoµn 
AddItem(6,0,8,1,0,0,0) 
elseif(p == 12)then -- script viet hoa By http://tranhba.com  löa phßng hoµn 
AddItem(6,0,9,1,0,0,0) 
elseif(p == 13)then -- script viet hoa By http://tranhba.com  n¨m ch©u l¨ng kh«ng ®an 
AddItem(6,1,2397,1,0,0,0) 
else -- script viet hoa By http://tranhba.com  ®éc phßng hoµn 
AddItem(6,0,10,1,0,0,0) 
end 
end 

end
