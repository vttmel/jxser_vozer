Include("\\script\\global\\pgaming\\configserver\\configall.lua")

TIMETASK_IDBT = 116;
TASKTEMP_BAOTRI = 2;
FRAME2TIMEBT = 19;
TASKS_LOCKSYSTEMBT = 2;
function DYBaoTriServer()
			SetTaskTemp(TASKTEMP_BAOTRI, GetCurServerTime());
			SetTimer(1*FRAME2TIMEBT, TIMETASK_IDBT);			
			Msg2Player("§ang tiÕn hµnh b¶o tr×!")
end

function StopBaoTri()
local countplayers = GetPlayerCount();
SetTaskTemp(TASKTEMP_BAOTRI, 0)
for i=1,countplayers do 
PlayerIndex = i;
StopTimer(TIMETASK_IDBT);
SetStringTask(TASKS_LOCKSYSTEMBT, i);
end
end

function OnTimer()
	local nTimerOut2 = GetTaskTemp(TASKTEMP_BAOTRI);
	local nTime2 = GetCurServerTime();
	local nTimeNow2 = (nTimerOut2 - nTime2) + ThoiGianBaoTriServer ;
	Msg2SubWorld("<color=cyan>Cßn "..nTimeNow2.." gi©y nöa server sÏ b¶o tr×.")
	if (nTimeNow2 == 0) then
		SetTaskTemp(TASKTEMP_BAOTRI, 0)
		local countplayers = GetPlayerCount();
		for i=1,countplayers do 
			PlayerIndex = i;
			if PlayerIndex > 0 then 
				OfflineLive(i); 
				KickOutSelf(i);				 
			else
				break;
			end
		end
		for i=1,countplayers do 
		PlayerIndex = i;
		StopTimer(TIMETASK_IDBT);
		SetStringTask(TASKS_LOCKSYSTEMBT, i);
		end
	end
end