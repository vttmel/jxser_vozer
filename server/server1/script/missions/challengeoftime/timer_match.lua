
Include("\\script\\missions\\challengeoftime\\include.lua")
Include("\\script\\missions\\challengeoftime\\npc.lua")

function cancel_match()
	-- Msg2SubWorld(date("[%H:%M:%S]") .. "a")
end

function start_match()
	SetMissionV(VARV_STATE, 2);

	local player_count = GetMSPlayerCount(MISSION_MATCH);
	if (player_count == 0) then
		cancel_match()
	else
		start_close_timer();

		broadcast("Nhi÷m vÙ 'Th∏ch th¯c ThÍi gian' Æ∑ ch›nh th¯c bæt Æ«u, anh hÔng c∏c n¨i Æang ra s¯c tranh tµi");

		SetMissionV(VARV_NPC_BATCH, 1)
		SetMissionV(VARV_MISSION_RESULT, 0);
		SetMissionV(VARV_PLAYER_USE_INDEX, 0);
		SetMissionV(VARV_NPC_USE_INDEX, 0);
		
		-- G‰i Boss Ti”u Nhi’p Th› Tr«n
		--local nBossBatch = random(5, 15)
		--SetMissionV(VARV_XIAONIESHICHEN_BATCH, nBossBatch)
		--WriteLog(format("Ti”u Nhi’p Th› Tr«n xu t hi÷n thŒ ∂i lµ %d",nBossBatch))
		
		save_player_info();
    	
		world = SubWorldIdx2ID(SubWorld);
		ClearMapNpc(world);
		ClearMapTrap(world); 
		ClearMapObj(world);

		create_batch_npc(1);
	end
	
	SetMissionV(VARV_PLAYER_COUNT, player_count);
end

function close_match_timer()
	StopMissionTimer(MISSION_MATCH, TIMER_MATCH);
end

function OnTimer()
	close_match_timer();
	start_match();
	start_board_timer();
end
