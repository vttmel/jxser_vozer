Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")

function main()
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
dofile("/script/global/hoanghuan/item/hoangkimcl.lua")
	if (CalcFreeItemCellCount() < 5) then
		Talk(1, "", "<#>Xin h·y s¾p xÕp l¹i hµnh trang Ýt nhÊt cßn trèng 5 « råi h·y më B¶o R­¬ng")
		return 1
	end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--¿Û³ýÐÅÊ¹±¦Ïä
    	local tbAward = 
    	{
	{szName="TÈy Tñy Kinh",  tbProp={6,1,22,90,0,0},nRate=1,nBindState = -2},
	{szName="Vâ L©m MËt TÞch", tbProp={6,1,26,90,0,0},nRate=1,nBindState = -2},
	{szName="TiÒn §ång",  tbProp={4,417,1,1,0,0,0},nRate=1,nBindState = -2,nCount = 100},
	{szName="TiÒn §ång",  tbProp={4,417,1,1,0,0,0},nRate=2,nBindState = -2,nCount = 50},
	{szName="TiÒn §ång",  tbProp={4,417,1,1,0,0,0},nRate=5,nBindState = -2,nCount = 40},
	{szName="TiÒn §ång", tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 30},
	{szName="TiÒn §ång", tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 20},
	{szName="TiÒn §ång",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 10},
	{szName="TiÒn §ång",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 9},
	{szName="TiÒn §ång",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 8},
	{szName="TiÒn §ång",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 7},
	{szName="TiÒn §ång",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 6},
	{szName="TiÒn §ång", tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 5},
	{szName="TiÒn §ång",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 1},	
    	}
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "B¶o R­¬ng Hoµng Kim"))
    	return
end