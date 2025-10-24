Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\dailogsys\\dailogsay.lua");

HOANGKIMMONPHAIMAXOP = {
	[0] = {
		["ThiÕu L©m (quyÒn)"] 				= 		{905, 909},
		["ThiÕu L©m (c«n)"] 					= 		{910, 914},
		["ThiÕu L©m (®ao)"] 					= 		{915, 919},
	},
	
	[1] = {
		["Thiªn V­¬ng (chïy)"] 			=	 		{920, 924},
		["Thiªn V­¬ng (th­¬ng)"]	 		=			{925, 929},
		["Thiªn V­¬ng (®ao)"] 				= 		{930, 934},
	},
	
	[2] = {
		["§­êng M«n (phi ®ao)"] 			= 		{975, 979},
		["§­êng M«n (tô tiÔn"] 				= 		{980, 984},
		["§­êng M«n (phi tiªu)"] 			= 		{985, 989},
		["§­êng M«n (bÉy)"] 					= 		{990, 994},
	},
	
	[3] = {
		["Ngò §éc (ch­ëng)"] 				= 		{960, 964},
		["Ngò §éc (®ao)"] 						= 		{965, 969},
		["Ngò §éc (bïa)"] 						= 		{970, 974},
	},
	
	[4] = {
		["Nga My (kiÕm)"] 						= 		{935, 939},
		["Nga My (ch­ëng)"]	 				= 		{940, 944},
		["Nga My (hç trî)"] 					= 		{945, 949},
	},
	
	[5] = {
		["Thóy Yªn (®ao)"] 						= 		{950, 954},
		["Thóy Yªn (song ®ao)"] 			= 		{955, 959},
	},
	
	[6] = {
		["C¸i Bang (ch­ëng)"] 				= 		{995, 999},
		["C¸i Bang (bæng)"] 					= 		{1000, 1004},
	},
	
	[7] = {
		["Thiªn NhÉn (kÝch)"] 				= 		{1005, 1009},
		["Thiªn NhÉn (®ao)"] 					= 		{1010, 1014},
		["Thiªn NhÉn (bïa)"] 					= 		{1015, 1019},
	},
	
	[8] = {
		["Vâ §ang (quyÒn)"] 					= 		{1020, 1024},
		["Vâ §ang (kiÕm)"] 					= 		{1025, 1029},
	},
	
	[9] = {
		["C«n L«n (®ao)"] 						= 		{1030, 1034},
		["C«n L«n (sÐt)"] 						= 		{1035, 1039},
		["C«n L«n (bïa)"] 						= 		{1040, 1044},
	},
};

EQUIP_FACTION = {
	[0] = "ThiÕu L©m",
	[1] = "Thiªn V­¬ng",
	[2] = "§­êng M«n",
	[3] = "Ngò §éc",
	[4] = "Nga My",
	[5] = "Thóy Yªn",
	[6] = "C¸i Bang",
	[7] = "Thiªn NhÉn",
	[8] = "Vâ §ang",
	[9] = "C«n L«n",
};

function TRANGBIHOANGKIMMAX()
	if (CalcFreeItemCellCount() < 20) then
		Talk(1, "", "Hµnh trang kh«ng ®ñ 20 « trèng ®Ó nhËn.")
	return end
	local szTitle = "<dec>B¹n muèn nhËn trang bÞ cña m«n ph¸i nµo?";
	local tbOption = {}
		tinsert(tbOption, {"Trang bÞ hoµng kim m«n ph¸i", AddEquipGoldBaseMaxOp})
		tinsert(tbOption, {"TrÊn Bang Chi B¶o", TBCBMPMAX})
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption)
end

----------------------NhËn TrÊn Bang Chi B¶o-------------------------------------------------------------
function TBCBMPMAX()
local szTitle = "Xin chµo <color=red>"..GetName().."<color>"
local tbOpt =
	{
		{"ThiÕu L©m",CBTLMAX},
		{"Thiªn V­¬ng",CBTVMAX},
		{"Nga My",CBNMMAX},
		{"Thóy Yªn",CBTYMAX},
		{"Ngò §éc",CBNDMAX},
		{"§­êng M«n",CBDMMAX},
		{"C¸i Bang",CBCBMAX},
		{"Thiªn NhÉn",CBTNMAX},
		{"Vâ §ang",CBVDMAX},
		{"C«n L«n",CBCLMAX},
		{"Trë L¹i",TrangBi},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function CBTLMAX()
for i = 1045,1047 do
AddGoldItem(0,i)
end
end

function CBTVMAX()
AddGoldItem(0,1048)
end

function CBNMMAX()
for i = 1049,1051 do
AddGoldItem(0,i)
end
end

function CBTYMAX()
AddGoldItem(0,1052)
AddGoldItem(0,1053)
end

function CBNDMAX()
AddGoldItem(0,1054)
AddGoldItem(0,1055)
end

function CBDMMAX()
AddGoldItem(0,1056)
AddGoldItem(0,1057)
end

function CBCBMAX()
AddGoldItem(0,1058)
end

function CBTNMAX()
for i = 1059,1061 do
AddGoldItem(0,i)
end
end

function CBVDMAX()
AddGoldItem(0,1062)
AddGoldItem(0,1063)
end

function CBCLMAX()
for i = 1064,1066 do
AddGoldItem(0,i)
end
end

--------------------------------------------------------------------------------------------------------

function AddEquipGoldOtherConfirm(tbKind)
	for nID = tbKind[1], tbKind[2] do
		AddGoldItem(0, nID)
	end
end

function AddEquipGoldBaseMaxOp()
	if (CalcFreeItemCellCount() < 20) then
		Talk(1, "", "Hµnh trang kh«ng ®ñ 20 « trèng ®Ó nhËn.")
	return end
	
	local n_Faction = GetLastFactionNumber();
	if (n_Faction < 0) then
		Talk(1, "", "B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn trang bÞ nµy")
	return end
	
	if (n_Faction > 9) then
		Talk(1, "", "HiÖn t¹i ch­a cã trang bÞ hoµng kim m«n ph¸i nµo nµo cho <color=red>Hoa S¬n ph¸i<color> c¶!")
	return end
	
	local szTitle = "<dec>B¹n muèn nhËn trang bÞ cña m«n ph¸i nµo?";
	local tbOption = {};
	local tb_Equip = HOANGKIMMONPHAIMAXOP;
	local tb_Faction = EQUIP_FACTION;
	for i = 0, (getn(tb_Equip)-0) do
		tinsert(tbOption, {format("Trang bÞ ph¸i %s", tb_Faction[i]), AddEquipGoldConfirm2, {tb_Equip[i]}})
	end
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption)
end

function AddEquipGoldConfirm2(tb_EquipFaction)
	local tb_Equip = tb_EquipFaction;
	local tb_Faction = EQUIP_FACTION;
	local tbOption = {};
	local szTitle = "<dec>Mêi b¹n chän ®­êng tÊn c«ng c¬ b¶n?";
	for x, y in tb_Equip do
		tinsert(tbOption, {format("%s", x), AddEquipGoldSpecicalKind2, {tb_Equip[x]}})
	end
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption)
end

function AddEquipGoldSpecicalKind2(tb_EquipKind)
	for nID = tb_EquipKind[1], tb_EquipKind[2] do
		local nIndex = AddGoldItem(0, nID)
	end
end

-- pEventType:Reg("TÝnh n¨ng thö nghiÖm", "Trang bÞ hoµng kim", TRANGBIHOANGKIM2);
-- pEventType:Reg("LÖnh bµi T©n Thñ", "Trang bÞ hoµng kim", TRANGBIHOANGKIM2);