---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2008\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
-----------------------------------------------
function pActivity:AddInitNpc()
	local tbNpcPos = {
	[1] = {
		{520,1618,3222},
		{521,1618,3222},
		{522,1618,3222},
		{523,1618,3222},
		{524,1618,3222},
		{525,1618,3222},
		{526,1618,3222},
	      },
	--[2] = {
		--{20,3545,6196},
		--{53,1622,3193},
		--{101,1673,3179},
		--{174,1628,3209},
		--{121,1950,4516},
		--{99,1610,3183},
		--{100,1628,3188},
		--{153,1603,3234},
		--},
	--[3] = {
		--{1,1622,3143},
		--{37,1765,3047},
		--{80,1737,2988},
		--{162,1587,3169},
		--{121,1960,4477},
		--{99,1582,3230},
		--{100,1610,3130},
		--{55,1568,3208},
		--},
	}
	local tbNpc = {	
		
	[1] = {
		szName = "Môc L·o", 
		nLevel = 95,
		nNpcId = 715,
		nIsboss = 0,
		szScriptPath = "\\script\\vng_event\\eventpgaming\\thang8\\npc_sukien.lua",
		},
	--[2] = {
	--	szName = "Mü Nh©n", 
	--	nLevel = 95,
	--	nNpcId = 1456,
	--	nIsboss = 0,
	--	szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	--	},
	--[3] = {
		--szName = "C©y §µo", 
		--nLevel = 95,
		--nNpcId = 1333,
		--nIsboss = 0,
		--szScriptPath = "\\script\\vng_event\\eventpgaming\\thang1\\cay.lua",
		--},
	}
	
	for i=1,getn(tbNpc) do
		for j = 1, getn(tbNpcPos[i]) do
			local nMapId, nPosX, nPosY = unpack(tbNpcPos[i][j])
			basemission_CallNpc(tbNpc[i], nMapId, nPosX * 32, nPosY * 32)		
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------
function pActivity:TuiTra()
	local tbAward = {
		{szName="Trµ Th¶o Méc",tbProp={6,1,49391,1,0,0},nCount = 50, nExpiredTime=20190201},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Tói Trµ")
end
---------------------------------------------------------------------------------------------------------------
function pActivity:HopSoCoLa()
	local tbAward = {
		{szName="S« C« La",tbProp={6,1,28541,1,0,0},nCount = 100, nExpiredTime=20190630},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Hép S« C« La")
end
----------------------------------------------------------------------------------------------------------