IncludeLib("ITEM")
IncludeLib("NPCINFO")
IncludeLib("RELAYLADDER")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("SETTING")
IncludeLib("TIMER") 
IncludeLib("BATTLE")
IncludeLib("TITLE")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\progressbar.lua"); 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\string.lua");
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\global\\pgaming\\missions\\bosshoangkim\\bosstieu\\lib\\itemhead.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\player.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\logout_head.lua")

local LOG_PATH = 
{
	["exp"] = "dulieu/bosshoangkim/record_exp/",
	["award"] = "dulieu/bosshoangkim/record_award/",
	["log"] = "dulieu/bosshoangkim/record_log/",

}

-----------------------[[TASK SERVER]]----------------------
TASKBASE = 3200;
----------------------constant-------------------

function GetLuckyPlayer()
	local tbFixItem = GetAllEquipment();
	local nQueHT = GetSkillState(450);
	local nTSBL = GetSkillState(441);
	local luckplayer = 1;
	if nQueHT ==  20  then 
		luckplayer = 10;
	end
	
	if nTSBL == 1 then 
		luckplayer = luckplayer + 5;
	end	
	
	for k=1,getn(tbFixItem) do 
		local pG,pD,pP = GetItemProp(tbFixItem[k]);
		if pD == 2 or pD == 3 or pD == 4 or pD == 5 or pD == 6 or pD == 7 or pD == 8 or pD == 9 then --N’u lµ vÚ kh› cÀn chi’n, vÚ kh› t«m xa, ao, gi«y, Æai l≠ng, mÚ, bao tay.
			for i=1,6 do 
				magictype, p1, p2, p3 = GetItemMagicAttrib(tbFixItem[k], i)
				if magictype == 135 then --may man
					--range 1 - 10;
					luckplayer = luckplayer + (p1*2);
				end
			end			
		end
	end
	return luckplayer
end

function SetTaskSource()
	BT_SetType2Task(1, 751)
	for i = 2, 50 do 
		BT_SetType2Task(i, 700 + i);
	end
end

function MyID(nTaskID)
	return (TASKBASE + nTaskID);
end

function SetTaskSystem(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue);
	SyncTaskValue(nTaskID);
end

function GetTaskSystem(nTaskID)
	return GetTask(nTaskID);
end

function sTask(nTaskID,nTaskValue,nKindTask)
	if nKindTask then 
		SetTask(nTaskID,nTaskValue);
		SyncTaskValue(nTaskID);
		return 
	end
	
	local myTaskID = nTaskID + TASKBASE;
	SetTask(myTaskID,nTaskValue);
	SyncTaskValue(myTaskID);
end

function gTask(nTaskID,nKindTask)
	if nKindTask then 
		return GetTask(nTaskID);
	end
	
	local myTaskID = nTaskID + TASKBASE;
	return GetTask(myTaskID);
end


function GetPlayerAroundNpc(nNpcIndex,nRadius,tbBandList)
	local tbplayer,count_player = GetNpcAroundPlayerList(nNpcIndex,nRadius);
	local last_tb = {}
	if tbBandList and type(tbBandList) == "table" then 
		for k=1,count_player do 
			local nCheck = 0;
			for d=1,getn(tbBandList) do 
				if tbplayer[k] == tbBandList[d] then 
					nCheck = 1;
					break;
				end
			end

			if nCheck == 0 then 
				tinsert(last_tb,tbplayer[k]); --l y index valid ko band
			end
		end
		return last_tb;
	end

	return tbplayer;	
end

function AddPlayerExp(myExpValue)
local myOwnExp = 0
local myNeedExp = 0
local myPayExp = 0
local nNextLevel = 0
local nTransCont = ST_GetTransLifeCount();
	if not GetLevel() then 
		return 
	end

	local i = 0;
	for i = 0, 180 do
		if (myExpValue <= 0) then
			return
		end
		myOwnExp = GetExp()
		nNextLevel = GetLevel()+1
		myNeedExp = tl_getUpLevelExp(nNextLevel, nTransCont);
		
		myNeedExp = myNeedExp - myOwnExp
		
		if (myNeedExp <= 0) then
			break
		end
		
		if (myExpValue<=myNeedExp) then
			AddOwnExp(myExpValue)
			myExpValue = 0
		else
			myExpValue = myExpValue - myNeedExp
			AddOwnExp(myNeedExp)
		end
		
	end
end

function RandValueTabStartEnd(nStart,nEnd)
	local cnt_1 = 0
	local cnt_2 = 0
	local fieldtab = {}
	for i =nStart, nEnd do
		fieldtab[i] = i
	end
	for i = nStart, nEnd do
		cnt_1 = random(nStart, nEnd) 
		a = fieldtab[cnt_1]
		cnt_2 = random(nStart, nEnd)
		fieldtab[cnt_1] = fieldtab[cnt_2]
		fieldtab[cnt_2] = a
	end
	return fieldtab
end

function _LogPlayer(szType,szFolder,szLogPlayer)
	local szPath = %LOG_PATH[szType];
	if not szPath then
		if type(szType) == "string" then  
			szPath = szType
		end
	end

	if szPath and type(szLogPlayer) == "table" then 
		szPath = szPath..format("%s/",szFolder);
		szPathFile = format("%s.txt",GetName());
		tbVngLib_File:Table2File(szPath,szPathFile,"a",szLogPlayer);
	end
end

function _Write2File(szFileName,szLogPlayer)
	local szPath = "dulieu/"
	if szPath and type(szLogPlayer) == "table" then 
		szPathFile = format("%s.txt",szFileName);
		tbVngLib_File:Table2File(szPath,szPathFile,"a",szLogPlayer);
	end
end

