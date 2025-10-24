---------------Youtube PGaming---------------
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");

tab_material = {
{	"Gi y ki’ng vµng (VÀt li÷u lµm lÂng ÆÃn)"	,	1221	,	2635	}	,
{	"Gi y ki’ng Æ· (VÀt li÷u lµm lÂng ÆÃn)"	,	1224	,	50	}	,
{	"Gi y ki’ng lÙc (VÀt li÷u lµm lÂng ÆÃn)"	,	1223	,	300	}	,
{	"Gi y ki’ng cam (VÀt li÷u lµm lÂng ÆÃn)"	,	1225	,	15	}	,
{	"Gi y ki’ng lam (VÀt li÷u lµm lÂng ÆÃn)"	,	1222	,	1000	}	,
{	"Thanh tre (VÀt li÷u lµm lÂng ÆÃn)"	,	1226	,	2000	}	,
{	"D©y cai (VÀt li÷u lµm lÂng ÆÃn)"	,	1227	,	2000	}	,
{	"N’n"	,	1228	,	2000	}	,
}

function IsPickable( nItemIndex, nPlayerIndex )
	return 1;
end

function PickUp( nItemIndex, nPlayerIndex )
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
	local nSeed = random(1, 10000);
	local nSum = 0;
	for i = 1, getn(tab_material) do
		nSum = nSum + tab_material[i][3];
		if (nSeed < nSum) then
			tbAwardTemplet:GiveAwardByList({tbProp = {6,1,tab_material[i][2],1,0,0}, nExpiredTime=nTime}, "test", 1);
			Msg2Player("Bπn nhÀn Æ≠Óc <color=yellow>"..tab_material[i][1]..". <color>");
			return 0;
		end;
	end;
	AddItem(6, 1, tab_material[1][2], 1, 0, 0, 0);
	Msg2Player("Bπn nhÀn Æ≠Óc <color=yellow>"..tab_material[1][1]..". <color>");
    return 0;
end
