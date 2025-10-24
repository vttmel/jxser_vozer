Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")


function scripthieuthuocall()
	local tbOpt = {
		{"Më Shop B¸n §å",moshopbando},
		{"Më Ngò Hoa Ngäc Lé Hoµn Nhanh Full R­¬ng",nguhoangoclohoannhanh},
		{"Mua Ngò Hoa Ngäc Lé Hoµn",muanguhoangoclohoan},
		{"¤ §Çu Hoµn ThÇn §an - Néi Lùc",muaodauhoan},
		{"Cöu ChuyÓn Hoµn Hån §an - M¸u",muacuuchuyenhoandan},
		{"Håi Thiªn §an - M¸u",muahoithiendan},
		{"§¹i Bæ T¸n - Mana",muadaibotan},
		{"Tam Hoa T¸n - ThÓ Lùc",muatamhoatan},
		{"Ng©n KiÒu Khø §éc §an - Gi¶i §éc",muangankieukhudocdan},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua thuèc g×?<color>", tbOpt)
end;
--------------------------------------------------------------------------------
function moshopbando()
Sale(183)
end
--------------------------------------------------------------------------------
function muangankieukhudocdan()
local totalcount =CalcFreeItemCellCount();
	AskClientForNumber("muangankieukhudocdan2",0,totalcount, "100/1: ")
end

function muangankieukhudocdan2(n_key)
if n_key*100 > GetCash() then
		Talk(1,"","Kh«ng ®ñ ng©n l­îng")
		return 1
end 

	for k=1,n_key do 		
	AddItem(1,4,0,4,0,0,0);
	Pay(100)
	end
end
--------------------------------------------------------------------------------
function muatamhoatan()
local totalcount =CalcFreeItemCellCount();
	AskClientForNumber("muatamhoatan2",0,totalcount, "50/1: ")
end

function muatamhoatan2(n_key)
if n_key*50 > GetCash() then
		Talk(1,"","Kh«ng ®ñ ng©n l­îng")
		return 1
end 

	for k=1,n_key do 		
	AddItem(1,3,0,1,0,0,0);
	Pay(50)
	end
end
--------------------------------------------------------------------------------
function muadaibotan()
local totalcount =CalcFreeItemCellCount();
	AskClientForNumber("muadaibotan2",0,totalcount, "500/1: ")
end

function muadaibotan2(n_key)
if n_key*500 > GetCash() then
		Talk(1,"","Kh«ng ®ñ ng©n l­îng")
		return 1
end 

	for k=1,n_key do 		
	AddItem(1,1,0,4,0,0,0);
	Pay(500)
	end
end
--------------------------------------------------------------------------------
function muahoithiendan()
local totalcount =CalcFreeItemCellCount();
	AskClientForNumber("muahoithiendan2",0,totalcount, "500/1: ")
end

function muahoithiendan2(n_key)
if n_key*500 > GetCash() then
		Talk(1,"","Kh«ng ®ñ ng©n l­îng")
		return 1
end 

	for k=1,n_key do 		
	AddItem(1,0,0,4,0,0,0);
	Pay(500)
	end
end
--------------------------------------------------------------------------------
function muacuuchuyenhoandan()
local totalcount =CalcFreeItemCellCount();
	AskClientForNumber("muacuuchuyenhoandan2",0,totalcount, "3000/1: ")
end

function muacuuchuyenhoandan2(n_key)
if n_key*3000 > GetCash() then
		Talk(1,"","Kh«ng ®ñ ng©n l­îng")
		return 1
end 

	for k=1,n_key do 		
	AddItem(1,0,0,5,0,0,0); ---
	Pay(3000)
	end
end
--------------------------------------------------------------------------------
function muaodauhoan()
local totalcount =CalcFreeItemCellCount();
	AskClientForNumber("muaodauhoan2",0,totalcount, "3000/1: ")
end

function muaodauhoan2(n_key)
if n_key*3000 > GetCash() then
		Talk(1,"","Kh«ng ®ñ ng©n l­îng")
		return 1
end 

	for k=1,n_key do 		
	AddItem(1,1,0,5,0,0,0);
	Pay(3000)
	end
end
--------------------------------------------------------------------------------
function muanguhoangoclohoan()
local totalcount =CalcFreeItemCellCount();
	AskClientForNumber("muanguhoangoclohoan2",0,totalcount, "4000/1: ")
end

function muanguhoangoclohoan2(n_key)
if n_key*4000 > GetCash() then
		Talk(1,"","Kh«ng ®ñ ng©n l­îng")
		return 1
end 

	for k=1,n_key do 		
	AddItem(1,2,0,5,0,0,0);
	Pay(4000)
	end
end
--------------------------------------------------------------------------------
function nguhoangoclohoannhanh()
local nJxb = 240000
if GetCash() < nJxb then
	Msg2Player(format("CÇn Ýt nhÊt 240.000 l­îng - 24 v¹n trong r­¬ng",nJxb))
	return
end
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
        Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
		return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0);
	Pay(4000)
	end
end
--------------------------------------------------------------------------------
function no()
end;
