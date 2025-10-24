Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\systemconfig.lua")
Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");



LOGINMSG_EXTPOINTID	= 7;
LOGINMSG_BITL			= 1;
LOGINMSG_BITH			= 4;
TB_LOGINMSG_BYBIT = {
-- [1]	= "Tµi kho¶n cña b¹n ®ang ®­îc ®¨ng ký sè giÊy tê míi. B¹n h·y ®¨ng nhËp b»ng mËt m· 2 vµo https://acc.volam.com.vn ®Ó biÕt th«ng tin chi tiÕt",
-- [2]	= "Tµi kho¶n cña b¹n ®ang ®­îc ®¨ng ký email míi. B¹n h·y ®¨ng nhËp b»ng mËt m· 2 vµo https://acc.volam.com.vn ®Ó biÕt th«ng tin chi tiÕt",
-- [3]	= "Tµi kho¶n cña b¹n ch­a ®¨ng ký sè giÊy tê tïy th©n. B¹n h·y ®¨ng nhËp b»ng mËt m· 2 vµo https://acc.volam.com.vn ®Ó biÕt th«ng tin chi tiÕt",
-- [4]	= "Tµi kho¶n cña b¹n ch­a ®¨ng ký email. B¹n h·y ®¨ng nhËp b»ng mËt m· 2 vµo https://acc.volam.com.vn ®Ó biÕt th«ng tin chi tiÕt",
};

function extpoint_loginmsg()
	if (not SYSCFG_EXTPOINTID7_LOGINMSG) then
		return
	end;
	
	-- Ö»ÓÐÔ½ÄÏ°æ±¾²ÅÓÐ´Ë¹¦ÄÜ
	if (SYSCFG_PRODUCT_REGION_ID ~= DEF_PRODUCT_REGION_VN) then
		return
	end
		
	local nExtP = GetExtPoint(LOGINMSG_EXTPOINTID);
	if (nExtP ~= 0) then
		for i = LOGINMSG_BITL, LOGINMSG_BITH do
			if (GetBit(nExtP, i) == 1 and TB_LOGINMSG_BYBIT[i]) then
				Msg2Player(TB_LOGINMSG_BYBIT[i])
			end;
		end;
	end;
	
	if IsIPBonus() == 1 then
		IpBonus_Start()
	end;
end;

-- if login_add then login_add(extpoint_loginmsg, 2) end
