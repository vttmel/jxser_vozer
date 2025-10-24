
RankHook = {
	LGID = 8888,
	TaskLevel = 1,
	TaskRank = 2,
	tbTemp = {},
	tbTempSort = {},
	tbConvertRank = {
		{10489, 10282},
		{10488, 10281},
		{10487, 10279},
		{10486, 10280},
		{10485, 10278},
		{10484, 10277},
		{10483, 10285},
		{10482, 10286},
		{10481, 10284},
		{10480, 10283},
	},
	_nAllowConvertRank = 0,
	Write2Logs = 0,
}

function RankHook:UpdateData(Name, Level, Percent)
	if Level < 20 then return end
	if FALSE(LG_GetLeagueObj(self.LGID, Name)) then
		local _1 = LG_CreateLeagueObj()
		LG_SetLeagueInfo(_1, self.LGID, Name)
		LG_ApplyAddLeague(_1, "", "")
		LG_FreeLeagueObj(_1)
	end
	local LevelPercent = 0
	if Percent == 0 then 
		LevelPercent = tonumber(Level.."00")
	elseif Percent < 10 then 
		LevelPercent = tonumber(Level.."0"..Percent)
	elseif Percent > 99 then
		LevelPercent = tonumber(Level.."99")
	else
		LevelPercent = tonumber(Level..Percent)
	end
	LG_ApplySetLeagueTask(self.LGID, Name, self.TaskLevel, LevelPercent)
end

function RankHook:UpdateRank()
	local Handle = LG_GetFirstLeague(self.LGID)
	
	if FALSE(Handle) then
		return print("--> Bang Xep Hang: Hien Tai Khong Co Nhan Vat Nao!")
	end
	
	local Name, Level, RankCount
	local Logs = ((self.Write2Logs == 1) and 1 or nil)
	local Logs_hFile = "script/xephang_logs/WorldRank_"..date("%y_%m_%d").."_"
	local Logs_hFile_RawData = "RawData.log"
	local Logs_hFile_SortData = "SortData.log"
	
	if Logs then
		Logs_hFile_RawData = openfile(Logs_hFile..Logs_hFile_RawData, "a")
	end
	
	while (not FALSE(Handle)) do
		if (FALSE(Handle)) then
			break
		else
			Name = LG_GetLeagueInfo(Handle)
			Level = LG_GetLeagueTask(self.LGID, Name, self.TaskLevel)
			tinsert(self.tbTemp, {Name, Level})
			Handle = LG_GetNextLeague(self.LGID, Handle)
			
			if Logs then
				write(Logs_hFile_RawData, date("[%d-%m-%y %H:%M:%S]").."\t\tLevel: "..Level.."\t\tName: "..Name.."\n")
			end
		end
	end
	
	RankCount = getn(self.tbTemp)
	
	if Logs then
		closefile(Logs_hFile_RawData)
		
		Logs_hFile_SortData = openfile(Logs_hFile..Logs_hFile_SortData, "a")
		write(Logs_hFile_SortData, "\n\tThe total number of ranking: "..RankCount.."\n\tLeagueID: "..self.LGID.."\tTaskLevel: "..self.TaskLevel.."\tTaskRank: "..self.TaskRank.."\n\tConvertRank: "..self._nAllowConvertRank.."\n")
		write(Logs_hFile_SortData, "------------------------------------------------------------------------------------------------------------\n\t\n")
	end
	
	local CurValue, CurSel = 0, 0
	
	if RankCount > 0 then
		self.tbTempSort = self.tbTemp
		
		sort(self.tbTempSort, function (a, b) return(a[2] > b[2]) end)
		
		for i = 1, RankCount do
			LG_ApplySetLeagueTask(self.LGID, self.tbTempSort[i][1], self.TaskRank, i)
			
			if Logs then
				write(Logs_hFile_SortData, date("[%d-%m-%y %H:%M:%S]").."\tRank: "..i.."\t\tLevel: "..self.tbTempSort[i][2].."\t\tName: "..self.tbTempSort[i][1].."\n")
			end
		end
		
		if Logs then
			closefile(Logs_hFile_SortData)
		end
		
		local _2 = 10
		
		Ladder_ClearLadder(10287)
		
		for iTop = 1, 10 do
			_2 = _2 - 1
			
			if FALSE(self.tbTempSort[iTop]) or FALSE(self.tbTempSort[iTop][1]) or FALSE(self.tbTempSort[iTop][2]) then
				break
			end
			
			if self._nAllowConvertRank == 1 then
				Ladder_NewLadder(10287, self.tbTempSort[iTop][1], tonumber("1.".._2), 1)
			else
				Ladder_NewLadder(10287, self.tbTempSort[iTop][1], tonumber(strsub(tostring(self.tbTempSort[iTop][2]), 1, strlen(tostring(self.tbTempSort[iTop][2])) - 2)), 1)
			end
		end
		
		local _3_Name, _3_Value
		
		for _l_1 = 1, getn(self.tbConvertRank) do
			_2 = 10
			Ladder_ClearLadder(self.tbConvertRank[_l_1][2])
			
			for _l_2 = 1, 10 do
				_2 = _2 - 1
				_3_Name, _3_Value = Ladder_GetLadderInfo(self.tbConvertRank[_l_1][1], _l_2)
				
				if FALSE(_3_Name) or FALSE(_3_Value) then
					break
				end
				
				if self._nAllowConvertRank == 1 then
					Ladder_NewLadder(self.tbConvertRank[_l_1][2], _3_Name, tonumber("1.".._2), 1)
				else
					Ladder_NewLadder(self.tbConvertRank[_l_1][2], _3_Name, tonumber(strsub(tostring(_3_Value), 1, strlen(tostring(_3_Value)) - 2)), 1)
				end
			end
		end
		
		self.tbTemp = {}
		self.tbTempSort = {}
	else
		return print("Rank Count: 0 ---> Return")
	end
	
	local a = " "
	a = a..((Logs) and "with [ Logs ]" or "")
	a = a..((self._nAllowConvertRank == 1) and " and [ Convert Rank ]" or "")
	
	print("                  Xep Hang Hien Tai Co: "..RankCount.." nguoi")
	print(" ===========================================================")
end

function FALSE(value)
	if (not(value) or value == 0 or value == nil or value == "") then
		return 1
	else
		return nil
	end
end
