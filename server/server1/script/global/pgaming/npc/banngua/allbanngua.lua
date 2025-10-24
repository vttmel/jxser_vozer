Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\login_head.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")


function scriptbannguaall()
	local tbOpt = {
		{"Më Shop B¸n §å",moshopbando},
		{"Mua Ngùa",muangua},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
end;
--------------------------------------------------------------------------------
function moshopbando()
Sale(183)
end
--------------------------------------------------------------------------------
function muangua()
	local tbOpt = {
		{"§ång ý Mua",muangua2},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
end
function muangua2()
if( SubWorldIdx2ID( SubWorld ) == 11 ) then
	local tb = {
		"Ng­¬i muèn mua g×?",
	}
tinsert(tb,"LiÖt Hång M· CÊp 1./#HongMa(1)") 
tinsert(tb,"LiÖt Hång M· CÊp 2./#HongMa(2)") 
tinsert(tb,"Hång M· CÊp 3./#HongMa(3)") 
tinsert(tb,"Hång M· CÊp 4./#HongMa(4)") 
tinsert(tb,"Hång Ly CÊp 5./#HongMa(5)") 
tinsert(tb,"Hång Ly CÊp 6./#HongMa(6)") 
tinsert(tb,"§¹i UyÓn H·n HuyÕt M· 7./#HongMa(7)") 
tinsert(tb,"§¹i UyÓn H·n HuyÕt M· 8./#HongMa(8)") 
tinsert(tb,"XÝch Ký 9./#HongMa(9)") 
tinsert(tb,"XÝch Ký 10./#HongMa(10)") 
tinsert(tb,"Tho¸t./Quit")
	CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 78 ) then
	local tb = {
		"Ng­¬i muèn mua g×?",
	}
tinsert(tb,"LiÖt H¾c M· CÊp 1./#HacMa(1)") 
tinsert(tb,"LiÖt H¾c M· CÊp 2./#HacMa(2)") 
tinsert(tb,"H¾c M· CÊp 3./#HacMa(3)") 
tinsert(tb,"H¾c M· CÊp 4./#HacMa(4)") 
tinsert(tb,"H¾c Kú CÊp 5./#HacMa(5)") 
tinsert(tb,"H¾c Kú CÊp 6./#HacMa(6)") 
tinsert(tb,"§¹i UyÓn H¾c M· 7./#HacMa(7)") 
tinsert(tb,"§¹i UyÓn H¾c M· 8./#HacMa(8)") 
tinsert(tb,"¤ Chïy 9./#HacMa(9)") 
tinsert(tb,"¤ Chïy 10./#HacMa(10)") 
tinsert(tb,"Tho¸t./Quit")
CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 1 ) then
	local tb = {
		"Ng­¬i muèn mua g×?",
	}
tinsert(tb,"LiÖt B¹ch M· CÊp 1./#BachMa(1)") 
tinsert(tb,"LiÖt B¹ch M· CÊp 2./#BachMa(2)") 
tinsert(tb,"B¹ch M· CÊp 3./#BachMa(3)") 
tinsert(tb,"B¹ch M· CÊp 4./#BachMa(4)") 
tinsert(tb,"Ngäc Hoa Th«ng CÊp 5./#BachMa(5)") 
tinsert(tb,"Ngäc Hoa Th«ng CÊp 6./#BachMa(6)") 
tinsert(tb,"§¹i UyÓn B¹ch M· 7./#BachMa(7)") 
tinsert(tb,"§¹i UyÓn B¹ch M· 8./#BachMa(8)") 
tinsert(tb,"Tóc S­¬ng 9./#BachMa(9)") 
tinsert(tb,"Tóc S­¬ng 10./#BachMa(10)") 
tinsert(tb,"Tho¸t./Quit")
CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 162 ) then
	local tb = {
		"Ng­¬i muèn mua g×?",
	}
tinsert(tb,"LiÖt H¾c M· CÊp 1./#HacMa(1)") 
tinsert(tb,"LiÖt H¾c M· CÊp 2./#HacMa(2)") 
tinsert(tb,"H¾c M· CÊp 3./#HacMa(3)") 
tinsert(tb,"H¾c M· CÊp 4./#HacMa(4)") 
tinsert(tb,"H¾c Kú CÊp 5./#HacMa(5)") 
tinsert(tb,"H¾c Kú CÊp 6./#HacMa(6)") 
tinsert(tb,"§¹i UyÓn H¾c M· 7./#HacMa(7)") 
tinsert(tb,"§¹i UyÓn H¾c M· 8./#HacMa(8)") 
tinsert(tb,"¤ Chïy 9./#HacMa(9)") 
tinsert(tb,"¤ Chïy 10./#HacMa(10)") 
tinsert(tb,"Tho¸t./Quit")
CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 37 ) then
	local tb = {
		"Ng­¬i muèn mua g×?",
	}
tinsert(tb,"LiÖt B¹ch M· CÊp 1./#BachMa(1)") 
tinsert(tb,"LiÖt B¹ch M· CÊp 2./#BachMa(2)") 
tinsert(tb,"B¹ch M· CÊp 3./#BachMa(3)") 
tinsert(tb,"B¹ch M· CÊp 4./#BachMa(4)") 
tinsert(tb,"Ngäc Hoa Th«ng CÊp 5./#BachMa(5)") 
tinsert(tb,"Ngäc Hoa Th«ng CÊp 6./#BachMa(6)") 
tinsert(tb,"§¹i UyÓn B¹ch M· 7./#BachMa(7)") 
tinsert(tb,"§¹i UyÓn B¹ch M· 8./#BachMa(8)") 
tinsert(tb,"Tóc S­¬ng 9./#BachMa(9)") 
tinsert(tb,"Tóc S­¬ng 10./#BachMa(10)") 
tinsert(tb,"Tho¸t./Quit")
CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 80 ) then
	local tb = {
		"Ng­¬i muèn mua g×?",
	}
