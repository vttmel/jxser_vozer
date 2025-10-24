Include("\\script\\flipcard\\flipcard_head.lua")
Include("\\script\\script_protocol\\protocol_def_c.lua")
Include("\\script\\lib\\objbuffer_head.lua")

if MODEL_GAMECLIENT ~= 1 then
	return
end

function tbFlipCard:ProcessProtocol(nOpt, nParam, tbData)
	if nOpt == self.OPT_OPEN_UI then
		OpenCardsUi()
	elseif nOpt == self.OPT_SET_CELL then
		self:SetCell(nParam, tbData)
	end	
end

function tbFlipCard:SetCell(nIndex, tbData)
	local nCount, nG, nD, nP = unpack(tbData)
	OpenCardBack(nIndex, nCount, nG, nD, nP)
end

function tbFlipCard:OnClick(nIndex)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nIndex)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_FLIP_CARD", handle)
	OB_Release(handle)
end

function tbFlipCard:OnClose(nItemIndex)
	RemoveOpenCardUiItem(nItemIndex)
end
