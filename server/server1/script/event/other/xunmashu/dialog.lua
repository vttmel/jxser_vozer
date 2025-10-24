Include("\\script\\event\\other\\xunmashu\\class.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\composelistclass.lua")
IL("LEAGUE")
	
local _ComposeMsg = function ()
	local szMsg = "§©y lµ thµnh phÈm, chóc c¸c h¹ may m¾n."
	Talk(1, "", szMsg)
end

local _MakeItemTable = function (nItemIndex)
	local tbItem = {}
	tbItem.szName		= GetItemName(nItemIndex)
	tbItem.nQuality		= GetItemQuality(nItemIndex);
	tbItem.nBindState	= GetItemBindState(nItemIndex);
	
	tbItem.nCount		= GetItemStackCount(nItemIndex) or 1
	tbItem.tbProp = {}
	if tbItem.nQuality == 0 then -- ÆÕÍ¨ÎïÆ·
		tbItem.tbProp[1], tbItem.tbProp[2], tbItem.tbProp[3], tbItem.tbProp[4], tbItem.tbProp[5], tbItem.tbProp[6] = GetItemProp(nItemIndex)
	elseif tbItem.nQuality == 1 or tbItem.nQuality == 4 then --»Æ½ð or °×½ð
		local nGenre = GetItemProp(nItemIndex)
		if nGenre == 7 then
			tbItem.tbProp[1] = nGenre
		elseif tbItem.nQuality == 1 then
			tbItem.tbProp[1], tbItem.tbProp[2] = 0, GetGlodEqIndex(nItemIndex)
		elseif tbItem.nQuality == 4 then
			tbItem.tbProp[1], tbItem.tbProp[2] = 0, GetPlatinaEquipIndex(nItemIndex)
		end
	elseif tbItem.nQuality == 2 then -- ×ÏÉ«×°±¸
		tbItem.tbProp[1], tbItem.tbProp[2], tbItem.tbProp[3], tbItem.tbProp[4], tbItem.tbProp[5], tbItem.tbProp[6] = GetItemProp(nItemIndex)
	end
	return tbItem
end

local _MatchItem = function (tbSrcItem, tbDecItem)
	if tbSrcItem == nil or tbDecItem == nil then
		return 0;
	end
	if tbSrcItem.tbProp == nil or tbDecItem.tbProp == nil then
		return 0;
	end
	if tbSrcItem.nQuality ~= nil and tbSrcItem.nQuality ~= tbDecItem.nQuality then
		return 0;
	end
	if tbSrcItem.nBindState ~= nil and tbSrcItem.nBindState ~= tbDecItem.nBindState then
		return 0;
	end
	local i;
	for i=1,getn(tbSrcItem.tbProp) do
		if (tbSrcItem.tbProp ~= nil) then
			if (tbSrcItem.tbProp[i] ~= tbDecItem.tbProp[i]) then
				return 0;
			end
		end
	end
	return 1;
end

local _CalcItemCountInGiveUI = function (tbItem, nUICount)
	nUICount = nUICount or 24
	local nItemCount = 0
	for i=1, nUICount do
		local nItemIndex = (GetGiveItemUnit(i))
		if nItemIndex and nItemIndex > 0 then
			local tbItem_UI = %_MakeItemTable(nItemIndex)
			if %_MatchItem(tbItem, tbItem_UI) == 1 then
				nItemCount = nItemCount + tbItem_UI.nCount
			end
		end
	end
	return nItemCount
end

local _ConsumeItemInGiveUI = function (tbItem, nConsumeCount, nUICount)
	nUICount = nUICount or 24
	local nLeftCount = nConsumeCount or 1
	local nItemCount = 0
	for i=1, nUICount do
		local nItemIndex = (GetGiveItemUnit(i))
		if nItemIndex and nItemIndex > 0 then
			
			local tbItem_UI = %_MakeItemTable(nItemIndex)
			if %_MatchItem(tbItem, tbItem_UI) == 1 then
				
				if tbItem_UI.nCount <= nLeftCount then
					if RemoveItemByIndex(nItemIndex) == 1 then
						nLeftCount = nLeftCount - tbItem_UI.nCount
					end
				else
					if SetItemStackCount(nItemIndex, tbItem_UI.nCount - nLeftCount) == 1 then
						nLeftCount = 0
					end
				end
				if nLeftCount == 0 then
					return 1
				end
			end
		end
		
	end
	return nil
end


local tbItemInGiveUi = tbBaseClass:new()

function tbItemInGiveUi:_init(tbItem)
	self.szName = tbItem.szName
	self.tbItem = tbItem
	self.nCount = tbItem.nCount
end

function tbItemInGiveUi:pGetCount()
	return %_CalcItemCountInGiveUI(self.tbItem)
end

function tbItemInGiveUi:pConsume(nCount)
	return %_ConsumeItemInGiveUI(self.tbItem, nCount)
