Include("\\script\\global\\systemconfig.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")	
Include("\\script\\global\\vn\\extpointfunc_proc.lua")
Include("\\script\\activitysys\\npcdailog.lua")
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
-------------------------------------------------------------------------
function main()
dofile("script/global/pgaming/npc/tientrang.lua")
if NPCTienTrang ~=1 then
	Talk(1,"","TÝnh n¨ng nµy t¹m ®ãng, xin h·y quay l¹i sau.")
	return 1
end
 if PhuongThucDoi == 1 then
		if (GetBoxLockState() == 0) then
		local tbOpt = {
			{"Ta Muèn Rót KNB",Rut_KNB},
			{"§æi KNB Thµnh TiÒn §ång",KNBthanhTienDong},
			{"Nh©n TiÖn GhÐ Qua Th«i",No},
		}
		CreateNewSayEx("<color=green>Tµi Kho¶n: <color=red>"..GetAccount().."<color> - Nh©n VËt: <color=red>"..GetName().."<color>\nKNB cßn l¹i: <color=yellow>"..GetExtPoint(1).."<color>\n§iÓm N¹p ThÎ: <color=yellow>"..GetTask(5733).."<color>", tbOpt)
	else
		Talk(1,"","<color=green>"..myplayersex().." H·y Më Khãa R­¬ng Tr­íc<color>")
	end
	else
	if (GetBoxLockState() == 0) then
		local tbOpt = {
			{"Ta Muèn Rót tiÒn ®ång",Rut_KNB},
			{"Nh©n TiÖn GhÐ Qua Th«i",No},
		}
		CreateNewSayEx("<color=green>Tµi Kho¶n: <color=red>"..GetAccount().."<color> - Nh©n VËt: <color=red>"..GetName().."<color>\nTiÒn §ång cßn l¹i: <color=yellow>"..GetExtPoint(1).."<color>\n§iÓm N¹p ThÎ: <color=yellow>"..GetTask(5733).."<color>", tbOpt)
	else
		Talk(1,"","<color=green>"..myplayersex().." H·y Më Khãa R­¬ng Tr­íc<color>")
	end
 end
end
function Rut_KNB()
	if PhuongThucDoi == 1 then
	AskClientForNumber("RutKNB",0,500,"Sè L­îng Rót")
	else
	AskClientForNumber("RutTienDong",0,500,"Sè L­îng Rót")
	end
end
function RutKNB(num)
local nRuong = CalcFreeItemCellCount() 
if nRuong < 30 then
		Talk(1,"","CÇn trèng 30 « r­¬ng chøa ®å")
		return 1
end 
	if (GetExtPoint(1) >= num) then
		SetTask(5733,GetTask(5733)+num)
		PayExtPoint(1,num)
		tbAwardTemplet:GiveAwardByList({tbProp={4,343,1,1,0,0},nCount=num},1)
		SetTask(5997,GetTask(5997)+num)
		Msg2Player("Chóc Mõng "..myplayersex().." §· Rót Thµnh C«ng <color=yellow>"..num.."<color> KNB")
		WriteLogPro("dulieu/RutKimNguyenBao.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t §· Rót "..num.." KNB");
	else
		Talk(1, "", "<color=red>"..myplayersex().." §ang Cã: <color=yellow>"..GetExtPoint(1).."<color> KNB\n         Sè L­îng CÇn Rót: <color=yellow>"..num.."<color> KNB\n                    Cßn ThiÕu: <color=yellow>"..num-GetExtPoint(1).."<color> KNB<color>")
	end
end

function RutTienDong(num)
local nRuong = CalcFreeItemCellCount() 
if nRuong < 30 then
		Talk(1,"","CÇn trèng 30 « r­¬ng chøa ®å")
		return 1
end 
	if (GetExtPoint(1) >= num) then
		SetTask(5733,GetTask(5733)+num)
		PayExtPoint(1,num)
		tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=num},1)
		SetTask(5997,GetTask(5997)+num)
		Msg2Player("Chóc Mõng "..myplayersex().." §· Rót Thµnh C«ng <color=yellow>"..num.."<color> TiÒn §ång")
		WriteLogPro("dulieu/RutKimNguyenBao.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t §· Rót "..num.." TiÒn §ång");
	else
		Talk(1, "", "<color=red>"..myplayersex().." §ang Cã: <color=yellow>"..GetExtPoint(1).."<color> TiÒn §ång\n         Sè L­îng CÇn Rót: <color=yellow>"..num.."<color> TiÒn §ång\n                    Cßn ThiÕu: <color=yellow>"..num-GetExtPoint(1).."<color> TiÒn §ång<color>")
	end
end

function KNBthanhTienDong()
	local nKNB = CalcEquiproomItemCount(4,343,1,-1)
	AskClientForNumber("doiknbthanhtiendong2",0,nKNB, "NhËp sè l­îng: ")
end

function doiknbthanhtiendong2(n_key)
local nRuong = CalcFreeItemCellCount() 
if nRuong < 30 then
		Talk(1,"","CÇn trèng 30 « r­¬ng chøa ®å")
		return 1
	end 
for i=1,n_key do
		tbAwardTemplet:GiveAwardByList({tbProp = {4,417,0,0,0,0}, nCount = TyLeDoiKnbSangTienDong}, "test", 1);
		ConsumeEquiproomItem(1,4,343,1,-1)
	end
end;

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end