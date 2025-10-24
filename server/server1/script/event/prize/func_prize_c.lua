if MODEL_GAMECLIENT ~= 1 then
	return
end

Include("\\script\\event\\prize\\func_prize_def.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\script_protocol\\protocol_def_c.lua")


function tbFuncPrize:UpdateData()
--	local handle = OB_Create()
--	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, OPEN_WINDOW)
--	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_FUNC_PRIZE_GS", handle)
--	OB_Release(handle)
end

function tbFuncPrize:OnClickBtn(nId)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nId)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_FUNC_PRIZE", handle)
	OB_Release(handle)
end

function tbFuncPrize:GetTaskProgress()
	local nDays = self:CalcUpdateTask()
	local nFlag = 0
	local nCount = 0
	local tbTaskState = {0, 0, 0, 0, 0}
	if nDays == nil then
		nDays = GetBitTask(self.TSK_STATE, self.STATE_BIT_DAYS, self.STATE_BIT_DAYS_LEN)
		nFlag = GetBitTask(self.TSK_STATE, self.STATE_BIT_AWARDED, 1)
		nCount, tbTaskState[1], tbTaskState[2], tbTaskState[3], tbTaskState[4], tbTaskState[5] = self:GetFinishTaskCount()
		if nCount > self.TASK_FINISH_COUNT then
			nCount = self.TASK_FINISH_COUNT
		end
	end
	
	return nDays, ((nCount >= self.TASK_FINISH_COUNT) or 0), nFlag, tbTaskState[1], tbTaskState[2], tbTaskState[3], tbTaskState[4], tbTaskState[5]
end

