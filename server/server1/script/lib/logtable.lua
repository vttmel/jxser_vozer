-- Author by AloneScript (Linh Em)

function SetTableFile(szFileTable, tbTable, szTableName)
	local szFileTable2 = "\\\\"..replace(szFileTable, "/", "\\\\")
	local nIsFile = IniFile_Load(szFileTable2, szFileTable2);
	if (nIsFile == 0) then
		File_Create(szFileTable2)
	end
	local tbTableNew = CreateTable(tbTable, szTableName);
	local nFile = openfile(szFileTable, "w+");
	write(nFile, tbTableNew);
	closefile(nFile);
end

function CreateTable(tbTable, szTableName, strTab)
	strTable = "";
	strTab = strTab or "";
	strTable = strTable..strTab..szTableName.." = {";
	
	nStart = 0;
	for x, y in tbTable do
		if (nStart == 1) then
			strTable = strTable..",\r";
		else
			nStart = 1;
			strTable = strTable.."\n";
		end
		
		local szKey = (type(x) == "string") and format("[%q]", x) or format("[%d]", x);
		if (type(y) == "table") then
			strTable = strTable..CreateTable(y, szKey, strTab.."\t");
		else
			local strValue = (type(y) == "string") and format("%q", y) or tostring(y);
			strTable = strTable..strTab.."\t"..szKey.." = "..strValue
		end
	end
	
	strTable = strTable.."\r"..strTab.."}";
	return strTable
end