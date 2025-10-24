-- ¹¦ÄÜ£º×ÏÉ«×°±¸ÏµÍ³ - Ê¹ÓÃÀ¶/°××°±¸ºÍ¿óÊ¯´òÔì¿Õ¿×µÄ×ÏÉ«×°±¸
-- Fanghao Wu 2005.1.15

Include( "\\script\\item\\compound\\compound_header.lua" );
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-- [ºÏ³É]·ÑÓÃ
COMPOUND_COST = 10000;


-- ³õÊ¼»¯ÊıÖµ
function initData()
	g_nEquipVer = 0;
	g_nEquipRandSeed = 0;
	g_nEquipGenre = 0;
	g_nEquipDetailType = 0;
	g_nEquipParticualr = 0;
	g_nEquipLevel = 0;
	g_nEquipSeries = 0;
	g_nEquipLuck = 0;
end

-- »ñÈ¡[ºÏ³É]²Ù×÷²ÎÊı£¨ÓÃÓÚ´«µİ¸øITEM_CalcItemValue¼ÆËãÎïÆ·¼ÛÖµÁ¿£©
function getCompoundParam()
	return "EQUIP_COMPOUND";
end

-- Ğ£ÑéÔ­ÁÏÊÇ·ñ·ûºÏ[ºÏ³É]¹æÔò£¨Í¬Ê±´æ´¢Ò»Ğ©Ô­ÁÏÊı¾İ£©
function verifySrcItems( arynNecessaryItemIdx, arynAlternativeItemIdx )
	if AllowCheTaoDoTim ~= 1 then
		Say("<color=orange>Thî rÌn: <color>HiÖn t¹i tİnh n¨ng chÕ t¹o ®å tİm ch­a më,  t¹i h¹ kh«ng d¸m kh¸ng lÖnh, phiÒn ®¹i hiÖp quay l¹i sau!")
		--Msg2Player("<color=yellow>HiÖn t¹i tİnh n¨ng chÕ t¹o ®å tİm ch­a më, t¹i h¹ kh«ng d¸m kh¸ng lÖnh, phiÒn ®¹i hiÖp quay l¹i sau!")
		return RESULT_UNKNOWN
	end

	local nNecessaryItemCount = getn( arynNecessaryItemIdx );
	for i = 1, nNecessaryItemCount do
		local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( arynNecessaryItemIdx[i] );
		if( nGenre == 0 ) then
			g_nEquipVer = ITEM_GetItemVersion( arynNecessaryItemIdx[i] );
			g_nEquipRandSeed = ITEM_GetItemRandSeed( arynNecessaryItemIdx[i] );
			g_nEquipGenre = nGenre;
			g_nEquipDetailType = nDetailType;
			g_nEquipParticualr = nParticular;
			g_nEquipLevel = nLevel;
			g_nEquipSeries = nSeries;
			g_nEquipLuck = nLuck;
			return RESULT_SUCCEED;
		end
	end
	return RESULT_LACK_RESOURCE;
end

-- Éú³ÉÄ¿±êÎïÆ·ĞÅÏ¢
function genDesItemsInfo( arynNecessaryItemIdx )
	 if AllowCheTaoDoTim ~= 1 then
		 Say("<color=orange>Thî rÌn: <color>HiÖn t¹i tİnh n¨ng chÕ t¹o ®å tİm ch­a më, t¹i h¹ kh«ng d¸m kh¸ng lÖnh, phiÒn ®¹i hiÖp quay l¹i sau!")
		 return RESULT_FAIL
	 end
	local aryDesItemInfo = {};
	for i = 1, 5 do
		local arynMagLvl = { 0, 0, 0, 0, 0, 0 };
		for j = 1, i do
			arynMagLvl[j] = -1;
		end
		aryDesItemInfo[i] = { g_nEquipVer, g_nEquipRandSeed, 2, g_nEquipGenre, g_nEquipDetailType, g_nEquipParticualr, g_nEquipLevel, g_nEquipSeries, g_nEquipLuck, arynMagLvl, nil,getCompoundParam() };
	end
	return aryDesItemInfo;
end

-- Íê³ÉÑ¡ÔñÄ¿±êÎïÆ·¡¢É¾³ıÔ­ÁÏµÈÊÕÎ²²Ù×÷
function finalCompound( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo, arydDesItemVal )
	if AllowCheTaoDoTim ~= 1 then return RESULT_FAIL end
	return defFinalCompound( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo, arydDesItemVal );
end