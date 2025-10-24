Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\login_head.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")


function scripttaphoaall()
	local tbOpt = {
		{"Më Shop B¸n §å",moshopbando},
		{"Mua Thæ §Þa Phï",muathodiaphu},
		{"Mua §å D· TÈu",muadodatau},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
end;
--------------------------------------------------------------------------------
function moshopbando()
Sale(183)
end
--------------------------------------------------------------------------------
function muadodatau()
	local tbOpt = {
		{"§ång ý Mua",muadodatau2},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
end
function muadodatau2()
if( SubWorldIdx2ID( SubWorld ) == 11 ) then
	if GetCash() < 1800 then
		Talk(1,"","Kh«ng ®ñ ng©n 1800 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,8,0,5,2,127,0)
		Pay(1800)
elseif( SubWorldIdx2ID( SubWorld ) == 78 ) then
	if GetCash() < 3700 then
		Talk(1,"","Kh«ng ®ñ ng©n 3700 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,6,1,4,4,127,0)
		Pay(3700)
elseif( SubWorldIdx2ID( SubWorld ) == 1 ) then
	if GetCash() < 1000 then
		Talk(1,"","Kh«ng ®ñ ng©n 1000 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,8,0,4,2,127,0)
		Pay(1000)
elseif( SubWorldIdx2ID( SubWorld ) == 162 ) then
	if GetCash() < 3000 then
		Talk(1,"","Kh«ng ®ñ ng©n 3000 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,6,0,5,3,127,0)
		Pay(3000)
elseif( SubWorldIdx2ID( SubWorld ) == 37 ) then
	if GetCash() < 1800 then
		Talk(1,"","Kh«ng ®ñ ng©n 1800 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,8,1,5,2,127,0)
		Pay(1800)
elseif( SubWorldIdx2ID( SubWorld ) == 80 ) then
	if GetCash() < 1000 then
		Talk(1,"","Kh«ng ®ñ ng©n 1000 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,8,1,4,2,127,0)
		Pay(1000)
elseif( SubWorldIdx2ID( SubWorld ) == 176 ) then
	if GetCash() < 1600 then
		Talk(1,"","Kh«ng ®ñ ng©n 1600 l­îng")
		return 1
	end 		
		AddItemEx(0,0,0,0,5,2,5,1,127,0)
		Pay(1600)
else
	Talk(1,"","T¹i ®©y kh«ng cã b¸n g× ng­¬i cÇn ®©u")
	return 1
end
end
--------------------------------------------------------------------------------
function muathodiaphu()
local totalcount =CalcFreeItemCellCount();
	AskClientForNumber("muangankieukhudocdan2",0,totalcount, "500/1: ")
end

function muangankieukhudocdan2(n_key)
if n_key*500 > GetCash() then
		Talk(1,"","Kh«ng ®ñ ng©n l­îng")
		return 1
end 

	for k=1,n_key do 		
	AddItem(5,0,0,0,0,0);
	Pay(500)
	end
end
--------------------------------------------------------------------------------
function no()
end;
