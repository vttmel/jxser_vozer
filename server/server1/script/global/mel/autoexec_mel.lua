Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\changefeature\\equip_tryon.lua")
Include("\\script\\vng_lib\\extpoint.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\string.lua")
Include("\\script\\vng_lib\\files_lib.lua")
tbFeatureNpc = {}

-----------------------------------------------------------------------------

newmel_npc ={
{202,80,4,78,1547,3219,0,"N©ng CÊp Trang BÞ",0,"\\script\\global\\mel\\annie.lua"},
{114,80,4,78,1557,3205,0,"Phong Háa C¸n Bé",0,"\\script\\global\\mel\\vozer.lua"},
{1209,80,4,78,1552,3245,0,"Mói MÝt",0,"\\script\\global\\mel\\testserver.lua"},
}

function Add_Npc_Mel()
	add_mel(newmel_npc)
end

-----------------------------------------------------------------------------

function add_mel(tbnpc)
	for i = 1 , getn(tbnpc) do
		Mid = SubWorldID2Idx(tbnpc[i][4]);
		if (Mid >= 0 ) then
			TabValue5 = tbnpc[i][5] * 32;
			TabValue6 = tbnpc[i][6] * 32;
			local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]);
			SetNpcScript(nNpcIdx, tbnpc[i][10]);
		end;
	end;
end


function GetMapNameById(mapId)
    --local filePath = "settings/"
    local fileName = "maplist.ini"
    local filePath = "settings/maplist.ini"
    local file = openfile(filePath, "r")
    if not file then
        print("Error: Could not open " .. filePath)
        return "Unknown"
    end

    local targetKey =mapId.."_name"
    local line = read(file, "*l")
    --for i =1, 6000 do
    while line do
        if strfind(line, targetKey) then
            closefile(file)
            --print("Map name found: " .. line)
            break
        end
        line = read(file, "*l")
    end

    local tbtemp = {}
    tbtemp = split(line, "=")
    --print("Map name "..tbtemp[2])
    return tbtemp[2] or "Unknown Map"

end

-- This function records the player's current coordinates and map name to a file.
function ghi_bai_quai()
    local filePath = "settings/"
    local fileName = "toado.txt"

    -- Get the current world position of the player.
    local pW, pX, pY = GetWorldPos()
    -- Calculate additional coordinate values.
    local pX1 = floor((tonumber(pX)*32)/256)
    local pY1 = floor((tonumber(pY)*32)/512)
    local szMapName = GetMapNameById(pW)

    -- Store the coordinates and map name in a table.
    local tbData = {pW, pX, pY, pX1, pY1, szMapName}
    
    -- Append the data table to the file.
    tbVngLib_File:Table2File(filePath, fileName, "a", tbData)    
    -- Notify the player of success.
    Msg2Player("<color=red>Ghi toa do thanh cong "..szMapName .." ("..pX1..","..pY1..")")
end

--------------------B·i 1x--------------------
-- This function creates a training area by spawning NPCs at coordinates read from a file.
function tao_bai_train1x()
    local nNpcId = 12;
    local nNpcLv = 15;

    local fileName = "toado1x.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = 12
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 10"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 10"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 10"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 10"
				else
					nNameMonster = "Vozer Qu¸i 10"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 2x--------------------
function tao_bai_train2x()
    local nNpcId = 12;
    local nNpcLv = 25;

    local fileName = "toado2x.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = 12
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 20"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 20"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 20"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 20"
				else
					nNameMonster = "Vozer Qu¸i 20"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 3x--------------------
function tao_bai_train3x()
    local nNpcId = 17;
    local nNpcLv = 35;

    local fileName = "toado3x.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = 17
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 30"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 30"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 30"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 30"
				else
					nNameMonster = "Vozer Qu¸i 30"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 4x--------------------
function tao_bai_train4x()
    local nNpcId = 24;
    local nNpcLv = 45;

    local fileName = "toado4x.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = random(24, 26)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 40"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 40"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 40"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 40"
				else
					nNameMonster = "Vozer Qu¸i 40"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 5x--------------------
function tao_bai_train5x()
    local nNpcId = 157;
    local nNpcLv = 55;

    local fileName = "toado5x.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = 157
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 50"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 50"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 50"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 50"
				else
					nNameMonster = "Vozer Qu¸i 50"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 6x--------------------
