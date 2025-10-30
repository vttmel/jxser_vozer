
Include("\\script\\lib\\alonelib.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\dailogsys\\dailogsay.lua");

TAB_VATPHAM = {
	{szName="Tói m¸u Vozer", tbProp={6,1,1781,1,0,0}, tbParam={1000},nBindState=-2, nWidth=1, nHeight=1},

}

function tuimauvozer()
	local tbVPHT = TAB_VATPHAM;
	local nVoLamLenh = CalcEquiproomItemCount(6,1,4903,-1);
	if nVoLamLenh > 19 then
		AddItemByTable("§æi tói m¸u Vozer", tbVPHT)
		ConsumeEquiproomItem(20,6,1,4903,-1)
	else
		Talk(1,"","B¹n vÉn ch­a ®ñ Vâ L©m LÖnh, h·y cè g¾ng thu thËp ®ñ 20 Vâ l©m lÖnh")
		return 1
	end
end

-- pEventType:Reg("TÝnh n¨ng thö nghiÖm", "VËt phÈm hç trî", VatPhamHoTro, {});
-- pEventType:Reg("LÖnh bµi T©n Thñ", "VËt phÈm hç trî", VatPhamHoTro, {});
