
function PhanThuongHoTro()
	local tbSay = {"Ng­¬i muèn nhËn phÇn th­ëng hç trî ë mèc cÊp ®é nµo?"};
		tinsert(tbSay, "PhÇn th­ëng ®¹t mèc cÊp 20/PhanThuongHoTroCap20")
		tinsert(tbSay, "PhÇn th­ëng ®¹t mèc cÊp 30/PhanThuongHoTroCap30")
		tinsert(tbSay, "PhÇn th­ëng ®¹t mèc cÊp 40/PhanThuongHoTroCap40")
		tinsert(tbSay, "PhÇn th­ëng ®¹t mèc cÊp 50/PhanThuongHoTroCap50")
		tinsert(tbSay, "PhÇn th­ëng ®¹t mèc cÊp 60/PhanThuongHoTroCap60")
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
	CreateTaskSay(tbSay)
end

function PhanThuongHoTroCap20()
	local nLevel = 20;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ lÇn ®Çu tiªn, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end

	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="LiÖt B¹ch M·", tbProp={0,10,2,1,0,0}, nBindState=-2},
		{szName="Tiªn Th¶o Lé", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 20");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

function PhanThuongHoTroCap30()
	local nLevel = 30;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ lÇn ®Çu tiªn, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ cÊp 20, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="Kim Phong Thanh D­¬ng Kh«i", tbProp={0,177}, nQuality=1, nExpiredTime=20*24*60, nBindState=-2},
		{szName="Kim Phong Kú L©n HuyÕt", tbProp={0,178}, nQuality=1, nExpiredTime=20*24*60, nBindState=-2},
		{szName="Kim Phong Tr¹c Liªn Quang", tbProp={0,179}, nQuality=1, nExpiredTime=20*24*60, nBindState=-2},
		{szName="Kim Phong C«ng CÈn Tam Th¸n", tbProp={0,180}, nQuality=1, nExpiredTime=20*24*60, nBindState=-2},
		{szName="Kim Phong §o¹t Hån Ngäc ®¸i", tbProp={0,181}, nQuality=1, nExpiredTime=20*24*60, nBindState=-2},
		{szName="Kim Phong HËu NghÖ dÉn cung", tbProp={0,182}, nQuality=1, nExpiredTime=20*24*60, nBindState=-2},
		{szName="Kim Phong Lan §×nh Ngäc", tbProp={0,183}, nQuality=1, nExpiredTime=20*24*60, nBindState=-2},
		{szName="Kim Phong Thiªn Lı Th¶o Th­îng Phi", tbProp={0,184}, nQuality=1, nExpiredTime=20*24*60, nBindState=-2},
		{szName="Kim Phong §ång T­íc Xu©n Th©m", tbProp={0,185}, nQuality=1, nExpiredTime=20*24*60, nBindState=-2},
		{szName="B¹ch M·", tbProp={0,10,2,3,0,0}, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 30");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

function PhanThuongHoTroCap40()
	local nLevel = 40;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ lÇn ®Çu tiªn, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ cÊp 20, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ cÊp 30, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="B¹ch M·", tbProp={0,10,2,4,0,0}, nBindState=-2},
		{szName="Tiªn Th¶o Lé", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 40");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

function PhanThuongHoTroCap50()
	local nLevel = 50;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ lÇn ®Çu tiªn, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ cÊp 20, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ cÊp 30, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ cÊp 40, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="§¹i UyÓn B¹ch M·", tbProp={0,10,2,7,0,0}, nBindState=-2},
		{szName="Tiªn Th¶o Lé", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 50");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

function PhanThuongHoTroCap60()
	local nLevel = 60;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ lÇn ®Çu tiªn, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ cÊp 20, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ cÊp 30, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ cÊp 40, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 50) ~= 1) then
		Talk(1,"", "B¹n ch­a nhËn hç trî t©n thñ cÊp 50, kh«ng thÓ nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="Tóc S­¬ng", tbProp={0,10,2,9,0,0}, nBindState=-2},
		{szName="Tiªn Th¶o Lé (®Æc biÖt)", tbProp={6,1,1181,1,0,0}, nCount=3, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 60");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

 
function PhanThuongHoTroCap150()
	local nLevel = 150;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="Tr­êng sinh", tbProp={0,3491}, nQuality=1, nBindState=-2},
		{szName="B«n Tiªu", tbProp={0,10,2,1,0,0}, nBindState=-2},
		{szName="Tói phi phong", tbProp={6,1,4865,3,0,0}, nBindState=-2},
		{szName="Tói ngò hµnh Ên", tbProp={6,1,4866,8,0,0}, nBindState=-2},
		{szName="Tiªn Th¶o Lé", tbProp={6,1,71,1,0,0}, nBindState=-2},
		{szName="Lam Thñy Tinh", tbProp={4,238,1,0,0,0}, nBindState=-2},
		{szName="Tö Thñy Tinh", tbProp={4,239,1,0,0,0}, nBindState=-2},
		{szName="Lôc Thñy Tinh", tbProp={4,240,1,0,0,0}, nBindState=-2},
		{szName="T×nh Hång B¶o Th¹ch", tbProp={4,353,1,0,0,0}, nCount=6, nBindState=-2},
		{szName="ThÇn Hµnh Phï", tbProp={6,1,1266,1,0,0}, nCount=6, nBindState=-2},
		{szName="Thæ ®Şa phï (sö dông v« h¹n)", tbProp={6,1,438,1,0,0}, nCount=6, nBindState=-2},
		{szName="Tói trang bŞ Tö M·ng", tbProp={6,1,4857,1,0,0}, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 150");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

function PhanThuongHoTroCap180()
	local nLevel = 150;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="Kim ¤ LÖnh", tbProp={6,1,2349,1,0,0}, nCount=5, nBindState=-2},
		{szName="Tói phi phong", tbProp={6,1,4865,5,0,0}, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 150");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

function PhanThuongHoTro150_TS1()
	local nTransLife = ST_GetTransLifeCount();
	if (nTransLife < 1) then
		Talk(1, "", "ChØ cã nh©n vËt trïng sinh 1 míi nhËn ®­îc hç trî nµy")
	return end
	
	local nLevel = 150;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="L¹c §µ (10 ngµy)", tbProp={0,10,23,10,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 150 - Trïng sinh 1");
	SetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel, 1)
end

function PhanThuongHoTro170_TS1()
	local nTransLife = ST_GetTransLifeCount();
	if (nTransLife < 11) then
		Talk(1, "", "ChØ cã nh©n vËt trïng sinh 1 míi nhËn ®­îc hç trî nµy")
	return end
	
	local nLevel = 170;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="B¹ch Hæ LÖnh", tbProp={6,1,2357,10,0,0}, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 170 - Trïng sinh 1");
	SetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel, 1)
end

function PhanThuongHoTro190_TS1()
	local nTransLife = ST_GetTransLifeCount();
	if (nTransLife < 1) then
		Talk(1, "", "ChØ cã nh©n vËt trïng sinh 1 míi nhËn ®­îc hç trî nµy")
	return end
	
	local nLevel = 190;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="Tói phi phong (cÊp 6)", tbProp={6,1,4865,6,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 190 - Trïng sinh 1");
	SetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel, 1)
end

function PhanThuongHoTro150_TS2()
	local nTransLife = ST_GetTransLifeCount();
	if (nTransLife < 2) then
		Talk(1, "", "ChØ cã nh©n vËt trïng sinh 2 míi nhËn ®­îc hç trî nµy")
	return end
	
	local nLevel = 150;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="S­ Tö (10 ngµy)", tbProp={0,10,22,10,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 150 - Trïng sinh 2");
	SetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel, 1)
end


function PhanThuongHoTro150_TS2()
	local nTransLife = ST_GetTransLifeCount();
	if (nTransLife < 2) then
		Talk(1, "", "ChØ cã nh©n vËt trïng sinh 2 míi nhËn ®­îc hç trî nµy")
	return end
	
	local nLevel = 190;
	if (GetLevel() < nLevel) then
		Talk(1, "", "§¼ng cÊp cña b¹n ch­a ®ñ ®Ó nhËn phÇn th­ëng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel) ~= 0) then
		Talk(1,"", "B¹n ®· nhËn phÇn th­ëng hç trî nµy tõ tr­íc ®ã råi!")
	return end
	
	local tbSupportList = {
		{szName="MÆt n¹ V­¬ng Gi¶", tbProp={0,11,561,1,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "Hç trî cÊp 190 - Trïng sinh 2");
	SetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel, 1)
end