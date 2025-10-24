-- script viet hoa By http://tranhba.com  s¬n tÆc ®éng chiÕn ®Êu thiÕt ®æi ®iÓm 

function main(sel) 
if ( GetFightState() == 1 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu tr¹ng th¸i chiÕn ®Êu 
SetPos(1823,3184); -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë kh«ng ph¶i lµ chiÕn ®Êu khu vùc 
SetFightState(0); -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
else 
SetPos(1826,3178); -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ®ang chiÕn ®Êu khu vùc 
SetFightState(1); -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× tr¹ng th¸i chiÕn ®Êu 
end; 
end;
