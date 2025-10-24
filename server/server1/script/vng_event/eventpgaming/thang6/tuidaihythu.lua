---------------Youtube PGaming---------------
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\newyear_2009\\head.lua");
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0701"

tb_bluebox_item	=
{
	[1]	= {szName="Mıng",	tbProp={6, 1, 1752, 1, 0, 0},	nRate = 60,nExpiredTime = nTime},
	[2]	= {szName="VLTK",	tbProp={6, 1, 1753, 1, 0, 0},	nRate = 30,nExpiredTime = nTime},
	[3]	= {szName="3",	tbProp={6, 1, 1754, 1, 0, 0},	nRate = 5, nExpiredTime = nTime},
	[4]	= {szName="TuÊi",	tbProp={6, 1, 1755, 1, 0, 0},	nRate = 5, nExpiredTime = nTime},
};

function main()
local nYear  = tonumber(date("%y"));
local nTime2 = "20"..nYear.."0701"
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
local nTime = "20"..nYear.."0701"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow > nTime) then
		return 0;
	end
	if( IsMyItem( nItemIndex ) ) then
		if (ITEM_GetExpiredTime(nItemIndex) == 0) then
			ITEM_SetExpiredTime(nItemIndex, nTime);
			SyncItem(nItemIndex);
		end
		return 1;
	end
end