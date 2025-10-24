Include("\\script\\global\\login_head.lua")

function offlive_login() 
SetTask(2534,0) 
end 

-- script viet hoa By tuanglit  céng thªm mét if ph¸n ®o¸n , cã thÓ tr¸nh khái thªm t¸i ch©n vèn lóc ®Ých b¸o lçi # thËt ra th× , cho dï b¸o lçi còng sÏ kh«ng ph¸t sinh sai lÇm # 
if login_add then login_add(offlive_login, 0) end 
