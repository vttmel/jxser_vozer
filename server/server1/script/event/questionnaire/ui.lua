Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\script_protocol\\protocol_def_c.lua")

function OpenWebBrowser(szUrl)
	OpenQuestionnaire(szUrl)
end

function OnCancel(szUrl)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, 1)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_OPEN_URL", handle)
	OB_Release(handle)
end

function OnOk(szUrl)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, 3)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_OPEN_URL", handle)
	OB_Release(handle)
end