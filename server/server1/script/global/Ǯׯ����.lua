Include("\\script\\global\\systemconfig.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")	
Include("\\script\\global\\vn\\extpointfunc_proc.lua")
Include("\\script\\activitysys\\npcdailog.lua")

function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
-------------------------------------------------------------------------
function main()
dofile("script/global/vn/gamebank_proc.lua")
	if (GetBoxLockState() == 0) then
		local tbOpt = {
			{"Ta Muèn Rót tiÒn ®ång",Rut_KNB},
			{"Nh©n TiÖn GhÐ Qua Th«i",No},
		}
		CreateNewSayEx("<color=green>Tµi Kho¶n: <color=red>"..GetAccount().."<color> - Nh©n VËt: <color=red>"..GetName().."<color>\nTiÒn §ång cßn l¹i: <color=yellow>"..GetExtPoint(1).."<color>", tbOpt)
	else
		Talk(1,"","<color=green>"..myplayersex().." H·y Më Khãa R­¬ng Tr­íc<color>")
	end
end