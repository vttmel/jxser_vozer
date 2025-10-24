Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\login_head.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")


function scriptthorenall()
	local tbOpt = {
		{"Më Shop B¸n §å",moshopbando},
		{"Mua §å D· TÈu",muadodatautr},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
end;
--------------------------------------------------------------------------------
function moshopbando()
Sale(183)
end
--------------------------------------------------------------------------------
function muadodatautr()
	local tbOpt = {
		{"§ång ý Mua",muadodatautr2},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
end
function muadodatautr2()
if( SubWorldIdx2ID( SubWorld ) == 11 ) then
	if GetCash() < 3000 then
		Talk(1,"","Kh«ng ®ñ ng©n 3000 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,2,3,2,127,0)
		Pay(3000)
elseif( SubWorldIdx2ID( SubWorld ) == 78 ) then
	if GetCash() < 2700 then
		Talk(1,"","Kh«ng ®ñ ng©n 2700 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,0,3,0,127,0)
		Pay(2700)
elseif( SubWorldIdx2ID( SubWorld ) == 1 ) then
	if GetCash() < 3000 then
		Talk(1,"","Kh«ng ®ñ ng©n 3000 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,3,3,1,127,0)
		Pay(3000)
elseif( SubWorldIdx2ID( SubWorld ) == 162 ) then
	if GetCash() < 2700 then
		Talk(1,"","Kh«ng ®ñ ng©n 2700 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,5,3,1,127,0)
		Pay(2700)
elseif( SubWorldIdx2ID( SubWorld ) == 37 ) then
	if GetCash() < 2700 then
		Talk(1,"","Kh«ng ®ñ ng©n 2700 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,1,3,4,127,0)
		Pay(2700)
elseif( SubWorldIdx2ID( SubWorld ) == 80 ) then
	if GetCash() < 2700 then
		Talk(1,"","Kh«ng ®ñ ng©n 2700 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,5,3,3,127,0)
		Pay(2700)
elseif( SubWorldIdx2ID( SubWorld ) == 176 ) then
	if GetCash() < 3000 then
		Talk(1,"","Kh«ng ®ñ ng©n 3000 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,2,3,1,127,0)
		Pay(3000)
else
	Talk(1,"","T¹i ®©y kh«ng cã b¸n g× ng­¬i cÇn ®©u")
	return 1
end
end
--------------------------------------------------------------------------------
function no()
end;
