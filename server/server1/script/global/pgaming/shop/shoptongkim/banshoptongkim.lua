Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")


function shoptongkim22()
	local tbOpt = {
		{"Më Shop B¸n §å",moshopbando},
		{"Mua Phi Tèc",muaphitochoan},
		{"Mua LÖnh Bµi",mualenhbai},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua thuèc g×?<color>", tbOpt)
end;
--------------------------------------------------------------------------------
function moshopbando()
Sale(183)
end
--------------------------------------------------------------------------------
function muaphitochoan()
local totalcount =GetTask(747)/400
	AskClientForNumber("muaphitochoan2",0,totalcount, "400/1: ")
end

function muaphitochoan2(n_key)
if n_key*400 > GetTask(747) then
		Talk(1,"","Kh«ng ®ñ ®iÓm tèng kim")
		return 1
end 
	for k=1,n_key do 		
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,190,0,0,0}}, "test", 1);
	SetTask(747, GetTask(747)-400);
	end
end
--------------------------------------------------------------------------------
function mualenhbai()
local totalcount =GetTask(747)/800
	AskClientForNumber("mualenhbai2",0,totalcount, "800/1: ")
end

function mualenhbai2(n_key)
if n_key*800 > GetTask(747) then
		Talk(1,"","Kh«ng ®ñ ®iÓm tèng kim")
		return 1
end 

	for k=1,n_key do 		
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,157,0,0,0}, nCount = n_key}, "test", 1);
	SetTask(747, GetTask(747)-800);
	end
end
--------------------------------------------------------------------------------
function no()
end;
