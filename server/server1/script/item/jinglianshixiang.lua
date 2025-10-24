Include( "\\script\\lib\\string.lua" );
Include("\\script\\misc\\itemexchangevalue\\jinglianshixiang.lua")

function main( nItemIdx )
	return BaoxiangCompose(nItemIdx);
end

function GetDesc( nItemIdx )
	local nCount = GetItemMagicLevel(nItemIdx, 1);
	local strDesc = "";
	strDesc = format("<color=yellow>Trong b∂o r≠¨ng c„: <color=green>%d<color> tinh luy÷n thπch<color>", nCount);
	return strDesc;
end
