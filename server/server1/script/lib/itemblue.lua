-- Author by AloneScript (Linh Em)
-- Date: 09/09/2018 - 21:24
-- Script: NhËn trang bÞ xanh
-- Function: GetItemBlue()

Include("\\script\\dailogsys\\dailogsay.lua")

ITEM_BLUE = {
	["D©y chuyÒn"] = {
		{szName="Toµn Th¹ch H¹ng Liªn", tbProp={0,4,0}, nWidth=2, nHeight=1},
		{szName="Lôc PhØ Thóy Hé Th©n Phï", tbProp={0,4,1}, nWidth=2, nHeight=1},
	},
	
	["Gi¸p y"] = {
		{szName="ThÊt B¶o Cµ Sa", tbProp={0,2,0}, nWidth=2, nHeight=3},
		{szName="Ch©n Vò Th¸nh Y", tbProp={0,2,1}, nWidth=2, nHeight=3},
		{szName="Thiªn NhÉn MËt Trang", tbProp={0,2,2}, nWidth=2, nHeight=3},
		{szName="Gi¸ng Sa Bµo", tbProp={0,2,3}, nWidth=2, nHeight=3},
		{szName="§­êng Nghª Gi¸p", tbProp={0,2,4}, nWidth=2, nHeight=3},
		{szName="V¹n L­u Quy T«ng Y", tbProp={0,2,5}, nWidth=2, nHeight=3},
		{szName="TuyÒn Long Bµo", tbProp={0,2,6}, nWidth=2, nHeight=3},
		{szName="Long Tiªu §¹o Y", tbProp={0,2,8}, nWidth=2, nHeight=3},
		{szName="Cöu VÜ B¹ch Hå Trang", tbProp={0,2,9}, nWidth=2, nHeight=3},
		{szName="TÝch LÞch Kim Phông Gi¸p", tbProp={0,2,11}, nWidth=2, nHeight=3},
		{szName="V¹n Chóng TÒ T©m Y", tbProp={0,2,12}, nWidth=2, nHeight=3},
		{szName="L­u Tiªn QuÇn", tbProp={0,2,13}, nWidth=2, nHeight=3},
	},
	
	["Th¾t l­ng"] = {
		{szName="Thiªn Tµm Yªu §¸i", tbProp={0,6,0}, nWidth=2, nHeight=1},
		{szName="B¹ch Kim Yªu §¸i", tbProp={0,6,1}, nWidth=2, nHeight=1},
	},
	
	["Giµy"] = {
		{szName="Cöu TiÕt X­¬ng VÜ Ngoa", tbProp={0,5,0}, nWidth=2, nHeight=2},
		{szName="Thiªn Tµm Ngoa", tbProp={0,5,1}, nWidth=2, nHeight=2},
		{szName="Kim Lò hµi", tbProp={0,5,2}, nWidth=2, nHeight=2},
		{szName="Phi Phông Ngoa", tbProp={0,5,3}, nWidth=2, nHeight=2},
	},
	
	["Bao tay"] = {
		{szName="Long Phông HuyÕt Ngäc Tr¹c", tbProp={0,8,0}, nWidth=1, nHeight=2},
		{szName="Thiªn Tµm Hé UyÓn", tbProp={0,8,1}, nWidth=1, nHeight=2},
	},
	
	["Nãn"] = {
		{szName="Tú L« M·o", tbProp={0,7,0}, nWidth=2, nHeight=2},
		{szName="Ngò L·o Qu¸n", tbProp={0,7,1}, nWidth=2, nHeight=2},
		{szName="Tu La Ph¸t KÕt", tbProp={0,7,2}, nWidth=2, nHeight=2},
		{szName="Th«ng Thiªn Ph¸t Qu¸n", tbProp={0,7,3}, nWidth=2, nHeight=2},
		{szName="YÓm NhËt Kh«i", tbProp={0,7,4}, nWidth=2, nHeight=2},
		{szName="TrÝch Tinh Hoµn", tbProp={0,7,5}, nWidth=2, nHeight=2},
		{szName="¤ Tµm M·o", tbProp={0,7,6}, nWidth=2, nHeight=2},
		{szName="Quan ¢m Ph¸t Qu¸n", tbProp={0,7,7}, nWidth=2, nHeight=2},
		{szName="¢m D­¬ng V« Cùc Qu¸n", tbProp={0,7,8}, nWidth=2, nHeight=2},
		{szName="HuyÒn Tª DiÖn Tr¸o", tbProp={0,7,9}, nWidth=2, nHeight=2},
		{szName="Long HuyÕt §Çu Hoµn", tbProp={0,7,10}, nWidth=2, nHeight=2},
		{szName="Long L©n Kh«i", tbProp={0,7,11}, nWidth=2, nHeight=2},
		{szName="Thanh Tinh Thoa", tbProp={0,7,12}, nWidth=2, nHeight=2},
		{szName="Kim Phông TriÓn SÝ", tbProp={0,7,13}, nWidth=2, nHeight=2},
	},
	
	["Ngäc béi"] = {
		{szName="Long Tiªn H­¬ng Nang", tbProp={0,9,0}, nWidth=1, nHeight=2},
		{szName="D­¬ng Chi B¹ch Ngä", tbProp={0,9,1}, nWidth=1, nHeight=2},
	},
	
	["NhÉn"] = {
		{szName="Toµn Th¹ch Giíi ChØ", tbProp={0,3,0}, nWidth=1, nHeight=1},
	},
	
	["Vò khÝ cËn chiÕn"] = {
		{szName="HuyÒn ThiÕt KiÕm", tbProp={0,0,0}, nWidth=1, nHeight=3},
		{szName="§¹i Phong §ao", tbProp={0,0,1}, nWidth=1, nHeight=3},
		{szName="Kim C« Bæng", tbProp={0,0,2}, nWidth=1, nHeight=3},
		{szName="Ph¸ Thiªn KÝch", tbProp={0,0,3}, nWidth=1, nHeight=4},
		{szName="Ph¸ Thiªn chïy", tbProp={0,0,4}, nWidth=2, nHeight=2},
		{szName="Th«n NhËt Tr·m", tbProp={0,0,5}, nWidth=2, nHeight=3},
	},
	
	["Vò khÝ tÇm xa"] = {
		{szName="B¸ V­¬ng Tiªu", tbProp={0,1,0}, nWidth=1, nHeight=1},
		{szName="To¸i NguyÖt §ao", tbProp={0,1,1}, nWidth=1, nHeight=1},
		{szName="Khæng T­íc Linh", tbProp={0,1,2}, nWidth=2, nHeight=2},
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
	local nWidth = ITEM_BLUE[szKind][nType].nWidth
	local nHeight = ITEM_BLUE[szKind][nType].nHeight
	local nCountRoom = CountFreeRoomByWH(nWidth,nHeight)
	if (nCountRoom < nCount) then
		Talk(1, "", format("Hµnh trang cña b¹n kh«ng ®ñ %d (%dx%d) chç trèng.", nCountRoom, nWidth,nHeight))
	return end
	local tbItemBlue = ITEM_BLUE[szKind][nType].tbProp;
	for i = 1, nCount do
		--AddItem(tbItemBlue[1], tbItemBlue[2], tbItemBlue[3], 10, nSeries, 250, 10)
		AddItemEx(0,random(),0,tbItemBlue[1],tbItemBlue[2],tbItemBlue[3],10,nSeries,127,10,10,10,10,10,10,0)
		
	end
end