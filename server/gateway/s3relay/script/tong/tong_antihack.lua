if MODEL_RELAY == 1 then
IncludeLib("TONG")
Include("\\script\\tong\\tong_header.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\tong\\log.lua")
nStatus = 0
nIsPutting = 0
function Check_Tong_OnTimer()
	if nStatus == 1 then
		return
	end
		nStatus = 1
	local nTongID = TONG_GetFirstTong()
	while (nTongID > 0) do
		if nIsPutting == 1 then
		OutputMsg("Client dang gui tien. Yeu cau dung vong lap trong giay lat")
		break
		end
		local nCurMoney = TONG_GetMoney(nTongID)
		local nPureMoney = TONG_GetTaskValue(nTongID,TONGTSK_AntiHackMoney)
		if nPureMoney < 0 then 
			nPureMoney = 0
			TONG_ApplySetTaskValue(nTongID,TONGTSK_AntiHackMoney,0)
		end
		if nCurMoney > nPureMoney then
			TONG_ApplySetMoney(nTongID,nPureMoney)
			TONG_WriteLog("Bang "..TONG_GetName(nTongID).." dang hack "..(nCurMoney -nPureMoney ).." tien van\n")
		elseif nCurMoney < nPureMoney then
			TONG_ApplySetTaskValue(nTongID,TONGTSK_AntiHackMoney,nCurMoney)
		end
		nTongID = TONG_GetNextTong(nTongID);
	end 
	nStatus = 0
end

function GS_CALL_PUT_MONEY(ParamHandle, ResultHandle)
	nIsPutting = 1
	local szName = ObjBuffer:PopObject(ParamHandle)-- ten nguoi göi
	local nTongID = ObjBuffer:PopObject(ParamHandle)-- id bang héi
	local nMoney = ObjBuffer:PopObject(ParamHandle)-- sè tiÒn cÇn göi 
	local nResult = 0
	if TONG_ApplyAddMoney(nTongID, nMoney) == 1 then
	TONG_ApplyAddTaskValue(nTongID, TONGTSK_AntiHackMoney,nMoney);
	nResult = 1
	OutputMsg("Göi tiÒn h· ku "..nMoney);
	else
	ObjBuffer:PushObject(ResultHandle, szName)
	ObjBuffer:PushObject(ResultHandle, nMoney)
	end
	ObjBuffer:PushObject(ResultHandle, nResult)
	nIsPutting = 0
end
end