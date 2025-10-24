if MODEL_GAMECLIENT ~= 1 then
	return
end

Include("\\script\\script_protocol\\protocol_def_c.lua")
Include("\\script\\lib\\objbuffer_head.lua")

--------------------- Add thªm -------------------
tbSecurityLock = {}


tbSecurityLock.SECURITY_LOCK_TRADE = 0			--DO NOT change it
tbSecurityLock.SECURITY_LOCK_PET = 1			--DO NOT change it
tbSecurityLock.SECURITY_LOCK_MERIDIAN = 2		--DO NOT change it
tbSecurityLock.SECURITY_LOCK_TONG = 3			--DO NOT change it

tbSecurityLock.TSK_SECURITY_LOCKER = 4052

tbSecurityLock.TSK_SECURITY_LOCK_STATE = 4053
tbSecurityLock.TSK_STATE_BIT = 0
tbSecurityLock.TSK_FIRST_TIME_BIT = 1
-------------------------------====-------------------

function tbSecurityLock:OnClickLockBtn(nLockerState)	
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nLockerState)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_SECURITY_LOCK", handle)
	OB_Release(handle)
end

function tbSecurityLock:OnClickUnLockBtn(szPassWord)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_STRING, tostring(szPassWord))
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_SECURITY_UNLOCK", handle)
	OB_Release(handle)
end

function tbSecurityLock:OnClickCloseBtn(nLockerState)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nLockerState)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_SECURITY_CONFIG", handle)
	OB_Release(handle)
end

function tbSecurityLock:OnClickResetPasswordBtn(szOldPassWord, szNewPassWord)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_STRING, szOldPassWord)
	ObjBuffer:PushByType(handle, OBJTYPE_STRING, szNewPassWord)
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_SECURITY_RESET", handle)
	OB_Release(handle)
end

function tbSecurityLock:UpdateLocker()
	
	return self:IsLocked() or 0, self:GetLockerValue()
end

--------------------- Add thªm -------------------
function tbSecurityLock:IsLocked()
	return GetBitTask(self.TSK_SECURITY_LOCK_STATE, self.TSK_STATE_BIT, 1) == 1
end

function tbSecurityLock:GetLockerValue()
	return GetTask(self.TSK_SECURITY_LOCKER)
end