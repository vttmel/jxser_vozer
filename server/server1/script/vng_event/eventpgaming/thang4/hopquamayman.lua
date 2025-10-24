---------------Youtube PGaming---------------
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\newyear_2009\\head.lua");
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0501"
tb_bluebox_item	=
{
	[1]	= {szName="M∂nh cÍ 1",	tbProp={6, 1, 1735, 1, 0, 0},	nRate = 60,	nExpiredTime = nTime},
	[2]	= {szName="M∂nh cÍ 2",	tbProp={6, 1, 1736, 1, 0, 0},	nRate = 30, nExpiredTime = nTime},
	[3]	= {szName="M∂nh cÍ 3",	tbProp={6, 1, 1737, 1, 0, 0},	nRate = 5, nExpiredTime = nTime},
	[4]	= {szName="M∂nh cÍ 4",	tbProp={6, 1, 1738, 1, 0, 0},	nRate = 5, nExpiredTime = nTime},
};

function main()
local nYear  = tonumber(date("%y"));
local nTime2 = "20"..nYear.."0501"
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
	tbAwardTemplet:GiveAwardByList(tb_bluebox_item, "Bao L◊ X◊");
end

function IsPickable( nItemIndex, nPlayerIndex )
local nYear  = tonumber(date("%y"));
local nTime2 = "20"..nYear.."0501"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
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