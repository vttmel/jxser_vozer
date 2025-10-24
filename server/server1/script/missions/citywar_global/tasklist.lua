Include("\\script\\lib\\player.lua")

Ctc3tru_TaskID = 
{
	[1] = {Ctc3truTaskID = {5999}, Ctc3truDesc = "-------------------------",},
	[2] = {Ctc3truTaskID = {5998}, Ctc3truDesc = "-------------------------",},
	[3] = {Ctc3truTaskID = {5997}, Ctc3truDesc = "-------------------------",},
	[4] = {Ctc3truTaskID = {5996}, Ctc3truDesc = "-------------------------",},
	[5] = {Ctc3truTaskID = {5995}, Ctc3truDesc = "-------------------------",},
	[6] = {Ctc3truTaskID = {5994}, Ctc3truDesc = "-------------------------",},
	[7] = {Ctc3truTaskID = {5993}, Ctc3truDesc = "-------------------------",},
	[8] = {Ctc3truTaskID = {5992}, Ctc3truDesc = "-------------------------",},
	[9] = {Ctc3truTaskID = {5991}, Ctc3truDesc = "-------------------------",},
	[10] = {Ctc3truTaskID = {5990}, Ctc3truDesc = "-------------------------",},
	[11] = {Ctc3truTaskID = {5989}, Ctc3truDesc = "-------------------------",},
	[12] = {Ctc3truTaskID = {5988}, Ctc3truDesc = "-------------------------",},
	[13] = {Ctc3truTaskID = {0000}, Ctc3truDesc = "-------------------------",},
	[14] = {Ctc3truTaskID = {5987}, Ctc3truDesc = "-------------------------",},
	[15] = {Ctc3truTaskID = {5986}, Ctc3truDesc = "-------------------------",},
	[16] = {Ctc3truTaskID = {5985}, Ctc3truDesc = "-------------------------",},
	[17] = {Ctc3truTaskID = {5984}, Ctc3truDesc = "-------------------------",},
	[18] = {Ctc3truTaskID = {5983}, Ctc3truDesc = "-------------------------",},
	[19] = {Ctc3truTaskID = {5982}, Ctc3truDesc = "Tæng sè khiªu chiÕn lÖnh ®· nép",},
}

function Ctc3tru_SetTask(TaskNo, Value)
	return callPlayerFunction(PlayerIndex, SetTask, Ctc3tru_TaskID[TaskNo].Ctc3truTaskID[1], Value)
end

function Ctc3tru_GetTask(TaskNo)
	return callPlayerFunction(PlayerIndex, GetTask, Ctc3tru_TaskID[TaskNo].Ctc3truTaskID[1])
end
