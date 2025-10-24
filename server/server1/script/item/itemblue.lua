-- Author by AloneScript (Linh Em)
-- Date: 09/09/2018 - 21:24
-- Script: NhËn trang bÞ xanh
-- Function: GetItemBlue()

Include("\\script\\dailogsys\\dailogsay.lua")

ITEM_BLUE = {
	["D©y chuyÒn"] = {
		{szName="Toµn Th¹ch H¹ng Liªn", tbProp={0,4,0}},
		{szName="Lôc PhØ Thóy Hé Th©n Phï", tbProp={0,4,1}},
	},
	
	["Gi¸p y"] = {
		{szName="ThÊt B¶o Cµ Sa", tbProp={0,2,0}},
		{szName="Ch©n Vò Th¸nh Y", tbProp={0,2,1}},
		{szName="Thiªn NhÉn MËt Trang", tbProp={0,2,2}},
		{szName="Gi¸ng Sa Bµo", tbProp={0,2,3}},
		{szName="§­êng Nghª Gi¸p", tbProp={0,2,4}},
		{szName="V¹n L­u Quy T«ng Y", tbProp={0,2,5}},
		{szName="TuyÒn Long Bµo", tbProp={0,2,6}},
		{szName="Long Tiªu §¹o Y", tbProp={0,2,8}},
		{szName="Cöu VÜ B¹ch Hå Trang", tbProp={0,2,9}},
		{szName="TÝch LÞch Kim Phông Gi¸p", tbProp={0,2,11}},
		{szName="V¹n Chóng TÒ T©m Y", tbProp={0,2,12}},
		{szName="L­u Tiªn QuÇn", tbProp={0,2,13}},
	},
	
	["Th¾t l­ng"] = {
		{szName="Thiªn Tµm Yªu §¸i", tbProp={0,6,0}},
		{szName="B¹ch Kim Yªu §¸i", tbProp={0,6,1}},
	},
	
	["Giµy"] = {
		{szName="Cöu TiÕt X­¬ng VÜ Ngoa", tbProp={0,5,0}},
		{szName="Thiªn Tµm Ngoa", tbProp={0,5,1}},
		{szName="Kim Lò hµi", tbProp={0,5,2}},
		{szName="Phi Phông Ngoa", tbProp={0,5,3}},
	},
	
	["Bao tay"] = {
		{szName="Long Phông HuyÕt Ngäc Tr¹c", tbProp={0,8,0}},
		{szName="Thiªn Tµm Hé UyÓn", tbProp={0,8,1}},
	},
	
	["Nãn"] = {
		{szName="Tú L« M·o", tbProp={0,7,0}},
		{szName="Ngò L·o Qu¸n", tbProp={0,7,1}},
		{szName="Tu La Ph¸t KÕt", tbProp={0,7,2}},
		{szName="Th«ng Thiªn Ph¸t Qu¸n", tbProp={0,7,3}},
		{szName="YÓm NhËt Kh«i", tbProp={0,7,4}},
		{szName="TrÝch Tinh Hoµn", tbProp={0,7,5}},
		{szName="¤ Tµm M·o", tbProp={0,7,6}},
		{szName="Quan ¢m Ph¸t Qu¸n", tbProp={0,7,7}},
		{szName="¢m D­¬ng V« Cùc Qu¸n", tbProp={0,7,8}},
		{szName="HuyÒn Tª DiÖn Tr¸o", tbProp={0,7,9}},
		{szName="Long HuyÕt §Çu Hoµn", tbProp={0,7,10}},
		{szName="Long L©n Kh«i", tbProp={0,7,11}},
		{szName="Thanh Tinh Thoa", tbProp={0,7,12}},
		{szName="Kim Phông TriÓn SÝ", tbProp={0,7,13}},
	},
	
	["Ngäc béi"] = {
		{szName="Long Tiªn H­¬ng Nang", tbProp={0,9,0}},
		{szName="D­¬ng Chi B¹ch Ngä", tbProp={0,9,1}},
	},
	
	["NhÉn"] = {
		{szName="Toµn Th¹ch Giíi ChØ", tbProp={0,3,0}},
	},
	
	["Vò khÝ cËn chiÕn"] = {
		{szName="HuyÒn ThiÕt KiÕm", tbProp={0,0,0}},
		{szName="§¹i Phong §ao", tbProp={0,0,1}},
		{szName="Kim C« Bæng", tbProp={0,0,2}},
		{szName="Ph¸ Thiªn KÝch", tbProp={0,0,3}},
		{szName="Ph¸ Thiªn chïy", tbProp={0,0,4}},
		{szName="Th«n NhËt Tr·m", tbProp={0,0,5}},
	},
	
	["Vò khÝ tÇm xa"] = {
		{szName="B¸ V­¬ng Tiªu", tbProp={0,1,0}},
		{szName="To¸i NguyÖt §ao", tbProp={0,1,1}},
		{szName="Khæng T­íc Linh", tbProp={0,1,2}},
	},
}

SAYENDNOW = {"KÕt thóc ®èi tho¹i.", no};

function GetItemBlue()
	local szTitle = "B¹n muèn lÊy trang bÞ lo¹i nµo?"
	local tbOpt = {};
	for x, y in ITEM_BLUE do
		tinsert(tbOpt, {x, GoTypeGetItemBlue, {x}})
	end
	tinsert(tbOpt, SAYENDNOW)
	CreateNewSayEx(szTitle, tbOpt)
end

function GoTypeGetItemBlue(szKind)
	local szTitle = "B¹n muèn lÊy trang bÞ kiÓu nµo?";
	local tbOpt = {};
	for i = 1, getn(ITEM_BLUE[szKind]) do
		tinsert(tbOpt, {ITEM_BLUE[szKind][i].szName, GoSeriesGetItemBlue, {szKind, i}})
	end
	tinsert(tbOpt, SAYENDNOW)
	CreateNewSayEx(szTitle, tbOpt)
end

function GoSeriesGetItemBlue(szKind, nType)
	local szTitle = "B¹n muèn lÊy trang bÞ hÖ nµo?";
	local tbOpt = {};
		tinsert(tbOpt, {"Kim", GoInputCountGetItemBlue, {szKind, nType, 0}})
		tinsert(tbOpt, {"Méc", GoInputCountGetItemBlue, {szKind, nType, 1}})
		tinsert(tbOpt, {"Thñy", GoInputCountGetItemBlue, {szKind, nType, 2}})
		tinsert(tbOpt, {"Háa", GoInputCountGetItemBlue, {szKind, nType, 3}})
		tinsert(tbOpt, {"Thæ", GoInputCountGetItemBlue, {szKind, nType, 4}})
	tinsert(tbOpt, SAYENDNOW)
	CreateNewSayEx(szTitle, tbOpt)
end

function GoInputCountGetItemBlue(szKind, nType, nSeries)
	g_AskClientNumberEx(0, 10, "NhËp sè l­îng:", {GoGetItemBlue, {szKind, nType, nSeries}})
end

function GoGetItemBlue(szKind, nType, nSeries, nCount)
	local tbItemBlue = ITEM_BLUE[szKind][nType].tbProp;
	for i = 1, nCount do
		AddItem(tbItemBlue[1], tbItemBlue[2], tbItemBlue[3], 10, nSeries, 250, 10)
	end
end