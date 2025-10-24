
Include("\\script\\lib\\alonelib.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\dailogsys\\dailogsay.lua");

TAB_VATPHAMHOTRO = {
	{szName="ThÇn Hµnh Phï", tbProp={6,1,1266,1,0,0}, nWidth=1, nHeight=1},
	{szName="CÈm nang thay ®æi trêi ®Êt", tbProp={6,1,1781,1,0,0}, tbParam={60}, nWidth=1, nHeight=1},
	{szName="S¸t thñ gi¶n (cÊp 90)", tbProp={6,1,400,90,0,0}, nWidth=1, nHeight=2 },
	{szName="LÖnh bµi Phong L¨ng §é", tbProp={4,489,1,0,0,0} , nWidth=1, nHeight=1},
	--{szName="Viªm §Õ LÖnh", tbProp={6,1,1617,1,0,0}, nWidth=1, nHeight=1 },
	--{szName="Ngäc Long LÖnh Bµi", tbProp={6,1,2623,1,0,0}, nWidth=1, nHeight=1 },
	--{szName="NhÊt Kû Cµng Kh«n Phï", tbProp={6,1,2126,1,0,0} , nWidth=1, nHeight=1},
	--{szName="<B¾c §Èu Tr­êng Sinh ThuËt - C¬ Së Thiªn>", tbProp={6,1,1390,1,0,0}, nWidth=1, nHeight=1 },
	{szName="TÈy Tñy Kinh", tbProp={6,1,22,1,0,0}, nCount=15 , nWidth=3, nHeight=5},
	{szName="Vâ L©m MËt TÞch", tbProp={6,1,26,1,0,0}, nCount=15, nWidth=3, nHeight=5},
	{szName="Tói hµnh trang", tbProp={6,1,1427,1,0,0}, nWidth=1, nHeight=1},
}

function VatPhamHoTro()
	local tbVPHT = TAB_VATPHAMHOTRO;
	AddItemByTable("Mêi b¹n chän vËt phÈm hç trî:", tbVPHT)
end

-- pEventType:Reg("TÝnh n¨ng thö nghiÖm", "VËt phÈm hç trî", VatPhamHoTro, {});
-- pEventType:Reg("LÖnh bµi T©n Thñ", "VËt phÈm hç trî", VatPhamHoTro, {});