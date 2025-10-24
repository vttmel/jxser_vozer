if MODEL_GAMECLIENT ~= 1 then
	return
end
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\script_protocol\\protocol_def_c.lua")


tbLoginPrize = {}

function tbLoginPrize:ProcessProtocol(nOpertion, nLoginCout, bFlag)
	if nOpertion == 1 then
		OpenLoginPrizeUi(nLoginCout, bFlag)
	else
		UpdateLoginPrizeUi(nLoginCout, bFlag)
	end
end

function tbLoginPrize:OnClickBtn(nId)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, 0)
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nId)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_LOGIN_PRIZE", handle)
	OB_Release(handle)
end

function tbLoginPrize:ApplyData()
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, 1)
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, 0)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_LOGIN_PRIZE", handle)
	OB_Release(handle)
end