if MODEL_GAMECLIENT ~= 1 then
	return
end
IncludeLib("FILESYS")
Include("\\script\\ui\\task\\taskguide_head.lua")
Include("\\script\\script_protocol\\protocol_def_c.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local tbTaskVariable = {}
tbTaskVariable[1] =
{
	--索引值对应\settings\taskguide.txt中的ID
	--这些任务变量改变时会刷新任务指南界面
	[5] = {{2885, 2885}},
	[14] = {{4078, 4078}, {1,10}, {4001,4008}},
	[15] = {{3494, 3494}, {3496,3497}},
	[16] = {{3481, 3481}},
}
tbTaskVariable[2] =
{
	--这些任务变量改变时，会刷新任务追踪界面
	[5] = {{2885, 2885}},
	[14] = {{4078, 4078}, {1,10}, {4001,4008}},
}

local tbTask = {}

function load_data(szPath)
	if (TabFile_Load(szPath, szPath) == 0) then
		return
	end
	local nRowCount = TabFile_GetRowCount(szPath)
	local tbData = {}
	for i=2, nRowCount do
		local nId = tonumber(TabFile_GetCell(szPath, i, "ID"))
		tbData[nId] = tbData[nId] or {}
		tbData[nId]["name"] = TabFile_GetCell(szPath, i, "TaskName")
		tbData[nId]["quit"] = tonumber(TabFile_GetCell(szPath, i, "IsQuitable"))
		tbData[nId]["guidescript"] = TabFile_GetCell(szPath, i, "TaskGuideScriptFile")
		tbData[nId]["fullfunc"] = TabFile_GetCell(szPath, i, "ShowFullInfoFunc")
		tbData[nId]["tracescript"] = TabFile_GetCell(szPath, i, "TaskTraceScriptFile")
		tbData[nId]["reducedfunc"] = TabFile_GetCell(szPath, i, "ShowReducedInfoFunc")
		tbData[nId]["clicktracefunc"] = TabFile_GetCell(szPath, i, "ClickTraceItemFunc")
		tbData[nId]["addtracefunc"] = TabFile_GetCell(szPath, i, "TraceTaskFunc")
		if tbData[nId]["guidescript"] ~= "" then
			Require(tbData[nId]["guidescript"])
		end
		if tbData[nId]["tracescript"] ~= "" then
			Require(tbData[nId]["tracescript"])
		else
			tbData[nId]["tracescript"] = tbData[nId]["guidescript"]
		end
	end
	TabFile_UnLoad(szPath)
	return tbData
end
tbTask = load_data("\\settings\\task\\taskguide.txt")

function taskguide_showtask(nId)
	if %tbTask[nId] == nil or %tbTask[nId]["guidescript"] == "" or %tbTask[nId]["fullfunc"] == "" then
		return
	end
	DynamicExecute(%tbTask[nId]["guidescript"], %tbTask[nId]["fullfunc"], nId)
end

-- 获取指定任务变量是属于哪个任务的
function _findTaskByTaskValueID(nTaskVariableId, tbTask)
	for nId, tb in tbTask do
		local nCount = getn(tb)
		for i=1, nCount do
			if nTaskVariableId >= tb[i][1] and nTaskVariableId <= tb[i][2] then
				return nId
			end
		end
	end
	return -1
end

-- 玩家任务变量改变时调用的函数
function playertaskchange(nTaskValueID, nTaskValue)
	local nId = _findTaskByTaskValueID(nTaskValueID, %tbTaskVariable[1])
	if (nId > 0) then
		NewTask_ShowTask(nId)
	end
	nId = _findTaskByTaskValueID(nTaskValueID, %tbTaskVariable[2])
	if nId > 0 then
		TraceTask_Update()
	end
end

function onridestatechange()
	NewTask_ShowTask(14)
	TraceTask_Update()
end

function taskguide_quittask(nId)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nId)
	ScriptProtocol:SendData("emSCRIPT_PROTOCAL_TaskGuide_QuitTask", handle)
	OB_Release(handle)
end

function tasktrace_udpate(nId)
	if %tbTask[nId] == nil or %tbTask[nId]["tracescript"] == "" or %tbTask[nId]["reducedfunc"] == "" then
		return
	end
	DynamicExecute(%tbTask[nId]["tracescript"], %tbTask[nId]["reducedfunc"], nId)
end

function tasktrace_select(nId)
	if %tbTask[nId] == nil or %tbTask[nId]["tracescript"] == "" or %tbTask[nId]["clicktracefunc"] == "" then
		return
	end
	DynamicExecute(%tbTask[nId]["tracescript"], %tbTask[nId]["clicktracefunc"], nId)
end

function tasktrace_add(nId, nClass, nTraceType)
	if %tbTask[nId] == nil or %tbTask[nId]["tracescript"] == "" or %tbTask[nId]["addtracefunc"] == "" then
		return
	end
	DynamicExecute(%tbTask[nId]["tracescript"], %tbTask[nId]["addtracefunc"], nId, nClass, nTraceType)
end
