---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2007\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\2007\\variables.lua")

local tbUseTTHT_AdditionalAward = {
	[20] = {szName = "§iÓm kinh nghiÖm", nExp=100000},
	[40] = {szName = "§iÓm kinh nghiÖm", nExp=200000},
	[60] = {szName = "§iÓm kinh nghiÖm", nExp=3000000},
	[80] = {szName = "§iÓm kinh nghiÖm", nExp=4000000},
	[100] = {szName = "§iÓm kinh nghiÖm", nExp=5000000},
	[200] = {szName = "§iÓm kinh nghiÖm", nExp=10000000},
	[300] = {szName = "§iÓm kinh nghiÖm", nExp=15000000},
	[400] = {szName = "§iÓm kinh nghiÖm", nExp=20000000},
	[500] = {szName = "§iÓm kinh nghiÖm", nExp=25000000},
	[600] = {szName = "§iÓm kinh nghiÖm", nExp=30000000},
	[700] = {szName = "§iÓm kinh nghiÖm", nExp=35000000},
	[800] = {szName = "§iÓm kinh nghiÖm", nExp=40000000},
	[900] = {szName = "§iÓm kinh nghiÖm", nExp=45000000},
	[1000] = {szName = "§iÓm kinh nghiÖm", nExp=50000000},
	[1100] = {szName = "§iÓm kinh nghiÖm", nExp=55000000},
	[1200] = {szName = "§iÓm kinh nghiÖm", nExp=60000000},
	[1300] = {szName = "§iÓm kinh nghiÖm", nExp=65000000},
}

local tbUseTTHT_ItemAward = {
}

function pActivity:InitNpc()
	local tbNpcPos = {
		[1] = 
		{
			{176,1441,3277},			
		},		
	}
	local tbNpc = {
		[1] = {
			szName = "Môc KiÒu Liªn", 
			nLevel = 95,
			nNpcId = 342,
			nIsboss = 0,
			szScriptPath = "\\script\\vng_event\\eventpgaming\\thang7\\npc_sukien.lua",
			},		
	}
	for i=1,getn(tbNpc) do
		for j = 1, getn(tbNpcPos[i]) do
			local nMapId, nPosX, nPosY = unpack(tbNpcPos[i][j])
			basemission_CallNpc(tbNpc[i], nMapId, nPosX * 32, nPosY * 32)	
		end
	end
end

function pActivity:GiveRedRoseBud(nCount)
	local tbAward = {szName="Cöu Tiªn Ngù YÕn",tbProp={6,1,30128,1,0,0},nCount=1,nExpiredTime=%nItemExpiredTime}
	for i = 1, nCount do
	
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseBudLimit) ~= 1 then
			%tbVNG_BitTask_Lib:addTask(%tbGiveRedRoseBudLimit, 1)
		end		
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "DoiNuHoaHongDoNhanVatPham"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "Doi1NuHoaHongDo", "1 Cöu Tiªn Ngù YÕn", 1)
	end
end

function pActivity:CheckGiveRedRoseLimit(nCount)
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseLimit) == 1 then
		Talk(1, "", "Ng­¬i tÆng ta nhiÒu hoa råi, sè hoa nµy xin h·y nhËn l¹i.")
		return nil
	end
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveRedRoseLimit)
	if (nTaskVal + nCount) > %nRedRoseMaxCount then
		Msg2Player(format("Sè l­îng v­ît qu¸ giíi h¹n, ng­¬i chØ ca thÓ tÆng <color=yellow>%d <color>Hoa Hång §á n÷a.", %nRedRoseMaxCount - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:GiveRedRose(nCount)
	local tbAward = {szName = "§iÓm kinh nghiÖm", nExp=400}
	for i = 1, nCount do
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseLimit) == 1 then
			return nil
		end
		%tbVNG_BitTask_Lib:addTask(%tbGiveRedRoseLimit, 1)
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "TangHoaHongDo"})		
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "TangHoaHongDo", "400 ®iÓm kinh nghiÖm", 1)
	end
end

function pActivity:TTHT_Limit()
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbUseTTHTLimit) == 1 then
		Talk(1, "", "Sö dông vËt phÈm ®· ®¹t ®On giíi h¹n, kh«ng thÓ sö dông thªm")
		return nil
	end
	return 1
end

function pActivity:Use_TTHT()
	local tbExpAward = {szName = "§iÓm kinh nghiÖm", nExp=0}
	%tbVNG_BitTask_Lib:addTask(%tbUseTTHTLimit, 1)	
	tbAwardTemplet:Give(tbExpAward, 1, {"EventVuLanBaoHieu", "SuDungThuyTuuHoTienNhanKinhNghiem"})
	--PhÇn th­ëng item
	local tbTranslog = {strFolder = %strTranLogFolder, nPromID = %nPromotionID, nResult = 1}
	tbAwardTemplet:Give(%tbUseTTHT_ItemAward, 1, {"EventVuLanBaoHieu", "SuDungThuyTuuHoTienNhanVatPham", tbTranslog})
	--phÇn th­ëng khi sö dông vËt phÈm ®¹t mèc
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbUseTTHTLimit)
		if %tbUseTTHT_AdditionalAward[nTaskVal] then
			local tbTempAward = %tbUseTTHT_AdditionalAward[nTaskVal]
			tbAwardTemplet:Give(tbTempAward, 1, {"EventVuLanBaoHieu", format("SuDung%dlanVatPhamThuyTuuHoTien", nTaskVal)})
		end
end

function pActivity:GiveCuuTienLimit(nCount)
	local nTaskVal = PlayerFunLib:GetTaskDailyCount(%TSK_GIVE_CUU_TIEN_NGU_YEN_DAILY)
	if not nTaskVal then
		return nil
	end
	if (nTaskVal + nCount) > %nGive_Cuu_Tien_Daily_Max_Count then
		Msg2Player(format("Sè l­îng v­ît qu¸ giíi h¹n, ng­¬i chØ ca thÓ tÆng <color=yellow>%d <color>Cöu Tiªn Ngù YÕn n÷a.", %nGive_Cuu_Tien_Daily_Max_Count - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:GiveCuuTien(nCount)		
	local tbAward = {szName = "§iÓm kinh nghiÖm", nExp=500}
	PlayerFunLib:AddTaskDaily(%TSK_GIVE_CUU_TIEN_NGU_YEN_DAILY, nCount)
	for i = 1, nCount do		
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "TangCuuTienNguYen"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "TangCuuTienNguYen", "500 ®iÓm kinh nghiÖm", 1)
	end
	return 1
end