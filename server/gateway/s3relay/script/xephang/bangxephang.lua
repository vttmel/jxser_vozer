
TbRank = {}

function TbRank:UpdateRankAll(Level, Name, Cash, BoxMoney, Faction, TongName, Camp, Task2501, Task5987, Repute, FuYuan, TimeOnline, TongKhieuChienLenh, ExpPercent)
	if Level >= 10 then
		if ExpPercent == 0 then
			ExpPercent = "00"
		elseif ExpPercent < 10 then
			ExpPercent ="0"..ExpPercent
		elseif ExpPercent > 99 then
			ExpPercent = "99"
		end
		TbRank:Top10PhuHo(Name, Cash, BoxMoney)
		TbRank:Top10MonPhai(Name, Faction, TongName, Level, Camp, ExpPercent)
		TbRank:Top10PhuHoMonPhai(Name, Faction, Cash, BoxMoney)
		TbRank:Top10VinhDuTheGioi(Name, Task2501)
		TbRank:ThanThuPhiPham_DailyMuster(Name, Task5987)
		TbRank:ThanThuPhiPham_Repute(Name, Repute)
		TbRank:ThanThuPhiPham_FuYuan(Name, FuYuan)
		TbRank:ThanThuPhiPham_OnlineTime(Name, TimeOnline)
		TbRank:ThanThuPhiPham_KhieuChienLenh(Name, TongKhieuChienLenh)
	end
end

function TbRank:ThanThuPhiPham_KhieuChienLenh(Name, TongKhieuChienLenh)
	Ladder_NewLadder(10229, Name, TongKhieuChienLenh,1);
end

function TbRank:ThanThuPhiPham_OnlineTime(Name, TimeOnline)
	Ladder_NewLadder(10228, Name, floor(TimeOnline/60),1);
end

function TbRank:ThanThuPhiPham_FuYuan(Name, FuYuan)
	Ladder_NewLadder(10121, Name, FuYuan,1);
end

function TbRank:ThanThuPhiPham_DailyMuster(Name, Task5987)
	Ladder_NewLadder(10122, Name, Task5987,1);
end

function TbRank:ThanThuPhiPham_Repute(Name, Repute)
	Ladder_NewLadder(10120, Name, Repute,1);
end

function TbRank:Top10VinhDuTheGioi(Name, Task2501)
	Ladder_NewLadder(10195, Name, Task2501,1);
end

function TbRank:Top10PhuHoMonPhai(Name, Faction, Cash, BoxMoney)
	local player_Faction = Faction
	if (player_Faction == 5) then	
		Ladder_NewLadder(10265, Name, Cash + BoxMoney,1);
	elseif (player_Faction == 4) then				
		Ladder_NewLadder(10266, Name, Cash + BoxMoney,1);
	elseif (player_Faction == 2) then
		Ladder_NewLadder(10267, Name, Cash + BoxMoney,1);
	elseif (player_Faction == 3) then
		Ladder_NewLadder(10268, Name, Cash + BoxMoney,1);
	elseif (player_Faction == 1) then
		Ladder_NewLadder(10269, Name, Cash + BoxMoney,1);
	elseif (player_Faction == 0) then
		Ladder_NewLadder(10270, Name, Cash + BoxMoney,1);
	elseif (player_Faction == 8) then
		Ladder_NewLadder(10271, Name, Cash + BoxMoney,1);
	elseif (player_Faction == 9) then
		Ladder_NewLadder(10272, Name, Cash + BoxMoney,1);
	elseif (player_Faction == 7) then
		Ladder_NewLadder(10273, Name, Cash + BoxMoney,1);
	elseif (player_Faction == 6) then
		Ladder_NewLadder(10274, Name, Cash + BoxMoney,1);
	end
end

function TbRank:Top10MonPhai(Name, Faction, TongName, Level, Camp, ExpPercent)
	local player_Faction = Faction
	if (player_Faction == 5) then	
		Ladder_NewLadder(10489, Name, tonumber(Level..ExpPercent), 1);
	elseif (player_Faction == 4) then				
		Ladder_NewLadder(10488, Name, tonumber(Level..ExpPercent), 1);
	elseif (player_Faction == 2) then
		Ladder_NewLadder(10487, Name, tonumber(Level..ExpPercent), 1);
	elseif (player_Faction == 3) then
		Ladder_NewLadder(10486, Name, tonumber(Level..ExpPercent), 1);
	elseif (player_Faction == 1) then
		Ladder_NewLadder(10485, Name, tonumber(Level..ExpPercent), 1);
	elseif (player_Faction == 0) then
		Ladder_NewLadder(10484, Name, tonumber(Level..ExpPercent), 1);
	elseif (player_Faction == 8) then
		Ladder_NewLadder(10483, Name, tonumber(Level..ExpPercent), 1);
	elseif (player_Faction == 9) then
		Ladder_NewLadder(10482, Name, tonumber(Level..ExpPercent), 1);
	elseif (player_Faction == 7) then
		Ladder_NewLadder(10481, Name, tonumber(Level..ExpPercent), 1);
	elseif (player_Faction == 6) then
		Ladder_NewLadder(10480, Name, tonumber(Level..ExpPercent), 1);
	end
	
	
	
	-- if (player_Faction == "cuiyan") then	
		-- Ladder_NewLadder(10282, Name, tonumber(Level..ExpPercent), 1);
	-- elseif (player_Faction == "emei") then				
		-- Ladder_NewLadder(10281, Name, tonumber(Level..ExpPercent), 1);
	-- elseif (player_Faction == "tangmen") then
		-- Ladder_NewLadder(10279, Name, tonumber(Level..ExpPercent), 1);
	-- elseif (player_Faction == "wudu") then
		-- Ladder_NewLadder(10280, Name, tonumber(Level..ExpPercent), 1);
	-- elseif (player_Faction == "tianwang") then
		-- Ladder_NewLadder(10278, Name, tonumber(Level..ExpPercent), 1);
	-- elseif (player_Faction == "shaolin") then
		-- Ladder_NewLadder(10277, Name, tonumber(Level..ExpPercent), 1);
	-- elseif (player_Faction == "wudang") then
		-- Ladder_NewLadder(10285, Name, tonumber(Level..ExpPercent), 1);
	-- elseif (player_Faction == "kunlun") then
		-- Ladder_NewLadder(10286, Name, tonumber(Level..ExpPercent), 1);
	-- elseif (player_Faction == "tianren") then
		-- Ladder_NewLadder(10284, Name, tonumber(Level..ExpPercent), 1);
	-- elseif (player_Faction == "gaibang") then
		-- Ladder_NewLadder(10283, Name, tonumber(Level..ExpPercent), 1);
	-- end
end

function TbRank:Top10PhuHo(Name, Cash, BoxMoney)
	Ladder_NewLadder(10288, Name, Cash + BoxMoney, 1);
end

