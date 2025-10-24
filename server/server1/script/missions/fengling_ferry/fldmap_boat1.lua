Include("\\script\\missions\\fengling_ferry\\fld_head.lua");
Include("\\script\\event\\jiefang_jieri\\200904\\taskctrl.lua");

function fenglingdu_main()
	orgworld = SubWorld
	for i = 1, getn( boatMAPS ) do
		mapid = boatMAPS[ i ]

		boatidx = SubWorldID2Idx(mapid)
		if (boatidx < 0) then
			local SignMapId = SubWorldIdx2ID(SubWorld);
			print("ERROR !!!BoatMap1 Is Not In This Server!", mapid); 
			SubWorld = orgworld;
			return
		end
		SubWorld = boatidx
		CloseMission(MISSIONID);
		OpenMission(MISSIONID)
		SetMissionV(MS_STATE, 1)
	end
	SubWorld = orgworld
	str = "Cuéc ®ua thuyÒn ë Phong L¨ng §é chuÈn bÞ khai cuéc, h·y mau ®Õn bê phÝa Nam ë Phong L¨ng §é gÆp ThuyÒn phu nép LÖnh bµi Phong L¨ng §é hoÆc 200 quyÓn MËt ®å thÇn bÝ ®Ó tham gia lªn thuyÒn!"
	AddGlobalCountNews(str, 3)
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));		-- by bel ¿ª´¬Ç°10·ÖÖÓ·¢³öÏûÃðË®Ôô»î¶¯µÄ¹«¸æ
	if (nDate >= jf0904_act_dateS and nDate < jf0904_act_dateE) then
		local szNews = "Cßn 10 phót n÷a Quan phñ sÏ ph¸t ®éng chiÕn dÞch tiªu diÖt Thñy TÆc. C¸c cao thñ h·y chuÈn bÞ!";
		AddGlobalNews(szNews);
	end
end