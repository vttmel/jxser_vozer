
function DieuKienTaoBangHoi()
if CalcFreeItemCellCount() < 10 then
Talk(1,"","Hµnh Trang Kh«ng §ñ 10 ¤ Trèng")
return
end
	if (GetCamp() ~= 4) then
		SetCamp(4);
		SetCurCamp(4);
	end
	if (GetRepute() < 450) then
		AddRepute(450);
	end
	if (GetLeadLevel() < 30) then
		for i = 1, 30 do
			AddLeadExp(250000);
		end
	end
	if (HaveItem(195) < 1) then
		AddItem(4,195,1,0,0,0);
	end
end