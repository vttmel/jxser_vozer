-- script viet hoa By http://tranhba.com  v©n trung ®¹o T¹ qu¶ phô bµi ph­êng chiÕn ®Êu thiÕt ®æi ®iÓm 

function main(sel) 
if ( GetFightState() == 0 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
SetPos(1641,3604); -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ®ang chiÕn ®Êu khu vùc 
SetFightState(1); -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× tr¹ng th¸i chiÕn ®Êu 
else 
SetPos(1636,3609); -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë kh«ng ph¶i lµ chiÕn ®Êu khu vùc 
SetFightState(0); -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
end; 
end;
