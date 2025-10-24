IncludeLib("RELAYLADDER")
Include("\\script\\tong\\tong_award_head.lua")
Include("\\script\\missions\\boss\\bigboss.lua")
Include("\\script\\task\\task_addplayerexp.lua")

MISSION_MATCH			= 22
TIMER_MATCH				= 41
TIMER_BOARD				= 42
TIMER_CLOSE				= 43
INTERVAL_BOARD			= 1
INTERVAL_MATCH			= 3600
TIME_SIGNUP				= 10
LIMIT_SIGNUP			= TIME_SIGNUP * 60
LIMIT_FINISH 			= 30 * 60
BOAT_POSX				= 1559
BOAT_POSY				= 3226
LIMIT_PLAYER_COUNT		= 8
AWARD_COUNT				= 10

SEX_BOY					= 0
SEX_GIRL				= 1
SEX_RENYAO				= 2

CHUANGGUAN30_MAP_ID		= 957
CHUANGGUAN30_TIME_LIMIT = 13*60
CHUANGGUAN30_START_TIME = 10
CHUANGGUAN30_END_TIME	= 22
PLAYER_MAP_TASK			= 2852
COUNT_LIMIT 		= 1

NPC_ATTRIDX_PROCEED		= 1
NPC_ATTRIDX_ID			= 2
NPC_ATTRIDX_NAME		= 3
NPC_ATTRIDX_LEVEL		= 4
NPC_ATTRIDX_SERIES		= 5
NPC_ATTRIDX_ISBOSS		= 6
NPC_ATTRIDX_COUNT		= 7
NPC_ATTRIDX_POSITION	= 8

USE_NAME_ALL_PLAYERS	= 1
USE_NAME_THE_TOPLIST	= 2

VARS_TEAM_NAME			= 1
-- ÒÔÏÂ±äÁ¿´Ó(VARS_PLAYER_NAME + 1)µ½(VARS_PLAYER_NAME + LIMIT_PLAYER_COUNT)·Ö±ð±£´æ²»Í¬Íæ¼ÒµÄÃû×Ö
VARS_PLAYER_NAME		= 2
VARS_TEAMLEADER_FACTION = 11        -- ¶Ó³¤ÃÅÅÉ
VARS_TEAMLEADER_GENDER  = 12        -- ¶Ó³¤ÐÔ±ð

VARV_NPC_BATCH 			= 1			-- ¹ÖµÄÅú´Î
VARV_NPC_COUNT 			= 2			-- ¹ÖµÄÊýÁ¿
VARV_PLAYER_COUNT		= 3			-- Íæ¼ÒµÄÊýÁ¿
VARV_STATE 				= 4			-- mission×´Ì¬£¬1±íÊ¾±¨Ãû£¬2±íÊ¾±ÈÈü
VARV_SIGNUP_WORLD		= 5			-- ±¨ÃûµØÍ¼
VARV_SIGNUP_POSX		= 6			-- ±¨ÃûµØµãµÄX×ø±ê
VARV_SIGNUP_POSY		= 7			-- ±¨ÃûµØµãµÄY×ø±ê 
VARV_BOARD_TIMER		= 8			-- ±ÈÈü½øÐÐµÄÊ±¼ä£¨Ãë£©
VARV_PLAYER_TOTAL_COUNT = 9		-- Íæ¼Ò×ÜµÄÊýÁ¿(²»¹ÜÊÇ·ñÒÑ¾­ËÀÍö)
VARV_PLAYER_USE_INDEX	= 10		-- Ê¹ÓÃµ½µÄÍæ¼ÒË÷Òý
VARV_NPC_USE_INDEX		= 11		-- Ê¹ÓÃµ½µÄºòÑ¡NPCË÷Òý
VARV_MISSION_RESULT		= 12		-- ÈÎÎñ½á¹û£¬£±ÎªÊ¤ÀûÍ¨¹Ø£¬£°ÎªÊ§°Ü
VARV_PLAYER_SEX			= 13
-- ÒÔÏÂ±äÁ¿´Ó(VARV_PLAYER_SEX + 1)µ½(VARV_PLAYER_SEX + LIMIT_PLAYER_COUNT)·Ö±ð±£´æ²»Í¬Íæ¼ÒµÄÐÔ±ð£¬£°ÎªÄÐÐÔ£¬£±ÎªÅ®ÐÔ£¬£²ÎªÈËÑý
VARV_PLAYER_SERIES		= VARV_PLAYER_SEX + LIMIT_PLAYER_COUNT + 1		-- 22


