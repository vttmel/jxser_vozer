-- C¸c hµm nhËn ®iÓm


IncludeLib("SETTING")
Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua");

TAB_THUCUOI = {
	{szName="¤ V©n §¹p TuyÕt", tbProp={0,10,5,6,0,0}, nWidth=2, nHeight=3},
	{szName="XÝch Thè", tbProp={0,10,5,7,0,0}, nWidth=2, nHeight=3},
	{szName="TuyÖt ¶nh", tbProp={0,10,5,8,0,0}, nWidth=2, nHeight=3},
	{szName="§Ých L«", tbProp={0,10,5,9,0,0}, nWidth=2, nHeight=3},
	{szName="ChiÕu D¹ Ngäc S­ Tö", tbProp={0,10,5,10,0,0}, nWidth=2, nHeight=3},
	{szName="Phi V©n", tbProp={0,10,8,10,0,0}, nWidth=2, nHeight=3},
	{szName="B«n Tiªu", tbProp={0,10,6,10,0,0}, nWidth=2, nHeight=3},
	{szName="Phiªn Vò", tbProp={0,10,7,10,0,0}, nWidth=2, nHeight=3},
	{szName="XÝch Long C©u", tbProp={0,10,9,10,0,0}, nWidth=2, nHeight=3},
	{szName="Siªu Quang", tbProp={0,10,13,10,0,0}, nWidth=2, nHeight=3},
	{szName="Ngùa T©n Thñ", tbProp={0,10,2,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Kim Tinh Hæ V­¬ng", tbProp={0,10,14,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Háa Tinh Kim Hæ V­¬ng", tbProp={0,10,15,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Kim Tinh B¹ch Hæ V­¬ng", tbProp={0,10,16,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Long Tinh H¾c Hæ V­¬ng", tbProp={0,10,17,10,0,0}, nWidth=2, nHeight=3},
	--{szName="H·n HuyÕt Long C©u", tbProp={0,10,18,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V©n B¹ch M·", tbProp={0,10,19,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V©n ChiÕn M·", tbProp={0,10,20,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V©n ThÇn M·", tbProp={0,10,21,10,0,0}, nWidth=2, nHeight=3},
	--{szName="S­ tö", tbProp={0,10,22,10,0,0}, nWidth=2, nHeight=3},
	--{szName="L¹c ®µ", tbProp={0,10,23,10,0,0}, nWidth=2, nHeight=3},
	--{szName="D­¬ng §µ", tbProp={0,10,24,10,0,0}, nWidth=2, nHeight=3},
	--{szName="H­¬u ®èm", tbProp={0,10,25,10,0,0}, nWidth=2, nHeight=3},
	--{szName="D­¬ng Sa", tbProp={0,10,26,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Ngù Phong", tbProp={0,10,27,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Truy ®iÖn", tbProp={0,10,28,10,0,0}, nWidth=2, nHeight=3},
	--{szName="L­u Tinh", tbProp={0,10,29,10,0,0}, nWidth=2, nHeight=3},
	--{szName="XÝch Long C©u", tbProp={0,10,30,10,0,0}, nWidth=2, nHeight=3},
};

TAB_THUCUOI2 = {
	{szName="¤ V©n §¹p TuyÕt", tbProp={0,10,5,6,0,0}, nWidth=2, nHeight=3},
	{szName="XÝch Thè", tbProp={0,10,5,7,0,0}, nWidth=2, nHeight=3},
	{szName="TuyÖt ¶nh", tbProp={0,10,5,8,0,0}, nWidth=2, nHeight=3},
	{szName="§Ých L«", tbProp={0,10,5,9,0,0}, nWidth=2, nHeight=3},
	{szName="ChiÕu D¹ Ngäc S­ Tö", tbProp={0,10,5,10,0,0}, nWidth=2, nHeight=3},
	{szName="Phi V©n", tbProp={0,10,8,10,0,0}, nWidth=2, nHeight=3},
	--{szName="B«n Tiªu", tbProp={0,10,6,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phiªn Vò", tbProp={0,10,7,10,0,0}, nWidth=2, nHeight=3},
	--{szName="XÝch Long C©u", tbProp={0,10,9,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Siªu Quang", tbProp={0,10,13,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Kim Tinh Hæ V­¬ng", tbProp={0,10,14,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Háa Tinh Kim Hæ V­¬ng", tbProp={0,10,15,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Kim Tinh B¹ch Hæ V­¬ng", tbProp={0,10,16,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Long Tinh H¾c Hæ V­¬ng", tbProp={0,10,17,10,0,0}, nWidth=2, nHeight=3},
	--{szName="H·n HuyÕt Long C©u", tbProp={0,10,18,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V©n B¹ch M·", tbProp={0,10,19,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V©n ChiÕn M·", tbProp={0,10,20,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V©n ThÇn M·", tbProp={0,10,21,10,0,0}, nWidth=2, nHeight=3},
	--{szName="S­ tö", tbProp={0,10,22,10,0,0}, nWidth=2, nHeight=3},
	--{szName="L¹c ®µ", tbProp={0,10,23,10,0,0}, nWidth=2, nHeight=3},
	--{szName="D­¬ng §µ", tbProp={0,10,24,10,0,0}, nWidth=2, nHeight=3},
	--{szName="H­¬u ®èm", tbProp={0,10,25,10,0,0}, nWidth=2, nHeight=3},
	--{szName="D­¬ng Sa", tbProp={0,10,26,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Ngù Phong", tbProp={0,10,27,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Truy ®iÖn", tbProp={0,10,28,10,0,0}, nWidth=2, nHeight=3},
	--{szName="L­u Tinh", tbProp={0,10,29,10,0,0}, nWidth=2, nHeight=3},
	--{szName="XÝch Long C©u", tbProp={0,10,30,10,0,0}, nWidth=2, nHeight=3},
};

function ThuCuoi()
	local tbThuCuoi = TAB_THUCUOI;
	AddItemByTable("Mêi b¹n chän lo¹i thó c­ìi:", tbThuCuoi)
end

function ThuCuoi2()
	local tbThuCuoi = TAB_THUCUOI2;
	AddItemByTable("Mêi b¹n chän lo¹i thó c­ìi:", tbThuCuoi)
end

-- pEventType:Reg("TÝnh n¨ng thö nghiÖm", "Thó c­ìi", ThuCuoi);
-- pEventType:Reg("LÖnh bµi T©n Thñ", "Thó c­ìi", ThuCuoi);