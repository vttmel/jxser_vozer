Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-------------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then
		return "N÷ HiÖp"
	else
		return "§¹i HiÖp"
	end
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function thongtingamer() 
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local nGio = tonumber(GetLocalDate("%H")); 
local nPhut = tonumber(GetLocalDate("%M")); 
local nGiay = tonumber(GetLocalDate("%S")); 
local nW, nX, nY = GetWorldPos()
local X = nX*32
local Y = nY*32
local zX = floor(nX/8)
local zY = floor(nY/16)
local nIdPlay = PlayerIndex 
local tbSay = {}
	tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i - NhËp Tµi Kho¶n/luachonid3")
	tinsert(tbSay,"Tho¸t/no")
	tinsert(tbSay,"Trë l¹i")
	Say("Xin Chµo <color=red>"..GetName().."<color>!\nTäa ®é hiÖn t¹i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nHiÖn §ang Cã:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng­êi ch¬i trong game.\n", getn(tbSay), tbSay)
end

-----------------------------------------------------------------------Tim Theo Ten Tai Khoan------------------------------------------------------------------------------------------------------------------------
function luachonid3() 
	AskClientForString("TenTaiKhoan", "", 0,5000,"Tªn Tµi Kho¶n") 
end 

function TenTaiKhoan(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+1000 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetAccount()
		PlayerIndex=gmidx
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)*100 --- 100 t­¬ng øng 100 ®ång
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5793)
		nTransLife=GetTask(1963)
		knb=GetExtPoint(1)
		vnd=GetTask(5793)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
		local szAccount = GetAccount()
		tinsert(tbSay,"Thu L¹i TiÒn Cña Gammer/RutTien")
		tinsert(tbSay,"N¹p thÎ cho ng­êi ch¬i/NapThe")
		tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            

		Say("<color=green>Tµi Kho¶n: "..tk.." - Nh©n VËt: "..ObjName.."\nCÊp ®é: "..lev.." - Kinh nghiÖm: "..xp.."\nMµu: "..cam.." - M«n ph¸i: "..fac.."\nNg©n L­îng: "..(cash/10000).." v¹n\nVÞ trÝ: "..w..","..x..","..y.." - TiÒn §ång: "..nTienDong.." Xu\nTiÒn n¹p: "..vnd.." §ång - Sè tiÒn ch­a rót: "..lif.." §ång<color>", getn(tbSay), tbSay)
		return --end
	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh«ng t×m thÊy nh©n vËt tªn <color=green>"..nNameChar.."<color>"); 
	end
end 
-------------------------------------------------------------------------------------------------------------------------
function RutTien()
	AskClientForNumber("XacNhanRut",0,100000000,"NhËp Sè TiÒn")
end
function XacNhanRut(num)
local KNB = num/TyLeNapThe--- 100 t­¬ng øng 100 ®ång
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
PayExtPoint(1,num/TyLeNapThe)--- 100 t­¬ng øng 100 ®ång
SetTask(5793,GetTask(5793)-num)
--SetTask(5733,GetTask(5733)-num/TyLeNapThe)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Thu TiÒn Cña Member <color=metal>"..num.."<color> Thµnh C«ng");
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Thu L¹i <color=metal>"..num.."<color> Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function NapThe()
	AskClientForNumber("XacNhanNap",0,100000000,"NhËp Sè TiÒn")
end
function XacNhanNap(num)
local KNB = num/TyLeNapThe--- 100 t­¬ng øng 100 ®ång
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
AddExtPoint(1,num/TyLeNapThe)--- 100 t­¬ng øng 100 ®ång
SetTask(5793,GetTask(5793)+num)
--SetTask(5733,GetTask(5733)+num/TyLeNapThe)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.." VND <color> <color=green>"..ObjName.."<color> NhËn §­îc <color=metal>"..KNB.."<color> TiÒn §ång Thµnh C«ng");
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §¶ ñng Hé Server <color=metal>"..num.." VND Vµ NhËn §­îc "..KNB.."<color> TiÒn §ång Thµnh C«ng");
end
