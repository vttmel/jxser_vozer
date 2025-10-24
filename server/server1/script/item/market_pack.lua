-- ÆæÕä¸ó´ò°üÎïÆ·
-- Last edited by Giangleloi WwW.ClbGamesVN.Com

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("ITEM")
function main(nItemIndex)
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
		Msg2Player("VËt phÈm ®· hÕt h¹n sö dông!")
		return 0;
	end
	nLeftTime = floor((nLeftTime)/60);
	if (G ~= 6) then
		return 1;
	end
	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"CÇn İt nhÊt 6 « trèng míi cã thÓ nhËn vËt phÈm",  "§Ó ta s¾p xÕp l¹i./Cancel",});
		return 1;
	end
	-- ÔÀÍõ½£
	if P == 2340 then -- Nh¹c V­¬ng KiÕm lÔ bao
		local tbAwardItem = {tbProp={4,195,1,1,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end	
	--TÈy Tñy Kinh
		if P == 4919 then -- TÈy Tñy Kinh lÔ bao
		local tbAwardItem = {tbProp={6,1,22,0,0,0}, nCount = 15}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end	
		--Vâ L©m MËt TŞch
		if P == 4920 then -- TÈy Tñy Kinh lÔ bao
		local tbAwardItem = {tbProp={6,1,26,0,0,0}, nCount = 15}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end	
	-- ÑªÕ½ÁîÆì
	if P == 2401 then -- HuyÕt ChiÕn LÖnh Kú LÔ Hép
		local tbAwardItem = {tbProp={6,1,2212,1,0,0},nExpiredTime=nLeftTime,}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end	
	-- É±ÊÖïµ ½ÚÈÕÀñ·ş
	if P == 2335 or P == 2336 or P == 2337 or P == 2338 or P == 2339 then -- Thanh TuyÖt Y lÔ hép, B¨ng Tinh QuÇn lÔ hép, Kinh Thiªn Gi¸p lÔ hép, KhÊp §Şa QuÇn lÔ hép, S¸t Thñ Gi¶n lÔ hép
		SelectSeries(P)
		return 1;
	end
	-- ±¼Ïü
	if P == 2328 then -- M· bµi - Xİch thè
		local tbAwardItem = {tbProp={0,10,5,2,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 2329 then -- M· bµi - §İch L«
		local tbAwardItem = {tbProp={0,10,5,4,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 2330 then -- M· bµi - TuyÖt ¶nh
		local tbAwardItem = {tbProp={0,10,5,8,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 2331 then -- M· bµi - ¤ V©n §¹p TuyÕt
		local tbAwardItem = {tbProp={0,10,5,6,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 2332 then -- M· bµi - ChiÕu D¹ Ngäc S­ Tö
		local tbAwardItem = {tbProp={0,10,5,10,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 2333 then -- M· bµi - B«n Tiªu
		local tbAwardItem = {tbProp={0,10,6,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 2334 then -- M· bµi - Phiªn Vò
		local tbAwardItem = {tbProp={0,10,7,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	-- ·ÉÔÆ
	if P == 2396 then -- M· bµi - Phi V©n
		local tbAwardItem = {tbProp={0,10,8,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 3416 then -- M· Bµi - Xich long cau
		local tbAwardItem = {tbProp={0,10,15,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 3483 or P == 4064 then -- M· Bµi - Siªu Quang
		local tbAwardItem = {tbProp={0,10,13,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4905 then -- M· Bµi - Kim Tinh Hæ V­¬ng
		local tbAwardItem = {tbProp={0,10,14,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4906 then -- M· Bµi - Háa Tinh Hæ V­¬ng
		local tbAwardItem = {tbProp={0,10,15,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4907 then -- M· Bµi - Long Tinh H¾c Hæ V­¬ng
		local tbAwardItem = {tbProp={0,10,17,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4908 then -- M· Bµi - S­ tö
		local tbAwardItem = {tbProp={0,10,22,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4909 then -- M· Bµi - L¹c ®µ
		local tbAwardItem = {tbProp={0,10,23,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4910 then -- M· Bµi - D­¬ng §µ
		local tbAwardItem = {tbProp={0,10,24,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4911 then -- M· Bµi - H­¬u ®èm
		local tbAwardItem = {tbProp={0,10,25,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4912 then -- M· Bµi - D­¬ng Sa
		local tbAwardItem = {tbProp={0,10,26,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4913 then -- M· Bµi - Ngù Phong
		local tbAwardItem = {tbProp={0,10,27,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4914 then -- M· Bµi - Truy ®iÖn
		local tbAwardItem = {tbProp={0,10,28,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
	if P == 4915 then -- M· Bµi - L­u Tinh 
		local tbAwardItem = {tbProp={0,10,29,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return 0;
	end
end
-- Ñ¡ÔñÎåĞĞ
function SelectSeries(nP)
	local tbTaskSay = {"<dec>Vui lßng chän thuéc tİnh:",
						format("Kim/#GetSeries(%d, %d)", nP, 0),
						format("Méc/#GetSeries(%d, %d)", nP, 1),
						format("Thñy/#GetSeries(%d, %d)", nP, 2),
						format("Háa/#GetSeries(%d, %d)", nP, 3),
						format("Thæ/#GetSeries(%d, %d)", nP, 4),
					  };
	CreateTaskSay(tbTaskSay);
end

function GetSeries(nP, nSeries)
	if ConsumeItem(3, 1, 6, 1, nP, -1) ~= 1 then
		Msg2Player("KhÊu trõ vËt phÈm thÊt b¹i.")
		return
	end
	-- Çå¾øÒÂ
	if nP == 2335 then -- Thanh TuyÖt Y lÔ hép
		local tbAwardItem = {tbProp={0,2,28,3,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return
	end	
	-- ±ù¾§È¹
	if nP == 2336 then -- B¨ng Tinh QuÇn lÔ hép
		local tbAwardItem = {tbProp={0,2,28,6,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return
	end	
		
	-- ¾ªÌì¼×
	if nP == 2337 then -- Kinh Thiªn Gi¸p lÔ hép
		local tbAwardItem = {tbProp={0,2,28,2,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return
	end	
		
	-- ÆüµØÈ¹
	if nP == 2338 then -- KhÊp §Şa QuÇn lÔ hép
		local tbAwardItem = {tbProp={0,2,28,5,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return
	end	
		
	-- É±ÊÖïµ
	if nP == 2339 then -- S¸t Thñ Gi¶n lÔ hép
		local tbAwardItem = {tbProp={6,1,400,90,nSeries,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "NhËn ®­îc vËt phÈm!");
		return
	end	
end
