---------------Youtube PGaming---------------
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\newyear_2009\\head.lua");
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1201"
tb_bluebox_item	=
{
	[1]	= {szName="T´n",	tbProp={6, 1, 1599, 1, 0, 0},	nRate = 60,	nExpiredTime = nTime},
	[2]	= {szName="S≠",	tbProp={6, 1, 1600, 1, 0, 0},	nRate = 30, nExpiredTime = nTime},
	[3]	= {szName="Tr‰ng",	tbProp={6, 1, 1601, 1, 0, 0},	nRate = 6, nExpiredTime = nTime},
	[4]	= {szName="ßπo",	tbProp={6, 1, 1602, 1, 0, 0},	nRate = 2, nExpiredTime = nTime},
	[5]	= {szName="Hoa HÂng",	tbProp={6, 0, 20, 1, 0, 0},	nRate = 2, nExpiredTime = nTime},
};

function main()
local nYear  = tonumber(date("%y"));
local nTime2 = "20"..nYear.."1201"
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
local nTime2 = "20"..nYear.."1201"
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