end



local tbFormulaList_Horse =
{
	[1] = 
	{
		szComposeTitle =  "§æi",
		szFailMsg = "Lo¹i vËt phÈm c¸c h¹ bá vµo kh«ng ®óng hoÆc sai sè l­îng.",
		nFreeItemCellLimit = 0,
		tbMaterial = 
		{
			
			tbItemInGiveUi:new({szName="Tóc S­¬ng", tbProp={0, 10, 2}}),
			tbItemInGiveUi:new({szName="Cá Ngäc Lan", tbProp={6, 1, 1987},nCount=10}),
--			tbItemInGiveUi:new({szName="D­¬ng Linh HuyÕt", tbProp={6, 1, 1987},nCount=10}),			
		},
		tbProduct = 
		{
			szName = "ThuÇn M·",
			[1] = {szName="ChiÕu D¹ Ngäc S­ Tö ", tbProp={0, 10, 5, 5, 5, 0}, nRate = 12},
			[2] = {szName="XÝch Thè ", tbProp={0, 10, 5, 2, 5, 0}, nRate = 12},
			[3] = {szName="§Ých L« ", tbProp={0, 10, 5, 4, 5, 0}, nRate = 12},
			[4] = {szName="¤ V©n §¹p TuyÕt", tbProp={0, 10, 5, 1, 5, 0}, nRate = 12},
			[5] = {szName="TuyÖt ¶nh", tbProp={0, 10, 5, 3, 5, 0}, nRate = 12},
			[6] = 
			{
				nRate = 1,
				[1] = {szName="B«n Tiªu", tbProp={0, 10, 6, 1, 5, 0}},
				[2] = {
					pFun = function()
						local szMsg = format("Cao thñ <color=green>%s<color> ®· thuÇn hãa ®­îc ngùa quý, h·y chóc mõng vµ chiªm ng­ìng!", GetName())
						AddGlobalNews(szMsg)
						
						LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "colork_bless_anywhere", szMsg, "", "")
					end
				}
			},
			[7] =
			{
				nRate = 0.05,
				[1] = {szName="Phiªn Vò ", tbProp={0, 10, 7, 1, 5, 0}},
				[2] = {
					pFun = function()
						local szMsg = format("Cao thñ <color=green>%s<color> ®· thuÇn hãa ®­îc ngùa quý, h·y chóc mõng vµ chiªm ng­ìng!", GetName())
						AddGlobalNews(szMsg)
						
						LG_ApplyDoScript(0, "", "", "\\script\\event\\card.lua", "colork_bless_anywhere", szMsg, "", "")
					end
				}
			},
			[8] = {szName="Phi V©n", tbProp={0, 10, 8, 1, 5, 0}, nRate = 5,},
			[9] = {szName="Tóc S­¬ng", tbProp={0, 10, 2, 2, 5, 0}, nRate = 33.95,},
		}, 
	},
} 















function tbXunMaShu0903:DialogMain_Horse()
	if self:IsActDate() ~= 1 then
		Talk(1, "", "Ho¹t ®éng ®· kÕt thóc.")
		return
	end
	
	
	local bRet, szFailMsg = self:IsPlayerEligible() 
	
	if bRet ~= 1 then
		Talk(1, "", szFailMsg, "C¸c h¹ ch­a ®ñ ®iÒu kiÖn ®Ó tham gia ho¹t ®éng nµy")
		return
	end
	
	self:ExchangeHorse()
	
--	if not self.Compose_Horse then
--		self.Compose_Horse = tbComposeListClass:new("tbXunMaShu0903_ComposeHorse", %tbFormulaList_Horse)
--	end
--	local szTitle = "<dec><npc>".."ÄãÏëÑ±ÂíÂð£¿"
--	
--	
--	local tbSay = self.Compose_Horse:MakeOptByProductName("ÑµÁ·")
--	tinsert(tbSay, 1, szTitle)
--	tinsert(tbSay, "½áÊø¶Ô»°/OnCancel")
--	CreateTaskSay(tbSay)
end




function tbXunMaShu0903__ProcessGiveUI(nCount)
	if nCount ~= 2 then
		return Talk(1, "", "Bá vµo sè l­îng kh«ng ®óng")
	end
	
	tbComposeClass:Compose(%tbFormulaList_Horse[1], "tbXunMaShu0903 exchange horse", 1)
	
end



function tbXunMaShu0903:ExchangeHorse()
	
	
	local szTitle = "H·y bá nh÷ng thø ta yªu cÇu."
	local szMaterial = "+ 01 Tóc S­¬ng <enter>+ 10 Cá Ngäc Lan<enter>+ 10 D­¬ng Linh HuyÕt"
	GiveItemUI(szTitle, szMaterial, "tbXunMaShu0903__ProcessGiveUI", "OnCancel")
end


