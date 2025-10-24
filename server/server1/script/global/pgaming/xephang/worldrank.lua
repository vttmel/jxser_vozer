IncludeLib("FILESYS")
Include ("\\script\\class\\ktabfile.lua")
NowDay = date("%Y%m%d")..GetLocalDate("%H%M%S")
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("LEAGUE")
IncludeLib("ITEM")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\progressbar.lua")

WorldRank = {
	FileTempNew = "data/worldrank_temp_new.txt",
	FileTempNewTbFileLoad = "\\data\\worldrank_temp_new.txt",
	FileTempNewHeader = "NamePlayer\tLevelPlayer",
	FileTempOld = "data/worldrank_temp_old.txt",
	FileTempOldTbFileLoad = "\\data\\worldrank_temp_old.txt",
	FileCompared = "data/worldrank_compared.txt",
	FileComparedTbFileLoad = "\\data\\worldrank_compared.txt",
	FileRankSorted = "script/global/pgaming/xephang/xephang_log/worldrank_sorted.lua",
	FileRankSortedTbFileLoad = "\\script\\global\\pgaming\\xephang\\xephang_log\\worldrank_sorted.lua",
}
	
function WorldRank:UpdateDataPlayer()
	if GetTask(5974) ~= tonumber(NowDay) then
		if TabFile_Load(self.FileTempNewTbFileLoad, "NamePlayerUpdateData") ~= 1 then
			local OpenFileTemp = openfile(self.FileTempNew, "a");
			write(OpenFileTemp, self.FileTempNewHeader, "\n")
			closefile(OpenFileTemp)
		end
		TabFile_UnLoad("NamePlayerUpdateData")
		local OpenFileTemp = openfile(self.FileTempNew, "a");
		write(OpenFileTemp, GetName().."\t"..GetLevel().."."..GetExpPercent(), "\n")
		closefile(OpenFileTemp)
		SetTask(5974, tonumber(NowDay))
	end
end
	
function WorldRank:UpdateRankData()
	print(" ");
	print( "========================================================================================");
	print(" WorldRank -> Update Data -> Start")
	AddGlobalNews("H÷ thËng Æang ti’n hµnh lµm mÌi lπi x’p hπng c∏ nh©n toµn m∏y chÒ!")
	if TabFile_Load(self.FileTempNewTbFileLoad, self.FileTempNewTbFileLoad) ~= 1 then
		print(" Khong tai duoc file FileTempNew! -> return")
		return
	else
		if TabFile_Load(self.FileTempOldTbFileLoad, self.FileTempOldTbFileLoad) == 1 then
			self.CompareFromData()
		end
		TabFile_UnLoad(self.FileTempOldTbFileLoad)
	end
	TabFile_UnLoad(self.FileTempNewTbFileLoad)
	local TbTemp = {}
	local DataNeedSort
	if TabFile_Load(self.FileComparedTbFileLoad, self.FileComparedTbFileLoad) ~= 1 then
		DataNeedSort = new(KTabFile, self.FileTempNewTbFileLoad, format("WorldRankSort_Check_%s", NowDay))
	else
		DataNeedSort = new(KTabFile, self.FileComparedTbFileLoad, format("WorldRankSort_Check_%s", NowDay))
	end
	for LoopDataSort = 1, DataNeedSort:getRow() do
		tinsert(TbTemp, {DataNeedSort:getCell("NamePlayer", LoopDataSort), DataNeedSort:getCell("LevelPlayer", LoopDataSort)})
	end
	DataNeedSort:release()
	sort(TbTemp, function (a, b) return(tonumber(a[2]) > tonumber(b[2])) end)
	local OpenFileRanking = openfile(self.FileRankSorted, "w")
	write(OpenFileRanking, "nRankingData = {\n\t["..String2Byte("GM01").."] = {RankNum = "..NowDay..", NamePlayer = 'GM01'},", "\n")
	for Save2Tb = 1, getn(TbTemp) do
		write(OpenFileRanking, "\t["..String2Byte(TbTemp[Save2Tb][1]).."] = {RankNum = "..Save2Tb..", NamePlayer = '"..TbTemp[Save2Tb][1].."', LevelPlayer = "..TbTemp[Save2Tb][2].."},", "\n")
	end
	write(OpenFileRanking, "}", "\n")
	closefile(OpenFileRanking)
	self.ConvertFile()
	print(" WorldRank -> Sorted -> Done")
	dofile(WorldRank.FileRankSorted)
	dofile("script/global/pgaming/xephang/worldrank.lua")
	print(" WorldRank -> dofile RankSorted -> Done")
	AddGlobalNews("Lµm mÌi th¯ hπng giang hÂ cho ng≠Íi ch¨i toµn m∏y chÒ hoµn t t!")
	print( "========================================================================================");
end