tinsert(tb,"LiÖt Thanh M· CÊp 1./#ThanhMa(1)") 
tinsert(tb,"LiÖt Thanh M· CÊp 2./#ThanhMa(2)") 
tinsert(tb,"Thanh Th«ng CÊp 3./#ThanhMa(3)") 
tinsert(tb,"Thanh Th«ng CÊp 4./#ThanhMa(4)") 
tinsert(tb,"Tö L­u CÊp 5./#ThanhMa(5)") 
tinsert(tb,"Tö L­u CÊp 6./#ThanhMa(6)") 
tinsert(tb,"§¹i UyÓn Thanh M· 7./#ThanhMa(7)") 
tinsert(tb,"§¹i UyÓn Thanh M· 8./#ThanhMa(8)") 
tinsert(tb,"Hoa L­u 9./#ThanhMa(9)") 
tinsert(tb,"Hoa L­u 10./#ThanhMa(10)") 
tinsert(tb,"Tho¸t./Quit")
CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 176 ) then
	local tb = {
		"Ng­¬i muèn mua g×?",
	}
tinsert(tb,"LiÖt Thanh M· CÊp 1./#HoangMa(1)") 
tinsert(tb,"LiÖt Thanh M· CÊp 2./#HoangMa(2)") 
tinsert(tb,"Thanh Th«ng CÊp 3./#HoangMa(3)") 
tinsert(tb,"Thanh Th«ng CÊp 4./#HoangMa(4)") 
tinsert(tb,"Tö L­u CÊp 5./#HoangMa(5)") 
tinsert(tb,"Tö L­u CÊp 6./#HoangMa(6)") 
tinsert(tb,"§¹i UyÓn Thanh M· 7./#HoangMa(7)") 
tinsert(tb,"§¹i UyÓn Thanh M· 8./#HoangMa(8)") 
tinsert(tb,"Hoa L­u 9./#HoangMa(9)") 
tinsert(tb,"Hoa L­u 10./#HoangMa(10)") 
tinsert(tb,"Tho¸t./Quit")
CreateTaskSay(tb)
else
	Talk(1,"","T¹i ®©y kh«ng cã b¸n g× ng­¬i cÇn ®©u")
	return 1
end
end
--------------------------------------------------------------------------------
function HoangMa(nNum)
if nNum == 1 or nNum == 2 then nGia = 5000
elseif nNum == 3 or nNum == 4 then nGia = 10000
elseif nNum == 5 or nNum == 6 then nGia = 20000
elseif nNum == 7 or nNum == 8 then nGia = 50000
elseif nNum == 9 or nNum == 10 then nGia = 100000
end
	if GetCash() < nGia then
		Talk(1,"","Kh«ng ®ñ ng©n "..nGia.." l­îng")
		return 1
	end 		
		AddItem(0,10,0,nNum,0,0)
		Pay(nGia)
end
--------------------------------------------------------------------------------
function ThanhMa(nNum)
if nNum == 1 or nNum == 2 then nGia = 5000
elseif nNum == 3 or nNum == 4 then nGia = 10000
elseif nNum == 5 or nNum == 6 then nGia = 20000
elseif nNum == 7 or nNum == 8 then nGia = 50000
elseif nNum == 9 or nNum == 10 then nGia = 100000
end
	if GetCash() < nGia then
		Talk(1,"","Kh«ng ®ñ ng©n "..nGia.." l­îng")
		return 1
	end 		
		AddItem(0,10,1,nNum,0,0)
		Pay(nGia)
end
--------------------------------------------------------------------------------
function BachMa(nNum)
if nNum == 1 or nNum == 2 then nGia = 5000
elseif nNum == 3 or nNum == 4 then nGia = 10000
elseif nNum == 5 or nNum == 6 then nGia = 20000
elseif nNum == 7 or nNum == 8 then nGia = 50000
elseif nNum == 9 or nNum == 10 then nGia = 100000
end
	if GetCash() < nGia then
		Talk(1,"","Kh«ng ®ñ ng©n "..nGia.." l­îng")
		return 1
	end 		
		AddItem(0,10,2,nNum,0,0)
		Pay(nGia)
end
--------------------------------------------------------------------------------
function HacMa(nNum)
if nNum == 1 or nNum == 2 then nGia = 5000
elseif nNum == 3 or nNum == 4 then nGia = 10000
elseif nNum == 5 or nNum == 6 then nGia = 20000
elseif nNum == 7 or nNum == 8 then nGia = 50000
elseif nNum == 9 or nNum == 10 then nGia = 100000
end
	if GetCash() < nGia then
		Talk(1,"","Kh«ng ®ñ ng©n "..nGia.." l­îng")
		return 1
	end 		
		AddItem(0,10,3,nNum,0,0)
		Pay(nGia)
end
--------------------------------------------------------------------------------
function HongMa(nNum)
if nNum == 1 or nNum == 2 then nGia = 5000
elseif nNum == 3 or nNum == 4 then nGia = 10000
elseif nNum == 5 or nNum == 6 then nGia = 20000
elseif nNum == 7 or nNum == 8 then nGia = 50000
elseif nNum == 9 or nNum == 10 then nGia = 100000
end
	if GetCash() < nGia then
		Talk(1,"","Kh«ng ®ñ ng©n "..nGia.." l­îng")
		return 1
	end 		
		AddItem(0,10,4,nNum,0,0)
		Pay(nGia)
end
--------------------------------------------------------------------------------
function no()
end;