VARV_XIAONIESHICHEN_BATCH = 31		-- Ð¡Äôß±³¾³öÏÖµÄ¹Ø
VARV_BATCH_MODEL		= 32			-- µ±Ç°´³¹ØµÄÄ£Ê½£¬0ÎªÕý³£Ä£Ê½£¬1Îªµ÷ÕûÖ®ºóµÄÄ£Ê½


-- ÒÔÏÂ±äÁ¿´Ó(VARV_PLAYER_SERIES + 1)µ½(VARV_PLAYER_SERIES + LIMIT_PLAYER_COUNT)·Ö±ð±£´æ²»Í¬Íæ¼ÒµÄÎåÐÐ

SCRIPT_NPC_DEATH 	= "\\script\\missions\\challengeoftime\\npc_death.lua"
SCRIPT_PLAYER_DEATH = "\\script\\missions\\challengeoftime\\player_death.lua"

map_map = {
	464,
	465,
	466,
	467,
	468,
	469,
	470,
	471,
	472,
	473,
	474,
	475,
	476,
	477,
	478,
	479,
	
	480,
	481,
	482,
	483,
	484,
	485,
	486,
	487,
	488,
	489,
	490,
	491,
	492,
	493,
	494,
	495
};

map_isadvanced = {
	[464] = 0,
	[465] = 0,
	[466] = 0,
	[467] = 0,
	[468] = 0,
	[469] = 0,
	[470] = 0,
	[471] = 0,
	[472] = 0,
	[473] = 0,
	[474] = 0,
	[475] = 0,
	[476] = 0,
	[477] = 0,
	[478] = 0,
	[479] = 0,
	
	[480] = 1,
	[481] = 1,
	[482] = 1,
	[483] = 1,
	[484] = 1,
	[485] = 1,
	[486] = 1,
	[487] = 1,
	[488] = 1,
	[489] = 1,
	[490] = 1,
	[491] = 1,
	[492] = 1,
	[493] = 1,
	[494] = 1,
	[495] = 1
};

map_series = {
	0,
	1,
	2,
	3,
	4
};

map_npcname_candidates = {
	"HËu KhÊt KiÕm",
	"§iªu DÞch §ao",
	"KiÒu §Ønh Thiªn",
	"NhËm Th­¬ng Khung",
	"Bé Hiªu TrÇn",
	"MËu TuÊt Nhung",
	"H¹ng Phï Nhai"
};

function broadcast(msg)
	AddGlobalNews(msg);
end

function kickout()
	local index = 0;
	local player = 0;
	local players = {}
	local i = 1
	while (1) do
		index, player = GetNextPlayer(MISSION_MATCH, index, 0);
		if (player > 0) then
			players[i] = player
			i = i + 1
		end
		if (index == 0) then
			break;
		end	
	end
	
	local world = GetMissionV(VARV_SIGNUP_WORLD);
	local pos_x = GetMissionV(VARV_SIGNUP_POSX);
	local pos_y = GetMissionV(VARV_SIGNUP_POSY); 
	local OldPlayerIndex = PlayerIndex;
	for i = 1, getn(players) do
		PlayerIndex = players[i]

		--local nTL = 200
		local EXP = 1000000
		--Msg2Player("<color=green>Hoµn thµnh Th¸ch Thøc Thêi Gian nhËn ®­îc <color=red>"..nTL.." Tinh Lùc<color>.")
		--AddEnergy(nTL)
		tl_addPlayerExp(EXP)
				
		DelMSPlayer(MISSION_MATCH,1)
		SetLogoutRV(0)
		NewWorld(world, pos_x, pos_y)
	end
	PlayerIndex = OldPlayerIndex;
end

function start_board_timer()
	StartMissionTimer(MISSION_MATCH, TIMER_BOARD, INTERVAL_BOARD * 60 * 18);
end

function close_board_timer()
	StopMissionTimer(MISSION_MATCH, TIMER_BOARD);
end

