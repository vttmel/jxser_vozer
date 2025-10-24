---------------Youtube PGaming---------------
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\newyear_2009\\head.lua");
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
tb_bluebox_item	=
{
	[1]	= {szName="Hoa tuy’t",	tbProp={6, 1, 1312, 1, 0, 0},	nRate = 60,	nExpiredTime = nTime},
	[2]	= {szName="C∏nh th´ng",	tbProp={6, 1, 1314, 1, 0, 0},	nRate = 10, nExpiredTime = nTime},
	[3]	= {szName="Cµ rËt",	tbProp={6, 1, 1313, 1, 0, 0},	nRate = 10, nExpiredTime = nTime},
	[4]	= {szName="N„n gi∏ng sinh",	tbProp={6, 1, 1315, 1, 0, 0},	nRate = 9, nExpiredTime = nTime},
	[5]	= {szName="Kh®n choµng (xanh)",	tbProp={6, 1, 1316, 1, 0, 0},	nRate = 8, nExpiredTime = nTime},
	[6]	= {szName="Kh®n choµng (Æ·)",	tbProp={6, 1, 1317, 1, 0, 0},	nRate = 2, nExpiredTime = nTime},
	[7]	= {szName="C©y th´ng",	tbProp={6, 1, 1318, 1, 0, 0},	nRate = 1, nExpiredTime = nTime},
};

function main()
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime2 = "20"..nYear2.."0101"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow >= nTime2) then
		Msg2Player("VÀt ph»m nµy Æ∑ qu∏ hπn.");
		return 0;
	end
	
	if (CalcFreeItemCellCount() < 6) then
		Msg2Player("Hµnh trang cÒa Æπi hi÷p kh´ng ÆÒ chÁ trËng!");
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tb_bluebox_item, "Lam B∂o R≠¨ng");
end

function IsPickable( nItemIndex, nPlayerIndex )
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime2 = "20"..nYear2.."0101"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	local ndate = tonumber(GetLocalDate("%Y%m%d"));
	if (nDayNow > nTime2) then
		return 0;
	end
	if( IsMyItem( nItemIndex ) ) then
		if (ITEM_GetExpiredTime(nItemIndex) == 0) then
			ITEM_SetExpiredTime(nItemIndex, nTime2);
			SyncItem(nItemIndex);
		end
		return 1;
	end
end