function WorldRank:CompareFromData()
	print(" WorldRank -> CompareFromData Old <> New -> Compared")
	local OldData = new(KTabFile, WorldRank.FileTempOldTbFileLoad, format("WorldRank_OldData_%s", NowDay))
	local NowData = new(KTabFile, WorldRank.FileTempNewTbFileLoad, format("WorldRank_New_%s", NowDay))
	local RowNowData, CheckNum, WriteData2Compared = NowData:getRow(), 0, openfile(WorldRank.FileCompared, "w")
	write(WriteData2Compared, WorldRank.FileTempNewHeader, "\n")
	for LoopOldData = 1, OldData:getRow() do
		for LoopNowData = 1, RowNowData do
			if tostring(OldData:getCell("NamePlayer", LoopOldData)) ~= tostring(NowData:getCell("NamePlayer", LoopNowData)) then
				CheckNum = CheckNum + 1
			else
				write(WriteData2Compared, tostring(NowData:getCell("NamePlayer", LoopNowData)).."\t"..tostring(NowData:getCell("LevelPlayer", LoopNowData)), "\n")
				break
			end
		end
		if CheckNum == RowNowData then
			write(WriteData2Compared, tostring(OldData:getCell("NamePlayer", LoopOldData)).."\t"..tostring(OldData:getCell("LevelPlayer", LoopOldData)), "\n")
		end
		CheckNum = 0
	end
	for CompareDataNewWithOld = 1, NowData:getRow() do
		CheckNum = 0
		for OldDt = 1, OldData:getRow() do
			if tostring(OldData:getCell("NamePlayer", OldDt)) ~= tostring(NowData:getCell("NamePlayer", CompareDataNewWithOld)) then
				CheckNum = CheckNum + 1
			end
		end
		if CheckNum == OldData:getRow() then
			write(WriteData2Compared, tostring(NowData:getCell("NamePlayer", CompareDataNewWithOld)).."\t"..tostring(NowData:getCell("LevelPlayer", CompareDataNewWithOld)), "\n")
		end
	end
	closefile(WriteData2Compared)
	OldData:release()
	NowData:release()
	print(" WorldRank -> CompareFromData -> Complete")
end

function WorldRank:ConvertFile()
	print(" ConvertFile -> Chuyen file Compared -> TempOld")
	local OpenFileCompared
	if TabFile_Load(WorldRank.FileComparedTbFileLoad, WorldRank.FileComparedTbFileLoad) ~= 1 then
		print(" ConvertFile -> Khong tai duoc file Compared!")
		if TabFile_Load(WorldRank.FileTempNewTbFileLoad, WorldRank.FileTempNewTbFileLoad) == 1 then
			print(" ConvertFile -> FileTempNew -> Old")
			OpenFileCompared = new(KTabFile, WorldRank.FileTempNewTbFileLoad, format("ConvertCompared2Old_%s", NowDay))
		else
			print(" ConvertFile -> Khong duoc thuc hien!")
			return
		end
	else
		OpenFileCompared = new(KTabFile, WorldRank.FileComparedTbFileLoad, format("ConvertCompared2Old_%s", NowDay))
	end
	TabFile_UnLoad(WorldRank.FileTempNewTbFileLoad)
	TabFile_UnLoad(WorldRank.FileComparedTbFileLoad)
	local OpenFileOld = openfile(WorldRank.FileTempOld, "w")
	write(OpenFileOld, WorldRank.FileTempNewHeader, "\n")
	for LoopDataConvert = 1, OpenFileCompared:getRow() do
		write(OpenFileOld, tostring(OpenFileCompared:getCell("NamePlayer", LoopDataConvert)).."\t"..tostring(OpenFileCompared:getCell("LevelPlayer", LoopDataConvert)), "\n")
	end
	OpenFileCompared:release()
	closefile(OpenFileOld)
	print(" ConvertFile -> Lam moi file Compared")
	local OpenFileComparedEmpty = openfile(WorldRank.FileCompared, "w");
	closefile(OpenFileComparedEmpty)
	print(" ConvertFile -> Lam moi file TempNew")
	local OpenFileTemp = openfile(WorldRank.FileTempNew, "w");
	write(OpenFileTemp, WorldRank.FileTempNewHeader, "\n")
	closefile(OpenFileTemp)
	print(" ConvertFile -> Done")
end

function WorldRank:GetWorldRank()
	if GetTask(5972) ~= tonumber(date("%Y%m%d")) then
		if TabFile_Load(WorldRank.FileRankSortedTbFileLoad, WorldRank.FileRankSortedTbFileLoad) ~= 1 then
			if GetTask(5973) > 0 then
				return GetTask(5973)
			else
				return "V…n ch≠a x’p hπng"
			end
		else
			TabFile_UnLoad(WorldRank.FileRankSortedTbFileLoad)
			Include(WorldRank.FileRankSortedTbFileLoad)
		end
		if FALSE(nRankingData[tonumber(String2Byte(GetName()))]) then
			SetTask(5973, 0)
		else
			SetTask(5973, tonumber(nRankingData[tonumber(String2Byte(GetName()))].RankNum))
		end
		SetTask(5972, tonumber(date("%Y%m%d")))
	end
	if GetTask(5973) <= 0 then
		return "V…n ch≠a x’p hπng"
	else
		return GetTask(5973)
	end
end

function String2Byte(string)
	local len, ByteRet = strlen(string), ""
	for i = 1, len do 
		ByteRet = ByteRet..strbyte(string, i)
	end
	return ByteRet
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end