function start_close_timer()
	StartMissionTimer(MISSION_MATCH, TIMER_CLOSE, LIMIT_FINISH * 18);
end

function close_close_timer()
	StopMissionTimer(MISSION_MATCH, TIMER_CLOSE);
end

function close_match()
	kickout();
	
	world = SubWorldIdx2ID(SubWorld);
	ClearMapNpc(world, 1);
	ClearMapTrap(world); 
	ClearMapObj(world);
end

function get_player_map()
	local players = {};
		
	local index = 0;
	local player = 0;
	local player_count = 0;
	local old_index = PlayerIndex;
	while (1) do
		index, player = GetNextPlayer(MISSION_MATCH, index, 0);
		if (player > 0) then
			player_count = player_count + 1;
			if (player_count > LIMIT_PLAYER_COUNT) then
				print(format("Mission player count exceed the limit %d!!!", LIMIT_PLAYER_COUNT));
				break;
			else
				-- DEBUG
				--print(format("player[%d]'s index:%d", player_count, player));
				PlayerIndex = player;
				players[player_count] = {
					GetName(),		-- Íæ¼ÒÃû×Ö
					GetSex(),		-- Íæ¼ÒÐÔ±ð
					GetSeries()}; 	-- Íæ¼ÒÎåÐÐ
				-- DEBUG
				--print(format("players[%d], index:%d, name:%s, sex:%d, series:%d",
				--	player_count,
				--	player,
				--	GetName(),
				--	GetSex(),
				--	GetSeries()));
			end
		end
		if (index == 0) then
			break;
		end	
	end
	PlayerIndex = old_index;
	
	-- DEBUG
	--print(format("Now, we have %d players", getn(players)));

	return players;
end

function remove_element(map, index)
	local result = {};
	local count = 1;
	for i = 1, getn(map) do
		if (i ~= index) then
			result[count] = map[i];
			count = count + 1;
		end
	end
	return result;
end

function save_player_info()
	local players = get_player_map();
	-- DEBUG
	--print(format("We got %d players", getn(players)));
	for index = 1,getn(players) do
		-- players = remove_element(players, random(1, getn(players)));
		SetMissionS(VARS_PLAYER_NAME + index, players[index][1]);	-- Ãû×Ö
		SetMissionV(VARV_PLAYER_SEX + index, players[index][2]);	-- ÐÔ±ð
		SetMissionV(VARV_PLAYER_SERIES + index, players[index][3]);	-- ÎåÐÐ
		-- DEBUG
		--print(format("SetMissionS(%d, %s)", VARS_PLAYER_NAME + index, players[index][1]));	-- Ãû×Ö
		--print(format("SetMissionV(%d, %d)", VARV_PLAYER_SEX + index, players[index][2]));	-- ÐÔ±ð
		--print(format("SetMissionV(%d, %d)", VARV_PLAYER_SERIES + index, players[index][3]));	-- ÎåÐÐ
	end
	
	SetMissionV(VARV_PLAYER_TOTAL_COUNT, getn(players));
	SetMissionV(VARV_PLAYER_USE_INDEX, 0);
end

--ID cña Boss V­ît ¶i dÔ
lo_range_id = {
	{994, 1001},
	{1002, 1005}
};

--ID cña Boss V­ît ¶i khã
hi_range_id = {
	{1026, 1033},
	{1034, 1037}
};

function get_random_npc_id(sex)
	if (sex ~= 0 and sex ~= 1) then
		return nil;
	end

	local range_id = lo_range_id;
	if (advanced()) then
		range_id = hi_range_id;
	end
	return random(range_id[sex + 1][1], range_id[sex + 1][2]);
end

function get_file_pos(file, line, column)
	x = GetTabFileData(file, line, column);
	y = GetTabFileData(file, line, column + 1);
	return x, y;
end

function func_npc_getid(item, index)
	local player_use_index = GetMissionV(VARV_PLAYER_USE_INDEX) + 1;
	local player_all_count = GetMissionV(VARV_PLAYER_TOTAL_COUNT);
	local player_sex = GetMissionV(VARV_PLAYER_SEX + player_use_index);	
		
	local result = 0;
	if (player_use_index > player_all_count) then
		result = get_random_npc_id(0);
	else
		result = get_random_npc_id(player_sex);
	end

	-- DEBUG
	--print(format("func_npc_getid():%d, player_use_index:%d, player_all_count:%d, player_sex:%d",
	--	result, player_use_index, player_all_count, player_sex));
	return result;
