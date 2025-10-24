Include("\\script\\lib\\player.lua")


LadderId = {
	[01] = {n_Id = {10500}, s_Desc = "§ua TOP - KiÓm tra th«ng b¸o trªn kªnh thÕ giíi!"},
	[02] = {n_Id = {10499}, s_Desc = "Verify Client - Danh s¸ch c¸c tµi kho¶n sö dông Client kh«ng hîp lÖ!"},
	[03] = {n_Id = {10498}, s_Desc = "Verify Client - Danh s¸ch c¸c tµi kho¶n sö dông Client kh«ng hîp lÖ!"},
	[04] = {n_Id = {10497}, s_Desc = "Verify Client - Danh s¸ch c¸c tµi kho¶n sö dông Client kh«ng hîp lÖ!"},
	[05] = {n_Id = {10496}, s_Desc = "Verify Client - Danh s¸ch c¸c tµi kho¶n sö dông Client kh«ng hîp lÖ!"},
	[06] = {n_Id = {10495}, s_Desc = "Verify Client - Danh s¸ch c¸c tµi kho¶n sö dông Client kh«ng hîp lÖ!"},
	[07] = {n_Id = {10494}, s_Desc = "Verify Client - Danh s¸ch c¸c tµi kho¶n sö dông Client kh«ng hîp lÖ!"},
	[08] = {n_Id = {10493}, s_Desc = "Verify Client - Danh s¸ch c¸c tµi kho¶n sö dông Client kh«ng hîp lÖ!"},
	[09] = {n_Id = {10492}, s_Desc = "Verify Client - Danh s¸ch c¸c tµi kho¶n sö dông Client kh«ng hîp lÖ!"},
	[10] = {n_Id = {10491}, s_Desc = "Verify Client - Danh s¸ch c¸c tµi kho¶n sö dông Client kh«ng hîp lÖ!"},
	[11] = {n_Id = {10490}, s_Desc = "Verify Client - Danh s¸ch c¸c tµi kho¶n sö dông Client kh«ng hîp lÖ!"},
	
	[12] = {n_Id = {10489}, s_Desc = "XÕp h¹ng Temp - Cao thñ m«n ph¸i Thóy Yªn"},
	[13] = {n_Id = {10488}, s_Desc = "XÕp h¹ng Temp - Cao thñ m«n ph¸i Nga My"},
	[14] = {n_Id = {10487}, s_Desc = "XÕp h¹ng Temp - Cao thñ m«n ph¸i §­êng M«n"},
	[15] = {n_Id = {10486}, s_Desc = "XÕp h¹ng Temp - Cao thñ m«n ph¸i Ngò §éc"},
	[16] = {n_Id = {10485}, s_Desc = "XÕp h¹ng Temp - Cao thñ m«n ph¸i Thiªn V­¬ng"},
	[17] = {n_Id = {10484}, s_Desc = "XÕp h¹ng Temp - Cao thñ m«n ph¸i ThiÕu L©m"},
	[18] = {n_Id = {10483}, s_Desc = "XÕp h¹ng Temp - Cao thñ m«n ph¸i Vâ §ang"},
	[19] = {n_Id = {10482}, s_Desc = "XÕp h¹ng Temp - Cao thñ m«n ph¸i C«n L«n"},
	[20] = {n_Id = {10481}, s_Desc = "XÕp h¹ng Temp - Cao thñ m«n ph¸i Thiªn NhÉn"},
	[21] = {n_Id = {10480}, s_Desc = "XÕp h¹ng Temp - Cao thñ m«n ph¸i C¸i Bang"},
}


function SetTask(TaskNo, Value)
	return callPlayerFunction(PlayerIndex, SetTask, TaskID[TaskNo].nTaskID[1], Value)
end

function GetTask(TaskNo)
	return callPlayerFunction(PlayerIndex, GetTask, TaskID[TaskNo].nTaskID[1])
end
