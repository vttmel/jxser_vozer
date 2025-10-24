-- timerhead.lua
-- C«ng cô liªn quan ®Õn bé hÑn giê

FramePerSec = 18 -- Mçi gi©y tÊm sè coi nh­ ®¹i l­îng kh«ng ®æi xö lı
CTime = 600 -- Mçi canh giê theo 600 Gi©y (10 Phót ) Tİnh to¸n

function GetRestSec(i) -- Trùc tiÕp trë vÒ m¸y bÊm giê cßn thõa gi©y sè 
return floor(GetRestTime(i) / FramePerSec)  end; 

function GetRestCTime(i) --NhËn thêi gian cßn l¹i cña bé hÑn giê, lín h¬n mét giê ®­îc chuyÓn ®æi theo giê Trung Quèc
	x = floor(GetRestTime(i) / FramePerSec) 
	if (x < CTime) then -- İt h¬n mét giê
		y = x.." gi©y " 
	else 
		y = floor(x / CTime).." c¸ canh giê " 
	end 
return y end; 

function GetTimerTask(i) -- Ph©n tİch có ph¸p t¸c vô t­¬ng øng theo sè ID hÑn giê
end