end

function func_npc_getname(item, index)
	local player_use_index = GetMissionV(VARV_PLAYER_USE_INDEX) + 1;
	local player_all_count = GetMissionV(VARV_PLAYER_TOTAL_COUNT);
	
	-- DEBUG
	--print(format("func_npc_getname(), player_use_index:%d, player_all_count:%d",
	--	player_use_index, player_all_count));
	
	local result = "";
	if (player_use_index > player_all_count) then
		local npc_use_index = GetMissionV(VARV_NPC_USE_INDEX) + 1;
		if (npc_use_index > getn(map_npcname_candidates)) then
			npc_use_index = 1;
		end
		SetMissionV(VARV_NPC_USE_INDEX, npc_use_index);
		-- DEBUG
		--print(format("func_npc_getname(), npc_use_index:%d", npc_use_index));
		result = map_npcname_candidates[npc_use_index];
	else
		result = GetMissionS(VARS_PLAYER_NAME + player_use_index);
	end
	
	-- DEBUG
	--print(format("func_npc_getname():%s", result));
	return result;
end

function func_ladder_getname(item, index)
	local map = item[NPC_ATTRIDX_NAME];
	if (type(map) ~= "table") then
		-- DEBUG
		--print("func_ladder_getname() fail!!!");
		return nil;
	end
	
	local name, data = Ladder_GetLadderInfo(map[2], random(1, 10));
	if (name ~= nil and name ~= "") then
		return name;
	end
	
	local pos = random(1, getn(map_npcname_candidates));
	return map_npcname_candidates[pos];
end

function func_npc_get_eachname(item, index)
	local player_all_count = GetMissionV(VARV_PLAYER_TOTAL_COUNT);
	if (index <= player_all_count) then
		return GetMissionS(VARS_PLAYER_NAME + index);
	else
		local count = getn(map_npcname_candidates);
		local pos = mod(index - player_all_count, count);
		if (pos == 0) then
			pos = count;
		end
		return map_npcname_candidates[pos];
	end
end

function func_npc_getseries(item, index)
	local player_use_index = GetMissionV(VARV_PLAYER_USE_INDEX) + 1;
	local player_all_count = GetMissionV(VARV_PLAYER_TOTAL_COUNT);
	
	if (player_use_index > player_all_count) then
		local index = random(1, getn(map_series));
		return map_series[index];
	else
		return GetMissionV(VARV_PLAYER_SERIES + player_use_index);
	end
end

function func_npc_getpos(item, index)
	local pos = item[NPC_ATTRIDX_POSITION];
	local pos_type = type(pos);
	if (pos_type == "table") then
		return pos[1], pos[2];
	elseif (pos_type ~= "function") then
		return nil;
	end
	
	local func = pos;
	local file = map_posfiles[item[NPC_ATTRIDX_COUNT]];
	local file_name = file[1]
	local pos_count = file[2]
	
	local column = 2 * (random(1, pos_count) - 1) + 1;
	return get_file_pos(file_name, index + 1, column);
end

function func_npc_proceed(item)
	local player_use_index = GetMissionV(VARV_PLAYER_USE_INDEX);
	SetMissionV(VARV_PLAYER_USE_INDEX, player_use_index + 1);
end

function award_item(item, player_index)
	local old_index = PlayerIndex;
	PlayerIndex = player_index;
	
	local name = item[1];
	if (getn(item) == 2) then
		AddEventItem(item[2]);
	elseif (getn(item) == 3) then
		AddGoldItem(item[2], item[3]);
	elseif (getn(item) == 7) then
		AddItem(item[2], item[3], item[4], item[5], item[6], item[7]);
	end
	Msg2Player("<#>B¹n ®¹t ®­îc" .. name .. "!");
	
	PlayerIndex = old_index;
end

function award_random_object(objects, player_index)
	local base = objects[1]
	local sum = 0;
	local num = random(1, base);
	for i = 2, getn(objects) do
		local odds = objects[i][1];
		local item = objects[i][2];
		sum = sum + odds * base;
		if (num <= sum) then
			award_item(item, player_index);
			break;
		end
	end
end