function tao_bai_train6x()
    local nNpcId = 24;
    local nNpcLv = 65;

    local fileName = "toado6x.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = random(24, 26)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 60"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 60"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 60"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 60"
				else
					nNameMonster = "Vozer Qu¸i 60"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 7x1--------------------
function tao_bai_train7x1()
    local nNpcId = 588;
    local nNpcLv = 75;

    local fileName = "toado7x1.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = random(588, 589)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 70"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 70"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 70"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 70"
				else
					nNameMonster = "Vozer Qu¸i 70"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 7x2--------------------
function tao_bai_train7x2()
    local nNpcId = 28;
    local nNpcLv = 75;

    local fileName = "toado7x2.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = random(28, 30)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 70"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 70"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 70"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 70"
				else
					nNameMonster = "Vozer Qu¸i 70"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 8x1--------------------
function tao_bai_train8x1()
    local nNpcId = 591;
    local nNpcLv = 85;

    local fileName = "toado8x1.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = random(591, 593)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 80"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 80"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 80"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 80"
				else
					nNameMonster = "Vozer Qu¸i 80"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 8x2--------------------
function tao_bai_train8x2()
    local nNpcId = 149;
    local nNpcLv = 85;

    local fileName = "toado8x2.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = 149
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 80"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 80"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 80"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 80"
				else
					nNameMonster = "Vozer Qu¸i 80"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 8x3--------------------
function tao_bai_train8x3()
    local nNpcId = 556;
    local nNpcLv = 85;

    local fileName = "toado8x3.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 30 do
                nNpcId = random(556, 558)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 80"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 80"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 80"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 80"
				else
					nNameMonster = "Vozer Qu¸i 80"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x1--------------------
function tao_bai_train9x1()
    local nNpcId = 594;
    local nNpcLv = 95;

    local fileName = "toado9x1.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = random(594, 596)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x2--------------------
function tao_bai_train9x2()
    local nNpcId = 598;
    local nNpcLv = 95;

    local fileName = "toado9x2.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = random(598, 601)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x3--------------------
function tao_bai_train9x3()
    local nNpcId = 703;
    local nNpcLv = 95;

    local fileName = "toado9x3.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = random(703, 706)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x4--------------------
function tao_bai_train9x4()
    local nNpcId = 559;
    local nNpcLv = 95;

    local fileName = "toado9x4.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = random(559, 561)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x5--------------------
function tao_bai_train9x5()
    local nNpcId = 534;
    local nNpcLv = 95;

    local fileName = "toado9x5.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = random(534, 538)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x6--------------------
function tao_bai_train9x6()
    local nNpcId = 144;
    local nNpcLv = 95;

    local fileName = "toado9x6.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = 144
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x7--------------------
function tao_bai_train9x7()
    local nNpcId = 155;
    local nNpcLv = 95;

    local fileName = "toado9x7.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = random(155, 157)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x8--------------------
function tao_bai_train9x8()
    local nNpcId = 559;
    local nNpcLv = 95;

    local fileName = "toado9x8.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = random(559, 561)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x9--------------------
function tao_bai_train9x9()
    local nNpcId = 142;
    local nNpcLv = 95;

    local fileName = "toado9x9.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = 142
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x10--------------------
function tao_bai_train9x10()
    local nNpcId = 146;
    local nNpcLv = 95;

    local fileName = "toado9x10.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = random(146, 148)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end

--------------------B·i 9x11--------------------
function tao_bai_train9x11()
    local nNpcId = 13;
    local nNpcLv = 95;

    local fileName = "toado9x11.txt"
    local filePath = "settings/global/mel/"
    
    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
    
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area.")
        return
    end
	local nSeriesMonster
	local nNameMonster = ""
	local idmap
	local pX
	local pY
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, 40 do
                nNpcId = random(13, 14)
                local isBoss = 0
                -- Make the 5th NPC a boss.
                -- if (j - floor(j / 10) * 10) == 0 then 
                --     isBoss = 2
                -- end
				nSeriesMonster = random(0, 4)
				if nSeriesMonster == 0 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 1 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 2 then
					nNameMonster = "Vozer Qu¸i 90"
				elseif nSeriesMonster == 3 then
					nNameMonster = "Vozer Qu¸i 90"
				else
					nNameMonster = "Vozer Qu¸i 90"
				end
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nNameMonster, isBoss)
            end
        end
    end
end