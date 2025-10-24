Include("\\script\\dailogsys\\dailogsay.lua")

EQUIP_TUMANG = {
	[0] = {
		["ThiÕu L©m QuyÒn"] 					= 		{1825, 1834},
		["ThiÕu L©m Bæng"] 					= 		{1835, 1844},
		["ThiÕu L©m §ao"] 						=		 	{1845, 1854},
	},
	[1] = {
		["Thiªn V­¬ng Chïy"] 				= 		{1855, 1864},
		["Thiªn V­¬ng Th­¬ng"] 			= 		{1865, 1874},
		["Thiªn V­¬ng §ao"] 					=			{1875, 1884},
	},
	[4] = {
		["Nga My KiÕm"] 						= 		{1885, 1894},
		["Nga My Ch­ëng"] 					= 		{1895, 1904},
	},
	[5] = {
		["Thóy Yªn §ao"] 						= 		{1905, 1914},
		["Thóy Yªn Song §ao"] 				= 		{1915, 1924},
	},
	[3] = {
		["Ngò §éc Ch­ëng"] 					= 		{1925, 1934},
		["Ngò §éc §ao"] 							= 		{1935, 1944},
	},
	[2] = {
		["§­êng M«n Phi §ao"] 			= 		{1945, 1954},
		["§­êng M«n Tô TiÔn"] 			= 		{1955, 1964},
		["§­êng M«n Phi Tiªu"] 			=			{1965, 1974},
	},
	[6] = {
		["C¸i Bang Ch­ëng"] 					= 		{1975, 1984},
		["C¸i Bang C«n"] 						= 		{1985, 1994},
	},
	[7] = {
		["Thiªn NhÉn KÝch"] 					= 		{1995, 2004},
		["Thiªn NhÉn §ao"] 					= 		{2005, 2014},
	},
	[8] = {
		["Vâ §ang QuyÒn"] 					= 		{2015, 2024},
		["Vâ §ang KiÕm"] 						= 		{2025, 2034},
	},
	[9] = {
		["C«n L«n §ao"] 							= 		{2035, 2044},
		["C«n L«n KiÕm"] 						= 		{2045, 2054},
	},
	[10] = {
		["Hoa S¬n KhÝ T«ng"] 				= 		{4713, 4722},
		["Hoa S¬n KiÕm T«ng"] 				= 		{4723, 473},
	},
};

function main(nItemIndex)
	local  nFaction = GetLastFactionNumber();
	if not (EQUIP_TUMANG[nFaction]) then
		Talk(1, "", "M«n ph¸i cña b¹n ch­a cã trong danh s¸ch.")
	return 1 end
	AddEquipGoldConfirm(nItemIndex, EQUIP_TUMANG[nFaction],-2)
return 1; end;

function AddEquipGoldSpecical(nTableEquip)
	if (CalcFreeItemCellCount() < 50) then
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 « trèng ®Ó nhËn.")
	return 1; end;
	
	local n_Faction = GetLastFactionNumber();
	if (n_Faction < 0) then
		Talk(1, "", "B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn trang bÞ nµy")
	return 1; end;
	
	local szTitle = "<dec><npc>B¹n muèn nhËn trang bÞ cña m«n ph¸i nµo?";
	local tbOption = {};
	local tb_Equip = nTableEquip;
	local tb_Faction = TAB_EQUIP_FACTION;
	for i = 0, getn(tb_Equip) do
		tinsert(tbOption, {format("Trang bÞ ph¸i %s", tb_Faction[i]), AddEquipGoldConfirm, {tb_Equip[i]}})
	end
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption)
end

function AddEquipGoldConfirm(nItemIndex,tb_EquipFaction, nBindState)
	nBindState = nBindState or 0;
	if (CalcFreeItemCellCount() < 50) then
		Talk(1, "", "Hµnh trang kh«ng ®ñ 50 « trèng ®Ó nhËn.")
	return 1; end;
	local tb_Equip = tb_EquipFaction;
	local tb_Faction = TAB_EQUIP_FACTION;
	local tbOption = {};
	local szTitle = "<dec><npc>Mêi b¹n chän ®­êng tÊn c«ng c¬ b¶n?";
	for x, y in tb_Equip do
		tinsert(tbOption, {format("%s", x), AddEquipGoldSpecicalKind, {nItemIndex,tb_Equip[x], nBindState}})
	end
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption)
end

function AddEquipGoldSpecicalKind(nItemIndex,tb_EquipKind, nBindState)
	for nID = tb_EquipKind[1], tb_EquipKind[2] do
		local nGold = AddGoldItem(0, nID);
		if (nBindState ~= 0) then
			SetItemBindState(nGold, nBindState);
		end
	end
	
	RemoveItemByIndex(nItemIndex);
end
