---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2001\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
-----------------------------------------------
function pActivity:AddInitNpc()
	local tbNpcPos = {
	[1] = {
		{520,1566,3150},
		{520,1566,3257},
		{520,1641,3153},
		{520,1632,3262},		
		{521,1566,3150},
		{521,1566,3257},
		{521,1641,3153},
		{521,1632,3262},
		{522,1566,3150},
		{522,1566,3257},
		{522,1641,3153},
		{522,1632,3262},
		{523,1566,3150},
		{523,1566,3257},
		{523,1641,3153},
		{523,1632,3262},
		{524,1566,3150},
		{524,1566,3257},
		{524,1641,3153},
		{524,1632,3262},
		{525,1566,3150},
		{525,1566,3257},
		{525,1641,3153},
		{525,1632,3262},
		{526,1566,3150},
		{526,1566,3257},
		{526,1641,3153},
		{526,1632,3262},
	      },
	[2] = {
		{11,3112,5042},
		{78,1606,3233},
		{176,1437,3265},
		{174,1590,3234},
		{153,1638,3170},
		{101,1621,3203},
		{20,3545,6189},
		{53,1586,3556},
		{54,1653,3077},
		{175,1606,3230},
		},
	[3] = {
		{1,1622,3143},
		{37,1765,3047},
		{80,1737,2988},
		{162,1587,3169},
		{121,1960,4477},
		{99,1582,3230},
		{100,1610,3130},
		{55,1568,3208},
		},
	}
	local tbNpc = {	
		
	[1] = {
		szName = "Thî b¸nh", 
		nLevel = 95,
		nNpcId = 212,
		nIsboss = 0,
		szScriptPath = "\\script\\vng_event\\eventpgaming\\thang1\\npc_sukien.lua",
		},
	[2] = {
		szName = "C©y Mai", 
		nLevel = 95,
		nNpcId = 1334,
		nIsboss = 0,
		szScriptPath = "\\script\\vng_event\\eventpgaming\\thang1\\cay.lua",
		},
	[3] = {
		szName = "C©y §µo", 
		nLevel = 95,
		nNpcId = 1333,
		nIsboss = 0,
		szScriptPath = "\\script\\vng_event\\eventpgaming\\thang1\\cay.lua",
		},
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